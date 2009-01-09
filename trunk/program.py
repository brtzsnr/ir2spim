import sys
import logging
import traceback

import code as _code
import data as _data
import memory as _memory
import operand


DEFAULT_REGISTER_VALUE = 0xa3a3a3a3

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

# stack frame looks like this
# [return ip, destination register, [(vr_i1, value1), ...]]
_stack = []
_registers = {}
_ip = None


class CommandError(Exception):
	pass


class OpcodeError(Exception):
	pass


class ProgramAbortError(Exception):
	def __init__(self, exit_code):
		self.exit_code = exit_code

	def __str__(self):
		if self.exit_code:
			return 'Program exited abnormally with exit code %d' % self.exit_code
		return 'Program exited normally (exit code 0)'


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


def _libraryCall():
	"""If this is a library call, executes the call, and returns"""

	if _ip == memory.labelToLocation('Abort'):
		raise ProgramAbortError(_registerValue(operand.VI(0)))

	if _ip == memory.labelToLocation('OutInt'):
		value = _registerValue(operand.VI(0))
		sys.stdout.write(str(value))

		_submit(0)
		return True

	if _ip == memory.labelToLocation('OutString'):
		address = _registerValue(operand.VI(0))

		while True:
			byte = memory.loadByte(address)
			if byte == 0:
				break

			sys.stdout.write(chr(byte))
			address += 1

		_submit(0)
		return True

	return False




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
		return _registerValue(object)
	if isinstance(object, operand.Integer):
		return object.number
	if isinstance(object, operand.Label):
		return object.address
	raise ValueError('Don\'t know how to compute `%s`\'s (of type `%s`) value' %
			object, type(object))


def _registerValue(register):
	return _registers.get(register, DEFAULT_REGISTER_VALUE)


def _call(address, destination):
	global _ip, _stack

	frame = [_ip, destination, []]
	for register, value in _registers.iteritems():
		# XXX store only modified registers since last call
		if register.isgeneral():
			frame[2].append((register, value))

	_stack.append(frame)
	_ip = address


def _submit(value):
	global _ip, _stack, _registers

	frame = _stack.pop()
	_ip = frame[0]

	# _registers = dict(frame[2])
	_registers.update(frame[2])
	_registers[frame[1]] = value


def restart():
	"""Restarts program"""
	global _stack, _ip

	# when main returns Abort is called
	_stack = [(
		memory.labelToLocation('Abort'),
		operand.VI(0), [])]
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
		if isinstance(instruction[index], operand.Label):
			instruction[index].label = str(
				memory.locationToLabel(instruction[index].address))

	return address, instruction


def step(display=True):
	global _ip

	if _libraryCall():
		return

	old_ip = _ip
	_ip, instr = disassemble(_ip)
	# a simple reminder (check disassemble() for detailed description
	# instr = ['mnemomic', destination (or None), arg1, arg2]

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
			print '%s,' % t,
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
	elif mnem == 'call':
		_call(instr[2], instr[1])
	elif mnem == 'return':
		_submit(instr[2])
	else:
		raise ValueError('Unknown mnemonic `%s`' % mnem)

	if dest is not None:
		dest = dest & 0xffffffff
		_registers[instr[1]] = dest


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

	elif line[0] == 'registers':
		# registers
		print 'Registers not defined below have default value %s' % DEFAULT_REGISTER_VALUE
		print _registers

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
		except ProgramAbortError, e:
			logging.info(e)
			_ip = memory.labelToLocation('Abort')
		except Exception, e:
			traceback.print_exc(e)

		last = line


def run():
	compile()
	restart()

	try:
		while True:
			step(display=False)
	except ProgramAbortError, e:
		logging.info(e)



