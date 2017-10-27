section	.text
global	_ft_strnew

	extern	_malloc
	extern	_ft_bzero

_ft_strnew:	
	;rdi	int length
	push	rbp

	inc		rdi
	call	_malloc

	push	rax

	mov		rsi,  rdi
	mov		rdi,  rax
	call	_ft_bzero

	pop		rax
	pop		rbp
	ret
