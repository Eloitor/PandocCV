autor = "Eloi Torrents"

.PHONY: all clean pdf html

all: pdf html

pdf: CV.md
	mkdir -p output
	pandoc -o output/CV.pdf CV.md

html: CV.md
	mkdir -p output
	cp media/* output/
	pandoc -o output/CV.html CV.md \
	--template templates/cv.html