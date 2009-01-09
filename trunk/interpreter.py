#!/usr/bin/python
# needs a little bit of rework

import sys
import traceback
import logging
import operator

import program
import memory
import parser
import errors


_program = program.Program()
_program.linkAll(sys.argv[1:])


def _convertAddress(memory, address):
	"""Converts `address` (label or address) to a location"""
	try:
		# decimal
		return int(address, 10)
	except ValueError:
		pass

	try:
		# hexadecimal
		return int(address, 16)
	except ValueError:
		pass

	address = memory.labels.get(address)
	if address is None:
		raise ValueError('No such label `%s`' % address)
	return address


def _convertBoolean(word):
	if word in ('1', 'yes', 'on', 'true'):
		return True

	if word in ('0', 'no', 'off', 'false'):
		return False

	raise CommandError('Cannot convert `%s` to boolean' % word)


def parseArgs(line):
	if line[0] == 'dump':
		# dump [start [end]]
		start = 0
		if len(line) >= 2:
			start = _convert(_program.memory, line[1])
			end = start + memory.Memory.CHUNK_SIZE

			if len(line) >= 3:
				end = _convert(_program.memory, line[2])
		else:
			end = 1 << 32

		_program.memory.dump(start, end)

	elif line[0] == 'quit':
		# quit
		raise SystemExit()

	elif line[0] == 'labels':
		# labels [label1 [label2 [...]]]
		args = line[1:]
		if not args:
			for label, address in sorted(
					_program.memory.labels.iteritems(), key=lambda x: x[1]):
				print '0x%08X: %s' % (address, label)
		else:
			for label in args:
				address = _program.memory.labels.get(label)
				if address is None:
					print '%s: invalid' % label
				else:
					print '%s: 0x%08X' % (label, address)

	elif line[0] == 'restart':
		# restart
		_program.restart()

	elif line[0] == 'step':
		# step
		_program.step()

	elif line[0] == 'run':
		# run [display]
		display = False
		if len(line) >= 2:
			display = _convertBoolean(line[1])

		_program.run(display)

	elif line[0] == 'registers':
		# registers
		print 'Registers not defined below have default value %s' % program.DEFAULT_REGISTER_VALUE
		print _program.registers

	else:
		raise errors.CommandError('Unknown command `%s`' % line[0])


def interpreter():
	"""Runs a small console useful for debugging"""

	last = ''
	while True:
		try:
			line = raw_input('>>> ')
		except KeyboardInterrupt:
			line = 'quit'

		if not line:
			line = last

		comm = line.split()
		if not comm:
			continue
		print line

		try:
			parseArgs(comm)
		except errors.ProgramAbortError, e:
			logging.info(e)
		except errors.CommandError, e:
			logging.error(e)
		except Exception, e:
			traceback.print_exc(e)
		finally:
			last = ''

		last = line


if __name__ == '__main__':
	logging.basicConfig(level=logging.INFO)
	logging.getLogger('').setLevel(logging.DEBUG)

	interpreter()
