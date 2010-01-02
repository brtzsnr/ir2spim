// Alex SUHAN

package ro.pub.cpl.ir2spim;

import ro.pub.cpl.ir2spim.ir.*;
import java.util.*;


/** 
 * This class encapsulates the basic blocks for a method.
 */
class Cfg
{
	private Method m;
	private List<BasicBlock> blockList;
	
	Cfg(Method m)
	{
		this.m = m;
		blockList = new ArrayList<BasicBlock>();
	}
	
	/**
	 *  Builds the basic block graph for the method.
	 */
	void build()
	{
		markLeaders();
		
		List<Instruction> instructions = m.getInstructions();
		
		int crtBlockIdx = 1;
		BasicBlock crtBlock = null;
		boolean seqLink = false;
		
		for (int instrIdx = 0; instrIdx < instructions.size(); instrIdx++)
		{
			Instruction current = instructions.get(instrIdx);
			
			if (current.isLeader())
			{
				// this block has ended
				if (crtBlock != null)
				{	
					crtBlock.setEndInstr(instrIdx);
					// can the flow continue towards the next block?
					if (seqLink)
						crtBlock.setSeqLink();
					blockList.add(crtBlock);
				}
				// create a new current block
				crtBlock = new BasicBlock(crtBlockIdx);
				crtBlock.setBeginInstr(instrIdx);
				crtBlockIdx++;
				seqLink = false;
			}
			if (current.isJump())
			{
				String targetLabel =
					((JumpInstruction) current).getTargetLabel();
				// prepare the link to the jump label
				crtBlock.setJumpToLabel(targetLabel);
				crtBlock.setJumpLink();
				// prepare the sequence link if the jump is conditional
				seqLink = !((JumpInstruction) current).isJumpUncond();
			}
			// mark the 'return' blocks as exit blocks
			else if (current.isReturn())
			{
				crtBlock.setExitLink();
				seqLink = false;
			}
			// the other instructions do no modify the control flow
			else
				seqLink = true;
			// prepare the incoming links
			crtBlock.getInsideLabels().addAll(current.getLabels());
		}
		
		if (crtBlock != null)
		{
			// the block is considered finished since there are no more 
			// instructions in it
			crtBlock.setEndInstr(instructions.size());
			blockList.add(crtBlock);
		}
		
		// transform label information into actual links between the blocks
		for (BasicBlock block: blockList)
		{
			if (block.getSeqLink())
			{
				BasicBlock nextBlock = blockList.get(block.getIndex());
				block.getNext().add(nextBlock);
				nextBlock.getPrev().add(block);
			}
			if (block.getJumpLink())
			{
				for (BasicBlock nextBlock: blockList)
				if (nextBlock.getInsideLabels().contains(block.getJumpToLabel()))
				{
					block.getNext().add(nextBlock);
					nextBlock.getPrev().add(block);
				}
			}
		}
		
		// add the two artificial blocks (enter and exit)
		BasicBlock startBlock = new BasicBlock(0);
		blockList.add(0, startBlock);
		BasicBlock endBlock = new BasicBlock(blockList.size());
		blockList.add(endBlock);
		
		blockList.get(1).getPrev().add(startBlock);
		startBlock.getNext().add(blockList.get(1));
		
		for (BasicBlock block: blockList)
		{
			if (block.getExitLink())
			{
				block.getNext().add(endBlock);
				endBlock.getPrev().add(block);
			}
		}
	}
	
	Method getMethod()
	{
		return m;
	}
	
	List<BasicBlock> getBlockList()
	{
		return blockList;
	}
	
	/**
	 * Marks the leaders in the method.
	 */
	private void markLeaders()
	{
		List<Instruction> instructions = m.getInstructions();
		Set<String> usedLabels = new HashSet<String>();
		
		// shouldn't happen
		if (instructions.isEmpty())
			return;
		
		// determines the used labels (that have an incoming jump)
		for (Instruction instr: instructions)
		if (instr.isJump())
			usedLabels.add(((JumpInstruction) instr).getTargetLabel());
		
		// mark the first instruction
		instructions.get(0).markAsLeader();
        
		boolean prevWasJump = false;
		for (Instruction instr: instructions)
		{
			// mark the instructions to which a jump occurs as leaders
			if (!instr.getLabels().isEmpty())
			{
				boolean okToMark = false;
				List<String> labels = instr.getLabels();
				for (String label: labels)
				if (usedLabels.contains(label))
				{
					okToMark = true;
					break;
				}
				if (okToMark)
					instr.markAsLeader();
			}
			// mark the next instruction after a conditional jump as leader
			if (prevWasJump)
				instr.markAsLeader();
			prevWasJump = instr.isJump() || instr.isReturn();
		}
	}

	void exportToDot(java.io.PrintStream printer) {
		printer.println("digraph \"" + m.getName() + "\" {");
		printer.println("node [shape=box, style=rounded];");
		for (BasicBlock bb: blockList) {
			printer.print(bb.toString() + " [label=\"");
			if (bb.getIndex() == 0) {
				printer.println("Start\"];");
				continue;
			}
			if (bb.getIndex() == blockList.size() - 1) {
				printer.println("Stop\"];");
				continue;
			}
			int begin = bb.getBeginInstr();
			int end = bb.getEndInstr();
			for (int instrIdx = begin; instrIdx < end; instrIdx++) {
				Instruction instr = m.getInstructions().get(instrIdx);
				String labeledStr = instr.toString();
				int endLabel = labeledStr.lastIndexOf(":");
				String instrStr = labeledStr.substring(endLabel + 1).trim();
				List<String> labels = instr.getLabels();
				for (String label: labels)
					printer.print(label + ":" + "\\l");
				printer.format("%-3d ", instrIdx);
				printer.print(instrStr);
				printer.print("\\l");
			}
			printer.println("\"];");
		}
		for (BasicBlock bb: blockList)
		for (BasicBlock succ: bb.getNext())
			printer.println(bb.toString() + " -> " + succ.toString() + ";");
		printer.println("}");
	}
}
