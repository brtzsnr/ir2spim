package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

/** Return value from a function */
public class ReturnValue extends LValue {

	Function func;
	
	public ReturnValue(Function func, CommonTree t) {
		super(t);
		this.func = func;
	}

	@Override
	public LValue resolveLValue(Scope scope) throws YANLException {
		// Check if we are actually inside the function
		if (scope != func)
			throw new YANLException("Cannot assign a value to function " + func.name, node);			
		
		// Set expression / lvalue type
		type = func.returnType;
		return super.resolveLValue(scope);
	}
	
}
