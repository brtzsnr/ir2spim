package ro.pub.cpl.ir2spim.spim;

public class SPIMTempReg implements SPIMReg {
	private int index;

	public SPIMTempReg(int index) {
		this.index = index;
	}

	public int getIndex() {
		return this.index;
	}
	
    @Override
	public String toString() {
		return "$t" + index;
	}
}
