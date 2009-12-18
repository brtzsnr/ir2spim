package ro.pub.cpl.ir2spim.ir;

public class InRegister {
	private int index;

	public InRegister(int index) {
		this.index = index;
	}

	public int getIndex() {
		return this.index;
	}
	
    @Override
	public String toString() {
		return "VI" + index;
	}
}
