%.eps: %.svg
		inkscape $*.svg -E $*.eps --export-ps-level=3

debe.pdf: debe.tex tesi.tex
	xelatex debe
