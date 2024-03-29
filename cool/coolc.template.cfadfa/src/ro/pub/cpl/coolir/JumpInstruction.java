package ro.pub.cpl.coolir;


public class JumpInstruction extends Instruction {
	
	public static enum OPERATION {
		JUMP, JUMPT, JUMPF
	}

	private OPERATION mnemonic;
	private Register condition;
	private String targetLabel;

	public JumpInstruction(OPERATION mnemonic, Register condition, String targetLabel) {
		this.mnemonic = mnemonic;
		this.condition = condition;
		this.targetLabel = targetLabel;
	}

	private boolean isJump() {
		return this.mnemonic == JumpInstruction.OPERATION.JUMP;
	}

	private Register getCondition() {
		if (this.isJump()) {
			throw new UnsupportedOperationException("unconditional jump doesn't have a condition");
		}
		return this.condition;
	}
	public String getTargetLabel() {
		return this.targetLabel;
	}
	public String toString() {
		switch (this.mnemonic) {
		case JUMP:
			return labelsToString() + "jump " + this.getTargetLabel();
		case JUMPT:
			return labelsToString() + "jumpt " + this.getCondition() + " " + this.getTargetLabel();
		case JUMPF:
			return labelsToString() + "jumpf " + this.getCondition() + " " + this.getTargetLabel();
		default:
			return "ERROR";
		}
	}
}
