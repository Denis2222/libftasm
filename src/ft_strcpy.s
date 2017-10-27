section .text
	global _ft_strcpy
	extern _ft_strlen

_ft_strcpy:
	
	push rbp

	;rdi	void *dst
	;rsi	void *src

	mov		rdx, rdi
	mov		rdi, rsi
	call	_ft_strlen

	;rdx = dst
	;rdi = src
	;rax = length(src)

	mov		rcx, rax ; compteur = length(src)
	mov		rdi, rdx	; rdi = dst
	rep		movsb ; put rsi in rdi ( src on len)
	mov		byte[rdi], 0 ;last char \0
	mov		rax, rdx ; retour de dest
	pop rbp
	ret
