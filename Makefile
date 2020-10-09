FILENAME = book_card
TEX	 = platex -kanji=sjis
DVIPDF   = dvipdfmx

.PHONY: all clean tex pdf

all:
	make tex
	make pdf

tex: 
	$(TEX) $(FILENAME).tex
pdf: 
	$(DVIPDF) $(FILENAME).dvi

clean:
	rm  *.aux *.dvi *.log *.blg *.pdf


