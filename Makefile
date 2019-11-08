# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ifran <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/27 23:06:42 by ifran             #+#    #+#              #
#    Updated: 2019/09/27 23:24:09 by ifran            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ALL_EX = main.c read_here.c check_buffer.c buffer_to_map.c \
          check_shape.c ft_append.c fillit.c check_size.c \
           int_array.c new_tetrm.c ft_lstclear.c case_of_error.c

SRCDIR = srcs/
OBJDIR = objs/

SRCS = $(addprefix $(SRCDIR), $(ALL_EX))
ALL_OBJ = $(ALL_EX:%.c=%.o)
OBJS = $(addprefix $(OBJDIR), $(ALL_OBJ))

NAME = fillit

INCLUDES = ./includes/fillit.h ./libft/includes/libft.h

COMP_LIB = @make -C libft/

FLAGS = -Wall -Wextra -Werror

all: lib $(NAME)

$(NAME): ./libft/libft.a $(OBJS)
		@gcc $(FLAGS) -o $(NAME) $(OBJS) -L./libft -lft

$(OBJDIR)%.o: $(SRCDIR)%.c $(INCLUDES)
		@/bin/mkdir -p $(OBJDIR)
		@gcc $(FLAGS) -I./includes -I./libft/includes -c $< -o $@

lib:
		$(COMP_LIB)

./libft/libft.a: lib

clean:
	    @/bin/rm -rf $(OBJDIR)
	    $(COMP_LIB) clean

fclean: clean
		@/bin/rm -rf $(NAME)
		$(COMP_LIB) fclean

re: fclean all

.PHONY: lib clean fclean all re
