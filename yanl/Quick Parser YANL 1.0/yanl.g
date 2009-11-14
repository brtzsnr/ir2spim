
grammar yanl;

options {
	k = 2;
	output = AST;
	ASTLabelType = CommonTree;
}

tokens {
  /* KEYWORDS */
  AND              = 'and'             ;
  ARRAY            = 'array'           ;
  BEGIN            = 'begin'           ;
  BOOLEAN          = 'boolean'         ;
  CHAR             = 'char'            ;
  DIV			   = 'div'			   ;
  DO               = 'do'              ;
  ELSE             = 'else'            ;
  END              = 'end'             ;
  FALSE			   = 'false'		   ;
  FUNCTION         = 'function'        ;
  IF               = 'if'              ;
  INTEGER          = 'integer'         ;
  MOD              = 'mod'             ;
  NOT              = 'not'             ;
  OF               = 'of'              ;
  OR               = 'or'              ;
  PROCEDURE        = 'procedure'       ;
  PROGRAM          = 'program'         ;
  REAL             = 'real'            ;
  REPEAT           = 'repeat'          ;
  THEN             = 'then'            ;
  TRUE			   = 'true'			   ;
  UNTIL            = 'until'           ;
  VAR              = 'var'             ;
  XOR			   = 'xor'			   ;
  WHILE            = 'while'           ;
  /* tokens for the lexer */
  DOT							   	   ;
  /* imaginary tokens, AST nodes */
  ARRAY_INDEX						   ;
  ARGLIST							   ;
  IDLIST							   ;
  VARDECL							   ;
  FORMAL_ARGS						   ;
  ARGDECL							   ;
  BLOCK								   ;
  PROC_CALL							   ;
  FUNC_CALL							   ;
}

/* PROGRAM RULES */
program
	: PROGRAM identifier SEMI programBlock -> ^(PROGRAM identifier programBlock) 
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
	| MINUS^ relOp
	| unsignedConstant
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

DOTDOT				: ('.''.') => ('.''.')
					| '.' {$type = DOT;} 
					;
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

REAL_LIT
	: ((DIGIT)+ ('.') (DIGIT)+) => ((DIGIT)+ ('.') (DIGIT)+)
	| (DIGIT)+ {$type = INTEGER_LIT;} 
	;

CHAR_LIT : '\'' . '\'';
STRING_LIT : '"' ('""' | ~('"'))* '"'; 

NEWLINE:'\r'? '\n' {skip();};
WS  :   (' '|'\t')+ {skip();} ;

