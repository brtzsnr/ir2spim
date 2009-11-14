package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class Not extends UnaryOperator {

	public Not(Expression expr, CommonTree t) {
		super(expr, t);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		super.resolveExpression(scope);
		
		// not boolean -> boolean
		Type.BOOLEAN.checkCanAssign(expr.type, node);
		type = Type.BOOLEAN;
		return this;
	}
	
}
