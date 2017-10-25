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
		  ft_bzero.s \
		  ft_strcat.s \
		  ft_puts.s \
		  ft_isascii.s

SRCDIR = ./src/
OBJDIR = ./obj/

NAME = libfts.a

SRCS = $(addprefix $(SRCDIR), $(SRCBASE))
OBJS = $(addprefix $(OBJDIR), $(SRCBASE:.s=.o))

NASM = nasm -f macho64

all: $(NAME) test
	./test

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
	gcc -Wall -Werror -Wextra -g main.c $(OBJS) -I includes/ -L . -lfts -o test

tlibft:
	nasm -f macho64 libft.s
	ld libft.o -macosx_version_min 10.10 -lSystem -o libftasm

tsyscall:
	nasm -f macho64 syscall.s
	ld syscall.o -macosx_version_min 10.10 -lSystem -o syscall
