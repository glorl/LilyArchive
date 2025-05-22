def parse_lilypond_assignments(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    assignments = {}
    i = 0
    length = len(content)

    while i < length:
        # Suche nach einer möglichen Zuweisung: name = {
        if content[i].isalpha() or content[i] == '_':
            start_name = i
            while i < length and (content[i].isalnum() or content[i] == '_'):
                i += 1
            name = content[start_name:i].strip()

            # Überspringe Whitespaces
            while i < length and content[i].isspace():
                i += 1

            if i < length and content[i] == '=':
                i += 1  # überspringe '='

                while i < length and content[i].isspace():
                    i += 1

                # Jetzt sollte eine öffnende Klammer folgen
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
                    block = content[block_start:block_end]
                    assignments[name] = block
        else:
            i += 1

    return assignments

# Beispielverwendung:
if __name__ == '__main__':
    file_path = '+lilypond/Haendel_MessiasII/MessiasII_eins.ly'
    result = parse_lilypond_assignments(file_path)

    for name, block in result.items():
        print(f"{name} = {block}\n")
