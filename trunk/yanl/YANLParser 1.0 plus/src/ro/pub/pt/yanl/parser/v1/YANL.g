grammar YANL;

options {
	k = 2;
	output = AST;
	ASTLabelType = CommonTree;
}

tokens {  
    /* tokens for the lexer */
//    DOT							      ;
    
    /* imaginary tokens, AST nodes */
    ARRAY_INDEX						   ;
    CAST						   ;
    UMINUS						   ;
    ARGLIST						   ;
    IDLIST						   ;
    VARDECL						   ;
    FORMAL_ARGS						   ;
    ARGDECL						   ;
    BLOCK						   ;
    PROC_CALL						   ;
    FUNC_CALL						   ;
}


@header {
package ro.pub.pt.yanl.parser.v1;
}

@lexer::header {
package ro.pub.pt.yanl.parser.v1;
}

/* PROGRAM RULES */
program
	: PROGRAM identifier SEMI programBlock DOT EOF -> ^(PROGRAM identifier programBlock) 
	;

programBlock 
 	: 
 	(variableDeclarationPart
 	| procedureFunctionDeclarationPart
 	)*
 	body
 	;
 	
/* VARIABLES RULES */
variableDeclarationPart 
	: VAR v+=variableDeclaration ( SEMI v+=variableDeclaration )* SEMI -> ^(VAR $v+)
	;

variableDeclaration 
	: identifierList c=COLON type -> ^(VARDECL[$c, "VARDECL"] identifierList type)
	;


/* TYPES RULES */ 
type : baseType 
	| arrayType
	;
baseType 
	: CHAR
	| BOOLEAN
	| INTEGER
	| REAL
	;

arrayType
	: ARRAY LBRACK start=unsignedInteger DOTDOT stop=unsignedInteger RBRACK OF baseType -> ^(ARRAY $start $stop baseType)
	;

/* PROCEDURE AND FUNCTION RULES */
procedureFunctionDeclarationPart 
	: procedureFunctionDeclaration SEMI!
	;

procedureFunctionDeclaration 
	: procedureDeclaration
	| functionDeclaration
	;

procedureDeclaration 
	: PROCEDURE identifier formalParameterList? variableDeclarationPart? body ->
		^(PROCEDURE identifier formalParameterList? variableDeclarationPart? body)
	;

formalParameterList
	: LPAREN f+=formalParameterGroup ( SEMI f+=formalParameterGroup)* RPAREN ->
		^(FORMAL_ARGS $f+)
	;

formalParameterGroup 
	: identifierList c=COLON type -> ^(ARGDECL[$c, "ARGDECL"] identifierList type)
	;

functionDeclaration
	: FUNCTION identifier formalParameterList? COLON resultType variableDeclarationPart? body ->
		^(FUNCTION identifier formalParameterList? resultType variableDeclarationPart? body)
	;

resultType : baseType ;

/* IDENTIFIER RULES */
identifierList 
	: i+=identifier ( COMMA i+=identifier)* -> ^(IDLIST $i+)   
  	;
identifier : IDENTIFIER ;

/* STATEMENTS */
body : compoundStatement ;

compoundStatement 
	: BEGIN! statements END!
	;
statements
	: s+=statement (SEMI s+=statement)* -> ^(BLOCK["BLOCK"] $s+)
	;
statement : simpleStatement | structuredStatement ;

simpleStatement : assignmentStatement | procedureStatement | emptyStatement ;

assignmentStatement : variable ASSIGN expression -> ^(ASSIGN variable expression) ;

/* procedure and function call */
procedureStatement : identifier ( LPAREN parameterList RPAREN)? ->
	^(PROC_CALL identifier parameterList?)
	;
functionDesignator : identifier LPAREN parameterList RPAREN ->
	^(FUNC_CALL identifier parameterList)
	;
parameterList : a+=actualParameter ( COMMA a+=actualParameter)* ->
	^(ARGLIST["ARGLIST"] $a+) 
	;
actualParameter : expression ;

emptyStatement : /* empty */ 
	;

/* structured statements */
structuredStatement : compoundStatement | ifStatement | whileStatement | repeatStatement ;

ifStatement : IF expression THEN t=statement 
	( options {greedy = true;} : ELSE e=statement)? -> ^(IF expression $t $e?)
	;
whileStatement : WHILE expression DO statement -> ^(WHILE expression statement)
	;
repeatStatement : REPEAT statements UNTIL expression -> ^(REPEAT expression statements)
	;

/* VARIABLE REFERENCES */
variable
	: identifier 
	| identifier LBRACK expression RBRACK -> ^(ARRAY_INDEX identifier expression)
	;

/* EXPRESSIONS */
expression
	: simpleExpression ( (AND^ | OR^ | XOR^) simpleExpression )* 
	;
simpleExpression 
	: term ( (PLUS^ | MINUS^) term )*
	;
term
	: factor ( (STAR^ | SLASH^ | DIV^ | MOD^) factor)*
	;

factor 
	: relOp ( (EQUAL^ | NOT_EQUAL^ | LT^ | LE^ | GE^ | GT^) relOp)*
	;
