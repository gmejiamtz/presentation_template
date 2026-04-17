page: index.html
index.html: slides.md
	pandoc -t revealjs -s -o $@ $< \
	-V revealjs-url=https://unpkg.com/reveal.js@4.6.1 \
	--include-in-header=slides.css -V theme=black \
	--slide-level 3

clean:
	rm -rf index.html

.PHONY: page