all:
	make site
	make view

site:
	Rscript -e 'rmarkdown::render_site()'

view:
	python2 -m SimpleHTTPServer

.PHONY: clean

clean: 
	Rscript -e 'rmarkdown::clean_site()'
