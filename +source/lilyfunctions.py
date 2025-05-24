import glob, re

def parse_lilypond_assignments(file_path):
# return all lilypond commands from a given folder
# open point list
# - merge all commands
# - indent lines so that it is more clean in the bookpart.lytex

    lilyfiles = glob.glob(file_path+'/*.ly')
    assignments = {}

    for lilyfile in lilyfiles:
        with open(lilyfile, 'r', encoding='utf-8') as f:
            content = f.read()

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
                    if i < length and content[i] == '{' :
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


def replace_pattern(arg_rep,arg_string):
    arg_rep = dict((re.escape(k), v) for k, v in arg_rep.items())
    out_pattern = re.compile("|".join(arg_rep.keys()))
    out_string = out_pattern.sub(lambda m: arg_rep[re.escape(m.group(0))], arg_string)
    return arg_rep, out_pattern, out_string
