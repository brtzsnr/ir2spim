package ro.pub.cpl.sq2.hello1;

import java.util.ArrayList;

public class StatementBlock {
	ArrayList<Statement> statements = new ArrayList<Statement>();
	
	public void add(Statement s)
	{
		statements.add(s);
	}
	
	public void run()
	{
		for (Statement s : statements)
		{
			s.run();
		}
	}
}
