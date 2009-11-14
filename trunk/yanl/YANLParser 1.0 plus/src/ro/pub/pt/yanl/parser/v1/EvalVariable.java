package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

/** Variable evaluated in an expression, or as an lvalue in an assignment 
 *  Can be either a variable, the return value of a function, or a function call
 *  without parameters
 *  */

public class EvalVariable extends LValue {

	String name;
	
	public EvalVariable(String aName, CommonTree t) {
		super(t);
		name=aName;
	}
	
	/** Referenced variable. Available after resolveLValue() or resolveExpression() */
	Variable var;	

	private Function doResolve(Scope scope) throws YANLException {	
		// Check if we have a variable or a function name.
		Element e = scope.lookup(name, node);
		if (e instanceof Function)
			return (Function)e;
		if (!(e instanceof Variable))
			throw new YANLException(name + " is not a variable", node);
		
		// A true variable! Set the expression type
		var = (Variable)e;
		type = var.type;
		return null;
	}

	@Override
	public LValue resolveLValue(Scope scope) throws YANLException {	
		Function f = doResolve(scope);
		if (f != null) {
			// Return value of a function
			ReturnValue rv = new ReturnValue(f, node);
			return rv.resolveLValue(scope);
		}
		return super.resolveLValue(scope);
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		Function f = doResolve(scope);
		if (f != null) {
			// Calling a function with no parameters
			FunctionCall fc = new FunctionCall(node);
			fc.call.name = name;
			return fc.resolveExpression(scope);
		}
		return super.resolveExpression(scope);
	}	
}
