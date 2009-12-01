_index = 0

def generate(suffix=''):
	"""Returns a new unique label.

	'.' is used to generate new labeles because it is accepted by SPIM,
	but not by CoolIR"""

	global _index
	_index += 1

	return 'private.%d.%s' % (_index, suffix)
