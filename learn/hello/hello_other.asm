	section .text
	msg	db "Hello, World!", 0x0a

	section .data
	global _start
_start:
	mov	ecx, msg
	mov 	edx, 14
	mov	ebx, 1
	mov	eax, 4
	int 	0x80
