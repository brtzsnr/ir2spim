import random

irone = None
irtwo = None
irnul = open('/dev/null', 'wt')

index = 0
depth = 1


def iropen(name):
	global irone, irtwo
	irone = open('%s.ir' % name, 'wt')
	irtwo = open('%s.ir.opt' % name, 'wt')


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


def printRegs(regs):
	for r in regs:
		all('VI0 <- VR%d', r)
		all('VR100 <- call PrintInteger')
	all('loadl VR100 new_line')
	all('VI0 <- VR100')
	all('VR100 <- call OutString')


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



