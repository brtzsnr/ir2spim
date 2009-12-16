#! /usr/bin/python

import random
from lib import *


def main():
	dec()
	all('.code')
	inc()
	library()

	dec()
	all('Func:')
	inc()

	for i in xrange(20, 40):
		all('VR%d <- VI%d', i, i)  # copiaza intrarea
		all('VR%d <- VR%d + 1', i, i)  # nu mai poate face copy propagation pe VI

	propagate(range(20, 40), range(1, 10), 128)
	printRegs(range(90, 100))

	use(range(20, 40), steps=5)
	printRegs(range(20, 40))

	all('return 0')
	all('')

	dec()
	all('Main:')
	inc()

	for i in xrange(20, 40):
		all('VR100 <- %d%d', i, random.randint(1, 9))
		all('VI%d <- VR100', i)
	all('VR100 <- call Func')
	all('')

	for i in xrange(20, 40):
		all('VR100 <- %d%d', i, random.randint(1, 9))
		all('VI%d <- VR100', i)
	all('VR100 <- call Func')
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
	iropen('copy-propagation')
	main()
