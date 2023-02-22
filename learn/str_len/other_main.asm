	;; why this program print all the string?
	section .data
	cpu_	db "Central Processing Unit", 0xa
	tui	db "Terminal User Interface", 0xa
	msg 	db "The quick brown fox jumps over the lazy dog", 0xa
	gui 	db "Graphical User Interface", 0xa
	
	section .text
	global _start
_start:	
	mov	ebx, cpu_
	mov	eax, ebx

nextchar:
	cmp	byte [eax], 0
	jz	finished
	inc	eax
	jmp 	nextchar

finished:
	sub	eax, ebx
	mov	edx, eax
	mov 	ecx, cpu_
	mov	ebx, 1
	mov	eax, 4
	int 0x80

cleanup:
	mov	ebx, 0
	mov	eax, 1
	int 0x80
