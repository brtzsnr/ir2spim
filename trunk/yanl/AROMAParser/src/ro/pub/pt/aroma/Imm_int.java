package ro.pub.pt.aroma;

public class Imm_int {
	private long value;
	public Imm_int(long val){
		value=val;
	}
	public long getValue(){return value;}
	public void setValue(long val){value=val;}
	public void print(){
		System.out.print(value);
	}
}
