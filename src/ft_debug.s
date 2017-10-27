section	.data
txt: db "TEST", 0
printftxt: db "rsi:%d rdx:%d rdi:%d r8:%d r9:%d X:%d Y:%d"


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
