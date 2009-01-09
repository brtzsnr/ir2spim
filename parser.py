import antlr3
import ir2spimLexer
import ir2spimParser


def parse(filename, code, data):
	"""Parses program from `filename`"""
	char_stream = antlr3.ANTLRFileStream(filename)
	lexer = ir2spimLexer.ir2spimLexer(char_stream)
	tokens = antlr3.CommonTokenStream(lexer)
	parser = ir2spimParser.ir2spimParser(tokens)
	parser.program(code, data)


