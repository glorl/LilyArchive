
lilypond-book --pdf PKZ_Songbook.lytex 
lilypond-book --pdf PKZ_Songbook.lytex 
pdflatex PKZ_Songbook.tex

rm -r */ 2>/dev/null
rm *.tex lock *.log *.aux *.dep snippet* tmp* 2>/dev/null
