CLASSPATH=antlr-3.1.1.jar

ir2spim: parser

.PHONY: parser
parser: ir2spimLexer.py ir2spimParser.py

ir2spimLexer.py ir2spimParser.py ir2spim.tokens: ir2spim.g
	java -cp $(CLASSPATH) -ea org.antlr.Tool ir2spim.g

clean:
	-rm -rdf ir2spimLexer.py
	-rm -rdf ir2spimParser.py
	-rm -rdf ir2spim.tokens
	-rm -rdf *.pyc
	-rm -rdf antlr3/*.pyc

%.class: %.java
	javac -cp $(CLASSPATH) $^

