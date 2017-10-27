section .text
	global _ft_strdup

	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	;rdi = char *s1
	mov		r8, rdi
	push	r8;save s1
	call	_ft_strlen; strlen(s1)

	inc		rax;strlen(s1) + 1
	mov		rdi, rax
	call	_malloc; malloc(strlen(s1) + 1)

	cmp		rax, 0
		je	error; malloc fail
	pop		r8;get s1

	mov		rdi, rax; newstr
	mov		rsi, r8;s1
	call	_ft_strcpy; rax = ft_strcpy(newstr, s1);

	ret; rax

error:
	mov		rax, 0
	ret
