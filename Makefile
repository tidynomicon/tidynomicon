.PHONY : all check clean commands settings

STEM=tidynomicon
CONFIG=_bookdown.yml _output.yml
FIXED=CITATION.md CONDUCT.md CONTRIBUTING.md LICENSE.md README.md
TEMP=$(patsubst %.Rmd,%.md,$(wildcard *.Rmd))
SRC=${CONFIG} ${FIXED} $(wildcard *.Rmd)
OUT=_book
HTML=${OUT}/index.html
PDF=${OUT}/${STEM}.pdf
DATABASE=data/example.db
OVERLEAF=nostarch.pdf

all : commands

#-------------------------------------------------------------------------------

## commands     : show all commands.
commands :
	@grep -h -E '^##' ${MAKEFILE_LIST} | sed -e 's/## //g'

## everything   : rebuild all versions.
everything : ${HTML} ${PDF}

## html         : build HTML version.
html : ${HTML}

## pdf          : build PDF version.
pdf : ${PDF}

## nostarch.pdf : build No Starch/Overleaf version.
nostarch.pdf : nostarch.tex book.bib
	xelatex nostarch
	bibtex nostarch
	xelatex nostarch
	xelatex nostarch

#-------------------------------------------------------------------------------

${HTML} : ${SRC}
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook'); warnings()"

${PDF} : ${SRC}
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book'); warnings()"

#-------------------------------------------------------------------------------

## clean        : clean up generated files.
clean :
	@rm -rf ${OUT} ${STEM}.Rmd ${TEMP} *.utf8.md *.knit.md
	@find . -name '*~' -exec rm {} \;
	@rm -f *.aux *.bbl *.blg *.idx *.log *.maf *.mtc *.mtc0 *.rds *.tbc *.toc

## check        : internal checks.
check :
	@bin/chunks.py ${SRC}
	@bin/gloss.py ./gloss.md ${SRC}
	@bin/links.py etc/links.md ${SRC}

## database     : make example database for advanced topics chapter.
database :
	@rm -f ${DATABASE}
	@sqlite3 ${DATABASE} < data/create_db.sql

## test         : tests on utilities.
test :
	@pytest

## settings     : echo all variable values.
settings :
	@echo STEM ${STEM}
	@echo CONFIG ${CONFIG}
	@echo FIXED ${FIXED}
	@echo SRC ${SRC}
	@echo TEMP ${TEMP}
	@echo HTML ${HTML}
	@echo PDF ${PDF}
	@echo OVERLEAF ${OVERLEAF}
