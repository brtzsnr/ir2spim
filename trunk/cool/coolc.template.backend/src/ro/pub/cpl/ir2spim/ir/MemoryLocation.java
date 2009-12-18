package ro.pub.cpl.ir2spim.ir;

public class MemoryLocation {
	private Register baseAddress;
	private int offset;
	
	public MemoryLocation(Register baseAddress, int offset) {
		this.baseAddress = baseAddress;
		this.offset = offset;
	}
	
	public Register getBaseAddress() {
		return this.baseAddress;
	}
	public int getOffset() {
		return this.offset;
	}
    
    @Override
	public String toString() {
		return "[" + this.getBaseAddress() + ", " + this.getOffset() + "]";
	}
}
