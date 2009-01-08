import section
import operand

import itertools


class Code(section.Section):
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
	for id, mnemonic in itertools.izip(itertools.count(), mnemonics):
		opcodes[mnemonic] = id

	@staticmethod
	def encodeMnemonic(mnemonic, *args):
		"""Computes the opcode for an instruction"""
		opcode = Code.opcodes[mnemonic]
		meta = Code.mnemonics[mnemonic]

		assert len(args) == len(meta) - 1 + meta[0], '''Invalid number of
			arguments for `%s`''' % mnemonic

		bit = 0x80
		for i in xrange(1, len(meta)):
			assert 1 <= len(meta[i]) <= 2, '''Invalid number of possible
					argument types. Check `mnemonic` dict for `%s`''' % mnemonic

			# one option, nothing to do
			if len(meta[i]) == 1:
				continue

			# two options
			which = None
			for j in xrange(len(meta[i])):
				if isinstance(args[meta[0] + i - 1], meta[i][j]):
					assert which is None
					which = j

			assert bit >= len(Code.mnemonics)
			opcode |= which * bit
			bit >>= 1

		return opcode

	def __init__(self):
		section.Section.__init__(self, '.code')

	def encode(self, mnemonic, *args):
		"""Encodes an operation. Destionation is the first argument in `*args`"""

		opcode = self.encodeMnemonic(mnemonic, *args)
		self.store(opcode)

		for arg in args:
			arg.store(self)
