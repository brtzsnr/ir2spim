lexer grammar IR;
@header {
package ro.pub.cpl.irparser;
}

// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 65
EQ       : '=='   ;
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 66
NE       : '!='  ;
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 67
LE       : '<='  ;
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 68
LT       : '<'   ;
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 69
GE       : '>='  ;
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 70
GT       : '>'   ;
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 71
OP_PLUS  : '+';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 72
OP_MINUS : '-';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 73
OP_STAR  : '*';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 74
OP_AND   : '&';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 75
SEMI     : ';';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 76
COLON	 : ':';
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 77
ASSIGN	 : '=';
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 78
IF       : 'if';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 79
GOTO     : 'goto';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 80
ARG      : 'arg';	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 81
RETURN   : 'return';	

// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 83
fragment
LETTER : ('a'..'z'|'A'..'Z');

// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 86
fragment
DIGIT : ('0'..'9');
 
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 89
IDENTIFIER 
       : (LETTER) (LETTER|DIGIT|'_')*
       ;
       
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 93
NUMBER	:	
	(DIGIT)+
	;
	
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 97
NEWLINE:'\r'? '\n' {skip();};
// $ANTLR src "C:\Documents and Settings\Bogdan\My Documents\eclipse_workspace\IRParser\src\ro\pub\cpl\irparser\IR.g" 98
WS  :   (' '|'\t')+ {skip();} ;
