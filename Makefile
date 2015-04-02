PANDOC = pandoc

PANDOC_COMMON = --standalone --smart --normalize --toc --highlight-style=tango
PANDOC_SLIDES = -t revealjs --toc-depth=1 -V toc-header="Overview" --mathjax \
                -V theme=sydney --template=include/default.revealjs --slide-level=2

slides.html: slides.md
	pandoc $(PANDOC_COMMON) $(PANDOC_SLIDES) -s slides.md -o slides.html