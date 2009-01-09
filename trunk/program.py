import sys
import logging
import traceback

import code
import data
import memory

import parser
import errors
import operand

DEFAULT_REGISTER_VALUE = 0xa3a3a3a3

# reserved registers VR12...VR15
VR_IP = operand.Register(12)

# decodes all posible opcodes for (ie. a lookup table)
_opcodes = {}
for i in xrange(0x100):
	try:
		_opcodes[i] = code.decodeOpcode(i)
	except ValueError:
		_opcodes[i] = None


class Program(object):
	def __init__(self):
		self.memory = memory.Memory()

		self.__stack = None
		self.registers = None

	def __registerValue(self, register):
		"""Returns value stored for `register`"""
		return self.registers.get(register, DEFAULT_REGISTER_VALUE)

	def compile(self, filename):
		"""Compiles a new file"""
		__code = code.Code()
		__data = data.Data()
		parser.parse(filename, __code, __data)

		self.memory.addSection(__code)
		self.memory.addSection(__data)

	def link(self):
		"""Links. Resolves all relocations"""
		self.memory.link()
		self.restart()

	def linkAll(self, files):
		"""Links all files from command line & library"""
		self.compile('library.ir')
		for file in files:
			self.compile(file)
		self.link()

	def restart(self):
		"""Restarts program"""

		# when main returns Abort is called
		# frame has the following format
		#	[(IP, destination register, [list saved registers])]
		self.__stack = [
				# to be read as: store result in VI0 and jump to `Abort`
				(operand.VI(0), [(VR_IP, self.memory.labelToLocation('Abort'))])
			]

		self.registers = {}
		self.registers[VR_IP] = self.memory.labelToLocation('Main')

		logging.info('program restarted')


	def __getattribute__(self, attr):
		if attr == '_Program__ip':
			return self.registers[VR_IP]
		return object.__getattribute__(self, attr)

	def __setattr__(self, attr, value):
		if attr == '_Program__ip':
			self.registers[VR_IP] = value
		else:
			self.__dict__[attr] = value

	def __call(self, address, destination):
		"""Makes a call to `address` storing result in destination"""
		frame = [destination, []]
		for register, value in self.registers.iteritems():
			# TODO: improve speed/memory by storing only modified
			# registers since last call
			if register.isgeneral():
				frame[1].append((register, value))

		self.__stack.append(frame)
		self.__ip = address

	def __return(self, value):
		"""Returns from current function restoring registers"""
		frame = self.__stack.pop()

		# restores registers
		self.registers = dict(frame[1])
		# self.registers.update(frame[1])

		# stores result to destination register
		self.registers[frame[0]] = value

	def __libraryCall(self):
		"""If this is a library call, executes the call, and returns True.
		This file should be in sync with `library.ir`"""

		if self.__ip == self.memory.labelToLocation('Abort'):
			raise errors.ProgramAbortError(self.__registerValue(operand.VI(0)))

		if self.__ip == self.memory.labelToLocation('OutInt'):
			value = self.__registerValue(operand.VI(0))
			sys.stdout.write(str(value))

			self.__return(0)
			return True

		if self.__ip == self.memory.labelToLocation('OutString'):
			address = self.__registerValue(operand.VI(0))

			while True:
				byte = self.memory.loadByte(address)
				if byte == 0:
					break

				sys.stdout.write(chr(byte))
				address += 1

			self.__return(0)
			return True

		return False

	def __printInstruction(self, ip, instruction):
		"""Prints instruction on stdout"""

		labels = self.memory.locationToLabel(ip)
		if labels:
			print labels, ':'

		# prints instruction pointer
		print '__ip = 0x%08X,' % ip,

		# prints destination
		if instruction[1] is not None:
			print '%s <-' % instruction[1],

		# prints mnemonic
		print instruction[0],

		# prints arguments
		for t in instruction[2:]:
			print '%s,' % t,
		print

	def __value(self, object):
		"""Returns the value of the object (stored integer for registers,
		or address for labels)"""

		if isinstance(object, operand.Register):
			return self.__registerValue(object)
		if isinstance(object, operand.Integer):
			return object.number
		if isinstance(object, operand.Label):
			return object.address
		raise ValueError('Don\'t know how to compute `%s`\'s (of type `%s`) value' %
				object, type(object))

	def run(self, display=False):
		while True:
			self.step(display)

	def step(self, display=True):
		"""Executes one instruction located at IP"""
		if self.__libraryCall():
			return

		old_ip = self.__ip
		self.__ip, instr = disassemble(self.memory, old_ip)

		if display:
			self.__printInstruction(old_ip, instr)

		# converts arguments to values
		for i in xrange(2, len(instr)):
			instr[i] = self.__value(instr[i])

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
			dest = self.memory.loadWord(instr[2] + instr[3])
		elif mnem == 'loadb':
			dest = self.memory.loadByte(instr[2] + instr[3])

		# opcodes that do not return a value
		elif mnem == 'jump':
			self.__ip = instr[2]
		elif mnem == 'jumpf':
			if not instr[2]:
				self.__ip = instr[3]
		elif mnem == 'jumpt':
			if instr[2]:
				self.__ip = instr[3]
		elif mnem == 'store':
			self.memory.storeWord(instr[2], address=instr[3] + instr[4])
		elif mnem == 'storeb':
			self.memory.storeWord(instr[2], address=instr[3] + instr[4])
		elif mnem == 'call':
			self.__call(instr[2], instr[1])
		elif mnem == 'return':
			self.__return(instr[2])
		else:
			raise errors.OpcodeError('Unknown mnemonic `%s`' % mnem)

		# stores destination
		if dest is not None:
			dest = dest & 0xffffffff
			self.registers[instr[1]] = dest


def disassemble(memory, address):
	"""Given `memory` reads & decode memory located at `address`.
	Returns new address and read instruction."""
	opcode = memory.loadByte(address)
	decoded = _opcodes[opcode]
	if decoded is None:
		raise errors.OpcodeError('Invalid opcode 0x%02X' % opcode)

	# mnemonic
	instruction = [decoded[0]]

	# destination
	if decoded[1] is not None:
		instruction.append(decoded[1]())
	else:
		instruction.append(None)

	# arguments
	for arg in decoded[2:]:
		instruction.append(arg())

	# loads address/values from memory
	address += 1
	if instruction[1] is not None:
		address = instruction[1].load(memory, address)

	for index in xrange(2, len(instruction)):
		address = instruction[index].load(memory, address)

		# for labels, also read names
		if isinstance(instruction[index], operand.Label):
			instruction[index].label = str(
				memory.locationToLabel(instruction[index].address))

	return address, instruction






