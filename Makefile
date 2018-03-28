.PHONY:	pdf

images = iPhone.eps  net.eps  nf-components.eps  vnet.eps flow.eps

$(images): %.eps: %.svg
	inkscape -z $< -E $@ --export-ps-level=3

pdf: debe.tex tesi.tex $(images)
	xelatex debe
