#!/usr/bin/python

import sys

import antlr3
import ir2spimLexer
import ir2spimParser
import data


def main():
	char_stream = antlr3.ANTLRFileStream(sys.argv[1])
	lexer = ir2spimLexer.ir2spimLexer(char_stream)
	tokens = antlr3.CommonTokenStream(lexer)
	parser = ir2spimParser.ir2spimParser(tokens)
	parser.program()

	print '.code'
	print data.generateCode()
	print '.data'
	print data.generateData()


if __name__ == '__main__':
	main()
