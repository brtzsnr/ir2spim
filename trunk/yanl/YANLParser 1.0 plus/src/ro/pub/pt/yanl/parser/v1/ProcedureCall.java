package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class ProcedureCall extends Statement {

	/** Call data encapsulated in a single object. */
	public SubroutineCall call = new SubroutineCall();
	
	public ProcedureCall(CommonTree t) {
		super(t);
	}

	@Override
	public void resolve(Scope scope) throws YANLException {
		super.resolve(scope);
		call.resolve(scope, node);
		if (!(call.routine instanceof Procedure))
			throw new YANLException(call.name + " is not a procedure.", node);
	}		
}
