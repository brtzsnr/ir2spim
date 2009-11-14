tree grammar ASTCheck;

options {
    k = 2;
    tokenVocab=YANL;
    ASTLabelType=CommonTree;
}

@header {
package ro.pub.pt.yanl.parser.v1;
import java.util.List;
import java.util.LinkedList;
}


program returns [Program p]
@init 	{ 
	  $p = new Program($start); 
	  VariableList globals=$p.getGlobalVars();
	  List<Statement> mainBlock=$p.getStatements();
	}	
	:	^(PROGRAM identifier[null] 
			( variableDeclarationPart[globals]
 			| procedureDeclaration[$p]
			| functionDeclaration[$p]		
 			)*
 			statements[mainBlock]
		)
	;
	
variableDeclarationPart [ VariableList vars ]
	:	 ^(VAR variableDeclaration[$vars]+)
	;

variableDeclaration  [ VariableList vars ]
	: 	^(VARDECL i=identifierList t=type)
	{ vars.addIfNew($i.names, $t.t, $start); }
	;



/* TYPES RULES */ 
type returns [ Type t ]
	: baseType { $t = $baseType.t; }
	| arrayType { $t = $arrayType.t; }
	;
baseType returns [ Type t ]
@init	{ $t = new Type($start.getType(), $start); }
	: CHAR
	| BOOLEAN
	| INTEGER
	| REAL
	;


procedureDeclaration [ Program prog ]
@init	{ 
	  Procedure p = new Procedure($start);
	}
	: ^(PROCEDURE identifier[null] formalParameterList[p.getParameters()]? variableDeclarationPart[p.getLocals()]? statements[p.getStatements()])
	{ 
	  p.name = $identifier.name;
	  $prog.addProcIfNew(p);
	}
	;
arrayType returns [ Type t ]
	: ^(ARRAY low=unsignedInteger high=unsignedInteger baseType)
	{ 
	  if ($high.value < $low.value)
	    throw new YANLException("Array limit error :" + $low.value + ">" + $high.value, $start);
	  $t = new ArrayType($low.value, $high.value, $baseType.t ,$start); 
	}
	;

/* PROCEDURE AND FUNCTION RULES */


formalParameterList [ VariableList vars ]
	: ^(FORMAL_ARGS formalParameterGroup[$vars]+)
	;

formalParameterGroup [ VariableList vars ]
	: ^(ARGDECL i=identifierList t=type)
	{ vars.addIfNew($i.names, $t.t, $start); }
	;

functionDeclaration [ Program p ]
@init	{ 
	  Function f = new Function($start);
	}
	: ^(FUNCTION identifier[null] formalParameterList[f.getParameters()]? resultType variableDeclarationPart[f.getLocals()]? statements[f.getStatements()])
	{ 
	  f.name = $identifier.name;
	  f.returnType = $resultType.t;
	  $p.addFuncIfNew(f);
	}
	;

resultType returns [ Type t ] : baseType { $t = $baseType.t; };

/* identifier RULES */
identifierList returns [ List<String> names ]
@init	{ $names = new LinkedList<String>(); }
	: ^(IDLIST identifier[$names]+)   
  	;

/* STATEMENTS */
statements [ List<Statement> s ]
	: ^(BLOCK statement[$s]*)
	;
	
statement [ List<Statement> s ]
@init	{ ProcedureCall pc = new ProcedureCall($start); }
	: ^(ASSIGN variable expression) { $s.add(new Assignment($variable.e, $expression.e, $start));  }
	| ^(PROC_CALL identifier[null] parameterList[pc.call.parameters]?) 
	{
	  pc.call.name = $identifier.name;
	  $s.add(pc);  
	}
	| structuredStatement[$s]
	;

/* procedure and function call */
functionDesignator returns [ FunctionCall fc ]
@init	{ 
   	  $fc = new FunctionCall($start); 
   	  List<Expression> params = $fc.call.parameters;
	}
	: ^(FUNC_CALL identifier[null] parameterList[params])
	{
	  $fc.call.name = $identifier.name;
	}
	;
parameterList[List<Expression> l] : ^(ARGLIST actualParameter[$l]+) 
	;
actualParameter[List<Expression> l] : expression { $l.add($expression.e); } ;

/* structured statements */
structuredStatement [ List<Statement> s] : statements[$s] | ifStatement[$s] | whileStatement[$s] | repeatStatement[$s] ;

ifStatement [ List<Statement> s]
@init	{ If st = new If($start); }
	: 	^(IF expression (statement[st.getThenBranch()] statement[st.getElseBranch()]?)? ) 
	{ 
	  st.setCondition($expression.e);
	  $s.add(st);
	}
	;
