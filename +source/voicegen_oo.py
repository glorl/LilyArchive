import os,json, re, sqlite3
import pandas as pd
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

    def __init__(self,piece,composer,title,voice,parts_long):
        self.generate_markup(composer,title,piece,voice,parts_long)
    def generate_titleline (self,title):
        self.titleline   = '            \\fill-line {\\line{\\abs-fontsize #18 { \\sans {'+title+'} }} }'
    def generate_partsline(self,parts_long):
        self.partsline='    \\markup{\n        \\column{\\fill-line {\\line{\\abs-fontsize #30 { {\\null} } } } \n' \
            +'        \\fill-line {\\line{\\abs-fontsize #14 { \\sans {' + parts_long + '} } } \\line { } } }\n    }'
    def generate_composerline (self,composer):
        self.composerline= '            \\fill-line {\\line {} \\line{\\abs-fontsize #12 { \\sans {'+composer+'} }} }'
    def generate_markup(self,path_lilypond,path_voices,piece,voice,parts_long):
        if not parts_long:
            self.generate_titleline(title)
            self.generate_composerline(composer)
            self.markupline = '    \\markup{\n        \\column{ \n'+self.titleline+' \n'+self.composerline+' \n        } \n    }\n'
        else:
            for i, iparts_long in enumerate(parts_long):
                if i==0:
                    self.generate_titleline(title)
                    self.generate_composerline(composer)
                    self.generate_partsline(parts_long[0])
                    self.markupline = '    \\markup{\n        \\column{ \n'+self.titleline+' \n'+self.composerline+' \n        } \n    }\n' \
                        + self.partsline
                else:
                    self.markupline = self.partsline
    def generate_scoreline(self,padding_val,basicdistance_val, block):
        self.scoreline = '    \\score{ \n        \\layout{ system-system-spacing = #\'((padding . '\
            +padding_val+') (basic-distance . '\
            +basicdistance_val+')) } \n'\
            +'        \\new StaffGroup <<\n'\
            +'           \\new Staff << '\
            +block\
            +'  \n         >> \n      >> \n    }'
    def write_bookpart(self,path_voices,piece,voice,rep):
        ftemplate_bookpart = open(os.path.join(path_templates,'bookpart.lytex'),"r")
        fcopy_bookpart = open(os.path.join(path_voices,piece+'_'+voice+'.lytex'),"wt")
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

conn = sqlite3.connect("+voices/pieces.sqlite")

voicelist=data['Stuecke']['voices']
for voice in voicelist:
    rep['includes_lytex'] = ''

    for piece in data['Stuecke']['pieces']:
        df = pd.read_sql_query("SELECT * FROM pieces WHERE foldername = ?",conn,params=(piece,))
        title         = df.at[0,'title']
        composer      = df.at[0,'composer']
        foldername    = df.at[0,'foldername']
        parts         = df['parts'].apply(lambda x: json.loads(x) if pd.notna(x) else [])[0]
        parts_long    = df['parts_long'].apply(lambda x: json.loads(x) if pd.notna(x) else [])[0]
        # print(parts_long)
        instrumentname= json.loads(df.at[0,'instrumentname'])[voice]
        padding       = json.loads(df.at[0,'padding'])[voice]
        basicdistance = json.loads(df.at[0,'basicdistance'])[voice]

        path_lytex = os.path.join(path_lilypond,foldername)

        # parse lilypond blocks in specified folder
        result = parse_lilypond_assignments(path_lytex,voice)


        # write lytex to file (copy from template)
        for name, block in result.items():
            includes_lytex = '\\include \"'+os.path.join(path_lytex,piece+'_'+voice+'.lytex\"\n')
            rep['includes_lytex']    =rep['includes_lytex']+'        ' + includes_lytex
            for part in parts:
                if voice in name:
                    if part in name:
                        # initiate piece. generate title + composer line.
                        p = cl_piece(piece,composer,title,voice,parts_long)
                        # generate score line
                        p.generate_scoreline(padding,basicdistance,block)

                        # prepare replacement in template by lilypond
                        rep['score_overall']=p.markupline+p.scoreline
                        rep['emptyline']    =''
                        rep['instrumentname']= instrumentname

                        # write bookpart snippets to file for each voice+piece
                        p.write_bookpart(path_lytex,piece,voice,rep)


    # action required: this can be put into the voice class
    ftemplate_book = open(os.path.join(path_templates,'book.lytex'),"r")
    fcopy_book     = open(os.path.join(path_voices,voice+'.lytex'),"wt")

    for line in ftemplate_book:
        rep,pattern,line = replace_pattern(rep,line)
        fcopy_book.write(line)

    ftemplate_book.close()
    fcopy_book.close()

conn.close()
