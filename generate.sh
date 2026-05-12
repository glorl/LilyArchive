# activate virtual environment
source venv/bin/activate
# generate voice 
python3 +source/voicegen.py

cd +voices/ 

# Process bookparts (if voices are configured and not empty)
voicelist=$(jq -r '.Stuecke.voices[]' input.json 2>/dev/null)
if [ ! -z "$voicelist" ]; then
    jq -c '.Stuecke.voices[]' input.json | while read -r i; do
        if echo "$i" | jq -e 'type == "array"' > /dev/null 2>&1; then
            Voice="Partitur"
        else
            Voice=$(echo "$i" | jq -r '.')
        fi
        if [ ! -z "$Voice" ] && [ -f "${Voice}.lytex" ]; then
            echo "Verarbeite $Voice"
            lilypond-book --pdf "${Voice}.lytex" >/dev/null 2>&1
            pdflatex ${Voice}.tex > /dev/null 2>&1
        fi
    done
fi

# Process songsheets (songbook files)
echo "Verarbeite Songbooks..."
for songbook_file in *_songbook.lytex; do
    if [ -f "$songbook_file" ]; then
        songbook_name="${songbook_file%.lytex}"
        echo "Verarbeite $songbook_name"
        lilypond-book --pdf "$songbook_file" >/dev/null 2>&1
        pdflatex "${songbook_name}.tex" > /dev/null 2>&1
    fi
done

rm -r */ 2>/dev/null
rm *.tex lock *.log *.aux *.dep snippet* tmp* *.lytex 2>/dev/null
cd ..
rm -r +source/__pycache__* +source/output* 2>/dev/null
