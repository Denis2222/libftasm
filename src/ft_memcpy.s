section	.text
global	_ft_memcpy

_ft_memcpy:
	push	rbp

	;rdi	void *dst
	;rsi	void *src
	;rdx	size_t len

	mov		r15, rdi

	mov		rax, rsi
	mov		rcx, rdx
	cld
	rep		movsb;Move byte at address DS:(E)SI to address ES:(E)DI

	mov		rax, r15
	pop		rbp
	ret
