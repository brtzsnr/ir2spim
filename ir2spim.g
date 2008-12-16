/*
 * vim: set expandtab:
 * vim: set filetype=antlr:
 */

grammar ir2spim;

options {
    language = Python;
    output = AST;
    ASTLabelType = CommonTree;
}


@parser::header {
import data
import spim
}

program
    : code data;

// === CODE ===
code
    : '.code' { print '.code' } code_statement*;

code_statement
    : assignment
    | jump
    | call
    | label
    | load
    | submit
    | io
    ;

assignment
    : VR '<-' operator
    | VR '<-' VI
    | VI '<-' operator
    | VR '<-' operator '+' operator
    | VR '<-' operator '-' operator
    | VR '<-' operator '*' operator
    | VR '<-' operator '/' operator
    | VR '<-' operator '<' operator
    | VR '<-' operator '<=' operator
    | VR '<-' operator '=' operator
    | VR '<-' 'not' operator
    ;

call
    : VR '<-' 'call' VR
    | VR '<-' 'call' METHOD
    ;

jump
    : 'jump' LABEL {
        print 'bczt \%s', $LABEL.text
    }
    | 'jumpt' VR LABEL {
    }
    | 'jumpf' VR LABEL {
        print 'beqz \%s, \%s' \% ($VR, $LABEL.text)
    }
    ;

label
    : l=(METHOD | LABEL) ':' { print '\%s:' \% $l.text }
    ;

load
    : 'loadl' VR (METHOD | LABEL)
    ;

submit
    : 'return' operator
    ;

io
    : 'load' VR '[' VR ',' INTEGER ']'
    | 'store' VR '[' VR ',' INTEGER ']'
    | 'loadb' VR '[' VR ',' INTEGER ']'
    | 'storeb' VR '[' VR ',' INTEGER ']'
    ;


// === DATA ===
data
    : '.data' { print '.data' } data_statement*;

data_statement
    : 'DW' i=INTEGER { data.storeWord(int($i.text)) }
    | 'DL' l=(METHOD | LABEL) { data.storeLabel($l.text) }
    | 'DS' s=STRING { data.storeString($s.text); }
    | 'DB' i=INTEGER { data.storeBytes(int($i.text)) }
    | l=LABEL ':' { data.label($l.text) }
    ;

// === OPERANDS ===
operator
    : vr
    | integer
    ;

vr returns [value]
    : VR { $value = spim.Operand(spim.VIRTUAL_REGISTER, int($VR.text[2:])); }
    ;

vi returns [value]
    : VI { $value = spim.Operand(spim.VIRTUAL_INPUT, int($VI.text[2:])); }
    ;

integer returns [value]
    : INTEGER { $value = int($INTEGER.text); }
    ;


fragment
UNSIGNED: '0' | ('1'..'9' ('0'..'9')*);

STRING: '"' ('""' | ~('"'))* '"';

VR: 'VR' UNSIGNED;
VI: 'VI' UNSIGNED;
INTEGER: ('-')? UNSIGNED;

METHOD: ('A'..'Z')       ('A'..'Z' | 'a'..'z' | '0'..'9' | '_')*;
LABEL:  ('a'..'z' | '_') ('A'..'Z' | 'a'..'z' | '0'..'9' | '_')*;

WHITESPACE: (' ' | '\t') { $channel = HIDDEN; };
NEWLINE: ('\r')? ('\n') { $channel = HIDDEN; };
COMMENT: '#' (~('\n' | '\r'))* { $channel = HIDDEN; };

