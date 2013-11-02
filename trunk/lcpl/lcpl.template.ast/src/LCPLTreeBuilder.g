grammar LCPLTreeBuilder;

options {
    language = Java;
    output = AST;
    ASTLabelType = CommonTree;
}

tokens {
    PROGRAM;
    CLASS = 'class';
    INHERITS = 'inherits';
    METHOD;
    STATEMENT;
    END = 'end';
    ID;
    STRING_CONST;
}

program :   classdef -> ^(PROGRAM classdef)
    ;

classdef :  CLASS name=ID INHERITS parent=ID method END ';' -> 
        ^(CLASS $name $parent ^(METHOD method))
    ;

method  :   ID ':' statement END ';' 
        -> ^(METHOD ID statement)
    ;
    
statement   : '[' ID STRING_CONST ']' ';'
        -> ^(STATEMENT ID STRING_CONST)
    ;
    
STRING_CONST
    :  
            '"Hello world!"' 
    ;
    
ID  
    :   
        ('a'..'z'|'A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;       
 
WS  :   (' ' | '\t' | '\n' | '\r') {$channel=HIDDEN;}
    ;
 