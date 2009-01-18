import section as _section
import errors

import array
import logging
import operator
import operand


class Memory(object):
	CHUNK_BITS = 8
	CHUNK_SIZE = 1 << CHUNK_BITS
	assert CHUNK_BITS >= 4, 'CHUNK_SIZE (%d) too small' % CHUNK_SIZE

	def __init__(self):
		self.__chunks = {}  # __chunks of 4k memory pages
		self.__sections = {}

		self.labels = {}
		self.__locations = None  # inverse of the above

	def addSection(self, section):
		assert self.__sections is not None, 'Cannot add more sections because link done.'
		logging.debug('new section `%s`', section.name)

		base = self.__sections.get(section.name)
		if base is None:
			base = _section.Section(section.name)
			base.storeBytes('---%s---' % base.name)
			self.__sections[section.name] = base

		base.extend(section)

	def link(self):
		"""Computes final address of the labels and stores them"""

		# computes total size of sections
		size = 0
		for s in self.__sections.itervalues():
			size += len(s)

		# relocates sections and compute label locations
		start = 0
		for s in self.__sections.itervalues():
			logging.debug('relocating section `%s` at 0x%08X', s.name, start)
			s.gatherLabels(self.labels, start)
			start += len(s)

		# writes labels location and copies memory
		start = 0
		for s in self.__sections.itervalues():
			s.writeLabels(self.labels)
			self.store(s.memory, start)
			start += len(s)

		self.__sections = None
		logging.info('Link done')

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

			address += delta

	def _dump_chunk(self, chunk_id, start, end):
		base_address = chunk_id * Memory.CHUNK_SIZE
		if chunk_id not in self.__chunks:
			return

		print '0x%08X (%d)' % (base_address, base_address)
		chunk = self.__chunks[chunk_id]

		for i in xrange(0, Memory.CHUNK_SIZE, 16):
			if base_address + i >= end: continue
			if base_address + i + 16 <= start: continue

			# prints new lines & coordinates
			print '0x%8X' % (i + base_address),

			for j in xrange(16):
				# prints separators
				if j % 4 == 0: print '|',

				# prins contents
				if start <= base_address + i + j < end:
					if chunk[i + j] == 0: print '..',
					else: print '%02X' % chunk[i + j],
				else:
					print '  ',

			print '|',

			# decodes the string in memory
			temp = [chunk[i + j] for j in xrange(16)]
			for j in xrange(16):
				if start <= base_address + i + j < end:
					if 0x20 > temp[j] or temp[j] > 0x7f:
						temp[j] = 31
				else:
					temp[j] = 32
			print ''.join(chr(j) for j in temp)


	def dump(self, start, end):
		start_id = start >> Memory.CHUNK_BITS
		end_id = (end - 1) >> Memory.CHUNK_BITS

		for chunk_id in xrange(start_id, end_id + 1):
			# XXX improve (do not iterate through all possible chunks)
			self._dump_chunk(chunk_id, start, end)

	def labelToLocation(self, label):
		return self.labels[label]

	def locationToLabel(self, address):
		if self.__locations is None:
			self.__locations = {}
			for label, label_address in self.labels.iteritems():
				self.__locations.setdefault(label_address, []).append(label)
		return self.__locations.get(address, [])

	def loadByte(self, address):
		"""Returns byte located at `address`"""
		chunk_id = address >> Memory.CHUNK_BITS
		chunk = self.__chunks.get(chunk_id)

		if chunk is None:
			raise errors.SegmentationFault(address)
		return chunk[address % Memory.CHUNK_SIZE]

	def loadWord(self, address):
		# XXX improve, this is just a quick hack
		return operand.normalize(
				+ (self.loadByte(address + 0) << 0x00)
				+ (self.loadByte(address + 1) << 0x08)
				+ (self.loadByte(address + 2) << 0x10)
				+ (self.loadByte(address + 3) << 0x18))


