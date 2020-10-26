pdflatex := /usr/bin/pdflatex
bibtex := /usr/bin/bibtex

all:	
	$(pdflatex) main.tex
	$(bibtex) main.aux
	$(pdflatex) main.tex
	$(pdflatex) main.tex
clean:
	rm -rf *.soc *.out *.log *.blg *.bbl *.aux *.thm *.pgf-plot.gnuplot *.pdf *.loc *.synctex.gz
	cd images && rm -rf *.soc *.out *.log *.blg *.bbl *.aux *.thm *.pgf-plot.gnuplot *.pdf *.loc *.synctex.gz && cd ..
	cd sections && rm -rf *.soc *.out *.log *.blg *.bbl *.aux *.thm *.pgf-plot.gnuplot *.pdf *.loc *.synctex.gz && cd ..
