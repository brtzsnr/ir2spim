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
    def __gen(self, str):
        self.__fn.insn_list.append(str)

    def __get_label_value(self, label):
        if label in self.__globals.data_label_offsets:
            return "(int32_t)&data.f\%d" \% self.__globals.data_label_offsets[label]
        else:
            return "(int32_t)&G_\%s" \% label

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
        self.__gen(labelNot + ":")
}

program[globals] : { self.__globals = $globals } code data;

code : ^(CODE function*);

function
    : ^(FUNCTION name=STRING in_cnt=INTEGER out_cnt=INTEGER {
        self.__next_temp = 0 
        self.__fn = self.__globals.functions[$name.text]
    } code_statement*);

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
    : ^(CALL vr) { self.__gen("((void (*)()) \%s)();" \% $vr.text) }
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
    : LABEL { self.__gen("\%s:" \% (util.LABEL_PREFIX + $LABEL.text)) }
    ;

submit
    : RETURN { self.__gen("return;") }
    ;

io
    : ^(LOAD val=vr addr=vr offset=integer) {
        self.__gen("\%s = *(int32_t*)(\%s + \%s);" \% (
                    $val.text, $addr.text, $offset.text))
    }
    | ^(STORE val=vr addr=vr offset=integer) {
        self.__gen("*(int32_t*)(\%s + \%s) = \%s;" \% (
                    $addr.text, $offset.text, $val.text))
    }
    | ^(LOADB val=vr addr=vr offset=integer) {
        self.__gen("\%s = (int32_t) (*(uint8_t*)(\%s + \%s));" \% (
                    $val.text, $addr.text, $offset.text))
    }
    | ^(STOREB val=vr addr=vr offset=integer) {
        self.__gen("*(uint8_t*)(\%s + \%s) = (uint8_t)(\%s & 0xff);" \% (
                    $addr.text, $offset.text, $val.text))
    }
    ;

operand returns [val]
    : vr { $val = $vr.text }
    | integer { $val = $integer.text }
    ;

data: { self.__data_list = [] } ^(DATA data_statement*)
    { self.__globals.data_list.extend(self.__data_list) };

data_statement
    : ^(DW INTEGER) { self.__data_list.append(("int32_t", 
                        int($INTEGER.text), None)) } 
    | ^(DL LABEL) { self.__data_list.append(("int32_t", 
                        self.__get_label_value($LABEL.text), None)) }
    | ^(DB INTEGER) { self.__data_list.append(("int8_t", 
                        int($INTEGER.text), None)) }
    | ^(DB STRING) { 
        ss = $STRING.text
        self.__data_list.append(("int8_t", "\"\%s\"" \% util.recode_coolir_string(ss), 
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


