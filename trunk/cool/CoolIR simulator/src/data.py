import section

class Data(section.Section):
	def __init__(self):
		section.Section.__init__(self, '.data')

	def storeString(self, string):
		"""DS"""

		assert string[0] == '"' and string[-1] == '"', 'String must be enclosed in quotes'
		#assert string.endswith('\\0"'), 'String must end in \\0'

		string = string[1:-3]  # cuts first & final quote & \\0
		string = string.replace('""', '"')  # converts "" in "

		string = string.replace('\\n', '\n')
		string = string.replace('\\t', '\t')

		self.storeBytes(string)
		self.storeZero(1)

