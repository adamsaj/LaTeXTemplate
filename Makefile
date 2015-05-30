FILE = template
DEPENDENCIES = $(FILE).tex

$(FILE).pdf: $(FILE).dvi
	dvipdf $(FILE).dvi

$(FILE).ps: $(FILE).dvi
	dvips -Pcmz $(FILE).dvi -o $(FILE).ps

$(FILE).dvi: $(DEPENDENCIES)
	latex $(FILE).tex
	bibtex $(FILE).tex
	latex $(FILE).tex
	latex $(FILE).tex

clean:
	rm *.dvi *.pdf *.log *.aux *.toc *.lof *.lot *.idx *.ind *.ilg *.ps
