section	.text
global	_ft_memcpy

_ft_memcpy:
	push	rbp

	;rdi	void *dst
	;rsi	void *src
	;rdx	size_t len

	push	rdi

	mov		rax, rsi
	mov		rcx, rdx
	cld
	rep movsb;Move byte at address DS:rSI to address rDI

	pop		rax; get old rdi pointer
	pop		rbp
	ret
