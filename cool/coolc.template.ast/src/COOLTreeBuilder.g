grammar COOLTreeBuilder;

options {
	language = Java;
	output = AST;
	ASTLabelType = CommonTree;
}

tokens {
	// Virtual tokens
	FEATURES;
	METHOD;
	ATTRIBUTE;
	SIGNATURE;
	
	// Keywords
	CLASS='CLASS';
	ELSE='ELSE';
	FALSE='FALSE';
	FI='FI';
	IF='IF';
	IN='IN';
	INHERITS='INHERITS';
	ISVOID='ISVOID';
	LET='LET';
	LOOP='LOOP';
	POOL='POOL';
	THEN='THEN';
	WHILE='WHILE';
	CASE='CASE';
	ESAC='ESAC';
	NEW='NEW';
	OF='OF';
	NOT='NOT';
	TRUE='TRUE';
	
}

// TODO: Implement your header and members sections

// TODO: Extend or rewrite the syntax description below to cover the entire COOL specs.

program	
	:	
	(classdef ';'!)+
	;
	
classdef
	: CLASS name=TYPE_ID (INHERITS parent=TYPE_ID)?
		start='{' (feature ';')* end='}' -> ^(CLASS $name $parent? ^(FEATURES[$start] feature*))
	;
	
/*
	Note the usage of the syntax VIRTUAL_TOKEN[REAL_TOKEN] in the rewrite rules. This
	means the virtual token gets all the physical attributes (line number and column)
	of the real token. This way, we can use $VIRTUAL_TOKEN.line and other similar
	functions in the tree grammar (otherwise, it would return -1).
*/

feature
	: // TODO: Go on by your own from here 
	;

// TODO: Implement here you lexical analysis

