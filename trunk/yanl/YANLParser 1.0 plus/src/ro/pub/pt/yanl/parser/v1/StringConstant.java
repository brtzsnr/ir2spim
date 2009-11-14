package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

public class StringConstant extends Expression {

	/** Value of the constant. */
	String value;
	
	public StringConstant(String quotedValue, CommonTree t) {
		super(t);
		
		// Handle strings like "text""text"
		StringBuffer value = new StringBuffer(quotedValue);
		// Trim first and last double quote
		value.deleteCharAt(value.length() - 1);
		value.deleteCharAt(0);
		// Remove double double quotes
		int i;
		for (i=0; i<value.length(); i++)
			if (value.charAt(i) == '"')
				value.deleteCharAt(i);
		
		this.value=value.toString();
		
		// Type: array [1..length+1] of char
		type = new ArrayType(1, this.value.length() + 1, Type.CHAR, t);
	}

}
