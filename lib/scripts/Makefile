# This is a Makefile for producing a latex pdf.
# Repo: https://github.com/fiedl/dot-zsh
#
# Just type `make` to run it.

# The project name and therefore the name of the main
# tex file and the pdf is determined automatically.
# Override by setting the `PROJECT_NAME` environment
# variable.
PROJECT_NAME=$(shell ./lib/scripts/get_project_name.rb)

# http://stackoverflow.com/a/7507834/2066546
# include other_makefile

TIKZ_FILES = $(wildcard img/*.tikz)
PDFTIKZ_FILES = $(patsubst %.tikz,%.pdf,$(TIKZ_FILES))

img/%.pdf: img/%.tikz
	cd $(TIKZDIR); \
	pdflatex $$(basename $<)

# Tell `make` which targets are no files.
# http://stackoverflow.com/a/2145605/2066546
.PHONY : FORCE_MAKE

MARKDOWN_FILES = $(wildcard text/*.md.tex)
CONVERTED_MARKDOWN_FILES = $(patsubst %.md.tex,%.tex,$(MARKDOWN_FILES))

text/%.tex: text/%.md.tex
	cd text
	pandoc $(patsubst %.md.tex,%,$<).md.tex --from markdown --to latex > $(patsubst %.md.tex,%,$<).tex

all : $(PROJECT_NAME).pdf

dependencies: ${PDFTIKZ_FILES} ${CONVERTED_MARKDOWN_FILES}

$(PROJECT_NAME).pdf : $(PROJECT_NAME).tex FORCE_MAKE dependencies
	pdflatex $(PROJECT_NAME).tex
	rm $(CONVERTED_MARKDOWN_FILES)

cleanup:
	rm $(CONVERTED_MARKDOWN_FILES)