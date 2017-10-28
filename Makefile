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


clean: testclean
	rm -rf $(OBJDIR)

fclean: clean
	rm -f test
	rm -f $(NAME)

re: fclean all

test: $(NAME)
	gcc maintest.c -I includes/ -L . -lfts -o maintest
	gcc maincat.c  -I includes/ -L . -lfts -o maincat
	./maintest

testlaunch:
	./maintest
	./maincat

testclean:
	rm -f ./maintest
	rm -f ./maincat

