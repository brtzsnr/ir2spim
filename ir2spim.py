#!/usr/bin/python

import sys
import logging

import program

import antlr3
import ir2spimLexer
import ir2spimParser


def parse():
	"""Parses program passed as first argument"""
	# XXX improve logging
	logging.basicConfig(level=logging.DEBUG,)

	char_stream = antlr3.ANTLRFileStream(sys.argv[1])
	lexer = ir2spimLexer.ir2spimLexer(char_stream)
	tokens = antlr3.CommonTokenStream(lexer)
	parser = ir2spimParser.ir2spimParser(tokens)
	parser.program()

