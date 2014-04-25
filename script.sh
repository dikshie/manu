/usr/local/texlive/2013/bin/x86_64-darwin/bibtex  manu
/usr/local/texlive/2013/bin/x86_64-darwin/latex  manu.tex
/usr/local/texlive/2013/bin/x86_64-darwin/dvips -t a4 -G0 -o manu.ps manu.dvi
ps2pdf -sPAPERSIZE=a4 -dMaxSubsetPct=100 -dCompatibilityLevel=1.3 -dSubsetFonts=true -dEmbedAllFonts=true -dAutoFilterColorImages=false -dAutoFilterGrayImages=false  -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dMonoImageFilter=/FlateEncode manu.ps manu.pdf
