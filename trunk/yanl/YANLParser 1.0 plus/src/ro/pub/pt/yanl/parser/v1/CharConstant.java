package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class CharConstant extends Expression {

	/** Value of the constant. */
	char value;
	
	public CharConstant(char value, CommonTree t) {
		super(t);
		this.value=value;
		type = Type.CHAR;
	}

}
