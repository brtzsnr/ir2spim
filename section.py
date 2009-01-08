import array
import logging
import itertools


class Section(object):
	def __init__(self, name):
		self.name = name
		self.memory = array.array('B')  # a list of bytes containing memory
		self.storeBytes('[[ %s ]]' % self.name)

		self.base_address = 0
		self.__labels = {}  # a map from labels in this section to their location
		self.__locations = {}  # inverse of the above map

		self.__relocation = []  # relocation table: label -> address where to store

	def storeZero(self, bytes):
		self.memory.extend(itertools.repeat(0, bytes))

	def storeLabel(self, label):
		self.__relocation.append([label, len(self.memory)])
		self.memory.extend([0xfc, 0xff, 0xff, 0xff])

	def storeBytes(self, array):
		"""Appends a list of bytes (0..255) or a non-unicode string."""
		if type(array) is unicode:
			# transform unicode in a byte sequence
			array = array.encode()

		if type(array) is str:
			self.memory.extend(ord(c) for c in array)
		else:
			self.memory.extend(array)

	def storeWord(self, word, address=None):
		"""Stores an word at a given `address`. if `address` is None
		appends the word"""

		if address is None:
			address = len(self.memory)
			self.memory.extend((0xff, 0xff, 0xff, 0xff))

		temp = word
		for i in xrange(4):
			self.memory[address + i] = temp & 0xff
			temp >>= 8

		# XXX i'm not sure this is correct
		assert temp == 0 or temp == -1, (
				'%d is out of range (32bit signed/unsigned integers required)' % word)


	def addLabel(self, label):
		assert label not in self.__labels

		self.__labels[label] = len(self.memory)
		self.__locations.setdefault(len(self.memory), []).append(label)

	def locationToLabel(self, location):
		return self.__locations.get(location)

	def labelToLocation(self, label):
		return self.__labels[label]

	def dump(self):
		print 'name =', self.name
		print 'labels = ', self.__labels
		print 'locations =', self.__locations
		print 'memory =', self.memory

	def relocate(self, start, labels):
		"""Computes address of `__labels` based on start
		address and stores in `labels` dictionary"""

		logging.debug('relocating %d labels in `%s` starting from %X',
				len(self.__labels), self.name, start)

		self.base_address = start
		for label, address in self.__labels.iteritems():
			assert label not in labels, "Duplicate label `%s`" % label
			labels[label] = start + address

	def writeLabels(self, labels):
		"""Using the relocation table stores addresses of the labels"""
		for label, address in self.__relocation:
			assert label in labels, 'No such label `%s`' % label
			self.storeWord(labels[label], address=address)

	def __len__(self):
		return len(self.memory)

