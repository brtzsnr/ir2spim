 
int execute();
int executeInstruction(MInstruction* instr);
char getSRBit(int poz);
void setSRBit(int poz, char bit);
void advanceCycles(int no);
void setCycles();
void waitForRegisters(MInstruction *instr);
void setDestinationLatencies(MInstruction *instr);
void addImplicitInputsOutputs();
void printMInstruction(MInstruction *instr);
void printStack();
void store_int(int address, int value);
int load_int(int address);