relOp 
	: variable 
	| LPAREN! expression RPAREN!
	| functionDesignator
	| NOT^ relOp
	| MINUS relOp -> ^(UMINUS relOp)
	| unsignedConstant
	| LPAREN baseType RPAREN relOp -> ^(CAST baseType relOp)
	;

unsignedConstant
	: unsignedNumber
	| unsignedChar
	| booleanLiteral
	| string
	;
unsignedNumber 
	: unsignedInteger
	| unsignedReal
	;
unsignedInteger : INTEGER_LIT;
unsignedReal : REAL_LIT;
unsignedChar : CHAR_LIT;
string : STRING_LIT;
booleanLiteral : TRUE | FALSE;


  /* Case insensitive keywords generated by "keywordgen.awk keywords.txt" */
    AND : ('A'|'a')('N'|'n')('D'|'d') ;
    ARRAY : ('A'|'a')('R'|'r')('R'|'r')('A'|'a')('Y'|'y') ;
    BEGIN : ('B'|'b')('E'|'e')('G'|'g')('I'|'i')('N'|'n') ;
    BOOLEAN : ('B'|'b')('O'|'o')('O'|'o')('L'|'l')('E'|'e')('A'|'a')('N'|'n') ;
    CHAR : ('C'|'c')('H'|'h')('A'|'a')('R'|'r') ;
    DIV : ('D'|'d')('I'|'i')('V'|'v') ;
    DO : ('D'|'d')('O'|'o') ;
    ELSE : ('E'|'e')('L'|'l')('S'|'s')('E'|'e') ;
    END : ('E'|'e')('N'|'n')('D'|'d') ;
    FALSE : ('F'|'f')('A'|'a')('L'|'l')('S'|'s')('E'|'e') ;
    FUNCTION : ('F'|'f')('U'|'u')('N'|'n')('C'|'c')('T'|'t')('I'|'i')('O'|'o')('N'|'n') ;
    IF : ('I'|'i')('F'|'f') ;
    INTEGER : ('I'|'i')('N'|'n')('T'|'t')('E'|'e')('G'|'g')('E'|'e')('R'|'r') ;
    MOD : ('M'|'m')('O'|'o')('D'|'d') ;
    NOT : ('N'|'n')('O'|'o')('T'|'t') ;
    OF : ('O'|'o')('F'|'f') ;
    OR : ('O'|'o')('R'|'r') ;
    PROCEDURE : ('P'|'p')('R'|'r')('O'|'o')('C'|'c')('E'|'e')('D'|'d')('U'|'u')('R'|'r')('E'|'e') ;
    PROGRAM : ('P'|'p')('R'|'r')('O'|'o')('G'|'g')('R'|'r')('A'|'a')('M'|'m') ;
    REAL : ('R'|'r')('E'|'e')('A'|'a')('L'|'l') ;
    REPEAT : ('R'|'r')('E'|'e')('P'|'p')('E'|'e')('A'|'a')('T'|'t') ;
    THEN : ('T'|'t')('H'|'h')('E'|'e')('N'|'n') ;
    TRUE : ('T'|'t')('R'|'r')('U'|'u')('E'|'e') ;
    UNTIL : ('U'|'u')('N'|'n')('T'|'t')('I'|'i')('L'|'l') ;
    VAR : ('V'|'v')('A'|'a')('R'|'r') ;
    XOR : ('X'|'x')('O'|'o')('R'|'r') ;
    WHILE : ('W'|'w')('H'|'h')('I'|'i')('L'|'l')('E'|'e') ;  


PLUS            : '+'   ;
MINUS           : '-'   ;
STAR            : '*'   ;
SLASH           : '/'   ;
ASSIGN          : ':='  ;
COMMA           : ','   ;
SEMI            : ';'   ;
COLON           : ':'   ;
EQUAL           : '='   ;
NOT_EQUAL       : '<>'  ;
LT              : '<'   ;
LE              : '<='  ;
GE              : '>='  ;
GT              : '>'   ;
LPAREN          : '('   ;
RPAREN          : ')'   ;
LBRACK          : '['   ; 
RBRACK          : ']'   ;

//DOTDOT				: ('.''.') => ('.''.')
//					| '.' {$type = DOT;} 
//					;

DOTDOT		: '..' ;
DOT		: '.' ;

LCURLY          : '{' ;
RCURLY          : '}' ;

LINE_COMMENT : '#' (~('\n'|'\r'))* 	{ skip (); }
	;
MULTILINE_COMMENT
       : '(*' (options {greedy = false;} : .)* '*)'
               { skip(); }
       ;	

fragment
LETTER : ('a'..'z'|'A'..'Z');

fragment
DIGIT : ('0'..'9');
 
IDENTIFIER
       : (LETTER) (LETTER|DIGIT|'_')*
       ;
	
//INTEGER_LIT
//	: (DIGIT)+
//	;

REAL_LIT
	: ((DIGIT)+ '.' (DIGIT)+) => ((DIGIT)+ '.' (DIGIT)+)
	| (DIGIT)+ { $type=INTEGER_LIT; }
	;



CHAR_LIT : '\'' . '\'';
STRING_LIT : '"' ('""' | ~('"'))* '"'; 

NEWLINE:'\r'? '\n' {skip();};
WS  :   (' '|'\t')+ {skip();} ;
