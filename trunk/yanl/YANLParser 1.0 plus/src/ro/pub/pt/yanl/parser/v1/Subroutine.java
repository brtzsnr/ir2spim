package ro.pub.pt.yanl.parser.v1;

import java.util.LinkedList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

/** Common type for procedures and functions */
public class Subroutine extends Scope {

	/** Name of the procedure/function */
	public String name;
	VariableList parameters, locals;
	List<Statement> statements;
	
	public Subroutine(CommonTree t) {
		super(t);
		parameters = new VariableList();
		locals = new VariableList();
		statements = new LinkedList<Statement>();
	}

	public VariableList getParameters() {
		return parameters;
	}

	public VariableList getLocals() {
		return locals;
	}

	public List<Statement> getStatements() {
		return statements;
	}

	@Override
	public void resolve(Scope scope) throws YANLException {
		super.resolve(scope);
		Statement.resolveAll(this, statements);
	}

	@Override
	public Element lookup(String name, CommonTree token) throws YANLException {
		Element e;
		// Check local variables
		e = locals.lookup(name);

		// Check function parameters
		if (e == null)
			e = parameters.lookup(name);
		
		return e != null ? e : super.lookup(name, token);
	}
}
