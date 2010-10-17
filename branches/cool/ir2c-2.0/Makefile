
CFLAGS = -O2 -Wall

all: parser

GRAMMAR_GEN = coolirLexer.py coolirParser.py coolir.tokens
PREP_GEN = prep.py prep.tokens
GEN_GEN = gen.py gen.tokens

.PHONY: parser clean
parser: $(GRAMMAR_GEN) $(PREP_GEN) $(GEN_GEN)

$(GRAMMAR_GEN): coolir.g
	java -cp antlr-3.1.1.jar -ea org.antlr.Tool $<

$(PREP_GEN): prep.g
	java -cp antlr-3.1.1.jar -ea org.antlr.Tool $<

$(GEN_GEN): gen.g
	java -cp antlr-3.1.1.jar -ea org.antlr.Tool $<

clean:
	rm -rf $(GRAMMAR_GEN) $(PREP_GEN) $(GEN_GEN)
	rm -rf *.pyc antlr3/*.pyc os_library.o

