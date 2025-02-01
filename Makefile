boot0:
	as -o boot0.o boot0.s
	ld -o boot0.img --oformat binary -Ttext 0x7C00 boot0.o
