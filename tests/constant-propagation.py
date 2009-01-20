#! /usr/bin/python

import random
import copy
from lib import *

def constantPropagate(values, start, stop, steps):
	# valorile registrilor

	# all('# constantPropagate(%s, %d, %d, %d)', values, start, stop, steps)
	while steps > 0:
		dst = random.choice(values.keys())

		if values.get(dst) is None or random.randint(0, 1):
			# atribuim o constanta
			# values[dst] = random.randint(start, stop)
			while True:
				temp = 0
				if random.randint(0, 1):
					temp = random.randint(1, 999)

				if temp != values[dst]:
					values[dst] = temp
					break


			all('VR%d <- %d', dst, values[dst])
			all('VI0 <- VR%d', dst)
			all('VR100 <- call PrintInteger')
		else:
			# copiem un registru
			for i in xrange(len(values)):
				src = random.choice(values.keys())
				if values[src] != values[dst]:
					break
			else:
				continue

			if values[src] is not None:
				# src este redefinit, trebuie sa nu pierdem definitia
				use((src, ))

			values[src] = values[dst]
			one('VR%d <- VR%d', src, dst)
			two('VR%d <- %d', src, values[dst])

			if values[src] != 0:
				one('VR101 <- VR101 + VR%d', src)
				two('VR101 <- VR101 + %d', values[src])

				all('VI0 <- VR101')
				all('VR100 <- call PrintInteger')

		all('')
		steps -= 1



def Func1():
	# constant propagation, BB
	dec()
	all('Func:')
	inc()

	regs = dict([(i, None) for i in xrange(16, 32)])
	constantPropagate(regs, 16, 32, 200)
	use(regs.iterkeys())

	all('return 0')
	all('')


_max_depth = 2
_values = dict([(i, None) for i in xrange(16, 24)])


def Func2(depth=0):
	# constant propagation + branches
	global _values

	constantPropagate(_values, 0, 1, random.randint(1, 2))
	if depth == _max_depth:
		return

	for i in xrange(random.randint(1, 3)):
		while True:
			which = random.choice(_values.keys())
			if _values[which] is not None:
				break

		constantPropagate(_values, 0, 1, random.randint(1, 4))

		saved = copy.copy(_values)
		branch_then(which, _values[which])

		_values = copy.copy(saved)
		Func2(depth + 1)
		if saved[which]: final = copy.copy(_values)

		branch_else()

		_values = copy.copy(saved)
		Func2(depth + 1)
		if not saved[which]: final = copy.copy(_values)

		branch_endif()
		_values = copy.copy(final)
		# all('# regs = %s', _values)


if __name__ == '__main__':
	iropen('constant-propagate-branch')

	all('.code')
	library()

	# Func1()

	dec()
	all('Func:')
	inc()

	all('VR101 <- VI0')
	Func2()
	use(_values.iterkeys())

	all('return 0')
	all('')


	# Main
	dec()
	all('Main:')
	inc()

	all('VR100 <- %d', random.randint(0, 999))
	all('VI0 <- VR100')
	all('VR100 <- call Func')
	all('loadl VR100 new_line')
	all('VI0 <- VR100')
	all('VR100 <- call OutString')
	all('')

	all('VR100 <- %d', random.randint(0, 999))
	all('VI0 <- VR100')
	all('VR100 <- call Func')
	all('loadl VR100 new_line')
	all('VI0 <- VR100')
	all('VR100 <- call OutString')
	all('')

	all('return 0')
	all('')

	dec()
	all('.data')
	inc()
	all('new_line: DS "\\n\\0"')
	all('space: DS " \\0"')





