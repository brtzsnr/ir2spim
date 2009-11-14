package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

/** Properties of a type */

public class Type extends Element {
	
	public static final Type CHAR = new Type(YANLLexer.CHAR);
	public static final Type INTEGER = new Type(YANLLexer.INTEGER);
	public static final Type REAL = new Type(YANLLexer.REAL);
	public static final Type BOOLEAN = new Type(YANLLexer.BOOLEAN);
	
	/* Basic token types, or array - used to differentiate between types */
	int tokenType;
	
	public Type(int token)
	{
		this(token, null);
	}
	
	public Type(int token, CommonTree t) {
		super(t);
		tokenType = token;
	}
	
	
	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof Type))
			return false;
		
		Type type=(Type)obj;
		return type.tokenType == tokenType;
	}

	/** Check if the type "from" can be assigned to the current type, throw an exception
	 * if not. */
	public void checkCanAssign(Type from, CommonTree token) throws YANLException {
		// Basic types should be the same, except for the integer -> real conversion
		if (from.tokenType != tokenType)
			if (from.tokenType != YANLLexer.INTEGER || tokenType != YANLLexer.REAL)
				throw new YANLException("Types not compatible.", token);
	}
	
	/** True if type is one of the basic types, false otherwise */
	
	public boolean isBasicType() {
		switch(tokenType){
		case YANLLexer.BOOLEAN:
		case YANLLexer.CHAR:
		case YANLLexer.INTEGER:
		case YANLLexer.REAL:
			return true;
		default:
			return false;
		}
	}

	public boolean isNumberType() {
		switch(tokenType){
		case YANLLexer.INTEGER:
		case YANLLexer.REAL:
			return true;
		default:
			return false;
		}
	}

	/** Promote current type according to arithmetic rules and the other operand. 
	 * Assume that both types are basic. */
	public Type promote(Type right) throws YANLException {
		// If one operand is real, promote to real
		if (right.tokenType == YANLLexer.REAL)
			return right;
		return this;
	}
	
	/** Check if the type "from" can be converted via cast to the current type
	 *  Throw an exception if not */
	public void checkCanCast(Type from, CommonTree token) throws YANLException {
		// Basic types can cast freely, the rest cannot
		if (!isBasicType() || !from.isBasicType())
			throw new YANLException("Types not compatible.", token);
	}
	
}
