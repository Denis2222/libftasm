section	.data
txt: db "TEST", 0
printftxt: db 'DEBUG'


section	.text
global	_ft_debug

extern	_write
extern	_printf
extern	_puts

_ft_debug:
	push rbp


	mov	rdi, printftxt
	call _printf

	pop rbp
	ret
