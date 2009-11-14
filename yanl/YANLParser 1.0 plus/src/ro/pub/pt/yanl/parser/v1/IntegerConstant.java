package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class IntegerConstant extends Expression {

	/** Value of the constant. */
	int value;
	
	public IntegerConstant(int value, CommonTree t) {
		super(t);
		this.value=value;
		type = Type.INTEGER;
	}

}
