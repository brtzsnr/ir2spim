/*
 * vim: set expandtab:
 * vim: set filetype=antlr:
 */

grammar ir2spim;

options {
    language = Python;
}

tokens {
    ASSIGN = '<-';
    CALL = 'call';
    LOAD = 'load';
    LOADL = 'loadl';
    LOADB = 'loadb';
    STORE = 'store';
    STOREB = 'storeb';
    JUMP = 'jump';
    JUMPT = 'jumpt';
    JUMPF = 'jumpf';
    RETURN = 'return';
    NOT = 'not';
    CODE = '.code';
    DATA = '.data';
    DW = 'DW';
    DL = 'DL';
    DS = 'DS';
    DB = 'DB';
}


@parser::header {
import operand
from program import code
from program import data
}

program
    : code data;

// === CODE ===
code
    : CODE code_statement*;

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
    // ANTLR doesn't understand dynamic languages (like python)
    // very well and complains when colapsing the below rules
    : vr '<-' operator {
        code.encode('mov', $vr.value, $operator.value)
    }
    | vr '<-' vi {
        code.encode('mov', $vr.value, $vi.value)
    }
    | vi '<-' vr {
        code.encode('mov', $vi.value, $vr.value)
    }
    | vr '<-' first=operator e=('+'|'-'|'*'|'/'|'<'|'<='|'=') second=operator {
        code.encode($e.text, $vr.value, $first.value, $second.value)
    }
    | vr '<-' e='not' operator {
        code.encode($e.text, $vr.value, $operator.value)
    }
    ;

call
    : result=vr '<-' e='call' register=vr {
        code.encode($e.text, $result.value, $register.value)
    }
    | result=vr '<-' e='call' method=METHOD {
        code.encode($e.text, $result.value, operand.Label($method.text))
    }
    ;

jump
    : e='jump' LABEL {
        code.encode($e.text, operand.Label($LABEL.text))
    }
    | e=('jumpt' | 'jumpf') vr LABEL {
        code.encode($e.text, $vr.value, operand.Label($LABEL.text))
    }
    ;


label
    : l=(METHOD | LABEL) ':' {
        code.addLabel($l.text)
    }
    ;

load
    : e='loadl' vr where=(METHOD | LABEL) {
        code.encode($e.text, $vr.value, operand.Label($where.text))
    }
    ;

submit
    : e='return' operator {
        code.encode($e.text, $operator.value)
    }
    ;

io
@after {
    code.encode($e.text, $zero.value, $one.value, $two.value)
}
    : e='load' zero=vr '[' one=vr ',' two=integer ']'
    | e='store' zero=vr '[' one=vr ',' two=integer ']'
    | e='loadb' zero=vr '[' one=vr ',' two=integer ']'
    | e='storeb' zero=vr '[' one=vr ',' two=integer ']'
    ;


// === DATA ===
data
    : DATA data_statement*;

data_statement
    : DW i=INTEGER { data.storeWord(int($i.text)) }
    | DL l=(METHOD | LABEL) { data.storeLabel($l.text) }
    | DS s=STRING { data.storeString($s.text) }
    | DB i=INTEGER { data.storeZero(int($i.text)) }
    | l=LABEL ':' { data.addLabel($l.text) }
    ;

// === OPERANDS ===
operator returns [value]
    : vr { return $vr.value }
    | integer { return $integer.value }
    ;

vr returns [value]
    : VR {
        return operand.VR(int($VR.text[2:]))
    }
    ;

vi returns [value]
    : VI {
        return operand.VI(int($VI.text[2:]))
    }
    ;

integer returns [value]
    : INTEGER {
        return operand.Integer(int($INTEGER.text))
    }
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
