PANDOC = pandoc
WEB_DIR = /usr/local/www/data/interpret-variants

PANDOC_COMMON = --standalone --smart --normalize --toc --highlight-style=tango
PANDOC_SLIDES = -t revealjs --toc-depth=1 -V toc-header="Overview" --mathjax \
                -V theme="sydney" --template=include/default.revealjs --slide-level=2

all: reveal.js/css/theme/sydney.css slides.html deploy
reveal.js/css/theme/sydney.css: reveal.js/css/theme/source/sydney.scss
	cd reveal.js;grunt css
slides.html: slides.md figure/*.png include/default.revealjs
	pandoc $(PANDOC_COMMON) $(PANDOC_SLIDES) -s slides.md -o slides.html

.PHONY: all deploy	
deploy: 
	mkdir -p $(WEB_DIR)
	cp slides.html $(WEB_DIR)/index.html
	cp -r figure $(WEB_DIR)/
	cp -r reveal.js $(WEB_DIR)/
