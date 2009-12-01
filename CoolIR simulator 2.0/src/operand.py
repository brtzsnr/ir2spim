MAX_REGISTER_INDEX = 1 << 31

# Hackish register numbering scheme
# 0.. : VR
# -1 : IP
# -2 .. : VI

class Register(object):
	def __init__(self, vr=None, vi=None, ip=None):
		assert vr is None or vi is None

		if vr is not None:
			assert 0 <= vr < MAX_REGISTER_INDEX
			self.number = vr
		elif vi is not None:
			assert 0 <= vi < MAX_REGISTER_INDEX
			self.number = - 2 - vi
		else:
			self.number = ip

	def store(self, section):
		section.storeWord(self.number)

	def load(self, memory, address):
		self.number = memory.loadWord(address)
		return address + 4

	def isgeneral(self):
		return self.number >= -1

	def __str__(self):
		if self.isgeneral():
			return 'vr%d' % self.number
		return 'vi%d' % (- 2 - self.number)

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

	def load(self, memory, address):
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

	def load(self, memory, address):
		self.address = memory.loadWord(address)
		return address + 4

	def __str__(self):
		return '%s (0x%08X)' % (self.label, self.address)


def VR(number):
	return Register(vr=number)


def VI(number):
	return Register(vi=number)


def normalize(integer):
	integer = integer & 0xffffffff
	if integer & 0x80000000:
		return int(integer - 0x100000000)
	return integer

