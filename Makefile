PDFVIEW=evince

all: pdf

autun:
	@echo autun
	pdflatex -synctex=1 sheet-autun.tex

check-autun: autun
	$(PDFVIEW) sheet-autun.pdf

pdf: autun

check: check-autun

clean:
	rm -fv *.aux *.log *.gz *.pdf
