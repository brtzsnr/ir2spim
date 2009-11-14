package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class RealConstant extends Expression {

	/** Value of the constant. */
	double value;
	
	public RealConstant(double value, CommonTree t) {
		super(t);
		this.value=value;
		type = Type.REAL;
	}

}
