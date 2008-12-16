import misc

_text = []
_code = []

def text(line):
	_text.append(line)


def code(line):
	_code.append(line)


def storeWord(number):
	# DW
	text('.word %d' % number)


def storeLabel(address):
	# DL
	private = misc.generate(suffix='data')

	# allocates space
	label(private)
	storeBytes(4)

	# generates code to fill space
	code('la t0, %s' % address)
	code('sw t0, %s' % private)


def storeString(string):
	# DS
	assert string[0] == '"' and string[-1] == '"', 'String must be enclosed in quotes'
	assert string.endswith('\\0"'), 'String must end in \\0'
	string = string[1:-1]  # cuts first & final quote

	string = string.replace('""', '\\"')  # converts "" in \"
	for fragment in string.split('\\0'):
		text('.asciiz "%s"' % fragment)


def storeBytes(size):
	# DS
	text('.space %d' % size)


def label(address):
	text('%s:' % address)


def generateData():
	return '\n'.join(_text)


def generateCode():
	return '\n'.join(_code)

