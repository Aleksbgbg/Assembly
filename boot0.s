.code16

.section .data
hello_world:
  .asciz "Hello, world!"

.section .text
.global _start
_start:
  mov $hello_world, %esi
  mov $0x0E, %ax

loop:
  lodsb
  or %al, %al
  jz halt
  int $0x10
  jmp loop

halt:
  cli
  hlt

bootloader_end:
.space 510, 0x00
.byte 0xAA, 0x55
