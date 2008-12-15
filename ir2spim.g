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

program: code data;

// === CODE ===
code: '.code'^ NEWLINE! code_statements;

code_statements
    : assignment NEWLINE!
    | jump NEWLINE!
    | load NEWLINE!
    | label NEWLINE!
    ;



// === DATA ===
data: '.data'^ NEWLINE! data_statements;

data_statements: ;

REGISTER: 'VR' ('0'..'9')+;

NEWLINE: ('\n' '\r'?)+;

WHITESPACE: ('\t' | ' ') { $channel = HIDDEN; };

