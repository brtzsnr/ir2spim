package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class Expression extends Element {

	public Expression(CommonTree t) {
		super(t);
	}
	
	/** Type of the expression, found by resolveExpression() */
	Type type;
	
	/** Resolve types, check identifiers, return a changed element type if necessary. */
	public Expression resolveExpression(Scope scope) throws YANLException{
		return this;
	}

}
