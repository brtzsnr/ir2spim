package ro.pub.pt.yanl.parser.v1;

import org.antlr.runtime.tree.CommonTree;

/**
 * YANLException is used to throw semantic errors. 
 * When converted to string, it issues an error message 
 * and optional line and column number information
 */

public class YANLException extends Error {
	
	/** The token tree that caused the error. */
	CommonTree errSource;
	String message;
	
	final static String ERROR_MESSAGE = "The YANL program has errors in line ";
	
	@Override
	public String toString() {
		if (errSource == null)
			return ERROR_MESSAGE + message;
		else
			return ERROR_MESSAGE 
				+ errSource.getLine() + ", column " + errSource.getCharPositionInLine()
				+ " - " + message;
	}

	/** Create a semantic error  */
	public YANLException(String m)
	{
		super();
		message = m;
	}
	
	/** Create a semantic error with source code location */
	public YANLException(String message, CommonTree t)
	{
		this(message);
		errSource = t;
	}
}
