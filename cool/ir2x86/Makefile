
CFLAGS = -O2 -Wall

all: parser

GRAMMAR_GEN = ir2x86Lexer.py ir2x86Parser.py ir2x86.tokens
REGS_GEN = ir2x86regs.py ir2x86regs.tokens
GEN_GEN = ir2x86gen.py ir2x86gen.tokens

.PHONY: parser clean
parser: $(GRAMMAR_GEN) $(REGS_GEN) $(GEN_GEN)

$(GRAMMAR_GEN): ir2x86.g
	java -cp antlr-3.1.1.jar -ea org.antlr.Tool $<

$(REGS_GEN): ir2x86regs.g
	java -cp antlr-3.1.1.jar -ea org.antlr.Tool $<

$(GEN_GEN): ir2x86gen.g
	java -cp antlr-3.1.1.jar -ea org.antlr.Tool $<

clean:
	rm -rf $(GRAMMAR_GEN) $(REGS_GEN) $(GEN_GEN)
	rm -rf *.pyc antlr3/*.pyc os_library.o

