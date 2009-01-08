import section

_section = section.Section('.data')

def storeWord(number):
	_section.storeWord(number)


def storeLabel(label):
	# DL
	_section.storeLabel(label)


def storeString(string):
	# DS
	assert string[0] == '"' and string[-1] == '"', 'String must be enclosed in quotes'
	assert string.endswith('\\0"'), 'String must end in \\0'

	string = string[1:-3]  # cuts first & final quote & \\0
	string = string.replace('""', '"')  # converts "" in "

	_section.storeBytes(string)
	_section.storeZero(1)


def storeZero(size):
	"""Leaves some empty space"""
	# DS
	_section.storeZero(size)


def addLabel(label):
	"""Adds a label"""
	_section.addLabel(label)



