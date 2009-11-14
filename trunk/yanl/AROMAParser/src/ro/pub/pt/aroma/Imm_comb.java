package ro.pub.pt.aroma;

public class Imm_comb {
	private Imm_int offset;
	private Imm_label label;
	public Imm_comb(String name,long off){
		label.setName(name);
		offset.setValue(off);
	}
	Imm_label getLabel(){return label;}
	Imm_int getOffset(){return offset;}
	public void print(){
		label.print2();
		System.out.print("+");
		offset.print();
	}
}
