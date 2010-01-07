/*
 * vim: set expandtab:
 * vim: set filetype=antlr:
 */

tree grammar ir2x86regs;

options {
    tokenVocab = ir2x86;
    ASTLabelType = CommonTree;
    language = Python;
}

program returns [vrFnMap] 
@init { self.__vrFnMap = {} }
@after { $vrFnMap = self.__vrFnMap }
    : code data;

code : ^(CODE function*);

function
@init { self.__vrMapFn = {} }
    : ^(FUNCTION name=STRING in_cnt=INTEGER out_cnt=INTEGER code_statement*) {
        self.__vrFnMap[$name.text] = self.__vrMapFn, max(int($in_cnt.text), int($out_cnt.text))
    } 
    ;

code_statement
    : assignment 
    | jump
    | call
    | label
    | submit
    | io
    ;

assignment
    : ^(ASSIGN vr operand)
    | ^(ASSIGN vr LABEL)
    | ^(ASSIGN vr vi)
    | ^(ASSIGN vi vr)
    | ^(ASSIGN vr ^(binary_op operand operand))
    | ^(ASSIGN vr ^(unary_op operand))
    ;

call
    : ^(CALL vr)
    | ^(CALL LABEL)
    ;

jump
    : ^(JUMP LABEL)
    | ^(JUMPT vr LABEL)
    | ^(JUMPF vr LABEL)
    ;

label
    : LABEL
    ;

submit
    : RETURN 
    ;

io
    : ^(LOAD vr vr integer)
    | ^(STORE vr vr integer)
    | ^(LOADB vr vr integer)
    | ^(STOREB vr vr integer)
    ;

data: ^(DATA data_statement*);

data_statement
    : ^(DW INTEGER) 
    | ^(DL LABEL)
    | ^(DB INTEGER)
    | ^(DB STRING)
    | ^(DS INTEGER)
    | LABEL
    ;

operand : vr | integer;
vr  : VR {  
        if $vr.text not in self.__vrMapFn:
            self.__vrMapFn[$vr.text] = len(self.__vrMapFn) 
    }
    ;
vi : VI;
integer : INTEGER;

binary_op : PLUS | MINUS | MUL | DIV | LT | LE | EQ;
unary_op : NOT; 


