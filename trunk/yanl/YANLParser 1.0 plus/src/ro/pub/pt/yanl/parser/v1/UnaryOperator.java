package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class UnaryOperator extends Expression {

	Expression expr;
	
	public UnaryOperator(Expression expr, CommonTree t) {
		super(t);
		this.expr = expr;
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		expr = expr.resolveExpression(scope);
		return this;
	}
	
	
}
