PDFVIEW=evince

all: check

autun:
	@echo autun
	pdflatex -synctex=1 sheet-autun.tex

check-autun: autun
	$(PDFVIEW) sheet-autun.pdf

kais:
	@echo kais
	pdflatex -synctex=1 sheet-kais.tex

check-kais: kais
	$(PDFVIEW) sheet-kais.pdf

ijmer:
	@echo ijmer
	pdflatex -synctex=1 sheet-ijmer.tex

check-ijmer: ijmer
	$(PDFVIEW) sheet-ijmer.pdf


pdf: autun kais ijmer

check: check-autun check-kais check-ijmer

clean:
	rm -fv *.aux *.log *.gz *.pdf
