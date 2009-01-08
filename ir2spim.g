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
import code
import data
import operand
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
        code.add(
            second=$operator.value, destination=$vr.value)
    }
    | vr '<-' vi {
        code.add(
            second=$vi.value, destination=$vr.value)
    }
    | vi '<-' operator {
        code.add(
            second=$operator.value, destination=$vi.value)
    }
    | vr '<-' first=operator e=('+'|'-'|'*'|'/'|'<'|'<='|'=') second=operator {
        code.add(
            mnemonic=$e.text, first=$first.value,
            second=$second.value, destination=$vr.value)
    }
    | vr '<-' e='not' operator {
        code.add(
            mnemonic=$e.text,
            second=$operator.value, destination=$vr.value)
    }
    ;

call
    : result=vr '<-' e='call' register=vr {
        code.add(
            mnemonic=$e.text,
            second=$register.value, destination=$result.value)
    }
    | result=vr '<-' e='call' method=METHOD {
        code.add(
            mnemonic=$e.text,
            second=operand.Label($method.text), destination=$result.value)
    }
    ;

jump
    : e=('jump' | 'jumpt' | 'jumpf') vr? LABEL {
        code.add(
            mnemonic=$e.text, first=$vr.value,
            second=operand.Label($LABEL.text))
    }
    ;


label
    : l=(METHOD | LABEL) ':' {
        code.addLabel($l.text)
    }
    ;

load
    : e='loadl' vr where=(METHOD | LABEL) {
        code.add(
            mnemonic=$e.text,
            second=operand.Label($where.text), destination=$vr.value)
    }
    ;

submit
    : e='return' operator {
        code.add(
            mnemonic=$e.text,
            second=$operator.value)
    }
    ;

io
@after {
    code.add(
        mnemonic=$e.text, first=$first.value,
        second=$second.value, destination=$destination.value)
}
    : e='load' destination=vr '[' first=vr ',' second=integer ']'
    | e='store' destination=vr '[' first=vr ',' second=integer ']'
    | e='loadb' destination=vr '[' first=vr ',' second=integer ']'
    | e='storeb' destination=vr '[' first=vr ',' second=integer ']'
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

