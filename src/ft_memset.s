section	.text
global	_ft_memset

_ft_memset:
	push	rbp

	;rdi void *s
	;rsi int c
	;rdx size_t len

	push rdi
	mov		rax, rsi
	mov		rcx, rdx
	cld

	rep		stosb;Store rax (int c) at address rdi(++)  rcx times

	pop rax;old rdi -> rax
	pop rbp
	ret
