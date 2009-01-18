import random

# 10 registru temporar

def library(irone):
	print >> irone, '.code'
	print >> irone, 'PrintInteger:'
	print >> irone, '\t', '# afiseaza intregul din registru VI0 urmat de linie noua'
	print >> irone, '\t', 'VR0 <- call OutInt'
	print >> irone, '\t', 'loadl VR0 space'
	print >> irone, '\t', 'VI0 <- VR0'
	print >> irone, '\t', 'VR0 <- call OutString'
	print >> irone, '\t', 'return 0'
	print >> irone


def propagate(reg):
	print >> irone, '\t# propagate %d' % reg
	print >> irtwo, '\t# propagate %d' % reg

	regs = []

	dst = random.randint(0, 9)
	print >> irone, '\tVR%d <- VR%d' % (dst, reg)
	print >> irtwo, '\tVR%d <- VR%d' % (dst, reg)
	regs.append(dst)

	while len(regs) < 10:
		while True:
			dst = random.randint(0, 9)
			if dst not in regs:
				break

		if random.randint(0, 2) == 0:
			# copiere

			src = random.choice(regs)
			print >> irone, '\tVR%d <- VR%d' % (dst, src)
			print >> irtwo, '\tVR%d <- VR%d' % (dst, reg)
			regs.append(dst)
		else:
			# propagare
			while True:
				src1 = random.choice(['VR%d' % random.choice(regs), str(random.randint(1, 9))])
				src2 = random.choice(['VR%d' % random.choice(regs), str(random.randint(1, 9))])
				if (not src1.isdigit()) or (not src2.isdigit()):
					break

			print >> irone, '\tVR%d <- %s + %s' % (dst, src1, src2)
			print >> irone, '\tVI0 <- VR%d' % dst
			print >> irone, '\tVR10 <- call PrintInteger'

			# propagate 'reg'
			if src1[0] == 'V': src1 = 'VR%d' % reg
			if src2[0] == 'V': src2 = 'VR%d' % reg

			print >> irtwo, '\tVR%d <- %s + %s' % (dst, src1, src2)
			print >> irtwo, '\tVI0 <- VR%d' % dst
			print >> irtwo, '\tVR10 <- call PrintInteger'

	print >> irone
	print >> irtwo

	# invalidam registrul propagat
	# valoare nu se poate propaga mai departe
	# iar definitiile VR0 .. VR9 trebuie pastrate
	# XXX pun pariu ca se gaseste un student care tine cont
	# ca exista mai multe copii in viata si-mi propaga una
	# dintre ele mai departe
	print >> irone, '\tVR%d <- VR%d + 1' % (reg, reg)
	print >> irone, '\tVI0 <- VR%d' % reg
	print >> irone, '\tVR10 <- call PrintInteger'

	print >> irtwo, '\tVR%d <- VR%d + 1' % (reg, reg)
	print >> irtwo, '\tVI0 <- VR%d' % reg
	print >> irtwo, '\tVR10 <- call PrintInteger'

	print >> irone
	print >> irtwo

	# facem un loop care incrementeaza cu registrul de intrare
	# fiecare din cele 10 registre pentru a nu putea propaga copia
	print >> irone, '\tVR10 <- VR%d' % reg  # fara loop unrolling
	print >> irone, '\t__loop_%d:' % reg
	for i in xrange(10):
		print >> irone, '\t\tVR%d <- VR%d + %d' % (i, i, i)  # registrele se modifica independent
		print >> irone, '\t\tVR%d <- VR%d + VR%d' % (i, i, reg)   # fara loop unrolling
	print >> irone, '\tVR10 <- VR10 - 1'
	print >> irone, '\tjumpt VR10 __loop_%d' % reg
	print >> irone


	print >> irtwo, '\tVR10 <- VR%d' % reg  # fara loop unrolling
	print >> irtwo, '\t__loop_%d:' % reg
	for i in xrange(10):
		print >> irtwo, '\t\tVR%d <- VR%d + %d' % (i, i, i)  # registrele se modifica independent
		print >> irtwo, '\t\tVR%d <- VR%d + VR%d' % (i, i, reg)   # fara loop unrolling
	print >> irtwo, '\tVR10 <- VR10 - 1'
	print >> irtwo, '\tjumpt VR10 __loop_%d' % reg
	print >> irtwo

	print >> irone
	print >> irtwo


	# utilizam registrii
	print >> irone, '\t# Using all registers'
	print >> irtwo, '\t# Using all registers'
	for i in xrange(10):
		print >> irone, '\tVI%d <- VR%d' % (i, i)
		print >> irtwo, '\tVI%d <- VR%d' % (i, i)

	print >> irone, '\tVR10 <- call PrintInteger'
	print >> irtwo, '\tVR10 <- call PrintInteger'


def main():
	library(irone)
	library(irtwo)

	num = 2

	print >> irone, 'Func:'
	print >> irtwo, 'Func:'

	reg = {}
	for i in xrange(0, num):
		print >> irone, '\tVR2%d <- VI%d' % (i, i)
		print >> irtwo, '\tVR2%d <- VI%d' % (i, i)
	print >> irone
	print >> irtwo


	# aduna 1 ca sa nu se faca copy propagation pe registrele de intrare
	for i in xrange(0, num):
		print >> irone, '\tVR2%d <- VR2%d + 1' % (i, i)
		print >> irone, '\tVI0 <- VR2%d' % i
		print >> irone, '\tVR10 <- call PrintInteger'

		print >> irtwo, '\tVR2%d <- VR2%d + 1' % (i, i)
		print >> irtwo, '\tVI0 <- VR2%d' % i
		print >> irtwo, '\tVR10 <- call PrintInteger'
	print >> irone
	print >> irtwo


	for i in xrange(20, 20 + num):
		propagate(i)

	print >> irone, '\treturn 0'
	print >> irtwo, '\treturn 0'

	print >> irone
	print >> irtwo

	print >> irone, 'Main:'
	print >> irtwo, 'Main:'

	for i in xrange(4):
		for j in xrange(num):
			rnd = random.randint(0, 99)

			print >> irone, '\tVR10 <- %d' % rnd
			print >> irone, '\tVI%d <- VR10' % j
			print >> irtwo, '\tVR10 <- %d' % rnd
			print >> irtwo, '\tVI%d <- VR10' % j

		print >> irone, '\tVR10 <- call Func'
		print >> irone, '\tloadl VR10 new_line'
		print >> irone, '\tVI0 <- VR10'
		print >> irone, '\tVR10 <- call OutString'
		print >> irone
		print >> irtwo, '\tVR10 <- call Func'
		print >> irtwo, '\tloadl VR10 new_line'
		print >> irtwo, '\tVI0 <- VR10'
		print >> irtwo, '\tVR10 <- call OutString'
		print >> irtwo


	print >> irone, '\treturn 0'
	print >> irtwo, '\treturn 0'


	print >> irone
	print >> irone,  '.data'
	print >> irone,  '\tnew_line: DS "\\n\\0"'
	print >> irone,  '\tspace: DS " \\0"'
	print >> irtwo
	print >> irtwo,  '.data'
	print >> irtwo,  '\tnew_line: DS "\\n\\0"'
	print >> irtwo,  '\tspace: DS " \\0"'

if __name__ == '__main__':
	irone = open('copy-propagation.ir', 'wt')
	irtwo = open('copy-propagation.ir.opt', 'wt')
	main()
