package ro.pub.cpl.sq2.hello1;

public class PrintStatement implements Statement {
	String text;
	
	@Override
	public void run()
	{
		System.out.print(text);
	}

	public PrintStatement(String aText)
	{
		text = aText;
	}
}
