SRC=GNNReview.tex

OBJ=GNNReview.pdf

Bibcompiler=bibtex

Texcompiler=xelatex

TMPDIR=Tmp

FLAGS=-synctex=1 -interaction=nonstopmode -file-line-error-style

obj: $(SRC)
	 $(Texcompiler) $(SRC) 
	 $(Bibcompiler) GNNReview
	 $(Texcompiler) $(FLAGS) $(SRC) 
	 $(Texcompiler) $(FLAGS) $(SRC) 
	 mkdir -p $(TMPDIR)
	 mv *.aux *.log *.out *.gz *bbl *blg $(TMPDIR)

clean: 
	rm -rf $(TMPDIR)
	rm $(OBJ)
