import re

def parse_lilypond_assignments(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    assignments = {}
    i = 0
    length = len(content)

    while i < length:
        if content[i].isalpha() or content[i] == '_':
            start_name = i
            while i < length and (content[i].isalnum() or content[i] == '_'):
                i += 1
            name = content[start_name:i].strip()

            while i < length and content[i].isspace():
                i += 1

            if i < length and content[i] == '=':
                i += 1
                while i < length and content[i].isspace():
                    i += 1

                if i < length and content[i] == '{':
                    brace_count = 1
                    block_start = i
                    i += 1

                    while i < length and brace_count > 0:
                        if content[i] == '{':
                            brace_count += 1
                        elif content[i] == '}':
                            brace_count -= 1
                        i += 1

                    block_end = i
                    block_raw = content[block_start:block_end]

                    # ✨ Struktur erzeugen: künstliche Zeilenumbrüche nach Lilypond-typischen Mustern
                    formatted = re.sub(r'(\\(transpose|new|relative|time|key|mark|tempo|clef|bar|voiceOne|voiceTwo|voiceThree|voiceFour)\b)', r'\n\1', block_raw)
                    formatted = re.sub(r'([{}])', r'\n\1\n', formatted)

                    # ✨ Zeilen aufsplitten, leere entfernen
                    lines = [line.strip() for line in formatted.splitlines() if line.strip()]

                    # ✨ Einrücken mit 8 Leerzeichen
                    block_indented = '\n'.join('        ' + line for line in lines)

                    assignments[name] = block_indented
        else:
            i += 1

    return assignments
