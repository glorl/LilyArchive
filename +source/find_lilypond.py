import re

def parse_lilypond_assignments(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    pattern = re.compile(r'''
        (?P<name>[a-zA-Z_][a-zA-Z0-9_]*)       # Variablenname
        \s*=\s*                                # Gleichheitszeichen
        (?P<block>\{(?:[^{}]*|\{[^{}]*\})*\})  # Geschweifter Block, rekursiv einfach
    ''', re.VERBOSE | re.DOTALL)

    assignments = {}

    for match in pattern.finditer(content):
        name = match.group('name')
        block = match.group('block')
        assignments[name] = block

    return assignments

# Beispielverwendung:
file_path = '+lilypond/Haendel_MessiasII/MessiasII_eins.ly'
result = parse_lilypond_assignments(file_path)

for name, block in result.items():
    print(f"{name} = {block}\n")
