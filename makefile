all:
	make thumbs
	make site
	make view

site:
	Rscript -e 'rmarkdown::render_site()'

view:
	python2 -m SimpleHTTPServer

thumbs:
	./pdfThumbnail.sh

.PHONY: clean

clean: 
	Rscript -e 'rmarkdown::clean_site()'
