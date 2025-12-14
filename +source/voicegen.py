import os,json, sqlite3
import pandas as pd
from lilyfunctions import parse_lilypond_assignments, replace_pattern, filter_pieces, voice_count
from itertools import chain
from dataclasses import dataclass

@dataclass
class piece:
    folder: str
    composer: str
    title: str
    subtitle: str
    voice: str
    part: str
    partnumber: int
    part_long: str
    padding: str
    basicdistance: str
    block: str

@dataclass
class bookpart:
    piecelist: list
    replacements_dict_lytex: dict
    path_lytex: str
    lytex_name_voice: str

    def generate(self):
        staffblock = ''
        # for iblock in [self.piece.block]:
        for ipiece in self.piecelist:
            block = ipiece.block
            staffblock = staffblock + f'           \\new Staff << '\
                +block\
                +f'  \n         >>\n'
        self.scoreline = f'    \\score{{ \n        \\layout{{ system-system-spacing = #\'((padding . '\
            +f'{self.piecelist[0].padding} ) (basic-distance . '\
            +f'{self.piecelist[0].basicdistance} )) }} \n'\
            +f'        \\new StaffGroup <<\n'\
            +staffblock+f'      >>\n    }}  \n'
        self.generate_markup()

    def generate_titleline(self):
        if self.piecelist[0].subtitle is not None:
            self.titleline   = f'            \\fill-line {{\\line{{\\abs-fontsize #18 {{ \\sans {{{self.piecelist[0].title }}} }} }} }}\n' \
                +f'            \\fill-line {{\\line{{\\abs-fontsize #16 {{ \\sans {{{self.piecelist[0].subtitle}}} }} }} }} '
        else: 
            self.titleline   = f"           \\fill-line {{\\line{{\\abs-fontsize #18 {{ \\sans {{{self.piecelist[0].title}}} }} }} }}"            
    def generate_partsline(self):
        if self.piecelist[0].part_long:
            self.partsline=f'           \\fill-line {{\\line{{\\abs-fontsize #14 {{ \\sans {{{self.piecelist[0].part_long}}} }} }} \\line {{}}}} \n'
    def generate_composerline(self):
        self.composerline= f'            \\fill-line {{\\line {{}} \\line{{\\abs-fontsize #12 {{ \\sans {{{self.piecelist[0].composer}}} }} }} }}'
    def generate_markup(self):
        if not self.piecelist[0].part_long:
            self.generate_titleline()
            self.generate_composerline()
            self.markupline = f'    \\markup{{\n        \\column{{ \n{self.titleline} \n{self.composerline} \n        }} \n    }}\n'
        else:
            if self.piecelist[0].partnumber==0:
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

    def write_bookpart(self):
        ftemplate_bookpart  = open(os.path.join(path_templates,'bookpart.lytex'),"r")
        fcopy_bookpart      = open(os.path.join(self.path_lytex,self.piecelist[0].folder+'_'+self.lytex_name_voice+'_'+self.piecelist[0].part+'.lytex'),"wt")
        for line in ftemplate_bookpart:
            replacements_dict_lytex,pattern,line = replace_pattern(self.replacements_dict_lytex,line)
            fcopy_bookpart.write(line)
        fcopy_bookpart.close()
        ftemplate_bookpart.close()

def prepare_piece_list(df_all, voicelist, foldernames, path_lilypond):
    my_piece_list = []
    for folder in foldernames:
        # filter dataframe instead of querying again
        df = df_all[df_all['foldername'] == folder].copy()
        for voice in voicelist:
            # extract data from sqlite database
            title       = df.iloc[0]['title']
            subtitle    = df.iloc[0]['subtitle']
            composer    = df.iloc[0]['composer']
            parts       = df['parts'].apply(lambda x: json.loads(x) if pd.notna(x) else []).iloc[0]
            parts_long  = df['parts_long'].apply(lambda x: json.loads(x) if pd.notna(x) else []).iloc[0]

            path_lytex  = os.path.join(path_lilypond, folder)
            # extract json fields from sqlite database
            padding       = json.loads(df.iloc[0]['padding'])[voice]
            basicdistance = json.loads(df.iloc[0]['basicdistance'])[voice]

            ly_sourcecode = parse_lilypond_assignments(path_lytex)
            for name, block in ly_sourcecode.items():
                for partnumber, part in enumerate(parts):
                    if parts_long:
                        part_long = parts_long[partnumber]
                    else:
                        part_long = []
                    if (part in name) and (voice in name):
                        my_piece = piece(folder, composer, title, subtitle, voice, part, partnumber, part_long, padding, basicdistance, block)
                        my_piece_list.append(my_piece)
    return my_piece_list

