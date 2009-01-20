#! /usr/bin/python

import random
import copy
from lib import *

# registru temporar: 0
range = (-99, +99)

def constantPropagate(regs, steps):
	value = {}
	for r in regs:
		value[r] = None

	all('# constantPropagate(%s, %s)', regs, steps)
	for i in xrange(steps):
		dst = random.choice(regs)
		if value[dst] is None or random.randint(0, 1):
			# atribuim o constanta
			value[dst] = random.randint(0, 99)
			all('VR%d <- %d', dst, value[dst])
			all('VI0 <- VR%d', dst)
			all('VR100 <- call PrintInteger')
		else:
			# copiem un registru
			while True:
				src = random.choice(regs)
				if src == dst:
					continue

				one('VR%d <- VR%d', src, dst)
				two('VR%d <- %d', src, value[dst])
				all('VI0 <- VR%d', src)
				all('VR100 <- call PrintInteger')

				value[src] = value[dst]
				break

	all('')

def Func1():
	# constant propagation, BB
	dec()
	all('Func1:')
	inc()

	constantPropagate(xrange(20, 60), 1024)

	all('return 0')
	all('')



if __name__ == '__main__':
	iropen('constant-propagate-bb')

	all('.code')
	library()

	Func1()

	dec()
	all('Main:')
	inc()

	all('VR100 <- call Func1')
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





