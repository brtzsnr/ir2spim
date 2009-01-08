import array
import logging
import operator


class Memory(object):
	CHUNK_BITS = 8
	CHUNK_SIZE = 1 << CHUNK_BITS
	assert CHUNK_BITS >= 4, 'CHUNK_SIZE (%d) too small' % CHUNK_SIZE

	def __init__(self):
		self.__chunks = {}  # __chunks of 4k memory pages
		self.__sections = []
		self.__labels = {}

	def addSection(self, section):
		assert self.__sections is not None, "Cannot add more sections"
		logging.debug('new section `%s`', section.name)
		self.__sections.append(section)


	def close(self):
		"""Sorts all sections by name and appends them.
		This way sections with the same name will end up close
		to each other XXX"""

		# workaround, attrgetter seems to be missing from operator module
		# self.__sections.sort(key=operator.attrgetter('name'))
		self.__sections.sort(key=lambda x: x.name)

		# computes total size of sections
		size = 0
		for s in self.__sections:
			size += len(s)

		# relocates sections and compute
		# label locations
		start = (1 << 32) - size
		for s in self.__sections:
			s.relocate(start, self.__labels)
			start += len(s)

		# writes labels location and copies
		# memory
		for s in self.__sections:
			s.writeLabels(self.__labels)
			self.store(s.memory, s.base_address)

		self.__sections = None

	def store(self, bytes, address):
		offset = 0
		while offset < len(bytes):
			position = address & (Memory.CHUNK_SIZE - 1)
			delta = Memory.CHUNK_SIZE - position
			delta = min(delta, len(bytes) - offset)

			chunk_id = address >> Memory.CHUNK_BITS
			chunk = self.__chunks.get(chunk_id)

			if chunk is None:
				chunk = array.array('B')
				chunk.extend(0 for i in xrange(Memory.CHUNK_SIZE))
				self.__chunks[chunk_id] = chunk

			for i in xrange(delta):
				chunk[position] = bytes[offset]
				position += 1
				offset += 1

	def dump(self):
		for chunk_id, chunk in self.__chunks.iteritems():
			print '0x%08X (%d)' % (chunk_id * Memory.CHUNK_SIZE, chunk_id)

			for i in xrange(0, Memory.CHUNK_SIZE, 16):
				# prints new lines & coordinates
				print '0x%8X' % (i + chunk_id * Memory.CHUNK_SIZE),

				for j in xrange(16):
					# prints separators
					if j % 4 == 0: print '|',

					# prins contents
					if chunk[i + j] == 0: print '..',
					else: print '%02X' % chunk[i + j],

				print '|',

				# decodes the string in memory
				temp = [chunk[i + j] for j in xrange(16)]
				for j in xrange(16):
					if 0x20 > temp[j] or temp[j] > 0x7f:
						temp[j] = 31
				print ''.join(chr(j) for j in temp)

