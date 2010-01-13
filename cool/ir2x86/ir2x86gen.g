/*
 * vim: set expandtab:
 * vim: set filetype=antlr:
 */

tree grammar ir2x86gen;

options {
    tokenVocab = ir2x86;
    ASTLabelType = CommonTree;
    language = Python;
}

@members {
    def __gen(self, str):
        print >>self.__gen_out, str

    def __genVrLoad(self, reg, vr):
        """Load virtual register vr into real register reg"""
        self.__gen("movl " + str(4 * self.__vrMap[vr]) + "(\%esp), \%" + reg)

    def __genVrStore(self, reg, vr):
        """Store value from register reg into vr"""
        self.__gen("movl \%" + reg + ", " + str(4 * self.__vrMap[vr]) + "(\%esp)")
}

program[gen_out, vrFnMap] returns [iregs_num] : { 
        self.__gen_out = gen_out
        self.__vrFnMap = vrFnMap 
        self.__iregs = 0
    } code data { $iregs_num = self.__iregs };

code : ^(CODE { self.__gen(".text") } function*);

function
    : ^(FUNCTION name=STRING in_cnt=INTEGER out_cnt=INTEGER {
        self.__vrMap, fn_iregs = self.__vrFnMap[$name.text]
        self.__iregs = max(self.__iregs, fn_iregs)
        self.__entryLabel = True
    } code_statement*)
    ;

code_statement
@init { print_eoi = True }
@after { 
    if print_eoi:
        self.__gen("# EOI: " + $code_statement.text)
    }       
    : assignment 
    | jump
    | call
    | label { print_eoi = False }
    | submit
    | io
    ;

assignment
    : ^(ASSIGN vr   ( operand['eax']
                    | LABEL { self.__gen("lea " + $LABEL.text + ", \%eax") }
                    | vi { 
                        self.__gen("lea __iregs, \%ebx")
                        self.__gen("movl " + str(4 * int($vi.text[2:])) +
                                   "(\%ebx), \%eax")
                    }
                    | ^(PLUS op1=operand['eax'] op2=operand['ebx'])
                        { self.__gen("addl \%ebx, \%eax") }                    
                    | ^(MINUS op1=operand['eax'] op2=operand['ebx'])
                        { self.__gen("subl \%ebx, \%eax") }                    
                    | ^(MUL op1=operand['eax'] op2=operand['ebx'])
                        { self.__gen("imul \%ebx") }                    
                    | ^(DIV op1=operand['eax'] op2=operand['ebx'])
                        { self.__gen("cltd\nidiv \%ebx") }
                    | ^(LT op1=operand['edx'] op2=operand['ebx']) {
                        self.__gen("xorl \%eax, \%eax")
                        self.__gen("cmpl \%edx, \%ebx")
                        self.__gen("jle 1f")
                        self.__gen("incl \%eax")
                        self.__gen("1:")
                    }
                    | ^(LE op1=operand['edx'] op2=operand['ebx']) {
                        self.__gen("xorl \%eax, \%eax")
                        self.__gen("cmpl \%edx, \%ebx")
                        self.__gen("jl 1f")
                        self.__gen("incl \%eax")
                        self.__gen("1:")
                    }
                    | ^(EQ op1=operand['edx'] op2=operand['ebx']) {
                        self.__gen("xorl \%eax, \%eax")
                        self.__gen("cmpl \%edx, \%ebx")
                        self.__gen("jne 1f")
                        self.__gen("incl \%eax")
                        self.__gen("1:")
                    }
                    | ^(NOT operand['eax']) { self.__gen("notl \%eax") }
                    )) { self.__genVrStore('eax', $vr.text) }
    | ^(ASSIGN vi vr) { 
        self.__genVrLoad('eax', $vr.text)
        self.__gen("lea __iregs, \%ebx")
        self.__gen("movl \%eax, " + str(4 * int($vi.text[2:])) + "(\%ebx)")
    }
    ;

call
    : ^(CALL vr) { 
        self.__genVrLoad('eax', $vr.text)
        self.__gen("call *\%eax")
    }
    | ^(CALL LABEL) { self.__gen("call " + $LABEL.text) }
    ;

jump
    : ^(JUMP LABEL) { self.__gen("jmp " + $LABEL.text) } 
    | ^(JUMPT vr LABEL) {
        self.__genVrLoad('eax', $vr.text)
        self.__gen("test \%eax, \%eax\njnz " + $LABEL.text)
    }
    | ^(JUMPF vr LABEL) {
        self.__genVrLoad('eax', $vr.text)
        self.__gen("test \%eax, \%eax\njz " + $LABEL.text)
    }
    ;

label
    : LABEL {
        name = $LABEL.text
        if self.__entryLabel:
            self.__entryLabel = False
            self.__gen(".globl " + name)
            self.__gen(".type " + name + ", @function")
            self.__gen(name + ":")
            if len(self.__vrMap) > 0:
                self.__gen("subl $" + str(4 * len(self.__vrMap)) + ", \%esp")
        else:
            self.__gen(name + ":")
    }
    ;

submit
    : RETURN {
        if len(self.__vrMap) > 0:
            self.__gen("addl $" + str(4 * len(self.__vrMap)) + ", \%esp")
        self.__gen("ret")    
    }
    ;

io
    : ^(LOAD val=vr addr=vr offset=integer) {
        self.__genVrLoad('ebx', $addr.text)
        self.__gen("addl $" + $offset.text + ", \%ebx")
        self.__gen("movl (\%ebx), \%eax")
        self.__genVrStore('eax', $val.text)
    }
    | ^(STORE val=vr addr=vr offset=integer) {
        self.__genVrLoad('eax', $val.text)
        self.__genVrLoad('ebx', $addr.text)
        self.__gen("addl $" + $offset.text + ", \%ebx")
        self.__gen("movl \%eax, (\%ebx)")
    }
    | ^(LOADB val=vr addr=vr offset=integer) {
        self.__genVrLoad('ebx', $addr.text)
        self.__gen("addl $" + $offset.text + ", \%ebx")
        self.__gen("movsbl (\%ebx), \%eax")
        self.__genVrStore('eax', $val.text)
    }
    | ^(STOREB val=vr addr=vr offset=integer) {
        self.__genVrLoad('eax', $val.text)
        self.__genVrLoad('ebx', $addr.text)
        self.__gen("addl $" + $offset.text + ", \%ebx")
        self.__gen("movb \%al, (\%ebx)")
    }
    ;

data: ^(DATA { self.__gen(".data") } data_statement*);

data_statement
    : ^(DW INTEGER) { self.__gen(".long " + $INTEGER.text) } 
    | ^(DL LABEL) { self.__gen(".long " + $LABEL.text) }
    | ^(DB INTEGER) { self.__gen(".byte " + $INTEGER.text) }
    | ^(DB STRING) 
    { self.__gen(".ascii " + $STRING.text.replace("\"\"", "\\\"")) }
    | ^(DS INTEGER) { self.__gen(".fill " + $INTEGER.text) }
    | LABEL { 
        name = $LABEL.text
        self.__gen(".globl " + name)
        self.__gen(".type " + name + ", @object")
        self.__gen(name + ":") 
    }
    ;

operand[reg] 
    : vr { self.__genVrLoad($reg, $vr.text) }
    | integer { self.__gen("movl $" + $integer.text + ", \%" + $reg) }
    ;

vr : VR;
vi : VI;
integer : INTEGER;


