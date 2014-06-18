#	Andreas Linz
#	admin@klingt.net
#

SHELL=/bin/bash

all:
	rsync --recursive --delete-after content/ build/
	@./make.sh

clean:
	rm --recursive --interactive=once build/*
