check: document
	R -e "devtools::check()"

install: check
	R -e "devtools::install()"

document: bundle
	R -e "devtools::document()"

bundle:
	R -e "packer::bundle()"

run: document
	Rscript test.R

