package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class ArrayElement extends LValue {

	/** Array name */
	String name;
	
	/** Referred array */
	Variable array;
	
	/** Integer expression used as index in the array */
	Expression index;
	
	public ArrayElement(String aName, Expression index, CommonTree t) {
		super(t);
		name=aName;
		this.index = index;
	}
	
	private void doResolve(Scope scope) throws YANLException {	
		// Check that the variable type is an array value.
		Element var = scope.lookup(name, node);
		if (!(var instanceof Variable))
			throw new YANLException(name + " is not an array variable", node);
		array = (Variable)var;
		if (array.type.tokenType != YANLLexer.ARRAY)
			throw new YANLException(name + " is not an array variable", node);
		
		// Check that the index is an integer value.
		index = index.resolveExpression(scope);
		Type.INTEGER.checkCanAssign(index.type, index.node);

		// Set the expression type
		type = ((ArrayType)(array.type)).elementType;
	}

	@Override
	public LValue resolveLValue(Scope scope) throws YANLException {	
		doResolve(scope);
		return super.resolveLValue(scope);
	}

	@Override
	public Expression resolveExpression(Scope scope) throws YANLException {
		doResolve(scope);
		return super.resolveExpression(scope);
	}	
}
