#!/bin/sh
pdflatex PPC_TSI_GBA.tex
bibtex PPC_TSI_GBA
pdflatex PPC_TSI_GBA.tex
pdflatex PPC_TSI_GBA.tex
rm *.aux
rm *.log
rm *.bbl
rm *.blg
rm *.dvi
rm *.toc
rm *~
