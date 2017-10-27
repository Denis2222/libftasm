.PHONY : test

SRCBASE = ft_isalpha.s \
		  ft_islower.s \
		  ft_isprint.s \
		  ft_isupper.s \
		  ft_isdigit.s \
		  ft_isalnum.s \
		  ft_toupper.s \
		  ft_tolower.s \
		  ft_strlen.s \
		  ft_strcpy.s \
		  ft_strncpy.s \
		  ft_bzero.s \
		  ft_strcat.s \
		  ft_puts.s \
		  ft_memset.s \
		  ft_memcpy.s \
		  ft_debug.s \
		  ft_strdup.s \
		  ft_strnew.s \
		  ft_cat.s \
		  ft_isascii.s

SRCDIR = ./src/
OBJDIR = ./obj/

NAME = libfts.a

SRCS = $(addprefix $(SRCDIR), $(SRCBASE))
OBJS = $(addprefix $(OBJDIR), $(SRCBASE:.s=.o))

NASM = nasm -f macho64

all: $(NAME)

$(NAME): $(OBJDIR) $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

$(OBJDIR):
	mkdir -p $(OBJDIR)
	mkdir -p $(dir $(OBJS))


$(OBJDIR)%.o : $(SRCDIR)%.s | $(OBJDIR)
	$(NASM) $< -o $@


clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -f test
	rm -f $(NAME)

re: fclean all

test: $(NAME)
	gcc -g maintest.c $(OBJS) -I includes/ -L . -lfts -o test
	./test

tlibft:
	nasm -f macho64 libft.s
	ld libft.o -macosx_version_min 10.10 -lSystem -o libftasm

tsyscall:
	nasm -f macho64 syscall.s
	ld syscall.o -macosx_version_min 10.10 -lSystem -o syscall
