/**
 * 
 */
package ro.pub.pt.yanl.parser.v1;

import java.util.LinkedList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

/**
 * Pseudo-element. Contains "prototypes" for runtime functions.
 *
 */
public class RuntimeLibrary extends Scope {

	List<Subroutine> runtimeElements = new LinkedList<Subroutine>();
	
	private static Procedure createProcedure1(String name, Variable argument, CommonTree t) {
		Procedure p = new Procedure(t);
		p.name = name;
		p.parameters.list.add(argument);
		return p;
	}
	
	private static Function createFunction0(String name, Type returnType, CommonTree t) {
		Function f = new Function(t);
		f.name = name;
		f.returnType = returnType;
		return f;
	}
	
	public RuntimeLibrary(CommonTree t) {
		super(t);
		runtimeElements.add(createProcedure1("writeinteger", 
				new Variable("i", Type.INTEGER, t), t));
		runtimeElements.add(createProcedure1("writecharacter", 
				new Variable("i", Type.CHAR, t), t));
		runtimeElements.add(createProcedure1("writeboolean", 
				new Variable("i", Type.BOOLEAN, t), t));
		runtimeElements.add(createProcedure1("writestring", 
				new Variable("i", new ArrayType(1, 0, Type.CHAR, t), t), t));
		runtimeElements.add(createProcedure1("writereal", 
				new Variable("i", Type.REAL, t), t));
		runtimeElements.add(createFunction0("readinteger", Type.INTEGER, t));
		runtimeElements.add(createFunction0("readreal", Type.REAL, t));
		runtimeElements.add(createFunction0("readcharacter", Type.CHAR, t));
	}

	@Override
	public Element lookup(String name, CommonTree token) throws YANLException {
		for (Subroutine e:runtimeElements)
			if (e.name.equals(name))
				return e;
		return super.lookup(name, token);
	}
}
