FLAGS = 
C = `which mkhtml.pl`

.SUFFIXES:
.SUFFIXES: .data .html .tex .dvi .pdf .ps

.data.html:
	$(C) $(FLAGS) $<

all: pdf

.tex.ps :
	latex $< $@
.ps.pdf :
	ps2pdf $< $@
.tex.dvi :
	latex $< $@
.dvi.pdf :
	dvipdf $< $@
.dvi.ps :
	dvips $< -o $@

TEX = \
	resume.tex \

PDF = ${TEX:.tex=.pdf}
PS = ${TEX:.tex=.ps}
DVI = ${TEX:.tex=.dvi}

pdf: ${PDF}

ps: ${PS}

dvi: ${DVI}

clean: 
	rm -f *.html

