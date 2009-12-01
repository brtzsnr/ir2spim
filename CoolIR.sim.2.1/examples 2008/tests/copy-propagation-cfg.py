#! /usr/bin/python

# VR100 registru temporar
# VR90 ... VR99 registrii folositi pentru copiere

import random

irone = open('copy-propagation-cfg.ir', 'wt')
irtwo = open('copy-propagation-cfg.ir.opt', 'wt')
irnul = open('/dev/null', 'wt')
index = 0
depth = 1


def write(file, format, *args):
	file.write('    ' * depth)
	file.write(format % args)
	file.write('\n')

def one(*args):
	write(irone, *args)

def two(*args):
	write(irtwo, *args)

def all(*args):
	one(*args)
	two(*args)

def inc():
	global depth
	depth += 1

def dec():
	global depth
	depth -= 1

def unique():
	global index
	result = index
	index += 1
	return result


branch_stack = []

def branch_then(reg, which):
	global irtwo

	# which
	#  None -> unknown
	#  True -> jump not taken
	#  False -> jump taken

	branch_stack.append((unique(), which, irtwo))
	label = branch_stack[-1][0]
	which = branch_stack[-1][1]

	if which is None:
		# nu se poate optimiza ramura
		if random.choice((False, True)):
			all('VR100 <- not VR%d', reg)
			all('jumpt VR100 __else_%d', label)
		else:
			all('jumpf VR%d __else_%d', reg, label)

		inc()
		all('# true %d', label)
		return

	if random.choice((False, True)):
		# putem sa optimizam ramura
		one('VR100 <- not VR%d', reg)
		one('jumpt VR100 __else_%d', label)

		inc()
		all('# true %d', label)

	if which is True:
		# facem jumpul => then moare
		irtwo = irnul


def branch_else():
	global irtwo

	label = branch_stack[-1][0]
	which = branch_stack[-1][1]

	if which is None: f = all
	else: f = one

	dec()
	f('')
	f('jump __endif_%d', label)
	f('__else_%d:', label)
	inc()
	f('# false %d', label)

	if which is True:
		# nu facem jumpul => else moare
		irtwo = irnul
	elif which is False:
		# facem jumpul => else in viata
		irtwo = branch_stack[-1][2]


def branch_endif():
	global irtwo

	label = branch_stack[-1][0]
	which = branch_stack[-1][1]

	if which is None: f = all
	else: f = one

	dec()
	f('')
	f('__endif_%d:', label)
	f('')
	inc()

	irtwo = branch_stack[-1][2]
	branch_stack.pop()


def assign1(reg, value):
	all('VR%d <- %s', reg, value)
	all('VI0 <- VR%d', reg)
	all('VR%d <- call Assign1', reg)


def library():
	# forbids optimizers to guess value
	dec()
	all('Assign1:')
	inc()
	all('VR100 <- VI0')
	all('return VR100')
	all('')

	# Prints an integer followed by a space
	dec()
	all('PrintInteger:')
	inc()
	all('VR100 <- call OutInt')
	all('loadl VR100 space')
	all('VI0 <- VR100')
	all('VR100 <- call OutString')
	all('return 0')
	all('')

	# invalidates all input registers
	dec()
	all('Nothing:')
	inc()
	all('return 0')
	all('')


def use(regs, steps=0):
	all('# using(%s)', regs)

	label = unique()
	assign1(100, '%d' % steps)
	all('')
	all('__loop_start_%d:', label)
	all('jumpf VR100 __loop_end_%d', label)
	inc()

	# foloseste toate definitiile de mai sus
	for r in regs:
		all('VR%d <- VR%d + %d', r, r, r + 1)
		all('VR%d <- VR%d + VR100', r, r)

	dec()
	all('VR100 <- VR100 - 1')
	all('jump __loop_start_%d', label)
	all('__loop_end_%d:', label)
	all('')

	# definitiile de mai sus trebuie folosite
	for r in regs:
		all('VI%d <- VR%d', r, r)
	all('VR100 <- call Nothing')
	all('')



