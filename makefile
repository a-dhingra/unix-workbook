#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "## Timestamp of make's run : `date`" >> README.md
	echo "## Number of lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	# wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "## [Link to Github Page](https://a-dhingra.github.io/unix-workbook/)" >> README.md

clean:
	rm README.md
	

