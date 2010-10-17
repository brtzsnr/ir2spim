/*
 * vim: set expandtab:
 * vim: set filetype=antlr:
 */

tree grammar prep;

options {
    tokenVocab = coolir;
    ASTLabelType = CommonTree;
    language = Python;
}

@header {
import util
}

program returns [file_data]
    : { self.__file_data = util.File() }
        code data 
      { $file_data = self.__file_data };

code : ^(CODE function*);

function
@init { self.__fn = util.Function() }
    : ^(FUNCTION name=STRING in_cnt=INTEGER out_cnt=INTEGER code_statement*) {
        self.__fn.iregs = int($in_cnt.text)
        self.__fn.oregs = int($out_cnt.text)
        self.__file_data.functions[$name.text] = self.__fn
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
    | ^(ASSIGN vr vo)
    | ^(ASSIGN vi vr)
    | ^(ASSIGN vo vr)
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
    : LABEL {
        if not self.__fn.first_label:
            self.__fn.first_label = $LABEL.text
    }
    ;

submit
    : RETURN { self.__fn.noreturn = False } 
    ;

io
    : ^(LOAD vr vr integer)
    | ^(STORE vr vr integer)
    | ^(LOADB vr vr integer)
    | ^(STOREB vr vr integer)
    ;

operand : vr | integer;
vr  : VR {  
        if $vr.text not in self.__fn.vr_map:
            self.__fn.vr_map[$vr.text] = len(self.__fn.vr_map) 
    }
    ;
vi : VI;
vo : VO;
integer : INTEGER;

data: { self.__file_data.data_len = 0 } ^(DATA data_statement*);

data_statement
    : ^(DW INTEGER) { self.__file_data.data_len += 4 }
    | ^(DL LABEL) { self.__file_data.data_len += 4 }  
    | ^(DB INTEGER) { self.__file_data.data_len += 1 }
    | ^(DB STRING) { self.__file_data.data_len += util.len_llvm_string($STRING.text) }
    | ^(DS INTEGER) { self.__file_data.data_len += int($INTEGER.text) }
    | LABEL { self.__file_data.data_label_offsets[$LABEL.text] = self.__file_data.data_len }
    ;

binary_op : PLUS | MINUS | MUL | DIV | LT | LE | EQ;
unary_op : NOT; 


