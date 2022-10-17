WP=2
NUMBER=1
TITLE=main

NAME=D$(WP).$(NUMBER)-$(TITLE)
NAME=$(TITLE)
TEX=$(NAME).tex
PDF=$(NAME).pdf

default: $(TEX) references.bib
	pdflatex -shell-escape $(NAME)
	pdflatex -shell-escape $(NAME)
	bibtex $(NAME)
	pdflatex -shell-escape $(NAME)

create:
	@test -f $(TEX) && \
	echo  "File $(TEX) already exists" ||\
        cp main.tex $(TEX)


