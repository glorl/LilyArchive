import os,json, re
from lilyfunctions import parse_lilypond_assignments, replace_pattern

class cl_voice:

    cwd = os.getcwd()
    path_templates  = os.path.join(cwd,'+templates')
    path_voices     = os.path.join(cwd,'+voices')

    def __init__(self,name):
        self.name=name
        self.includes_lyfiles = ''
        self.includes_lytex   = ''


class cl_piece:
    cwd = os.getcwd()
    path_templates  = os.path.join(cwd,'+templates')

    def __init__(self,piece,composer_long,title_long,voice):
        self.name=piece
        self.includes_lyfiles = ''
        self.includes_lytex   = ''
        self.generate_markup(composer_long,title_long,piece,voice)
    def generate_titleline (self,title_long):
        self.titleline   = '            \\fill-line {\\line{\\abs-fontsize #18 { \\sans {'+title_long+'} }} }'
    def generate_composerline (self,composer_long):
        self.composerline= '            \\fill-line {\\line {} \\line{\\abs-fontsize #12 { \\sans {'+composer_long+'} }} }'
    def generate_markup(self,path_lilypond,path_voices,piece,voice):
        self.generate_titleline(title_long)
        self.generate_composerline(composer_long)
        self.markupline = '    \\markup{\n        \\column{ \n'+self.titleline+' \n'+self.composerline+' \n        } \n    }\n'
    def generate_scoreline(self,padding_val,basicdistance_val, block):
        self.scoreline = '    \\score{ \n        \\layout{ system-system-spacing = #\'((padding . '\
            +padding_val+') (basic-distance . '\
            +basicdistance_val+')) } \n'\
            +'        \\new StaffGroup <<\n'\
            +'           \\new Staff << '\
            +block\
            +'  \n         >> \n      >> \n    }'
    def generate_subpieceline(self,sub_piece):
        subpieceline='    \\markup{\n        \\column{\\fill-line {\\line{\\abs-fontsize #30 { {\\null} }} } \n'\
            +'        \\fill-line {\\line{\\abs-fontsize #14 { \\sans {sub_piece} }} \\line {} } }\n    }'
    def write_bookpart(self,path_voices,composer,title_short,voice,rep):
        ftemplate_bookpart = open(os.path.join(path_templates,'bookpart.lytex'),"r")
        fcopy_bookpart = open(os.path.join(path_voices,composer+'_'+title_short+'_'+voice+'.lytex'),"wt")
        for line in ftemplate_bookpart:
            rep,pattern,line = replace_pattern(rep,line)
            fcopy_bookpart.write(line)
        fcopy_bookpart.close()
        ftemplate_bookpart.close()

########################################################
# read input from database
cwd = os.getcwd()
path_lilypond   = os.path.join(cwd,'+lilypond')
path_voices     = os.path.join(cwd,'+voices')
path_json       = os.path.join(cwd,'+voices')
path_templates  = os.path.join(cwd,'+templates')

rep = dict()
rep['pheight']     = "#280"
rep['pwidth']      = "#230"
rep['horizontalshift'] = "-15mm"
rep['printpagenumber'] = "##f"
rep['bookheader']      = ""
rep['includes_lyfiles']= ""
# Open & iterate through database
finput = open (os.path.join(path_json,'input.json'), "r")
data = json.loads(finput.read())
finput.close()

voicelist=data['Stuecke']['voices']
for voice in voicelist:
    rep['includes_lytex'] = ''

    for piece in data['Stuecke']['pieces']:
        title_short   = data[piece]['title']
        title_long    = data[piece]['title_long']
        composer      = data[piece]['composer']
        composer_long = data[piece]['composer_long']
        padding       = data[piece]['padding'][voice]
        basicdistance = data[piece]['basicdistance'][voice]
        foldername    = data[piece]['foldername']
        instrumentname= data[piece]['instrumentname'][voice]

        path_lytex = os.path.join(path_lilypond,foldername)

        # parse lilypond blocks in specified folder
        result = parse_lilypond_assignments(path_lytex)

        # initiate piece. generate title + composer line.
        p = cl_piece(piece,composer_long,title_long,voice)

        # write lytex to file (copy from template)
        for name, block in result.items():

            if voice in name:
                print(name)
                # generate score line
                p.generate_scoreline(padding,basicdistance,block)

                # prepare replacement in template by lilypond
                rep['score_overall']=p.markupline+p.scoreline
                rep['emptyline']    =''
                rep['instrumentname']= instrumentname

                # write bookpart snippets to file for each voice+piece
                p.write_bookpart(path_lytex,composer,title_short,voice,rep)

                includes_lytex = '\\include \"'+os.path.join(path_lytex,composer+'_'+title_short+'_'+voice+'.lytex\"\n')
                rep['includes_lytex']    =rep['includes_lytex']+'        ' + includes_lytex

    # action required: this can be put into the voice class
    ftemplate_book = open(os.path.join(path_templates,'book.lytex'),"r")
    fcopy_book     = open(os.path.join(path_voices,voice+'.lytex'),"wt")

    for line in ftemplate_book:
        rep,pattern,line = replace_pattern(rep,line)
        fcopy_book.write(line)

    ftemplate_book.close()
    fcopy_book.close()
