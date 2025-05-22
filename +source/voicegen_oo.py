import os
import json
import re

def replace_pattern(arg_rep,arg_string):
    arg_rep = dict((re.escape(k), v) for k, v in arg_rep.items())
    out_pattern = re.compile("|".join(arg_rep.keys()))
    out_string = out_pattern.sub(lambda m: arg_rep[re.escape(m.group(0))], arg_string)
    return arg_rep, out_pattern, out_string

class cl_voice:

    cwd = os.getcwd()
    path_templates  = os.path.join(cwd,'+templates')
    path_voices     = os.path.join(cwd,'+voices')

    def __init__(self,name):
        self.name=name
        self.includes_lyfiles = ''
        self.includes_lytex   = ''

#     def rep_pattern(arg_rep,arg_string):
#         arg_rep = dict((re.escape(k), v) for k, v in arg_rep.items())
#         out_pattern = re.compile("|".join(arg_rep.keys()))
#         out_string = out_pattern.sub(lambda m: arg_rep[re.escape(m.group(0))], arg_string)
#         return arg_rep, out_pattern, out_string

    def write_bookpart():
        # write output
        ftemplate_bookpart = open(os.path.join(path_templates,'bookpart.lytex'),"r")
        fcopy_bookpart = open(os.path.join(path_voices,composer+'_'+title_short+'_'+voice+'.lytex'),"wt")
        for line in ftemplate_bookpart:
            rep,pattern,line = rep_pattern(rep,line)
            fcopy_bookpart.write(line)

        fcopy_bookpart.close()
        ftemplate_bookpart.close()

class cl_piece:
    def __init__(self,piecename):
        self.name=piecename
        self.includes_lyfiles = ''
        self.includes_lytex   = ''
    def generate_includes (self,path_lilypond,path_voices,piece,voice):
        subtitleline= '\\fill-line {\\line{\\abs-fontsize #16 { \\sans {subtitle} }} }'
        self.includes_lyfiles =self.includes_lyfiles+'    \\include \"'+os.path.join(path_lilypond,piece,title_short+'.ly\"\n')
        self.includes_lytex   =self.includes_lytex +'        \\include \"'+os.path.join(path_voices,piece+'_'+voice+'.lytex\"\n')
    def generate_composerline (self,composer_long):
        self.composerline= '            \\fill-line {\\line {} \\line{\\abs-fontsize #12 { \\sans {'+composer_long+'} }} }'
    def generate_titleline (self,title_long):
        self.titleline   = '            \\fill-line {\\line{\\abs-fontsize #18 { \\sans {'+title_long+'} }} }'
    def generate_scoreline (self,padding_val,basicdistance_val):
        staffline   = '            \\new Staff << \\globaltitle_short \\title_shortvoiceSP >> '
        self.scoreline = '    \\score{ \n        \\layout{ system-system-spacing = #\'((padding .'\
            +padding_val+') (basic-distance . '\
            +basicdistance_val+')) } \n'\
            +'        \\new StaffGroup <<\nstaff  \n        >> \n    }'
    def generate_lytex (self,composer_long,title_long):
        self.generate_composerline(composer_long)
        self.generate_titleline(title_long)
        self.lytex = []

########################################################
# read input from database
cwd = os.getcwd()
path_lilypond   = os.path.join(cwd,'+lilypond')
path_templates  = os.path.join(cwd,'+templates')
path_voices     = os.path.join(cwd,'+voices')
path_json       = os.path.join(cwd,'+voices')

finput = open (os.path.join(path_json,'input.json'), "r")
data = json.loads(finput.read())

# Iterate through the database
voicelist=data['Stuecke']['voices']
voice = voicelist[0]
for piece in data['Stuecke']['pieces']:

    title_short   = data[piece]['title']
    title_long    = data[piece]['title_long']
    composer_long = data[piece]['composer_long']
    padding       = data[piece]['padding'][voice]
    basicdistance = data[piece]['basicdistance'][voice]

    p = cl_piece(piece)

    p.generate_includes(path_lilypond,path_voices,piece,voice)
    p.generate_scoreline (padding,basicdistance)
    p.generate_lytex(composer_long,title_long)

#     print(p.includes_lyfiles)
#     print(p.includes_lytex)
#     print(p.composerline)
#     print(p.titleline)
    print(p.scoreline)

finput.close()

