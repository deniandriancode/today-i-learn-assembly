	section .data
	msg 	db "Hello, World!", 0xa

	section .text
	global _start
_start:
	mov 	edx, 14		; number of byte to write
	mov	ecx, msg	; move the memory address into ecx
	mov	ebx, 1		; write to STDOUT
	mov 	eax, 4		; invoke SYS_WRITE (kernel opcode 4)
	int	0x80		; interrupt system
