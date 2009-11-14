package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class Assignment extends Statement {

	LValue left;
	Expression right;
	
	public Assignment(LValue aLeft, Expression aRight, CommonTree t) {
		super(t);
		left = aLeft;
		right = aRight;
	}

	@Override
	public void resolve(Scope scope) throws YANLException {
		super.resolve(scope);
		left = left.resolveLValue(scope);
		right = right.resolveExpression(scope);

		// Check if the types are compatible
		left.type.checkCanAssign(right.type, node);
	}
	

}
