/**
 * 
 */
package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

/**
 * Structure that defines a name space for contained objects (variables and subroutines)
 *
 */
public class Scope extends Element {

	/** Higher level name space */
	Scope higherScope; 
	
	public Scope(CommonTree t) {
		super(t);
	}

	@Override
	public void resolve(Scope scope) throws YANLException {
		higherScope = scope;
	}

	/** Search for a program element according to its identifier. */
	public Element lookup(String name, CommonTree token) throws YANLException {
		if (higherScope == null)
			throw new YANLException("Identifier " + name + " not defined anywhere", token);
		return higherScope.lookup(name, token);
	}
}
