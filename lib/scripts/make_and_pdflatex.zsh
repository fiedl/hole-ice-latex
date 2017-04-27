#!/usr/bin/env zsh
make dependencies
/Library/TeX/texbin/pdflatex $*
make cleanup