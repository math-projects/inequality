# Author: Maurizio Loreti, aka MLO or (HAM) I3NOO
#
# Address no longer current
#
# Work:   University of Padova - Department of Physics
#         Via F. Marzolo, 8 - 35131 PADOVA - Italy
# Phone:  +39 (049) 827-7216   FAX: +39 (049) 827-7102
# EMail:  loreti@pd.infn.it
# WWW:    http://www.pd.infn.it/~loreti/mlo.html
#
# $Id: Makefile,v 1.8 2002/09/13 06:34:25 loreti Exp $

# Dependencies

%.ps:%.dvi
	dvips -P webo -P cmz -o $@ $<

%.dvi:%.tex
	latex $<
	while grep Rerun $*.log ; do latex $< ; done

# Phony targets

.PHONY: clean

# Rules

samples: sample1.ps sample2.ps sample3.ps

sample1.ps: sample1.dvi

sample2.ps: sample2.dvi

sample3.ps: sample3.dvi

sample1.dvi: sample1.tex

sample2.dvi: sample2.tex

sample3.dvi: sample3.tex

clean:
	-rm *~ *.log *.aux *.dvi *.ps *.pdf
