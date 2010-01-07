/*
 * vim: set expandtab:
 * vim: set filetype=antlr:
 */

grammar ir2x86;

options {
    output = AST;
    ASTLabelType = CommonTree;
    language = Python;
}

tokens {
    CODE = '.code';
    DATA = '.data';
    FUNCTION = '.function';
    END = '.end';
    ASSIGN = '<-';
    CALL = 'call';
    JUMP = 'jump';
    JUMPT = 'jumpt';
    JUMPF = 'jumpf';
    RETURN = 'return';
    LOAD = 'load';
    STORE = 'store';
    LOADB = 'loadb';
    STOREB = 'storeb';
    PLUS = '+';
    MINUS = '-';
    MUL = '*';
    DIV = '/';
    LT = '<';
    LE = '<=';
    EQ = '=';
    NOT = '~';
    DW = 'DW';
    DB = 'DB';
    DL = 'DL';
    DS = 'DS';
}

program : code data;

// === CODE ===
code
    : CODE^ function*;

function
    : FUNCTION name=STRING ',' in_cnt=INTEGER ',' out_cnt=INTEGER 
        code_statement* END 
        -> ^(FUNCTION $name $in_cnt $out_cnt code_statement*)
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
    : vr ASSIGN^ operand 
    | vr ASSIGN^ LABEL
    | vr ASSIGN^ vi
    | vi ASSIGN^ vr
    | vr ASSIGN first=operand op=binary_op second=operand
        -> ^(ASSIGN vr ^($op $first $second))
    | vr ASSIGN op=unary_op operand -> ^(ASSIGN vr ^($op operand))
    ;

call
    : CALL^ vr
    | CALL^ LABEL
    ;

jump
    : JUMP^ LABEL 
    | JUMPT^ vr LABEL 
    | JUMPF^ vr LABEL
    ;

label
    : LABEL ':'!
    ;

submit
    : RETURN 
    ;

io
    : LOAD zero=vr '[' one=vr ',' two=integer ']' -> ^(LOAD $zero $one $two)
    | STORE zero=vr '[' one=vr ',' two=integer ']' -> ^(STORE $zero $one $two)
    | LOADB zero=vr '[' one=vr ',' two=integer ']' -> ^(LOADB $zero $one $two)
    | STOREB zero=vr '[' one=vr ',' two=integer ']' -> ^(STOREB $zero $one $two)
    ;

// === DATA ===
data
    : DATA^ data_statement*;

data_statement
    : DW^ INTEGER 
    | DL^ LABEL 
    | DB^ INTEGER
    | DB^ STRING
    | DS^ INTEGER 
    | LABEL ':'!
    ;

// === OPERANDS ===
operand : vr | integer;
vr : VR;
vi : VI;
integer : INTEGER;

binary_op : PLUS | MINUS | MUL | DIV | LT | LE | EQ;
unary_op : NOT; 

fragment
UNSIGNED: '0' | ('1'..'9' ('0'..'9')*);

STRING: '"' ('""' | ~('"'))* '"';

VR: 'VR' UNSIGNED;
VI: 'VI' UNSIGNED;
INTEGER: ('-')? UNSIGNED;

LABEL:  ('A'..'Z' | 'a'..'z' | '_') ('A'..'Z' | 'a'..'z' | '0'..'9' | '_' | '.')*;

WHITESPACE: (' ' | '\t') { $channel = HIDDEN; };
NEWLINE: ('\r')? ('\n') { $channel = HIDDEN; };
COMMENT: '#' (~('\n' | '\r'))* { $channel = HIDDEN; };

 
