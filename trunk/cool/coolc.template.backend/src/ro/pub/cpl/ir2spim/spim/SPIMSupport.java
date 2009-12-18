/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ro.pub.cpl.ir2spim.spim;

/**
 *
 * @author alex
 */
public class SPIMSupport {
    public static void
	emitLoadImmediate(SPIMReg reg, int imm, java.io.PrintStream printer)
	{
		printer.println("\tli\t" + reg.toString() + ", " + imm);
	}
	
	public static void
	emitMove(SPIMReg dest, SPIMReg src, java.io.PrintStream printer)
	{
		printer.println("\tmove\t" + dest.toString() + ", " + src.toString());
	}
	
	public static void
	emitBranch(String label, java.io.PrintStream printer)
	{
		printer.println("\tb\t" + label);
	}
	
	public static void
	emitBranchTrue(String label, SPIMReg cond, java.io.PrintStream printer)
	{
		printer.println("\tbnez\t" + cond.toString() + ", " + label);
	}
	
	public static void
	emitBranchFalse(String label, SPIMReg cond, java.io.PrintStream printer)
	{
		printer.println("\tbeqz\t" + cond.toString() + ", " + label);
	}
	
	public static void
	emitLoadLabel(String label, SPIMReg dest, java.io.PrintStream printer)
	{
		printer.println("\tla\t" + dest.toString() + ", " + label);
	}
	
	public static void
	emitAdd(SPIMReg dest, SPIMReg src1, SPIMReg src2, java.io.PrintStream printer)
	{
		printer.println("\tadd\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2.toString());
	}
	
	public static void
	emitAddi(SPIMReg dest, SPIMReg src1, int src2, java.io.PrintStream printer)
	{
		printer.println("\taddi\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2);
	}
	
	public static void
	emitSub(SPIMReg dest, SPIMReg src1, SPIMReg src2, java.io.PrintStream printer)
	{
		printer.println("\tsub\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2.toString());
	}
	
	public static void
	emitSubi(SPIMReg dest, SPIMReg src1, int src2, java.io.PrintStream printer)
	{
		printer.println("\tsub\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2);
	}
	
	public static void
	emitMul(SPIMReg dest, SPIMReg src1, SPIMReg src2, java.io.PrintStream printer)
	{
		printer.println("\tmul\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2.toString());
	}
	
	public static void
	emitMuli(SPIMReg dest, SPIMReg src1, int src2, java.io.PrintStream printer)
	{
		printer.println("\tmul\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2);
	}
	
	public static void
	emitDiv(SPIMReg dest, SPIMReg src1, SPIMReg src2, java.io.PrintStream printer)
	{
		printer.println("\tdiv\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2.toString());
	}
	
	public static void
	emitDivi(SPIMReg dest, SPIMReg src1, int src2, java.io.PrintStream printer)
	{
		printer.println("\tdiv\t" + dest.toString() + ", " + src1.toString() +
		                ", " + src2);
	}
	
	public static void
	emitLoad(SPIMReg dest, SPIMReg base, int offset, java.io.PrintStream printer)
	{
		printer.println("\tlw\t" + dest + ", " + offset + " (" + base + ")");
	}
	
	public static void
	emitLoadByte(SPIMReg dest, SPIMReg base, int offset, java.io.PrintStream printer)
	{
		printer.println("\tlbu\t" + dest + ", " + offset + " (" + base + ")");
	}
	
	public static void
	emitStore(SPIMReg source, SPIMReg base, int offset, java.io.PrintStream printer)
	{
		printer.println("\tsw\t" + source + ", " + offset + " (" + base + ")");
	}
	
	public static void
	emitStoreByte(SPIMReg source, SPIMReg base, int offset, java.io.PrintStream printer)
	{
		printer.println("\tsb\t" + source + ", " + offset + " (" + base + ")");
	}
	
	public static void
	emitSlt(SPIMReg dest, SPIMReg fst, SPIMReg snd, java.io.PrintStream printer)
	{
		printer.println("\tslt\t" + dest + ", " + fst + ", " + snd);
	}
	
	public static void
	emitSlti(SPIMReg dest, SPIMReg fst, int snd, java.io.PrintStream printer)
	{
		printer.println("\tslt\t" + dest + ", " + fst + ", " + snd);
	}
	
	public static void
	emitSle(SPIMReg dest, SPIMReg fst, SPIMReg snd, java.io.PrintStream printer)
	{
		printer.println("\tsle\t" + dest + ", " + fst + ", " + snd);
	}
	
	public static void
	emitSlei(SPIMReg dest, SPIMReg fst, int snd, java.io.PrintStream printer)
	{
		printer.println("\tsle\t" + dest + ", " + fst + ", " + snd);
	}
	
	public static void
	emitSeq(SPIMReg dest, SPIMReg fst, SPIMReg snd, java.io.PrintStream printer)
	{
		printer.println("\tseq\t" + dest + ", " + fst + ", " + snd);
	}
	
	public static void
	emitSeqi(SPIMReg dest, SPIMReg fst, int snd, java.io.PrintStream printer)
	{
		printer.println("\tseq\t" + dest + ", " + fst + ", " + snd);
	}
	
	public static void
	emitNot(SPIMReg dest, SPIMReg source, java.io.PrintStream printer)
	{
		printer.println("\tnot\t" + dest + ", " + source);
	}
	
	public static void
	emitLi(SPIMReg dest, int immediate, java.io.PrintStream printer)
	{
		printer.println("\tli\t" + dest + ", " + immediate);
	}
	
	public static void
	emitJr(SPIMReg target, java.io.PrintStream printer)
	{
		printer.println("\tjr\t" + target);
	}
    
    public static void
	emitJ(String target, java.io.PrintStream printer)
	{
		printer.println("\tj\t" + target);
	}
	
	public static void
	emitJal(String target, java.io.PrintStream printer)
	{
		printer.println("\tjal\t" + target);
	}
	
	public static void
	emitJalr(SPIMReg target, java.io.PrintStream printer)
	{
		printer.println("\tjalr\t" + target);
	}	
}
