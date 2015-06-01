FILE = template
DEPENDENCIES = $(FILE).tex

$(FILE).pdf: $(FILE).dvi
	dvipdf $(FILE).dvi

$(FILE).ps: $(FILE).dvi
	dvips -Pcmz $(FILE).dvi -o $(FILE).ps

$(FILE).dvi: $(DEPENDENCIES)
	latex $(FILE)
	bibtex $(FILE)
	latex $(FILE)
	latex $(FILE)

clean:
	rm $(FILE).dvi $(FILE).pdf $(FILE).log $(FILE).aux $(FILE).toc $(FILE).lof $(FILE).lot $(FILE).idx $(FILE).ind $(FILE).ilg $(FILE).ps $(FILE).bbl $(FILE).blg
