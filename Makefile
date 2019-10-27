SRC=GNNReview.tex

OBJ=GNNReview.pdf

Texcompiler=xelatex

TMPDIR=Tmp

FLAGS=-synctex=1 -interaction=nonstopmode -file-line-error-style

obj: $(SRC)
	 $(Texcompiler) $(FLAGS) $(SRC) 
	 mkdir -p $(TMPDIR)
	 mv *.aux *.log *.out *.gz $(TMPDIR)

clean: 
	rm -rf $(TMPDIR)
	rm $(OBJ)
