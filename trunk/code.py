'''
import operand
import section

_code = []
_section = section.Section('.code')


class Operation(object):
	def __init__(self,
			mnemonic=None, first=None,
			second=None, destination=None):
		if mnemonic is None: mnemonic = operand.Void()
		if first is None: first = operand.Void()
		if second is None: second = operand.Void()
		if destination is None: destination = operand.Void()

		self.mnemonic = mnemonic
		self.first = first
		self.second = second
		self.destination = destination

	def __str__(self):
		# XXX improve
		result = ''
		if type(self.destination) is not operand.Void:
			result += '%s <- ' % self.destination
		result += '%s' % self.first
		if type(self.mnemonic) is not operand.Void:
			result += ' %s ' % self.mnemonic
		result += '%s' % self.second

		return result

	def bytes(self):
		"""Returns number of bytes allocated for this operation"""
		return (1 + self.first.bytes()
				+ self.second.bytes() + self.destination.bytes())


def add(*args, **kwargs):
	operation = Operation(*args, **kwargs)
	_code.append(operation)

	# _section.storeZero(operation.bytes())
	_section.storeBytes('%' * operation.bytes())


def addLabel(label):
	_section.addLabel(label)


def dump():
	print '== CODE =='
	print

	print '=== INTERNALS ==='
	_section.dump();
	print

	print '=== TEXT ==='
	location = 0
	for line in xrange(len(_code)):
		labels = _section.locationToLabel(location)
		if labels is not None:
			print '[%s]:' % ', '.join(labels)

		print '%4d | ' % location, _code[line]
		location += _code[line].bytes()
	print
'''

# flags, different powers of two
REGISTER = 1
INTEGER = 2
LABEL = 4

MAX_REGISTER_INDEX = (1 << 31) - 1


class _Register(object):
	def __init__(self, number):
		self.number = number
		self.type = REGISTER


class VR(_Register):
	def __init__(self, number):
		assert 0 <= number <= MAX_REGISTER_INDEX
		_Register.__init__(self, + number + 1)

	def __str__(self):
		return 'VR' + str(+ self.number - 1)


class VI(_Register):
	def __init__(self, number):
		assert 1 <= number <= MAX_REGISTER_INDEX
		_Register.__init__(self, - number - 1)

	def __str__(self):
		return 'VI' + str(- self.number - 1)


class Integer(object):
	def __init__(self, number):
		self.number = number
		self.type = INTEGER

	def __str__(self):
		return str(self.number)


class Label(Register):
	def __init__(self, name):
		self.type = LABEL


class Code(section.Section):
	mnemonics = {
		'mov': (True, REGISTER | INTEGER),
		'+': (True, REGISTER | INTEGER, REGISTER | INTEGER),
		'-': (True, REGISTER | INTEGER, REGISTER | INTEGER),
		'*': (True, REGISTER | INTEGER, REGISTER | INTEGER),
		'/': (True, REGISTER | INTEGER, REGISTER | INTEGER),
		'<': (True, REGISTER | INTEGER, REGISTER | INTEGER),
		'<=': (True, REGISTER | INTEGER, REGISTER | INTEGER),
		'=': (True, REGISTER | INTEGER, REGISTER | INTEGER),
		'not': (True, REGISTER | INTEGER),
		'loadl': (True, REGISTER, LABEL),
		'jump': (False, LABEL),
		'jumpf': (False, REGISTER, LABEL),
		'jumpt': (False, REGISTER, LABEL),
		'call': (True, REGISTER | LABEL),
		'return': (False, REGISTER | INTEGER),
		'load': (True, REGISTER, INTEGER)
		'store': (False, REGISTER, REGISTER, INTEGER)
		'loadb': (True, REGISTER, INTEGER)
		'storeb': (False, REGISTER, REGISTER, INTEGER)
	}

	opcodes = {}
	for mnemonic, id in itertools.izip(count(), mnemonics):
		opcodes[mnemonic] = id

	@staticmethod
	def encode(mnemonic, *args):
		opcode = opcodes[mnemonic]
		meta = mnemonics[mnemonic]

		for i in xrange(1, len(args)):
			# check that argument is of correct type
			# XXX improve error message
			assert (args[i + meta[0]].type & meta[i]) != 0, 'Argument of wrong type'

			# count options for each argument
			num = 0
			temp = meta[i]
			while temp > 0:
				num += temp & 1
				temp >>= 1

			assert 1 <= num <= 2, 'Invalid number of possible argument types. Check `mnemonic` dict for `%s`' % mnemonic

			# one option, nothing to do
			if num == 1:
				continue

			# two options




	def __init__(self):
		section.Section.__init(self, '.code')







