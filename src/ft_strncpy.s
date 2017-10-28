section .text
global _ft_strncpy

_ft_strncpy:
	
	push rbp
	;rdi	void *dst
	;rsi	void *src
	;rdx	size_t len
	
	mov		rcx, rdx ; compteur = length(src)
	rep		movsb ; put rsi in rdi ( src on len)
	mov		byte[rdi], 0 ;last char \0
	mov		rax, rdx ; retour de dest
	pop rbp
	ret

