package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class IntegerOperator extends BinaryOperator {

	public IntegerOperator(Expression left, Expression right, CommonTree t) {
		super(left, right, t);
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		super.resolveExpression(scope);
		// integer op integer -> integer
		Type.INTEGER.checkCanAssign(left.type, left.node);
		Type.INTEGER.checkCanAssign(right.type, right.node);
		type = Type.INTEGER;
		return this;
	}

}
