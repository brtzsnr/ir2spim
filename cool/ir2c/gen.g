/*
 * vim: set expandtab:
 * vim: set filetype=antlr:
 */

tree grammar gen;

options {
    tokenVocab = coolir;
    ASTLabelType = CommonTree;
    language = Python;
}

@header {
import util
}

@members {
    def __gen(self, str, indent = True):
        print >>self.__gen_out, ('', '\t')[indent] + str

    def __gen_temp(self):
        res = "tmp\%d" \% self.__next_temp
        self.__next_temp += 1
        return res

    def __gen_op(self, op, v1, v2):
        return "(\%s \%s \%s)" \% (v1, op, v2)

    def __gen_jmp_cond(self, vr, labelCond, condTrue):
        labelNot = util.LABEL_PREFIX + self.__gen_temp()
        labelCond = util.LABEL_PREFIX + labelCond
        if condTrue:
            fmtVar = vr, labelCond, labelNot
        else:
            fmtVar = vr, labelNot, labelCond
        self.__gen("if (\%s) goto \%s; else goto \%s;" \% fmtVar)
        self.__gen(labelNot + ":", False)

    def __get_label_value(self, label):
        if label in self.__globals.data_label_offsets:
            return "data_ptr(\%s)" \% str(self.__globals.data_label_offsets[label])
        elif label in self.__globals.code_label_indices:
            return "code_ptr(\%d)" \% self.__globals.code_label_indices[label]
        else:
            raise Exception("Label unknown: \%s" \% label)

    def __gen_mem_load(self, val, addr, offset, size):
        self.__gen("\%s = load_\%s_from_label(\%s, \%s);" \% (
                    val, size, addr, offset))

    def __gen_mem_store(self, val, addr, offset, size):
        self.__gen("store_\%s_at_label(\%s, \%s, \%s);" \% (
                    size, addr, offset, val))
}

program[gen_out, globals] returns [data_list] : { 
        self.__gen_out, self.__globals = $gen_out, $globals
    } code data { $data_list = self.__data_list };

code : ^(CODE function*);

function
    : ^(FUNCTION name=STRING in_cnt=INTEGER out_cnt=INTEGER {
        self.__next_temp = 0 
        self.__fn = self.__globals.functions[$name.text]
        self.__gen("static void \%s() {" \% (util.FUNCTION_PREFIX + 
                        self.__fn.first_label), False)

        if len(self.__fn.vr_map) > 0:
            self.__gen("int32_t \%s;" \% ', '.join(self.__fn.vr_map.iterkeys()))
    } code_statement* { 
        self.__gen("}\n", False) 
    })
    ;

code_statement
@init { print_eoi, self.__last_insn_is_br = True, False }
@after { 
    if print_eoi:
        self.__gen("// EOI: " + $code_statement.text)
        pass
    }       
    : assignment 
    | jump 
    | call
    | label { print_eoi = False }
    | submit
    | io
    ;

assignment
    : ^(ASSIGN vr 
                    ( op1=operand { rval = $op1.val }
                    | LABEL { rval = self.__get_label_value($LABEL.text) }
                    | vi { rval = "iregs[\%s]" \% $vi.text[2:] }
                    | ^(PLUS op1=operand op2=operand) 
                        { rval = self.__gen_op("+", $op1.val, $op2.val) }
                    | ^(MINUS op1=operand op2=operand)
                        { rval = self.__gen_op("-", $op1.val, $op2.val) }
                    | ^(MUL op1=operand op2=operand)
                        { rval = self.__gen_op("*", $op1.val, $op2.val) }
                    | ^(DIV op1=operand op2=operand)
                        { rval = self.__gen_op("/", $op1.val, $op2.val) }
                    | ^(LT op1=operand op2=operand)
                        { rval = self.__gen_op("<", $op1.val, $op2.val) } 
                    | ^(LE op1=operand op2=operand)
                        { rval = self.__gen_op("<=", $op1.val, $op2.val) } 
                    | ^(EQ op1=operand op2=operand)
                        { rval = self.__gen_op("==", $op1.val, $op2.val) } 
                    | ^(NOT op1=operand)
                        { rval = "~(\%s)" \% $op1.val }
                    )) { self.__gen("\%s = \%s;" \% ($vr.text, rval)) }
    | ^(ASSIGN vi vr) { self.__gen("iregs[\%s] = \%s;" \% ($vi.text[2:], $vr.text)) }
    ;

call
    : ^(CALL vr) { self.__gen("call_function_at_label(\%s);" \% $vr.text) }
    | ^(CALL LABEL) { self.__gen("\%s();" \% (util.FUNCTION_PREFIX + $LABEL.text)) }
    ;

jump
    : ^(JUMP LABEL) { 
        self.__gen("goto \%s;" \% (util.LABEL_PREFIX + $LABEL.text)) 
    } 
    | ^(JUMPT vr LABEL) { self.__gen_jmp_cond($vr.text, $LABEL.text, True) }
    | ^(JUMPF vr LABEL) { self.__gen_jmp_cond($vr.text, $LABEL.text, False) }
    ;

label
    : LABEL { self.__gen("\%s:" \% (util.LABEL_PREFIX + $LABEL.text), False) }
    ;

submit
    : RETURN { self.__gen("return;") }
    ;

io
    : ^(LOAD val=vr addr=vr offset=integer) {
        self.__gen_mem_load($val.text, $addr.text, $offset.text, "word")
    }
    | ^(STORE val=vr addr=vr offset=integer) {
        self.__gen_mem_store($val.text, $addr.text, $offset.text, "word")
    }
    | ^(LOADB val=vr addr=vr offset=integer) {
        self.__gen_mem_load($val.text, $addr.text, $offset.text, "byte")
    }
    | ^(STOREB val=vr addr=vr offset=integer) {
        self.__gen_mem_store($val.text, $addr.text, $offset.text, "byte")
    }
    ;

operand returns [val]
    : vr { $val = $vr.text }
    | integer { $val = $integer.text }
    ;

data: { self.__data_list = [] } ^(DATA data_statement*);

data_statement
    : ^(DW INTEGER) { self.__data_list.append(("int32_t", 
                        int($INTEGER.text), None)) } 
    | ^(DL LABEL) { self.__data_list.append(("int32_t", 
                        self.__get_label_value($LABEL.text), None)) }
    | ^(DB INTEGER) { self.__data_list.append(("int8_t", 
                        int($INTEGER.text), None)) }
    | ^(DB STRING) { 
        ss = $STRING.text
        self.__data_list.append(("int8_t", "\"\%s\"" \% ss, 
                            str(util.len_const_string(ss))))
    }
    | ^(DS INTEGER) {
        self.__data_list.append(("int8_t", None, $INTEGER.text))
    }
    | LABEL 
    ;

vr : VR;
vi : VI;
integer : INTEGER;


