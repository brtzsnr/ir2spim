package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class UMinus extends UnaryOperator {

	public UMinus(Expression expr, CommonTree t) {
		super(expr, t);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		super.resolveExpression(scope);
		
		// - real -> real
		// - integer -> integer
		Type t = expr.type.tokenType == YANLLexer.INTEGER ?  Type.INTEGER : Type.REAL;
		t.checkCanAssign(expr.type, node);
		type = t;
		return this;
	}
}
