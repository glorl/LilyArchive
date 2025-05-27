import os,json, re
from lilyfunctions import parse_lilypond_assignments
from lilyfunctions import replace_pattern

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
    def __init__(self,piece,composer_long,title_long,voice):
        self.name=piece
        self.includes_lyfiles = ''
        self.includes_lytex   = ''
        self.generate_markup(composer_long,title_long,piece,voice)
    #def generate_includes (self,path_lilypond,path_voices,piece,voice):
    #    subtitleline= '\\fill-line {\\line{\\abs-fontsize #16 { \\sans {subtitle} }} }'
    #    self.includes_lyfiles =self.includes_lyfiles+'    \\include \"'+os.path.join(path_lilypond,piece,title_short+'.ly\"\n')
    #    self.includes_lytex   =self.includes_lytex +'        \\include \"'+os.path.join(path_voices,piece+'_'+voice+'.lytex\"\n')
    def generate_titleline (self,title_long):
        self.titleline   = '            \\fill-line {\\line{\\abs-fontsize #18 { \\sans {'+title_long+'} }} }'
    def generate_composerline (self,composer_long):
        self.composerline= '            \\fill-line {\\line {} \\line{\\abs-fontsize #12 { \\sans {'+composer_long+'} }} }'
    def generate_markup(self,path_lilypond,path_voices,piece,voice):
        self.generate_titleline(composer_long)
        self.generate_composerline(title_long)
        self.markupline = '    \\markup{\n        \\column{ \n'+self.titleline+' \n'+self.composerline+' \n        } \n    }\n'
    def generate_scoreline(self,padding_val,basicdistance_val, block):
        self.scoreline = '    \\score{ \n        \\layout{ system-system-spacing = #\'((padding .'\
            +padding_val+') (basic-distance . '\
            +basicdistance_val+')) } \n'\
            +'        \\new StaffGroup <<\n'\
            +'           \\new Staff << '\
            +block\
            +'  \n         >> \n      >> \n    }'

########################################################
# read input from database
cwd = os.getcwd()
path_lilypond   = os.path.join(cwd,'+lilypond')
path_templates  = os.path.join(cwd,'+templates')
path_voices     = os.path.join(cwd,'+voices')
path_json       = os.path.join(cwd,'+voices')


rep = dict()
rep['paperheight']     = "#280"
rep['paperwidth']      = "#230"
rep['horizontalshift'] = "-15mm"
rep['printpagenumber'] = "##f"

# Open & iterate through database
finput = open (os.path.join(path_json,'input.json'), "r")
data = json.loads(finput.read())
finput.close()

voicelist=data['Stuecke']['voices']
for voice in voicelist:
    for piece in data['Stuecke']['pieces']:
        title_short   = data[piece]['title']
        title_long    = data[piece]['title_long']
        composer      = data[piece]['composer']
        composer_long = data[piece]['composer_long']
        padding       = data[piece]['padding'][voice]
        basicdistance = data[piece]['basicdistance'][voice]
        foldername    = data[piece]['foldername']

        path_ly = os.path.join(path_lilypond,foldername)

        # parse lilypond blocks in specified folder
        result = parse_lilypond_assignments(path_ly)

        # initiate piece. generate title + composer line.
        p = cl_piece(piece,composer_long,title_long,voice)

        # write lytex to file (copy from template)
        for name, block in result.items():
            if voice in name:
                # generate score line
                p.generate_scoreline(padding,basicdistance,block)

                # prepare replacement in template by lilypond
                rep['score_overall']=p.markupline+p.scoreline
                rep['emptyline']    =''

                # write output line by line
                ftemplate_bookpart = open(os.path.join(path_templates,'bookpart.lytex'),"r")
                fcopy_bookpart = open(os.path.join(path_lilypond,foldername,composer+'_'+title_short+'_'+voice+'.lytex'),"wt")

                for line in ftemplate_bookpart:
                    rep,pattern,line = replace_pattern(rep,line)
                    fcopy_bookpart.write(line)

                ftemplate_bookpart.close()
                fcopy_bookpart.close()
