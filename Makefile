.PHONY = debe.pdf

images = iPhone.eps  net.eps  nf-components.eps  vnet.eps flow.eps

$(images): %.eps: %.svg
	inkscape -z $< -E $@ --export-ps-level=3

debe.pdf: debe.tex tesi.tex *eps
	xelatex debe
