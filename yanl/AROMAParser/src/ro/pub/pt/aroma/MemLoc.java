package ro.pub.pt.aroma;

public class MemLoc {
	Register base;
	int offset;
	public MemLoc(Register b,int off){
		base=b;
		offset=off;
	}
	public Register getBase(){return base;}
	public void print(){
		System.out.print("[");
		base.print();
		System.out.print(","+offset);
		System.out.print("]");
	}
}
