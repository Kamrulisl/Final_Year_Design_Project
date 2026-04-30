LATEXMK = latexmk
MAIN = main.tex
PROPOSAL = proposal.tex
BUILD_DIR = build
OUT_DIR = .

.PHONY: all main proposal clean watch watch-proposal

all: main proposal

main:
	$(LATEXMK) -pdf -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(MAIN)

proposal:
	$(LATEXMK) -pdf -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(PROPOSAL)

watch:
	$(LATEXMK) -pdf -pvc -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(MAIN)

watch-proposal:
	$(LATEXMK) -pdf -pvc -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(PROPOSAL)

clean:
	$(LATEXMK) -C -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(MAIN)
	$(LATEXMK) -C -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(PROPOSAL)
	rm -rf $(BUILD_DIR)
	rm -f *.aux *.bbl *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.out *.synctex.gz *.toc
