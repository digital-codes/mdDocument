# Markdown → PDF example (v5: robust ToC & numbering, article class)

## Build
```
make
```
Requires: pandoc, LaTeX (LuaLaTeX recommended).

## Notes
- **No page numbers** on Title + ToC (numbers are disabled in preamble).
- Numbering starts at **1** right after the ToC (via include-before-body).
- Page break before each H1 (# maps to \section in article).
- Bibliography inserted at end of Chapter 2 (`# References`) with `--citeproc`.
- If you previously used a file named `supresspagenum.tex`, note the correct spelling here is `preamble.tex` + `aftertoc.tex`.
