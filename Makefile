VERSION := 0.1
PKG     := $(shell basename `pwd`)
build:
	R CMD build .

check: build man/add.Rd man/Emil.Rd
	R CMD check $(PKG)_$(VERSION).tar.gz

man/%.Rd: R/%.R
	Rscript bin/rman.R $<
