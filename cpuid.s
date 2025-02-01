	.section .data
hello:
	.ascii "Hello, world!\n"

	.section .text
	.globl _start

_start:
	mov $4, %eax      # write to file
	mov $1, %ebx      # file descriptor 1 (STDOUT)
	mov $hello, %ecx  # string address
	mov $14, %edx     # length
	int $0x80         # invoke kernel handler for user-mode system calls via interrupt descriptor table entry 128

	mov $1, %eax      # exit
	mov $0, %ebx      # exit code 0 (success)
        int $0x80         # invoke kernel handler for user-mode system calls via interrupt descriptor table entry 128
