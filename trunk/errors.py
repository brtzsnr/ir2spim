class CommandError(Exception):
	"""Raised if user input an invalid command (like. asdf)"""
	pass


class OpcodeError(Exception):
	"""Raised if compiler tries to decode an invalid instruction"""
	pass


class ProgramAbortError(Exception):
	"""Raised by call to Abort (or exit from Main)"""
	def __init__(self, exit_code):
		self.exit_code = exit_code

	def __str__(self):
		if self.exit_code:
			return 'Program exited abnormally with exit code %d' % self.exit_code
		return 'Program exited normally (exit code 0)'

class SegmentationFault(IndexError):
	"""Raised when try to access missing memory"""
	def __init__(self, address):
		self.address = address

	def __str__(self):
		return 'Segmentation fault at address 0x%08X' % self.address

	def __repr__(self):
		return str(self)
