package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class CompareOperator extends BinaryOperator {

	public CompareOperator(Expression left, Expression right, CommonTree t) {
		super(left, right, t);
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		super.resolveExpression(scope);
		// integer op integer -> boolean
		// char op char -> boolean
		// boolean op boolean -> boolean
		// real op real -> boolean
		// real op integer -> boolean
		// integer op real -> boolean
		if (!left.type.isBasicType() || !right.type.isBasicType())
			throw new YANLException("Only basic types can be compared",node);

		// Promotion
		Type t = left.type.promote(right.type);
		t.checkCanAssign(left.type, left.node);
		t.checkCanAssign(right.type, right.node);
		type = Type.BOOLEAN;
		return this;
	}

}
