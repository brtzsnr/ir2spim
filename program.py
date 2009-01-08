import sys
import traceback

import code as _code
import data as _data
import memory as _memory

code = _code.Code()
data = _data.Data()
memory = _memory.Memory()

_library_code = _code.Code()
_library_data = _data.Data()

_contents = (
	('help', 'displays this help',),
)

_stack = []


def writeLibrary():
	# code
	_library_code.addLabel('Abort')
	_library_code.storeZero(1)

	_library_code.addLabel('OutInt')
	_library_code.storeZero(1)

	_library_code.addLabel('OutString')
	_library_code.storeZero(1)

	_library_code.addLabel('InInt')
	_library_code.storeZero(1)

	_library_code.addLabel('InString')
	_library_code.storeZero(1)

	# data
	_library_data.addLabel('$InString_Buffer')
	_library_data.storeZero(256)


def compile():
	writeLibrary()

	memory.addSection(code)
	memory.addSection(data)

	memory.addSection(_library_code)
	memory.addSection(_library_data)
	memory.link()


def _convert(address):
	"""Converts `address` to a location"""
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


def parseArgs(line):
	if line[0] == 'dump':
		# dump [start [end]]
		start = 0
		if len(line) >= 2:
			start = _convert(line[1])
			end = start + _memory.Memory.CHUNK_SIZE

			if len(line) >= 3:
				end = _convert(line[2])
		else:
			end = 1 << 32

		memory.dump(start, end)

	elif line[0] == 'quit':
		# quit
		raise SystemExit()

	elif line[0] == 'labels':
		# labels [label1 [label2 [...]]]
		memory.printLabels(*line[1:])

	else:
		raise 'Unknown command `%s`' % line[0]


def interpreter():
	compile()

	while True:
		try:
			line = raw_input('>>> ')
		except KeyboardInterrupt:
			line = 'quit'

		line = line.split()
		if not line:
			continue

		try:
			parseArgs(line)
		except ValueError, e:
			traceback.print_exc(e)





