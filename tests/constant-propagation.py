#! /usr/bin/python

import random
import copy
from lib import *

def constantPropagate(values, start, stop, steps):
	# valorile registrilor


	# all('# constantPropagate(%s, %d, %d, %d)', values, start, stop, steps)
	for i in xrange(steps):
		dst = random.choice(values.keys())

		if values.get(dst) is None or random.randint(0, 1):
			# atribuim o constanta
			values[dst] = random.randint(start, stop)
			all('VR%d <- %d', dst, values[dst])
			all('VI0 <- VR%d', dst)
			all('VR100 <- call PrintInteger')
		else:
			# copiem un registru
			while True:
				src = random.choice(values.keys())
				if src != dst:
					break

			values[src] = values[dst]
			one('VR%d <- VR%d', src, dst)
			two('VR%d <- %d', src, values[dst])
			all('VI0 <- VR%d', src)
			all('VR100 <- call PrintInteger')


		all('')

	all('')



def Func1():
	# constant propagation, BB
	dec()
	all('Func1:')
	inc()

	regs = dict([(i, None) for i in xrange(16, 32)])
	constantPropagate(regs, 16, 32, 200)

	all('return 0')
	all('')


_max_depth = 1
_values = dict([(i, None) for i in xrange(20, 60)])


def Func2(depth=0):
	# constant propagation + branches

	constantPropagate(_values, 0, 1, random.randint(1, 1))
	if depth == _max_depth:
		return

	for i in xrange(1):
		while True:
			which = random.choice(_values.keys())
			if _values[which] is not None:
				break

		branch_then(which, _values[which])
		Func2(depth + 1)
		branch_else()
		Func2(depth + 1)
		branch_endif()


if __name__ == '__main__':
	iropen('constant-propagate-branch')

	all('.code')
	library()

	Func1()

	# Func2()

	dec()
	all('Main:')
	inc()

	all('VR100 <- call Func2')
	all('loadl VR100 new_line')
	all('VI0 <- VR100')
	all('VR100 <- call OutString')

	all('return 0')
	all('')

	dec()
	all('.data')
	inc()
	all('new_line: DS "\\n\\0"')
	all('space: DS " \\0"')





