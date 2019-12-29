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

pdf: autun kais

check: check-autun check-kais

clean:
	rm -fv *.aux *.log *.gz *.pdf
