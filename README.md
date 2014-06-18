# XeLaTeX Beamer Template

## build

- simply call `make` in the project root
- to clean up the build dir call `make clean`
- the generated pdf document is stored in `output/` as `presentation.pdf` and in 16:9 `presentation169.pdf`

## dependencies

- XeLaTeX
- makeglossaries
- biber

## presentation

- to present the pdf file use `pdfpc`, since the nice (impressive!)[http://impressive.sourceforge.net/] seems to be discontinued and also doesn't work with modern python versions

## todo

- script that initializes the presentation with given values for title, author etc.

