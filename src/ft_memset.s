section	.text
global	_ft_memset

_ft_memset:
	push	rbp

	;rdi void *s
	;rsi int c
	;rdx size_t len

	mov r15, rdi

	mov		rax, rsi
	mov		rcx, rdx
	cld

	rep		stosb;Store rax at address rdi  rcx times

	mov		rax, r15
	pop rbp
	ret
