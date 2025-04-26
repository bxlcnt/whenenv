PACKAGE=whenenv
DOC=$(PACKAGE)-doc
PDF=$(DOC).pdf
TEX=$(DOC).tex

all: $(PDF)

$(PDF): $(TEX) $(PACKAGE).sty
	pdflatex $(TEX)
	pdflatex $(TEX)

clean:
	rm -f *.aux *.log *.toc *.out *.lof *.lot *.nav *.snm *.vrb

distclean: clean
	rm -f $(PDF)

zip:
	zip $(PACKAGE).zip $(PACKAGE).sty $(TEX) $(PDF) README.org Makefile

.PHONY: all clean distclean zip
