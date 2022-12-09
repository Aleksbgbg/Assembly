.section .data
hello:
	.asciz "Hello, world!\n"

goodbye:
	.asciz "Goodbye, world!\n"

.section .text
        .globl _start

_start:
	mov $hello, %ecx
	call _print

	mov $goodbye, %ecx
	call _print

	mov $1, %eax
	mov $0, %ebx
	int $0x80

_print:
	mov %ecx, %edx

_count:	
	cmpb $0, (%edx)
	je _finish
	inc %edx
	jmp _count

_finish:	
	sub %ecx, %edx

	mov $4, %eax
	mov $1, %ebx
	int $0x80

        ret