whileStatement [ List<Statement> s] 
@init	{ While st = new While($start); }
	: ^(WHILE expression statement[st.getStatements()]?)
	{ 
	  st.setCondition($expression.e);
	  $s.add(st);
	}
	;
repeatStatement [ List<Statement> s] 
@init	{ Repeat st = new Repeat($start); }
	: ^(REPEAT expression statements[st.getStatements()])
	{ 
	  st.setCondition($expression.e);
	  $s.add(st);
	}
	;

/* VARIABLE REFERENCES */
variable returns [LValue e]
	: identifier[null] { $e = new EvalVariable($identifier.name, $start); }
	| ^(ARRAY_INDEX identifier[null] expression) { $e = new ArrayElement($identifier.name, $expression.e, $start); }
	;

/* EXPRESSIONS */
expression returns [Expression e]
	: ^(AND l=expression r=expression)  		{ $e = new And($l.e, $r.e, $start); }
	| ^(OR l=expression r=expression)  		{ $e = new Or($l.e, $r.e, $start); }
	| ^(XOR l=expression r=expression)  		{ $e = new Xor($l.e, $r.e, $start); }
	| ^(PLUS l=expression r=expression)  		{ $e = new Plus($l.e, $r.e, $start); }
	| ^(MINUS l=expression r=expression)  		{ $e = new Minus($l.e, $r.e, $start); }
	| ^(UMINUS x=expression)			{ $e = new UMinus($x.e, $start); }	
	| ^(STAR l=expression r=expression)  		{ $e = new Star($l.e, $r.e, $start); }
	| ^(SLASH l=expression r=expression)  		{ $e = new Slash($l.e, $r.e, $start); }
	| ^(DIV l=expression r=expression)  		{ $e = new Div($l.e, $r.e, $start); }
	| ^(MOD l=expression r=expression)  		{ $e = new Mod($l.e, $r.e, $start); }
	| ^(EQUAL l=expression r=expression)  		{ $e = new Equal($l.e, $r.e, $start); }
	| ^(NOT_EQUAL l=expression r=expression)	{ $e = new NotEqual($l.e, $r.e, $start); }
	| ^(LT l=expression r=expression)  		{ $e = new LessThan($l.e, $r.e, $start); }
	| ^(LE l=expression r=expression)  		{ $e = new LessThanEqual($l.e, $r.e, $start); }
	| ^(GE l=expression r=expression)  		{ $e = new GreaterThanEqual($l.e, $r.e, $start); }
	| ^(GT l=expression r=expression)  		{ $e = new GreaterThan($l.e, $r.e, $start); }
	| variable 					{ $e = $variable.e; }
	| functionDesignator				{ $e = $functionDesignator.fc; }
	| ^(NOT x=expression)				{ $e = new Not($x.e, $start); }
	| unsignedConstant				{ $e = $unsignedConstant.value; }
	| ^(CAST baseType x=expression)			{ $e = new Cast($baseType.t, $x.e, $start); }
	;

identifier [List<String> symbols] returns [String name]  : IDENTIFIER
	{ 
	  $name = $IDENTIFIER.text.toLowerCase();
	  if ($symbols != null) {
	    if ($symbols.contains($name))
	      throw new YANLException("Duplicated identifier "+$name, $start);
	    $symbols.add($name);
	  }
	}
	;
	
unsignedConstant returns [ Expression value ]
	: unsignedNumber { $value = $unsignedNumber.value; }
	| unsignedChar   { $value = new CharConstant($unsignedChar.value, $start); }
	| booleanLiteral { $value = new BooleanConstant($booleanLiteral.value, $start); }
	| string	 { $value = new StringConstant($string.value, $start); }
	;
unsignedNumber returns [ Expression value ]
	: unsignedInteger { $value = new IntegerConstant($unsignedInteger.value, $start); }
	| unsignedReal    { $value = new RealConstant($unsignedReal.value, $start); }
	;
unsignedInteger returns [ int value ] : INTEGER_LIT { $value = Integer.parseInt($INTEGER_LIT.text); } ;
unsignedReal returns [ double value ] : REAL_LIT { $value = Double.parseDouble($REAL_LIT.text); };
unsignedChar returns [ char value ] : CHAR_LIT { $value = $CHAR_LIT.text.charAt(1); } ;
string returns [ String value ] : STRING_LIT { $value = $STRING_LIT.text; } ;
booleanLiteral returns [ boolean value ]
	: TRUE   { $value = true; }
	| FALSE  { $value = false; }
	;
