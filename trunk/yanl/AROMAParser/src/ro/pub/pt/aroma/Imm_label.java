package ro.pub.pt.aroma;

public class Imm_label {
	private String name;
	private int value;
	public Imm_label(String str){
		name=str;
		value=0;
	}
	public String getName(){return name;}
	public int getValue(){return value;}
	public void setName(String name){this.name=name;}
	public void print(){System.out.println(name+":");}
	public void print2(){System.out.print(name);}
}
