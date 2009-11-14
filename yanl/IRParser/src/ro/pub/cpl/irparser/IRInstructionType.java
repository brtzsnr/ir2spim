package ro.pub.cpl.irparser;

public enum IRInstructionType {
	ARG,		// ARG var - Incoming function parameter
	RETVAL,		// RETVAL var - Outgoing function parameter 
	RETURN,		
	ASSIGN_VAR, 
	ASSIGN_CT,  
	ADD_VAR,
	ADD_CT,
	SUB_VAR,
	SUB_CT,
	MULT_VAR,
	MULT_CT,
	MEM_READ,
	MEM_WRITE,
	CMP_EQ,
	CMP_NE,
	CMP_GT,
	CMP_GE,
	CMP_LT,
	CMP_LE,
	CMP_EQ_CT,
	CMP_NE_CT,
	CMP_GT_CT,
	CMP_GE_CT,
	CMP_LT_CT,
	CMP_LE_CT,
	GOTO
}
