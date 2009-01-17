import random


def getRandomOperand(reg):
	if random.randint(0, 1):
		# registru
		if reg:
			value = random.choice(reg.keys())
			return 'VR%d' % value, reg[value]
	else:
		# constanta
		value = random.randint(-99, +99)
		return '%d' % value, value

	return getRandomOperand(reg)


def Func1():
	reg = {}

	print 'Func1:'
	print

	for i in xrange(128):
		op = random.choice((
			'mov', 'not', '+', '-', '*', '/', '*', '*', '*'))

		dst = random.randint(0, 9)
		print '\tVR%d <-' % dst,

		src0 = getRandomOperand(reg)
		src1 = getRandomOperand(reg)

		# one operand
		if op == 'mov':
			reg[dst] = src0[1]
			print '%s' % src0[0],
		elif op == 'not':
			print 'not %s' % src0[0],
			reg[dst] = not src0[1]

		# two operands
		else:
			try:
				temp = eval('%s %s %s' % (src0[1], op, src1[1]))
				if -99 <= temp <= +99:
					print '%s %s %s' % (src0[0], op, src1[0]),
				else:
					raise ZeroDivisionError
			except ZeroDivisionError:
				temp = random.randint(-99, +99)
				print '%d' % temp,

			reg[dst] = temp


		print '\t# VR%d <- %d' % (dst, reg[dst])

	print
	for r in reg:
		print '\t# VR %d' % r
		print '\tVI0 <- VR%d' % r
		print '\tVR%d <- call OutInt' % r
		print '\tloadl VR%d new_line' %r
		print '\tVI0 <- VR%d' % r
		print '\tVR%d <- call OutString' % r
		print

	print '\treturn 0'
	print


if __name__ == '__main__':
	print '.code'
	Func1()

	print 'Main:'
	print '\tVR0 <- call Func1'
	# print '\tVR0 <- call Func2'
	# print '\tVR1 <- call Func3'
	print '\treturn 0'
	print

	print '.data'
	print '\tnew_line: DS "\\n\\0"\n'


