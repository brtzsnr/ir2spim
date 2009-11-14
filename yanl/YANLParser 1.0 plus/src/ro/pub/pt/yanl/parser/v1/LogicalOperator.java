package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class LogicalOperator extends BinaryOperator {

	public LogicalOperator(Expression left, Expression right, CommonTree t) {
		super(left, right, t);
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		super.resolveExpression(scope);
		// boolean op boolean -> boolean
		Type.BOOLEAN.checkCanAssign(left.type, left.node);
		Type.BOOLEAN.checkCanAssign(right.type, right.node);
		type = Type.BOOLEAN;
		return this;
	}

}
