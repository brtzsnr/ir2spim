package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class Function extends Subroutine {

	public Type returnType;
	
	public Function(CommonTree t) {
		super(t);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Element lookup(String name, CommonTree token) throws YANLException {
		// The name of the function is used when returning values
		if (name.equals(this.name))
			return this;
		return super.lookup(name, token);
	}
}
