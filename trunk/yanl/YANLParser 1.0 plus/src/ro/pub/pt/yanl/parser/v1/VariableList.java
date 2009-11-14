package ro.pub.pt.yanl.parser.v1;

import java.util.LinkedList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

public class VariableList {
	public List<Variable> list = new LinkedList<Variable>();
	
	public Variable lookup(String s)
	{
		for (Variable v : list)
		{
			if (v.name.equals(s))
				return v;
		}
		return null;
	}
	
	public void addIfNew(List<String> names, Type type, CommonTree token) throws YANLException
	{
		  for (String n: names) {
		    if (lookup(n) != null)
		      throw new YANLException("Duplicated variable name " + n, token);
		    list.add(new Variable(n, type, token));
		  }
		}

}