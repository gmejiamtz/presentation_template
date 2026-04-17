OUT_DIR := public

page: $(OUT_DIR)/index.html copy-assets

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(OUT_DIR)/index.html: slides.md | $(OUT_DIR)
	pandoc -t revealjs -s -o $@ $< \
	-V revealjs-url=https://unpkg.com/reveal.js@4.6.1 \
	--include-in-header=slides.css -V theme=black \
	--slide-level 3

copy-assets: | $(OUT_DIR)
	cp -r img $(OUT_DIR)/
	cp slides.css $(OUT_DIR)/

clean:
	rm -rf $(OUT_DIR)

.PHONY: page clean