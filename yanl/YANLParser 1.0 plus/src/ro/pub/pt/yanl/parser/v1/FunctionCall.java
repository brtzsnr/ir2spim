package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class FunctionCall extends Expression {

	/** Call data encapsulated in a single object. */
	public SubroutineCall call = new SubroutineCall();
	
	public FunctionCall(CommonTree t) {
		super(t);
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		call.resolve(scope, node);
		if (!(call.routine instanceof Function))
			throw new YANLException(call.name + " is not a function.", node);
		
		// Set return type
		Function f = (Function)call.routine;
		type = f.returnType;
		
		return super.resolveExpression(scope);
	}
}
