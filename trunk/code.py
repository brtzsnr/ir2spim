import section
import operand

import itertools


mnemonics = {
	'mov': (True,
		(operand.Register, operand.Integer,)),
	'+': (True,
		(operand.Register, operand.Integer,),
		(operand.Register, operand.Integer,)),
	'-': (True,
		(operand.Register, operand.Integer,),
		(operand.Register, operand.Integer,)),
	'*': (True,
		(operand.Register, operand.Integer,),
		(operand.Register, operand.Integer,)),
	'/': (True,
		(operand.Register, operand.Integer,),
		(operand.Register, operand.Integer,)),
	'<': (True,
		(operand.Register, operand.Integer,),
		(operand.Register, operand.Integer,)),
	'<=': (True,
		(operand.Register, operand.Integer,),
		(operand.Register, operand.Integer,)),
	'=': (True,
		(operand.Register, operand.Integer,),
		(operand.Register, operand.Integer,)),
	'not': (True,
		(operand.Register, operand.Integer,)),
	'loadl': (True,
		(operand.Label,)),
	'jump': (False,
		(operand.Label,)),
	'jumpf': (False,
		(operand.Register,),
		(operand.Label,)),
	'jumpt': (False,
		(operand.Register,),
		(operand.Label,)),
	'call': (True,
		(operand.Register, operand.Label,)),
	'return': (False,
		(operand.Register, operand.Integer,)),
	'load': (True,
		(operand.Register,),
		(operand.Integer,)),
	'store': (False,
		(operand.Register,),
		(operand.Register,),
		(operand.Integer,)),
	'loadb': (True,
		(operand.Register,),
		(operand.Integer,)),
	'storeb': (False,
		(operand.Register,),
		(operand.Register,),
		(operand.Integer,))
}

opcodes = {}
inverse = {}
for id, mnemonic in itertools.izip(itertools.count(), mnemonics):
	opcodes[mnemonic] = id
	inverse[id] = mnemonic


OPCODE_BITS = 5
assert len(opcodes) < (1 << OPCODE_BITS)


def _encodeMnemonic(mnemonic, *args):
	"""Computes the opcode for an instruction"""
	opcode = opcodes[mnemonic]
	meta = mnemonics[mnemonic]

	assert len(args) == len(meta) - 1 + meta[0], '''Invalid number of
		arguments for `%s`''' % mnemonic

	bit = 0x80
	for i in xrange(1, len(meta)):
		# at most two options
		assert 1 <= len(meta[i]) <= 2, '''Invalid number of possible
				argument types. Check `mnemonics` dict for `%s`''' % mnemonic

		# one option, nothing to do
		if len(meta[i]) == 1:
			continue

		# two options
		which = None
		for j in xrange(len(meta[i])):
			if isinstance(args[meta[0] + i - 1], meta[i][j]):
				assert which is None
				which = j

		assert bit >= (1 << OPCODE_BITS)
		opcode |= which * bit
		bit >>= 1

	return opcode


def decodeOpcode(opcode):
	"""Returns an array [mnemonic, destination, arg1, arg2, ...]"""

	result = []

	# mnemonic
	id = opcode & ((1 << OPCODE_BITS) - 1)
	if id not in inverse:
		raise ValueError('Unknown mnemonic')

	mnemonic = inverse[id]
	result.append(mnemonic)
	meta = mnemonics[mnemonic]

	# destination
	result.append([None, operand.Register][mnemonics[mnemonic][0]])

	# arguments
	bit = 0x80
	for i in xrange(1, len(meta)):
		# only one type
		if len(meta[i]) == 1:
			result.append(meta[i][0])
			continue

		# two possible types
		which = (opcode & bit) != 0
		result.append(meta[i][which])
		bit >>= 1

	return result


class Code(section.Section):
	def __init__(self):
		section.Section.__init__(self, '.code')

	def encode(self, mnemonic, *args):
		"""Encodes an operation. Destionation is the first argument in `*args`"""

		opcode = _encodeMnemonic(mnemonic, *args)
		self.store(opcode)

		for arg in args:
			arg.store(self)
