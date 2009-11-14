package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class Slash extends BinaryOperator {

	public Slash(Expression left, Expression right, CommonTree t) {
		super(left, right, t);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		super.resolveExpression(scope);
		// integer op integer -> real
		// real op real -> real
		// real op integer -> real
		// integer op real -> real
		if (!left.type.isNumberType() || !right.type.isNumberType())
			throw new YANLException("Only integers and reals have arithmetic operations.",node);

		Type.REAL.checkCanAssign(left.type, left.node);
		Type.REAL.checkCanAssign(right.type, right.node);
		type = Type.REAL;
		return this;
	}
}
