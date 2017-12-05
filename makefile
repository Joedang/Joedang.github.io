all:
	Rscript -e 'rmarkdown::render_site()'

.PHONY: clean

clean: 
	Rscript -e 'rmarkdown::clean_site()'
