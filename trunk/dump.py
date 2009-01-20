#!/usr/bin/python

import sys

import program as _program
import parser
import errors

program = _program.Program()
program.linkAll(sys.argv[1:])

try:
	program.memory.dump(0, 1 << 32)
except errors.ProgramAbortError, e:
	print >> sys.stderr, e