def propagate(regs, other, steps):
	all('# propagate(regs = %s,', regs)
	all('#          other = %s)', other)

	copy = {}
	revr = {}
	used = []

	for r in regs:
		copy[r] = []

	while steps > 0:
		op = random.randint(0, 1)

		if op == 0:
			# creem o copie
			for i in xrange(10):
				dst = random.randint(90, 99)
				if dst not in used:
					used.append(dst)
					break
			else:
				# n-am gasit registru disponibil
				# trebuie sa eliberam unul
				use((dst, ))

				# acest registru nu mai e copie pentru revr[dst]
				copy[revr[dst]].remove(dst)

			src = random.choice(regs)
			revr[dst] = src
			copy[src].append(dst)

			all('VR%d <- VR%d', dst, src)

		elif op == 1:
			# utilizare registre copie

			if not used:
				continue

			which = random.randint(1, 3)
			src = [None, None]

			# generam operanzii
			for i in xrange(2):
				if which & (1 + i):
					# registru
					while True:
						src[i] = random.randint(90, 99)
						if src[i] in used:
							break
				else:
					# intreg
					src[i] = str(random.choice(other))

			# one
			temp = [None, None]
			for i in xrange(2):
				if which & (1 + i):
					temp[i] = 'VR%d' % src[i]
				else:
					temp[i] = src[i]
			one('VR100 <- %s + %s', temp[0], temp[1])

			# two
			temp = [None, None]
			for i in xrange(2):
				if which & (1 + i):
					temp[i] = 'VR%d' % revr[src[i]]
				else:
					temp[i] = src[i]
			two('VR100 <- %s + %s', temp[0], temp[1])

			all('VI0 <- VR100')
			all('VR100 <- call PrintInteger')

		steps -= 1

	all('')
	use(xrange(90, 100))


def loop():
	dec()
	all('Loop:')
	inc()

	# avem 3 bucle imbricate
	# tata specifica locul unde sunt folositi
	where = {}
	for i in xrange(20, 40):
		where[i] = random.randint(0, 3)  # nivelul la care este definit registru in bucle
		all('VR%d <- VI%d', i, i - 20)  # copiaza intrarea
		all('VR%d <- VR%d + 1', i, i)  # nu mai poate face copy propagation pe VI

	all('')
	all('# printing(%s)', where.keys())
	for r in where:
		all('VI0 <- VR%d', r)
		all('VR100 <- call PrintInteger')


	# lista de labeluri
	label = [unique() for i in xrange(3)]

	for i in xrange(3):
		all('# cfg loop %d', i)

		# propaga copierea doar pentru registrii care nu sunt
		# definiti intr-o bucla imbricata
		regs = [r for r in where if where[r] <= i]
		other = ['VR%d' % r for r in where if where[r] > i]
		other.extend(range(1, 10))

		# headerul functiei
		assign1(80 + i, '3')
		all('')
		all('__for_start_%d:', label[i])
		all('jumpf VR%d __for_end_%d', 80 + i, label[i])
		inc()

		propagate(regs, other, 20)
		use(regs, 5)

	for i in xrange(2, -1, -1):
		regs = [r for r in where if where[r] <= i]
		# other = ['VR%d' % r for r in where if where[r] > i]
		# other.extend(range(1, 10))

		# incrementing all registers defined here
		all('# printing(%s)', regs)
		for r in regs:
			all('VR%d <- VR%d + 1', r, r)
			all('VI0 <- VR%d', r)
			all('VR100 <- call PrintInteger')

		# prints a new line
		all('loadl VR100 new_line')
		all('VI0 <- VR100')
		all('VR100 <- call OutString')
		all('')

		# footerul functiei
		dec()
		all('VR%d <- VR%d - 1', 80 + i, 80 + i)
		all('jump __for_start_%d', label[i])
		all('__for_end_%d:', label[i])
		all('')


	all('return 0')
	all('')


def main():
	dec()
	all('.code')
	inc()
	library()

	loop()

	dec()
	all('Main:')
	inc()

	for i in xrange(20):
		all('VR100 <- %d%d', i + 1, random.randint(1, 9))
		all('VI%d <- VR100', i)
	all('VR100 <- call Loop')
	all('')

	for i in xrange(20):
		all('VR100 <- %d%d', i + 1, random.randint(1, 9))
		all('VI%d <- VR100', i)
	all('VR100 <- call Loop')
	all('')

	all('return 0')
	all('')

	# .data
	dec()
	all('.data')
	inc()
	all('new_line: DS "\\n\\0"')
	all('space: DS " \\0"')



if __name__ == '__main__':
	main()
