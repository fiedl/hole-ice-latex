TIKZDIR = img
TIKZ_FILES = $(wildcard $(TIKZDIR)/*.tikz)
PDFTIKZ_FILES = $(patsubst %.tikz,%.pdf,$(TIKZ_FILES))

$(TIKZDIR)/%.pdf: $(TIKZDIR)/%.tikz
	cd $(TIKZDIR); \
	pdflatex $$(basename $<)

.PHONY : FORCE_MAKE

MARKDOWN_FILES = $(wildcard text/*.md.tex)
CONVERTED_MARKDOWN_FILES = $(patsubst %.md.tex,%.tex,$(MARKDOWN_FILES))

text/%.tex: text/%.md.tex
	cd text
	pandoc $(patsubst %.md.tex,%,$<).md.tex --from markdown --to latex > $(patsubst %.md.tex,%,$<).tex

all : diplomarbeit.pdf
dependencies: ${PDFTIKZ_FILES} ${CONVERTED_MARKDOWN_FILES}
diplomarbeit.pdf : diplomarbeit.tex FORCE_MAKE dependencies
	pdflatex diplomarbeit.tex
	rm $(CONVERTED_MARKDOWN_FILES)
cleanup:
	rm $(CONVERTED_MARKDOWN_FILES)