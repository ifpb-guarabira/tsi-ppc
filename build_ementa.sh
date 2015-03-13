#!/bin/bash
if [ $# -eq 1 ] && [ -f $1 ]
then
    echo "\input{cabecalhos.tex}" >  ementa.tex
    echo "\begin{document}"       >> ementa.tex
    cat  $1                       >> ementa.tex
    echo "\end{document}"         >> ementa.tex

    pdflatex ementa.tex
    rm ementa.tex
    rm *.aux
    rm *.log
else
    echo "uso: ./build_ementa.sh EMENTA"
    echo
    echo "     EMENTA   caminho do fonte da ementa a ser gerada."
    exit -1
fi
