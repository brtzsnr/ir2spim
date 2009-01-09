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

	def __str__(self):
		if self.number >= MAX_REGISTER_INDEX:
			return 'vi%d' % (self.number - MAX_REGISTER_INDEX)
		return 'vr%d' % self.number


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
		return str(self.label)


def VR(number):
	return Register(vr=number)


def VI(number):
	return Register(vi=number)

