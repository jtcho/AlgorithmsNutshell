
all: prepare

prepare:
	xelatex --shell-escape nutshell.tex

view: prepare
		open -a Skim nutshell.pdf

develop: prepare
		fswatch ./ "xelatex --shell-escape nutshell.tex"

clean:
	rm -rf *.aux *.listing *.pdf *.out *.log _minted-nutshell
