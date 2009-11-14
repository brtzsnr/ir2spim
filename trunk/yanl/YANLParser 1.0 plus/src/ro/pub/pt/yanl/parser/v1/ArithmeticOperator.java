package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class ArithmeticOperator extends BinaryOperator {

	public ArithmeticOperator(Expression left, Expression right, CommonTree t) {
		super(left, right, t);
	}

	/** Make arithmetic promotions and operand checks, but do not set result types. */
	public Expression resolveExpression(Scope scope) throws YANLException {
		super.resolveExpression(scope);
		// integer op integer -> integer
		// real op real -> real
		// real op integer -> real
		// integer op real -> real
		if (!left.type.isNumberType() || !right.type.isNumberType())
			throw new YANLException("Only integers and reals have arithmetic operations.",node);

		// Promotion
		Type t = left.type.promote(right.type);
		t.checkCanAssign(left.type, left.node);
		t.checkCanAssign(right.type, right.node);
		type = t;
		return this;
	}

}
