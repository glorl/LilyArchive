import os,json, re, sqlite3
import pandas as pd
from lilyfunctions import parse_lilypond_assignments, replace_pattern, filter_pieces
from itertools import chain

class piece:
    cwd = os.getcwd()
    path_templates  = os.path.join(cwd,'+templates')

    def __init__(self,folder,composer,title,voice,part,ipart,parts_long,padding,basicdistance,block):
        self.folder       =folder
        self.composer     =composer
        self.title        =title
        self.voice        =voice
        self.part         =part
        self.ipart        =ipart
        self.part_long    =part_long
        self.padding      =padding
        self.basicdistance=basicdistance
        self.block        =block
        # at initialization: create markup and ly-block
        self.generate_markup()
        self.generate_scoreline()

    def generate_titleline(self):
        self.titleline   = '            \\fill-line {\\line{\\abs-fontsize #18 { \\sans {'+self.title+'} }} }'
    def generate_partsline(self):
        if parts_long:
            self.partsline='           \\fill-line {\\line{\\abs-fontsize #14 { \\sans {' + self.part_long + '} } } \\line { } } \n'
    def generate_composerline(self):
        self.composerline= '            \\fill-line {\\line {} \\line{\\abs-fontsize #12 { \\sans {'+self.composer+'} }} }'
    def generate_markup(self):
        if not parts_long:
            self.generate_titleline()
            self.generate_composerline()
            self.markupline = '    \\markup{\n        \\column{ \n'+self.titleline+' \n'+self.composerline+' \n        } \n    }\n'
        else:
            if ipart==0:
                self.generate_titleline()
                self.generate_composerline()
                self.generate_partsline()
                self.markupline = '    \\markup{\n        \\column{ \n'+self.titleline+' \n'+self.composerline+' \n ' \
                    + self.partsline + '        }\n    }\n'
            else:
                self.generate_partsline()
                self.markupline = '    \\markup{\n        \\column{\n' \
                    +'           \\fill-line {\\line{\\abs-fontsize #30 { {\\null} } } } \n' \
                    +'           \\fill-line {\\line{\\abs-fontsize #30 { {\\null} } } } \n' \
                    +'           \\fill-line {\\line{\\abs-fontsize #30 { {\\null} } } } \n' \
                    + self.partsline + '}\n   }\n'

    def generate_scoreline(self):
        self.scoreline = '    \\score{ \n        \\layout{ system-system-spacing = #\'((padding . '\
            +self.padding+') (basic-distance . '\
            +self.basicdistance+')) } \n'\
            +'        \\new StaffGroup <<\n'\
            +'           \\new Staff << '\
            +self.block\
            +'  \n         >>\n      >>\n    }'
    def write_bookpart(self,path_voices,rep):
        ftemplate_bookpart = open(os.path.join(path_templates,'bookpart.lytex'),"r")
        fcopy_bookpart = open(os.path.join(path_voices,self.folder+'_'+self.voice+'_'+self.part+'.lytex'),"wt")
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

# open json (basic info)
finput = open (os.path.join(path_json,'input.json'), "r")
data = json.loads(finput.read())
finput.close()

conn = sqlite3.connect("+voices/pieces.sqlite")

my_piece_list = []
voicelist_full=data['Stuecke']['voices']

flach = list(chain.from_iterable(x if isinstance(x, list) else [x] for x in voicelist_full))
voicelist = list(dict.fromkeys(flach))  # bewahrt Reihenfolge

foldernames=data['Stuecke']['folders']

# prepare snip objects
for voice in voicelist:
    for folder in foldernames:
        df = pd.read_sql_query("SELECT * FROM pieces WHERE foldername = ?",conn,params=(folder,))

        title         = df.at[0,'title']
        composer      = df.at[0,'composer']
        parts         = df['parts'].apply(lambda x: json.loads(x) if pd.notna(x) else [])[0]
        parts_long    = df['parts_long'].apply(lambda x: json.loads(x) if pd.notna(x) else [])[0]
        path_lytex = os.path.join(path_lilypond,folder)

        instrumentname= json.loads(df.at[0,'instrumentname'])[voice]
        padding       = json.loads(df.at[0,'padding'])[voice]
        basicdistance = json.loads(df.at[0,'basicdistance'])[voice]

        result = parse_lilypond_assignments(path_lytex)
        for name, block in result.items():
            for ipart,part in enumerate(parts):
                if parts_long:
                    part_long = parts_long[ipart]
                else:
                    part_long = []
                if ((part in name) and (voice in name)) :
                    my_piece = [];
                    my_piece = piece(folder,composer,title,voice,part,ipart,part_long,padding,basicdistance,block)
                    my_piece_list.append(my_piece)

# write output
for voice in voicelist:
    rep['includes_lytex'] = ''

    for folder in foldernames:
        filter_criteria= {'folder': folder, 'voice': voice}
        my_piece_list_filtered = filter_pieces(my_piece_list, filter_criteria)
        path_lytex = os.path.join(path_lilypond,folder)

        for ipiece in my_piece_list_filtered:
            # includes to be set in voice.lytex
            includes_lytex = '\\include \"'+os.path.join( path_lytex, ipiece.folder+'_'+ ipiece.voice+'_'+ ipiece.part+'.lytex\"\n')
            rep['includes_lytex']    =rep['includes_lytex']+'        ' + includes_lytex

            # markup (titleline, composerline, subtitle, ... )
            rep['score_overall']=ipiece.markupline+ipiece.scoreline
            rep['emptyline']    =''
            rep['instrumentname']= instrumentname

            # write bookpart (e.g., Beethoven_PrestoFinale_Bass.lytex)
            # markupline - score_overall
            ipiece.write_bookpart(path_lytex,rep)

    # write book
    ftemplate_book = open(os.path.join(path_templates,'book.lytex'),"r")
    fcopy_book     = open(os.path.join(path_voices,voice+'.lytex'),"wt")

    for line in ftemplate_book:
        rep,pattern,line = replace_pattern(rep,line)
        fcopy_book.write(line)

    ftemplate_book.close()
    fcopy_book.close()


conn.close()


