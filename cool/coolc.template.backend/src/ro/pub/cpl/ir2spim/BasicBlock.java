// Alex SUHAN

package ro.pub.cpl.ir2spim;

import java.util.Set;
import java.util.HashSet;
import java.util.TreeSet;

public class BasicBlock implements Comparable
{
	private int index;
	private Set<String> insideLabels;
	// the label to which this block may jump
	private String jumpToLabel;
	// this block can continue execution in the next block
	// (it does not return or make an unconditional jump)
	private boolean seqLink;
	// this block can perform a jump to another block
	private boolean jumpLink;
	// this block can perform a return and end the method
	private boolean exitLink;
	// the instructions' numbers [beginInstr .. endInstr)
	private int beginInstr;
	private int endInstr;
	// graph links, sorted according to the blocks' numbers
	private Set<BasicBlock> next;
	private Set<BasicBlock> prev;
	boolean alive;
		
	public BasicBlock(int index)
	{
		this.index = index;
		insideLabels = new HashSet<String>();
		next = new TreeSet<BasicBlock>();
		prev = new TreeSet<BasicBlock>();
		alive = false;
	}
	
	public int getIndex()
	{
		return index;
	}
	
	public void setIndex(int index)
	{
		this.index = index;
	}
	
	public Set<String> getInsideLabels()
	{
		return insideLabels;
	}
	
	public String getJumpToLabel()
	{
		return jumpToLabel;
	}
	
	public void setJumpToLabel(String jumpToLabel)
	{
		this.jumpToLabel = jumpToLabel;
	}
	
	public void setInsideLabels(Set<String> insideLabels)
	{
		this.insideLabels = insideLabels;
	}
	
	public boolean getSeqLink()
	{
		return seqLink;
	}
	
	public void setSeqLink(boolean seqLink)
	{
		this.seqLink = seqLink;
	}
	
	public void setSeqLink()
	{
		this.seqLink = true;
	}
	
	public boolean getJumpLink()
	{
		return jumpLink;
	}
	
	public void setJumpLink(boolean jumpLink)
	{
		this.jumpLink = jumpLink;
	}
	
	public void setJumpLink()
	{
		this.jumpLink = true;
	}
	
	public void setExitLink(boolean exitLink)
	{
		this.exitLink = exitLink;
	}
	
	public void setExitLink()
	{
		this.exitLink = true;
	}
	
	public boolean getExitLink()
	{
		return exitLink;
	}
	
	public Set<BasicBlock> getNext()
	{
		return next;
	}
	
	public Set<BasicBlock> getPrev()
	{
		return prev;
	}
	
	public int getBeginInstr()
	{
		return beginInstr;
	}
	
	public void setBeginInstr(int startInstr)
	{
		this.beginInstr = startInstr;
	}
	
	public int getEndInstr()
	{
		return endInstr;
	}
	
	public void setEndInstr(int endInstr)
	{
		this.endInstr = endInstr;
	}
	
    @Override
	public String toString()
	{
		return "B" + index;
	}
	
	public int compareTo(Object o)
	{
		return index - ((BasicBlock) o).getIndex();
	}
	
	public boolean equals(Object obj)
	{
		return index == ((BasicBlock) obj).getIndex();
	}
}
