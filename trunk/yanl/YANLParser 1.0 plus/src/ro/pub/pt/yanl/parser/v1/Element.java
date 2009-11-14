/**
 * 
 */
package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

/**
 * An element of the YANL language corresponding a source code syntax subtree
 *
 */
public class Element {
	
	/** AST node */
	CommonTree node;
	
	/** Create element from AST node */
	public Element(CommonTree t)
	{
		node = t;
	}
	
	/** Resolve types, do variable/procedure/function bindings, check type compatibility 
	 * @param scope 
	 * Name space for evaluating the language element */
	public void resolve(Scope scope) throws YANLException {		
	}
}
