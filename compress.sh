#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Need one argument: the input file"
  exit
fi

input=$1
output=${input/.pdf}"_compressed.pdf"

echo $input $output

resolution=200

ghostscript -sDEVICE=pdfwrite -dBATCH -q -dNOPAUSE -dBATCH -dSAFER -dPDFA=2 -dPDFACompatibilityPolicy=1 -dSimulateOverprint=true -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dPDFSETTINGS=/ebook -dEmbedAllFonts=true -dSubsetFonts=true -dAutoRotatePages=/None -dColorImageDownsampleType=/Bicubic -dColorImageResolution=${resolution} -dGrayImageDownsampleType=/Bicubic -dGrayImageResolution=${resolution} -dMonoImageDownsampleType=/Bicubic -dMonoImageResolution=${resolution} -sOutputFile=${output} ${input}


