	section .data
	greet	db "Hello, there!", 0x0a ; 14
	name	db "John Doe", 0x0a	 ; 9
	occup	db "Web Developer", 0x0a ; 14

	section .text
	global _start
_start:	
	mov	ecx, greet
	mov	edx, 14
	mov	ebx, 1		; stdout
	mov 	eax, 4		; opcode 4
	int 	0x80		; syscall

	mov	ecx, name
	mov	edx, 9
	mov	ebx, 1
	mov	eax, 4
	int	0x80

	mov	ecx, occup
	mov	edx, 14
	mov	ebx, 1
	mov 	eax, 4
	int	0x80

	mov 	ebx, 0
	mov	eax, 1		; sys_exit
	int	0x80
