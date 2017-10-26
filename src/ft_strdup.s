section	.text
global	_ft_strdup

extern	_malloc
extern	_ft_strlen
extern	_ft_memcpy
extern	_ft_bzero

_ft_strdup:
	push	rbp

	;rdi	char *s1
	mov r8, rdi
	call	_ft_strlen
	;rax = length s1
	mov r10, rax
	add rax, 100
	mov rdi, rax
	call	_malloc

	mov	r9, rax; newstr

;	mov rdi, r9
;	sub r10, 10
;	mov rsi, r10
;	call _ft_bzero
;
	mov rdi, r9
	mov rsi, r8
	mov rdx, 3
	call	_ft_memcpy

	pop		rbp
	ret
