    
# stub makefile, does nothing, but causes R CMD build not to force rebuild pdf file

REVAL=TRUE

all:	WhatIf/inst/doc/whatif.pdf

%.tex:	%.Rnw
	echo "Sweave("$<", debug=TRUE, eval=$(REVAL))" | R --slave

%.pdf:	%.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*
	pdflatex $*
