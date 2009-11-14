package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class BinaryOperator extends Expression {

	Expression left, right;
	
	public BinaryOperator(Expression left, Expression right, CommonTree t) {
		super(t);
		this.left = left;
		this.right = right;
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		left = left.resolveExpression(scope);
		right = right.resolveExpression(scope);
		return this;
	}
	
}
