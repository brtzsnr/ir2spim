package ro.pub.pt.aroma;

public class Operand {
	private int type;
	private FloatRegister freg;
	private Register reg;
	private Imm_int num;
	private Imm_label label;
	private Imm_comb imm;
	private MemLoc loc;
	private OpString str;
	private Char ch;
	private ImmReal real;
	public Operand(Register r){
		type=Op_type.REG;
		reg=r;
	}
	public Operand (FloatRegister r){
		type=Op_type.FREG;
		freg=r;
	}
	public Operand(Imm_int i){
		type=Op_type.IMM_INT;
		num=i;
	}
	public Operand(Imm_label l){
		type=Op_type.IMM_LABEL;
		label=l;
	}
	public Operand(Imm_comb c){
		type=Op_type.IMM_COMB;
		imm=c;
	}
	public Operand(MemLoc l){
		type=Op_type.MEM;
		loc=l;
	}
	public Operand(OpString s){
		type=Op_type.STRING;
		str=s;
	}
	public Operand(Char c){
		type=Op_type.CHAR;
		ch=c;
	}
	public Operand(ImmReal r){
		type=Op_type.IMM_REAL;
		real=r;
	}
	public Object get(){
		switch(type){
		case Op_type.FREG:
			return freg;
		case Op_type.IMM_COMB:
			return imm;
		case Op_type.IMM_INT:
			return num;
		case Op_type.IMM_LABEL:
			return label;
		case Op_type.MEM:
			return loc;
		case Op_type.REG:
			return reg;
		case Op_type.CHAR:
			return ch;
		case Op_type.STRING:
			return str;
		case Op_type.IMM_REAL:
			return real;
		}
		return null;
	}
	public int getType(){return type;}
	public void print(){
		switch(type){
		case Op_type.FREG:
			freg.print();
			break;
		case Op_type.IMM_COMB:
			imm.print();
			break;
		case Op_type.IMM_INT:
			num.print();
			break;
		case Op_type.IMM_LABEL:
			label.print2();
			break;
		case Op_type.MEM:
			loc.print();
			break;
		case Op_type.REG:
			reg.print();
			break;
		case Op_type.CHAR:
			ch.print();
			break;
		case Op_type.STRING:
			str.print();
			break;
		case Op_type.IMM_REAL:
			real.print();
			break;
		}
	}
}
