TEX = latexmk -xelatex -silent -shell-escape
MAIN = thesis.tex
BIB = references.bib
ACRONYMS = acronyms.tex
SECTIONS = sections/*.tex
TEMPLATE = etti-en.cls
OUTPUT = main.pdf
TEMP_FILES = *.aux *.bbl *.blg *.log *.lot *.loa *.lol *.lof *.out *.toc *.bcf *.fls *.xdv *.run.xml *latexmk _minted* sections/*.aux

all: $(OUTPUT) clean

$(OUTPUT): $(MAIN) $(BIB) $(ACRONYMS) $(SECTIONS) $(TEMPLATE)
	@echo "Compiling LaTeX document..."
	$(TEX) $(MAIN)
	@echo "Compilation finished"

clean:
	@echo "Cleaning up temporary files..."
	rm -rf $(TEMP_FILES)
	@echo "Clean up finished"

# Sorts and tidies the BibTeX entries. Uses: https://github.com/FlamingTempura/bibtex-tidy
sort:
	@echo "Sorting and tidying BibTeX entries..."
	bibtex-tidy --modify --omit=abstract,keywords,month,day,issn,URL --sort=key --curly --numeric --space=4 --no-align --blank-lines --duplicates=key --strip-enclosing-braces --no-escape --sort-fields --strip-comments --trailing-commas --no-tidy-comments --remove-empty-fields --generate-keys --enclosing-braces=title,journal,booktitle references.bib
	@echo "Sorting and tidying finished"

.PHONY: all clean
