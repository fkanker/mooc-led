#!/bin/bash

python ../../generation/pre-dia.py matrice-dia.md matrice-dia-pre.md

pandoc  --standalone --from markdown --to html --highlight-style pygments --email-obfuscation references \
--normalize --css=../../statiques/diaporama.css --output matrice-dia.html matrice-dia-pre.md

weasyprint matrice-dia.html matrice-dia.pdf

rm matrice-dia-pre.md
rm matrice-dia.html
