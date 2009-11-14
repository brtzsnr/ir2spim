package ro.pub.pt.yanl.parser.v1;

import java.util.LinkedList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

/**
 * 
 * YANL Program. Contains code, functions, procedures, global variables
 * and it is an implicit symbol table.
 *
 */

public class Program extends Scope {
	
	/** List of global variables */
	VariableList globalVars;
	List<Procedure> procedures = new LinkedList<Procedure>();
	List<Function> functions = new LinkedList<Function>();
	List<Statement> statements = new LinkedList<Statement>();
	
	public Program(CommonTree t) {
		super(t);
		globalVars = new VariableList();
	}

	public VariableList getGlobalVars() {
		return globalVars;
	}
	
	public Procedure procLookup(String n)
	{
		for (Procedure p : procedures)
		{
			if (p.name.equals(n))
				return p;
		}
		return null;
	}

	public Function funcLookup(String n)
	{
		for (Function f : functions)
		{
			if (f.name.equals(n))
				return f;
		}
		return null;
	}

	public List<Procedure> getProcedures() {
		return procedures;
	}

	public List<Function> getFunctions() {
		return functions;
	}
	
	void checkNewSubroutine(String name, CommonTree token) throws YANLException {
		if (funcLookup(name) != null || procLookup(name) != null)
			throw new YANLException("Existing procedure or function with the same name : " 
					+ name, token);
	}

	public void addProcIfNew(Procedure p) throws YANLException {
		checkNewSubroutine(p.name, p.node);
		procedures.add(p);
	}

	public void addFuncIfNew(Function f) throws YANLException {
		checkNewSubroutine(f.name, f.node);
		functions.add(f);
	}

	public List<Statement> getStatements() {
		return statements;
	}

	@Override
	public void resolve(Scope scope) throws YANLException {
		super.resolve(scope);
		
		// Check for name conflicts between global variables, functions and procedures		
		// Resolve functions
		for (Function f:functions){
			if (globalVars.lookup(f.name) != null)
				throw new YANLException("A function and a global variable are both named "+f.name,
						f.node);
			f.resolve(this);
		}

		// Resolve procedures
		for (Procedure p:procedures) {
			if (globalVars.lookup(p.name) != null)
				throw new YANLException("A procedure and a global variable are both named "+p.name,
						p.node);
			p.resolve(this);
		}
		
		// Resolve main program
		Statement.resolveAll(this, statements);
	}

	@Override
	public Element lookup(String name, CommonTree token) throws YANLException {
		Element e;
		e = globalVars.lookup(name);
		if (e == null)
			e = funcLookup(name);
		if (e == null)
			e = procLookup(name);
		return e != null ? e : super.lookup(name, token);
	}
	
}
