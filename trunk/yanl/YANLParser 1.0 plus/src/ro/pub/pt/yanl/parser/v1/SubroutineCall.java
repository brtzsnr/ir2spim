package ro.pub.pt.yanl.parser.v1;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

/** Common part of procedure and function call. */

public class SubroutineCall {

	/** Procedure name */
	public String name;
	
	/** Reference to called function or procedure. Available after resolve().  */
	public Subroutine routine;
	
	public List<Expression> parameters = new LinkedList<Expression>();

	/** Look up function or procedure, check number of parameters 
	 */
	public void resolve(Scope scope, CommonTree token) throws YANLException {
		Element e = scope.lookup(name, token);
		if (!(e instanceof Subroutine))
			throw new YANLException(name + " is not a procedure of function", token);
		routine = (Subroutine)e;
		
		// Check number of parameters
		if (parameters.size() != routine.parameters.list.size())
			throw new YANLException("Calling "+name+" with the wrong number of parameters", token);
		
		// Check parameter types. Refresh the parameter list, because resolveExpression
		// can create new nodes
		List<Expression> newParams = new LinkedList<Expression>();
		Iterator<Variable> formalParam = routine.parameters.list.iterator();
		for (Expression ex : parameters) {
			Expression newEx = ex.resolveExpression(scope); 
			newParams.add(newEx);
			formalParam.next().type.checkCanAssign(newEx.type, newEx.node);
		}
		parameters = newParams;
	}		
}
