package ro.pub.pt.aroma;

public class Char {
	private char c;
	public Char (char ch){
		c=ch;
	}
	public char getChar(){return c;}
	public void print(){
		System.out.print("'"+c+"'");
	}
}
