MAIN=main
SUMMARY=summary

all:
	make summary
	make main

main:
	pdflatex $(MAIN)
	bibtex $(MAIN)
	bibtex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

simple:
	pdflatex $(MAIN)

summary:
	pdflatex $(SUMMARY).tex
	convert -density 300 $(SUMMARY).pdf -background white -alpha remove $(SUMMARY).png

clean:
	rm $(MAIN).log $(MAIN).aux $(MAIN).bbl $(MAIN).blg $(MAIN).out
	rm $(SUMMARY).log $(SUMMARY).aux $(SUMMARY).bbl $(SUMMARY).blg $(SUMMARY).out
