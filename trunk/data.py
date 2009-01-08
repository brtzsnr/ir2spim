import section

class Data(section.Section):
	def __init__(self):
		section.Section.__init__(self, '.data')

	def storeString(self, string):
		"""DS"""

		assert string[0] == '"' and string[-1] == '"', 'String must be enclosed in quotes'
		assert string.endswith('\\0"'), 'String must end in \\0'

		string = string[1:-3]  # cuts first & final quote & \\0
		string = string.replace('""', '"')  # converts "" in "

		self.storeBytes(string)
		self.storeZero(1)


'''

_section = section.Section('.data')

def storeWord(number):
	_section.storeWord(number)


def storeLabel(label):
	# DL
	_section.storeLabel(label)




def storeZero(size):
	"""Leaves some empty space"""
	# DS
	_section.storeZero(size)


def addLabel(label):
	"""Adds a label"""
	_section.addLabel(label)


'''
