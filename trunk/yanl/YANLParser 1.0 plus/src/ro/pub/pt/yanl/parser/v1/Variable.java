package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

/**
 *  Declared global variable, local variable or parameter
 */

public class Variable extends Element {
	String name;
	Type type;
	
	public Variable(String aName, Type aType, CommonTree t) {
		super(t);
		name = aName;
		type = aType;
	}
	
}
