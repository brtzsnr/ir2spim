grammar IR;

tokens {
  NUMBER; IDENTIFIER;
  SEMI; COLON;
  ASSIGN;
  OP_AND;
  OP_PLUS; OP_MINUS; OP_STAR;
  EQ; NE; GT; GE; LT; LE;
  ARG;
  RETURN;
  IF;
  GOTO;
}

@header {
package ro.pub.cpl.irparser;
}

@lexer::header {
package ro.pub.cpl.irparser;
}

/* One function per IR file */
irfunction
	: (ARG vars SEMI)? statements;   /* incoming parameters - arg x y z ; ... */

statements
	: (label? statement SEMI)+ /* label: statement ; */
	;

label
	: IDENTIFIER COLON	
	;

statement 
	: RETURN vars?  /* return x y z ;*/
	| IDENTIFIER ASSIGN IDENTIFIER /* x = y ;*/
	| IDENTIFIER ASSIGN constant   /* x = 1;  p = &a; - taking the address of an array */
	| IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER /* x = y + z; x = y - z; x = y * z ; */
	| IDENTIFIER ASSIGN IDENTIFIER op constant /* x = y + 1; ... */
	| IDENTIFIER ASSIGN OP_STAR IDENTIFIER /* x = *p; - memory read */
	| OP_STAR IDENTIFIER ASSIGN IDENTIFIER /* *p = x; - memory write */
	| GOTO IDENTIFIER /* goto label */
	| IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER /* if x == y goto label */
	| IF IDENTIFIER relop constant GOTO IDENTIFIER 
	;

vars
	: (IDENTIFIER)+
	;

constant
	: NUMBER
	| OP_AND IDENTIFIER
	;

op
	: OP_MINUS | OP_PLUS | OP_STAR ;

relop	:	EQ | NE | GT | GE | LT | LE ;

/* IR Tokens */
	       
EQ       : '=='   ;
NE       : '!='  ;
LE       : '<='  ;
LT       : '<'   ;
GE       : '>='  ;
GT       : '>'   ;
OP_PLUS  : '+';	
OP_MINUS : '-';	
OP_STAR  : '*';	
OP_AND   : '&';	
SEMI     : ';';	
COLON	 : ':';
ASSIGN	 : '=';
IF       : 'if';	
GOTO     : 'goto';	
ARG      : 'arg';	
RETURN   : 'return';	

fragment
LETTER : ('a'..'z'|'A'..'Z');

fragment
DIGIT : ('0'..'9');
 
IDENTIFIER 
       : (LETTER) (LETTER|DIGIT|'_')*
       ;
       
NUMBER	:	
	(DIGIT)+
	;
	
NEWLINE:'\r'? '\n' {skip();};
WS  :   (' '|'\t')+ {skip();} ;
