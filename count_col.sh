#!/bin/bash

# Count the pages with colour in thesis
gs -o - -sDEVICE=inkcov thesis.pdf &> ink_pages.out

# Count the number of words in main document
pdftotext -f 10 -l 221 thesis.pdf - | wc - &> word_count.out

