package ro.pub.pt.aroma;
import java.util.*;
public class Instruction {
	private int mnemonic;
	private LinkedList<Operand> oper;
	private Imm_label label;
	public Instruction(int m,LinkedList<Operand> op){
		mnemonic=m;
		oper=op;
	}
	public Instruction(int m,LinkedList<Operand> op,Imm_label l){
		mnemonic=m;
		oper=op;
		label=l;
	}
	public int getMnemonic(){
		return mnemonic;
	}
	public Imm_label getLabel(){
		return label;
	}
	public LinkedList<Operand> getOpers(){
		return oper;
	}
	public Operand getNthOper(int n){
		if (n>=oper.size())
			return null;
		return oper.get(n);
	}
	public void print(){
		if(label!=null)
		label.print();
		Mnemonics.print(mnemonic);
		for (int i=0;i<oper.size();i++){
			Operand o=oper.get(i);
			o.print();
			if(i!=oper.size()-1)
				System.out.print(",");
		}
		System.out.println();
	}
}
