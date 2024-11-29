index.html: slides.md
	pandoc -t revealjs -s -o $@ $< \
	-V revealjs-url=https://unpkg.com/reveal.js/ \
	--include-in-header=slides.css -V theme=black \
	--slide-level 3

clean:
	rm index.html