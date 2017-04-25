TIKZDIR = img
TIKZ_FILES = $(wildcard $(TIKZDIR)/*.tikz)
PDFTIKZ_FILES = $(patsubst %.tikz,%.pdf,$(TIKZ_FILES))

$(TIKZDIR)/%.pdf: $(TIKZDIR)/%.tikz
	cd $(TIKZDIR); \
	pdflatex $$(basename $<)

.PHONY : FORCE_MAKE

all : diplomarbeit.pdf
diplomarbeit.pdf : diplomarbeit.tex FORCE_MAKE ${PDFTIKZ_FILES}
	pdflatex diplomarbeit.tex