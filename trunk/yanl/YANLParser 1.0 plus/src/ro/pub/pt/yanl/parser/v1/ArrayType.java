package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class ArrayType extends Type {

	/** Array limits */
	public int start, stop;
	
	/** Type of an element */
	public Type elementType;
	
	public ArrayType(int aStart, int aStop, Type aType, CommonTree t) {
		super(YANLLexer.ARRAY, t);
		start = aStart;
		stop = aStop;
		elementType = aType;
	}

	
	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof ArrayType))
			return false;
		
		ArrayType type = (ArrayType) obj;
		return type.elementType.equals(elementType) && type.start == start && type.stop==stop;
	}

	/** Hack. writeString should accept any string, regardless of its length.
	 *  We create a magic parameter: array[1..0] of string, which is compatible with any array
	 * */
	private boolean isMagicStringAssignment(Type from) {
		if (elementType.tokenType != YANLLexer.CHAR || start!=1 || stop!=0)
			return false;
		if (!(from instanceof ArrayType))
			return false;
		ArrayType f = (ArrayType)from;
		return f.elementType.tokenType == YANLLexer.CHAR && f.start == 1;
	}

	@Override
	public void checkCanAssign(Type from, CommonTree token)
			throws YANLException {
		if (!equals(from)) {
			// Check for writeString
			if (isMagicStringAssignment(from))
				return;
			throw new YANLException("Copied arrays must have the same start, stop indexes and element types", token);
		}
	}

}
