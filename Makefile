#	Andreas Linz
#	admin@klingt.net
#

SHELL=/bin/bash

all:
	rsync --recursive --delete-after content/ build/
	@./make.sh

preview:
	@echo "Rendering preview images ..."
	pdftoppm -png output/presentation.pdf page

clean:
	rm --recursive --interactive=once build/*
