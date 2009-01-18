#! /usr/bin/python

import random
import copy

# registru temporar: 0
range = (-99, +99)


def getRandomOperand(reg):
	# returns (value, text)

	if random.randint(0, 1):
		# registru
		if reg:
			value = random.choice(reg.keys())
			return 'VR%d' % value, reg[value]
	else:
		# constanta
		value = random.randint(range[0], range[1])
		return '%d' % value, value

	return getRandomOperand(reg)


def printRandomOperation(reg, depth=1):
	"""Afiseaza o operatie aleatoare, face update la reg si intoarce
	registrul destinatie"""

	op = random.choice((
		'mov', 'not', '+', '-', '*', '/', '*', '*', '*'))
	dst = random.randint(1, 9)

	# primul operand
	src0 = getRandomOperand(reg)
	# al doilea operand, posibil neutilizat
	src1 = getRandomOperand(reg)

	# eliminam codul optimizat cu peephole
	if op == 'mov' and dst == src0[0]:
		return printRandomOperation(reg, depth)
	if op == '/' and 0 == src1[0]:
		return printRandomOperation(reg, depth)

	# printam destinatia
	print '\t' * depth, 'VR%d <-' % dst,

	# one operand
	if op == 'mov':
		reg[dst] = src0[1]
		print '%s' % src0[0],
	elif op == 'not':
		print 'not %s' % src0[0],
		reg[dst] = int(not src0[1])

	# two operands
	else:
		try:
			temp = eval('%s %s %s' % (src0[1], op, src1[1]))
			if -99 <= temp <= +99:
				print '%s %s %s' % (src0[0], op, src1[0]),
			else:
				raise ZeroDivisionError
		except ZeroDivisionError:
			# fallback, daca avem o eroare invalida gen outofrange sau
			temp = random.randint(-99, +99)
			print '%d' % temp,

		reg[dst] = temp


	# afiseaza rezultatul intructiunii
	print '\t' * depth, '# VR%d <- %d' % (dst, reg[dst])
	printRegister(dst, depth);

	return dst



def printRegister(register, depth):
	# makes last definition of register invariant by printing it :D
	print '\t' * depth, 'VI0 <- VR%d' % register
	print '\t' * depth, 'VR0 <- call PrintInteger'
	print



def Func1():
	reg = {}

	print 'Func1:'

	# cel mult 128 instructiuni
	for i in xrange(128):
		printRandomOperation(reg)

	print '\t', 'return 0'
	print


_index = 0
_max_depth = 5

def Func2(regs, branch, depth=1):
	global _index, _max_depth

	if random.randint(depth, _max_depth) == depth:
		print '\t' * depth, 'VR0 <- %d' % random.randint(range[0], range[1])
		print '\t' * depth, 'VI0 <- VR0'
		print '\t' * depth, 'VR0 <- call PrintInteger'
		return regs

	for i in xrange(0, random.randint(1, 3)):
		id = _index
		_index += 1

		print '\t' * depth, '# basic block', id, '; depth', depth
		which = branch(regs, depth)
		temp = copy.copy(regs)

		# jumpt or jumpf
		inverted = bool(random.randint(0, 1))
		which = which ^ inverted

		# if
		print '\t' * depth, 'jump%s VR0 __else_%d' % (('f', 't')[inverted], id)
		print '\t' * depth, '#', ('jumped to `else` branch', 'continuing on `true` branch')[which]
		regs = Func2(regs, branch, depth + 1)
		if which == True: saved = regs
		regs = copy.copy(temp)
		print '\t' * depth, 'jump __endif_%d' % id

		# else
		print '\t' * (depth - 1), '__else_%d:' % id
		regs = Func2(regs, branch, depth + 1)
		if which == False: saved = regs
		regs = copy.copy(temp)
		print '\t' * (depth - 1), '__endif_%d:' % id

		# pastreaza rezultatele de la ramura luata
		regs = saved
		print '\t' * depth, '# regs =', regs
		print


	return regs


def branch2(regs, depth):
	which = random.randint(0, 1)
	print '\t' * depth, 'VR0 <- %d' % which
	return which


def branch3(regs, depth):
	# genereaza valorile initiale pentru registri
	for i in xrange(1, 10):
		regs[i] = random.randint(range[0], range[1])
		print '\t'* depth, 'VR%d <- %d' % (i, regs[i])
		print '\t'* depth, 'VI%d <- VR%d' % (i, i)

	# toate atribuirile de mai sus devin variante
	print '\t'* depth, 'VR0 <- call Nothing'
	print


	for i in xrange(random.randint(5, 15)):
		dst = printRandomOperation(regs, depth)

	dst = random.randint(1, 9)
	which = bool(regs[dst])

	if random.randint(0, 1):
		which = not which
		print '\t' * depth, 'VR0 <- not VR%d' % dst
	else:
		print '\t' * depth, 'VR0 <- VR%d' % dst

	return which


if __name__ == '__main__':
	# library
	print '.code'
	print 'PrintInteger:'
	print '\t', '# afiseaza intregul din registru VI0 urmat de linie noua'
	print '\t', 'VR0 <- call OutInt'
	print '\t', 'loadl VR0 space'
	print '\t', 'VI0 <- VR0'
	print '\t', 'VR0 <- call OutString'
	print '\t', 'return 0'
	print

	print 'Nothing:'
	print '\t', '# does nothing'
	print '\t', 'return 0'
	print

	# three functions to test code

	Func1()

	print 'Func2:'
	Func2({}, branch2)
	print '\t', 'return 0'
	print

	print 'Func3:'
	Func2({}, branch3)
	print '\t', 'return 0'
	print

	# Main function

	print 'Main:'
	print '\t', 'VR0 <- call Func1'
	print '\t', 'loadl VR0 new_line'
	print '\t', 'VI0 <- VR0'
	print '\t', 'VR0 <- call OutString'
	print '\t', 'loadl VR0 new_line'
	print '\t', 'VI0 <- VR0'
	print '\t', 'VR0 <- call OutString'
	print

	print '\t', 'VR0 <- call Func2'
	print '\t', 'loadl VR0 new_line'
	print '\t', 'VI0 <- VR0'
	print '\t', 'VR0 <- call OutString'
	print '\t', 'loadl VR0 new_line'
	print '\t', 'VI0 <- VR0'
	print '\t', 'VR0 <- call OutString'
	print

	print '\t', 'VR0 <- call Func3'
	print '\t', 'loadl VR0 new_line'
	print '\t', 'VI0 <- VR0'
	print '\t', 'VR0 <- call OutString'
	# print '\t', 'loadl VR0 new_line'
	# print '\t', 'VI0 <- VR0'
	# print '\t', 'VR0 <- call OutString'
	print

	print '\t', 'return 0'
	print

	print '.data'
	print '\t', 'new_line: DS "\\n\\0"'
	print '\t', 'space: DS " \\0"'


