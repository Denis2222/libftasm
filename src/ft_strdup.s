;section	.data
;txt: db "PATATOR", 0

;section	.text
;global	_ft_strdup

;extern	_malloc
;extern	_ft_strlen
;extern	_ft_strncpy
;extern	_ft_strcpy
;extern	_ft_bzero
;extern	_write
;extern	_printf
;extern	_ft_debug

;_ft_strdup:
;	push	rbp
;
;	;rdi	char *s1
;
;	call	_ft_strlen
;	mov		rdx, rax
;	mov		r8, rdi
;	
;	;rdx = strlen(s1)
;	;r8 = s1
;;	mov		rdi, rdx
;	inc rdi
;	call	_malloc
;;	mov		r9, rax
;	;r9 = new str malloc
;	;rdx = strlen(s1)
;	;r8 = s1
;	call	_ft_debug
;	pop rbp
;	ret
;
;	mov rdi, r9
;	mov rsi, rdi
;	call	_ft_bzero
;
;	mov		rdi, r9
;;	mov		rsi, r8
;	call	_ft_strcpy
;
;	;rax = char *
;	pop		rbp
;;	ret

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	push rbp

	mov		r8, rdi
	push	r8
	call	_ft_strlen

	inc		rax;
	mov		rdi, rax
	call	_malloc

	cmp		rax, 0
		je	error
	pop		r8

	mov		rdi, rax
	mov		rsi, r8
	call	_ft_strcpy

	pop rbp
	ret

error:
	mov		rax, 0
	ret
