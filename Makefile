all:
	pandoc --metadata-file=metadata.yaml \
	chapter1.md chapter2.md refs.md \
	--pdf-engine=lualatex --citeproc  \
	--lua-filter=abstract-from-file.lua \
	-H preamble.tex -B aftertoc.tex -o output.pdf
