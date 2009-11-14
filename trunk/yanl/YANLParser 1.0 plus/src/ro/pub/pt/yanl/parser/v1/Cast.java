package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class Cast extends Expression {

	Expression expr;
	/** The resulting type of the expression. */
	Type newType;
	
	public Cast(Type newType, Expression expr, CommonTree t) {
		super(t);
		this.expr = expr;
		this.newType = newType;
		this.type = newType;
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		// Check if the cast between types is legal
		expr = expr.resolveExpression(scope);
		newType.checkCanCast(expr.type, node);
		return super.resolveExpression(scope);
	}

}
