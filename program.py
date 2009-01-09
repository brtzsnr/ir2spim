import sys
import traceback

import code as _code
import data as _data
import memory as _memory
import operand

code = _code.Code()
data = _data.Data()
memory = _memory.Memory()

_library_code = _code.Code()
_library_data = _data.Data()

_opcodes = {}
for i in xrange(0x100):
	try:
		_opcodes[i] = _code.decodeOpcode(i)
	except ValueError:
		_opcodes[i] = None


# program data
_stack = []
_registers = {}
_ip = None


class CommandError(Exception):
	pass

class OpcodeError(Exception):
	pass


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


def _value(object):
	if isinstance(object, operand.Register):
		return _registers.get(object.number, 0xa3a3a3a3)
	if isinstance(object, operand.Integer):
		return object.number
	if isinstance(object, operand.Label):
		return object.address
	raise ValueError('Don\'t know how to compute `%s`\'s (of type `%s`) value' %
			object, type(object))


def restart():
	"""Restarts program"""
	global _stack, _ip

	_stack = []
	_registers = {}
	_ip = memory.labelToLocation('Main')


def disassemble(address):
	opcode = memory.loadByte(address)
	decoded = _opcodes[opcode]
	if decoded is None:
		print _opcodes
		raise OpcodeError('Invalid opcode 0x%02X' % opcode)

	instruction = [decoded[0]]
	for o in decoded[1:]:
		if o is not None:
			instruction.append(o())
		else:
			instruction.append(None)

	address += 1

	if instruction[1] is not None:
		address = instruction[1].load(address, memory)

	for index in xrange(2, len(instruction)):
		address = instruction[index].load(address, memory)

	return address, instruction


def step(display=True):
	global _ip

	old_ip = _ip
	_ip, instr = disassemble(_ip)

	if display:
		# prints instruction pointer
		print '_ip = 0x%08X,' % old_ip,
		# prints destination
		if instr[1] is not None:
			print '%s <-' % instr[1],
		# prints mnemonic
		print instr[0],
		# prints arguments
		for t in instr[2:]:
			print '%s, ' % t,
		print

	# converts arguments to values
	for i in xrange(2, len(instr)):
		instr[i] = _value(instr[i])

	mnem = instr[0]
	dest = None

	# opcodes that return a value
	if mnem == 'mov':
		dest = instr[2]
	elif mnem == '+':
		dest = instr[2] + instr[3]
	elif mnem == '-':
		dest = instr[2] - instr[3]
	elif mnem == '*':
		dest = instr[2] * instr[3]
	elif mnem == '/':
		dest = instr[2] / instr[3]
	elif mnem == '<':
		dest = int(instr[2] < instr[3])
	elif mnem == '<=':
		dest = int(instr[2] <= instr[3])
	elif mnem == '=':
		dest = int(instr[2] == instr[3])
	elif mnem == 'not':
		dest = int(not(instr[2]))
	elif mnem == 'loadl':
		dest = instr[2]
	elif mnem == 'load':
		dest = memory.loadWord(instr[2] + instr[3])
	elif mnem == 'loadb':
		dest = memory.loadByte(instr[2] + instr[3])

	# opcodes that do not return a value
	elif mnem == 'jump':
		_ip = instr[2]
	elif mnem == 'jumpf':
		if not instr[2]:
			_ip = instr[3]
	elif mnem == 'jumpt':
		if instr[2]:
			_ip = instr[3]
	elif mnem == 'store':
		memory.storeWord(instr[2], address=instr[3] + instr[4])
	elif mnem == 'storeb':
		memory.storeWord(instr[2], address=instr[3] + instr[4])
	else:
		raise ValueError('Unknown mnemonic `%s`' % mnem)

	if dest is not None:
		dest = dest & 0xffffffff
		_registers[instr[1].number] = dest


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

	elif line[0] == 'restart':
		# restart
		restart()

	elif line[0] == 'step':
		# step
		step()

	else:
		raise CommandError('Unknown command `%s`' % line[0])


def interpreter():
	compile()
	restart()

	last = ''

	while True:
		try:
			line = raw_input('>>> ')
		except KeyboardInterrupt:
			line = 'quit'

		comm = line.split()
		if not comm:
			line = last
			comm = last.split()
			if not comm:
				continue

		try:
			parseArgs(comm)
		except Exception, e:
			traceback.print_exc(e)

		last = line







