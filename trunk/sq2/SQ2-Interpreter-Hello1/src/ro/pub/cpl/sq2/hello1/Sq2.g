grammar Sq2;

@header {
  package ro.pub.cpl.sq2.hello1;
}

@lexer::header {
  package ro.pub.cpl.sq2.hello1;
}
program returns [Program p]
	@init {
	  $p = new Program();
	  }
  :
	(function { $p.add($function.f); }) + 
	;

function returns [Function f]
  @init { $f = new Function(); }
  :
	ID { $f.name = $ID.text; } ':' statements { $f.statements=$statements.b; } END ';'
	;

statements returns [StatementBlock b]
  @init {
    $b = new StatementBlock();
    }
	:	(statement { $b.add($statement.s); } ';')+
	;

statement returns [Statement s ]:	
	'[' call_statement { $s = $call_statement.s; } ']'
	;
	
call_statement returns [Statement s]
	:	PRINT STRING 
	   { s = new PrintStatement(LexerUtils.unquote($STRING.text)); }
	;

PRINT	:	'print'
	;

END 	:	'end'
	;

ID  :	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :	'0'..'9'+
    ;

COMMENT
    :   '#' ~('\n'|'\r')* '\r'? '\n' {$channel=HIDDEN;}
    ;

WS  :   ( ' '
        | '\t'
        | '\r'
        | '\n'
        ) {$channel=HIDDEN;}
    ;

STRING
    :  '"' ( ESC_RULE | ~('\\'|'"')  )* '"'
    ;

fragment
ESC_RULE:	'\\' 'n'
	;