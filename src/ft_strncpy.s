section .text
global _ft_strncpy

_ft_strncpy:
	
	push rbp
	;rdi	void *dst
	;rsi	void *src
	;rdx	size_t len
	
	mov		rcx, rdx
	mov		rdi, rdx
	rep		movsb
	mov		byte[rdi], 0
	mov		rax, rdx
	pop rbp
	ret
