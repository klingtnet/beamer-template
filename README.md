# XeLaTeX Beamer Template

Because all of the predefined beamer themes are overloaded with mostly useless stuff I decided to make my own minimalistic beamer theme.

## Requiremenets

Tools:

- xelatex
- biber
- makeglossaries

Fonts:

- Linux Biolinum
- Linux Libertine
- Consolas

Packages:

- see `content/misc/preamble.tex`
- I've installed the `texlive-most` meta-package on Arch, but `texlive-full` for ubuntu should also include all the needed packages

## Presentation Setup

The author, title, department etc. has to be set in `content/misc/variables.tex`.

## Build

Simply call `make`. This will call `make.sh` subsequently which `rsyncs` your content in the `build` directory and copies the generated pdf's to the `output` folder afterwards. The `rsync` step is done to prevent your `content` folder from being cluttered with countless of auxiliary files. If you don't have `cmake` and `rsync` try to install a reasonable operating system ;) .

---

## todo

- plain frame command
- convert theme to sty files [read](http://tex.stackexchange.com/questions/146529/design-a-custom-beamer-theme-from-scratch)

---

## Preview

![](page-01.png)
![](page-02.png)
![](page-03.png)
![](page-04.png)
![](page-05.png)
![](page-06.png)
![](page-07.png)
![](page-08.png)
![](page-09.png)
![](page-10.png)
![](page-11.png)
![](page-12.png)
![](page-13.png)
![](page-14.png)
![](page-15.png)
![](page-16.png)
![](page-17.png)
![](page-18.png)
![](page-19.png)
![](page-20.png)
![](page-21.png)
![](page-22.png)
![](page-23.png)
![](page-24.png)
![](page-25.png)
![](page-26.png)
![](page-27.png)
![](page-28.png)
![](page-29.png)
![](page-30.png)
