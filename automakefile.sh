#!/bin/bash

rm -rf Makefile
git clone git@github.com:Siiiinj/lib.git
echo""
echo "- Lib cloned"
git clone git@github.com:Siiiinj/includes.git
echo "- Includes cloned"
mkdir src
echo "- Create src folder"
touch src/main.c
echo "- Create main"
touch .gitignore
echo "*.o" >> .gitignore
echo "*.a" >> .gitignore
echo "$1" >> .gitignore
echo "- Create .gitignore"
touch Makefile
echo "##" >> Makefile
echo "## EPITECH PROJECT, 2024" >> Makefile
echo "## Makefile" >> Makefile
echo "## File description:" >> Makefile
echo "## Compiler" >> Makefile
echo "##" >> Makefile
echo "" >> Makefile
echo "SRC = src/main.c" >> Makefile
echo "" >> Makefile
echo "OBJ = \$(SRC:.c=.o)" >> Makefile
echo "" >> Makefile
echo "NAME = $1" >> Makefile
echo "" >> Makefile
echo "all: \$(NAME)" >> Makefile
echo "\$(NAME): \$(OBJ)" >> Makefile
echo "		gcc -o \$(NAME) \$(OBJ) -L./lib -lmy" >> Makefile
echo "" >> Makefile
echo "clean:" >> Makefile
echo "		rm \$(OBJ)" >> Makefile
echo "" >> Makefile
echo "fclean: clean" >> Makefile
echo "		rm -rf \$(NAME)" >> Makefile
echo "		rm -rf \$(OBJ)" >> Makefile
echo "		rm -rf ./lib/my/libmy.a" >> Makefile
echo "" >> Makefile
echo "re: fclean all" >> Makefile
echo "- Makefile succefully generated"
