package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class LValue extends Expression {

	public LValue(CommonTree t) {
		super(t);
		// TODO Auto-generated constructor stub
	}
	
	/** Resolves identifiers, checks types and returns the true program element. 
	 * The element returned must replace the original element in all data structures used.
	 * */
	public LValue resolveLValue(Scope scope) throws YANLException {
		return this;
	}

}
