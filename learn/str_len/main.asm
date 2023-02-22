	section .data
	msg	db "Hello, brave new world", 0xa

	section .text
	global _start
_start:
	mov	ebx, msg
	mov	eax, ebx	; eax and ebx point to the same address

nextchar:
	cmp	byte [eax], 0	; 0 is the end of string delimiter
	jz	finished
	inc	eax
	jmp	nextchar

finished:
	sub	eax, ebx
	mov	edx, eax
	mov	ecx, msg
	mov 	ebx, 1
	mov	eax, 4
	int 	0x80

	mov	ebx, 0
	mov	eax, 1
	int 	0x80
	
