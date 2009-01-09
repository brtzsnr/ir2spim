MAX_REGISTER_INDEX = 1 << 31

class Register(object):
	def __init__(self, vr=None, vi=None):
		assert vr is None or vi is None

		if vr is not None:
			assert 0 <= vr < MAX_REGISTER_INDEX
			self.number = vr
		elif vi is not None:
			assert 0 <= vi < MAX_REGISTER_INDEX
			self.number = vi + MAX_REGISTER_INDEX
		else:
			self.number = None

	def store(self, section):
		section.storeWord(self.number)

	def load(self, address, memory):
		self.number = memory.loadWord(address)
		return address + 4

	def isgeneral(self):
		return self.number < MAX_REGISTER_INDEX

	def __str__(self):
		if self.isgeneral():
			return 'vr%d' % self.number
		return 'vi%d' % (self.number - MAX_REGISTER_INDEX)

	def __repr__(self):
		return str(self)

	def __hash__(self):
		return self.number

	def __eq__(self, other):
		return self.number == other.number


class Integer(object):
	def __init__(self, number=None):
		self.number = number

	def store(self, section):
		section.storeWord(self.number)

	def load(self, address, memory):
		self.number = memory.loadWord(address)
		return address + 4

	def __str__(self):
		return '%d' % self.number


class Label(object):
	def __init__(self, label=None):
		self.label = label
		self.address = None

	def store(self, section):
		section.storeLabel(self.label)

	def load(self, address, memory):
		self.address = memory.loadWord(address)
		return address + 4

	def __str__(self):
		return '%s (0x%08X)' % (self.label, self.address)


def VR(number):
	return Register(vr=number)


def VI(number):
	return Register(vi=number)