def write_output(df_all, my_piece_list, voicelist_full, foldernames, replacements_dict_lytex, path_lilypond, path_voices, path_templates):
    # write output (bookpart.lytex, book.lytex)
    for voice in voicelist_full:
        replacements_dict_lytex['includes_lytex'] = ''
        length_voice, ivoicelist = voice_count(voice)
        if length_voice > 1:
            lytex_name_voice = 'Partitur'
        else:
            lytex_name_voice = voice

        for folder in foldernames:
            # filter dataframe instead of querying again
            df = df_all[df_all['foldername'] == folder].copy()
            partlist = df['parts'].apply(lambda x: json.loads(x) if pd.notna(x) else []).iloc[0]

            if length_voice > 1:
                instrumentname_adapted = 'Partitur'
            else:
                instrumentname_adapted = json.loads(df.iloc[0]['instrumentname'])[voice]

            for ipart in partlist:
                filter_criteria = {'folder': folder, 'part': ipart, 'voice': ivoicelist}
                my_piece_list_filtered3 = filter_pieces(my_piece_list, filter_criteria)

                path_lytex = os.path.join(path_lilypond, folder)
                ipiece = my_piece_list_filtered3[0]
                includes_lytex = f'\\include "{os.path.join(path_lytex, ipiece.folder + "_" + lytex_name_voice + "_" + ipiece.part + ".lytex")}"\n'
                replacements_dict_lytex['includes_lytex'] += f'        {includes_lytex}'

                mybookpart = bookpart(my_piece_list_filtered3, replacements_dict_lytex, path_lytex, lytex_name_voice)
                mybookpart.generate()

                # markup (titleline, composerline, subtitle, ... )
                replacements_dict_lytex['score_overall'] = mybookpart.markupline + mybookpart.scoreline
                replacements_dict_lytex['emptyline'] = ''
                replacements_dict_lytex['instrumentname'] = instrumentname_adapted
                mybookpart.replacements_dict_lytex = replacements_dict_lytex

                mybookpart.write_bookpart()

        # write book
        ftemplate_book = open(os.path.join(path_templates, 'book.lytex'), "r")
        fcopy_book = open(os.path.join(path_voices, lytex_name_voice + '.lytex'), "wt")

        for line in ftemplate_book:
            replacements_dict_lytex, pattern, line = replace_pattern(replacements_dict_lytex, line)
            fcopy_book.write(line)

        ftemplate_book.close()
        fcopy_book.close()


########################################################
# read input from database
cwd = os.getcwd()
path_lilypond   = os.path.join(cwd,'+lilypond')
path_voices     = os.path.join(cwd,'+voices')
path_json       = os.path.join(cwd,'+voices')
path_templates  = os.path.join(cwd,'+templates')

replacements_dict_lytex = dict()
# dictionary to replace expressions in both lytex files (bookpart.lytex, book.lytex )
replacements_dict_lytex['pheight']     = "#280"
replacements_dict_lytex['pwidth']      = "#230"
replacements_dict_lytex['horizontalshift'] = "-15mm"
replacements_dict_lytex['printpagenumber'] = "##f"
replacements_dict_lytex['bookheader']      = ""
replacements_dict_lytex['includes_lyfiles']= ""

# open json (basic info)
finput = open (os.path.join(path_json,'input.json'), "r")
data   = json.loads(finput.read())
finput.close()

conn = sqlite3.connect("+voices/pieces.sqlite")
df_all = pd.read_sql_query("SELECT * FROM pieces", conn) 


my_piece_list = []
voicelist_structured =data['Stuecke']['voices']

# prepare voicelist (flattened, unique)
voicelist_flat    = list(chain.from_iterable(x if isinstance(x, list) else [x] for x in voicelist_structured))
# prepare voicelist (reduced, unique)
voicelist_reduced = list(dict.fromkeys(voicelist_flat))  # bewahrt Reihenfolge

foldernames=data['Stuecke']['folders']

# prepare piece objects
my_piece_list = prepare_piece_list(df_all, voicelist_reduced, foldernames, path_lilypond)

# write final output 
write_output(df_all, my_piece_list, voicelist_structured, foldernames, replacements_dict_lytex, path_lilypond, path_voices, path_templates)

conn.close()


