# activate virtual environment
source venv/bin/activate
# generate voice 
python3 +source/voicegen.py

cd +voices/ 

jq -c '.Stuecke.voices[]' input.json | while read -r i; do
    if echo "$i" | jq -e 'type == "array"' > /dev/null; then
        Voice="Partitur"
    else
        Voice=$(echo "$i" | jq -r '.')
        #Voice=$i
    fi
    echo "Verarbeite $Voice"
    lilypond-book --pdf "${Voice}.lytex" >/dev/null 2>&1
    pdflatex ${Voice}.tex > /dev/null 2>&1
done

rm -r */
rm *.tex lock *.log *.aux *.dep snippet* tmp*
cd ..
rm -r +source/__pycache__* +source/output*
