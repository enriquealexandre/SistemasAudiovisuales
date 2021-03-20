
TEX=xelatex -interaction nonstopmode -halt-on-error -file-line-error
DIRS=$$(ls -d */) 

.PHONY: clean

A%:
	cd ./Práctica_$@ ; $(TEX) -jobname=Guión_$@ Guión_$@.tex > Guión_$@.log ; cd ..

V%:
	cd ./Práctica_$@ ; $(TEX) -jobname=Guión_$@ Guión_$@.tex > Guión_$@.log ; cd ..

all: A1 A2 A3 V1 V2 V3 V4 V5

clean:
	@for x in $(DIRS); do cd ./$$x; rm -f aux.tex *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.nav *.snm *.vrb *.dvi *.synctex.gz; cd ..; done;

