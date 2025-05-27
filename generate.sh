# generate voice 
python3 +source/voicegen_oo.py

cd +voices/ 

jq -c -r '.Stuecke.voices[]' input.json | while read i; do
    Voice=$i
    lilypond-book --pdf ${Voice}.lytex
    pdflatex -quiet ${Voice}.tex
done

rm -r */
rm *.tex lock *.log *.aux *.dep snippet* tmp*
cd .. 
