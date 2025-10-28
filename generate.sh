# generate voice 
python3 +source/voicegen_oo.py

cd +voices/ 

jq -c '.Stuecke.voices[]' input.json | while read -r i; do
    if echo "$i" | jq -e 'type == "array"' > /dev/null; then
        Voice="Partitur"
    else
        Voice=$(echo "$i" | jq -r '.')
        #Voice=$i
    fi
    echo "Verarbeite $Voice"
    lilypond-book --pdf ${Voice}.lytex
    pdflatex -quiet ${Voice}.tex
done

rm -r */
rm *.tex lock *.log *.aux *.dep snippet* tmp*
cd ..
rm -r +source/__pycache__* +source/output*
