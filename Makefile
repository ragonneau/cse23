## Makefile
## Copyright 2023 Tom M. Ragonneau
LC := latexmk
LCFLAGS := -shell-escape -file-line-error -halt-on-error -interaction=nonstopmode

latex: main

%: %.tex
	$(LC) $(LCFLAGS) $^

.PHONY: clean
clean:
	$(LC) -c
