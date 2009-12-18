package ro.pub.cpl.ir2spim.spim;

public class SPIMStackPtrReg implements SPIMReg {
	public int getIndex() {
		return -1;
	}
	
    @Override
	public String toString() {
		return "$sp";
	}
}
