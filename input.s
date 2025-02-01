.section .data
str:
	.zero 100

.section .text
	.globl _start

_start:
        mov $3, %eax
	mov $0, %ebx
	mov $str, %ecx
	mov $100, %edx
	int $0x80

	mov $4, %eax
	mov $1, %ebx
	mov $str, %ecx
	mov $100, %edx
	int $0x80
	
	mov $1, %eax
	mov $0, %ebx
	int $0x80
