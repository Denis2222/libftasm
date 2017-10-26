section	.data
txt: db " printf : %d ", 0

section	.text
global	_ft_strdup

extern	_malloc
extern	_ft_strlen
extern	_ft_strcpy
extern	_ft_bzero
extern	_printf

_ft_strdup:
	push	rbp

	;rdi	char *s1
	mov r8, rdi
	call	_ft_strlen
	;rax = length s1
	mov r10, rax
	mov rdi, rax
	call	_malloc

	mov	rax, r8; newstr

	pop rbp
	ret

	mov rdi, r9
	mov rsi, r10
	call _ft_bzero
;
	mov rdi, r9
	mov rsi, r8
	push r9
	push r8
	call	_ft_strcpy

	mov rax, rdi
	pop		rbp
	ret
