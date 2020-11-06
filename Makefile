pdflatex := /usr/bin/pdflatex
bibtex := /usr/bin/bibtex

SOURCES := $(wildcard images/*.tex)
IMAGES := $(patsubst images/%.tex, images/%.pdf, $(SOURCES))

all:	$(IMAGES)
	$(pdflatex)  -interaction nonstopmode main.tex
	$(bibtex) main.aux
	$(pdflatex)  -interaction nonstopmode main.tex
	$(pdflatex)  -interaction nonstopmode main.tex
clean:
	rm -rf *.soc *.out *.log *.blg *.bbl *.aux *.thm *.pgf-plot.gnuplot *.pdf *.loc *.synctex.gz *.upa *.upb
	cd images && rm -rf *.soc *.out *.log *.blg *.bbl *.aux *.thm *.pgf-plot.gnuplot  *.loc *.synctex.gz *.upa *.upb && cd ..
	cd sections && rm -rf *.soc *.out *.log *.blg *.bbl *.aux *.thm *.pgf-plot.gnuplot *.pdf *.loc *.synctex.gz *.upa *.upb && cd ..
	
images/%.pdf:	images/%.tex
	pdflatex -interaction nonstopmode -output-directory images $<
