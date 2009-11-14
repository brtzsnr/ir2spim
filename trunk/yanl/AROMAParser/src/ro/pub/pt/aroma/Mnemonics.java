package ro.pub.pt.aroma;

public final class Mnemonics {
	public static final int MOV=0;
	public static final int MVN=1;
	public static final int CMP=2;
	public static final int AND=3;
	public static final int SUB=4;
	public static final int ORR=5;
	public static final int EOR=6;
	public static final int ADD=7;
	public static final int MUL=8;
	public static final int B=9;
	public static final int BEQ=10;
	public static final int BNE=11;
	public static final int BGT=12;
	public static final int BGE=13;
	public static final int BLT=14;
	public static final int BLE=15;
	public static final int BL=16;
	public static final int LDR=17;
	public static final int STR=18;
	public static final int LDRB=19;
	public static final int STRB=20;
	public static final int FCPYD=21;
	public static final int FCMPD=22;
	public static final int FADDD=23;
	public static final int FSUBD=24;
	public static final int FMULD=25;
	public static final int FDIVD=26;
	public static final int FSITOD=27;
	public static final int FTOSID=28;
	public static final int FLDD=29;
	public static final int FSTD=30;
	public static final int DB=31;
	public static final int DW=32;
	public static final int DD=33;
	public static final int DS=34;
	public static void print(int mnemonic){
		switch(mnemonic){
		case DS: System.out.print("DS ");break;
		case DD: System.out.print("DD ");break;
		case DW: System.out.print("DW ");break;
		case DB: System.out.print("DB ");break;
		case FSTD: System.out.print("FSTD ");break;
		case FLDD: System.out.print("FLDD ");break;
		case FSITOD: System.out.print("FSITOD ");break;
		case FTOSID: System.out.print("FTOSID ");break;
		case FDIVD: System.out.print("FDIVD ");break;
		case FMULD: System.out.print("FMULD ");break;
		case FSUBD: System.out.print("FSUBD ");break;
		case FADDD: System.out.print("FADDD ");break;
		case MOV: System.out.print("MOV ");break;
		case MVN: System.out.print("MVN ");break;
		case CMP: System.out.print("CMP ");break;
		case AND: System.out.print("AND ");break;
		case SUB: System.out.print("SUB ");break;
		case ADD: System.out.print("ADD ");break;
		case ORR: System.out.print("ORR ");break;
		case EOR: System.out.print("EOR ");break;
		case MUL: System.out.print("MUL ");break;
		case B: System.out.print("B ");break;
		case BEQ: System.out.print("BEQ ");break;
		case BNE: System.out.print("BNE ");break;
		case BGT: System.out.print("BGT ");break;
		case BGE: System.out.print("BGE ");break;
		case BLT: System.out.print("BLT ");break;
		case BLE: System.out.print("BLE ");break;
		case BL: System.out.print("BL ");break;
		case LDR: System.out.print("LDR ");break;
		case STR: System.out.print("STR ");break;
		case LDRB: System.out.print("LDRB ");break;
		case STRB: System.out.print("STRB ");break;
		case FCPYD: System.out.print("FCPYD ");break;
		case FCMPD: System.out.print("FCMPD ");break;
		}
	}
}


