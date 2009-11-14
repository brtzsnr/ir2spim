package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class BooleanConstant extends Expression {

	/** Value of the constant. */
	boolean value;
	
	public BooleanConstant(boolean value, CommonTree t) {
		super(t);
		this.value=value;
		type = Type.BOOLEAN;
	}

}
