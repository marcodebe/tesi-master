.PHONY:	debe.pdf

images = images/iPhone.eps images/net.eps images/nf-components.eps images/vnet.eps images/flow.eps

$(images): %.eps: %.svg
	inkscape -z $< -E $@ --export-ps-level=3

debe.pdf: debe.tex tesi.tex $(images)
	xelatex debe ; xelatex debe ; xelatex debe

clean:
	rm debe-blx.bib debe.aux debe.out debe.toc debe.run.xml debe.lot debe.lof debe.pdf debe.log
