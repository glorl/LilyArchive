SinfoniaBass = {\new Voice \relative c' {
\time 4/4
\key g \major
\compressEmptyMeasures
g4--\p r8 g-. g4-- r8 g-.
fis4-- r8 fis-. fis4-- r8 fis-.
e4-- r8 e-. e4-- r8 e'-.
d4-- r8 a8-. d d e fis
g4-- r8 d-. g4-- r8 fis-.
e4-- r8 b-. e4-- r8 b-.
a4-- r8 a-. a4-- r8 a-.
d4-- r8 a-. a4-- r8 d-.
g4-- r8 d-. g d g,4
a4-- r8 a-. e'4 a,8 e'
d4-- r8 a-. d a d4
e4-- r8 b-. a4 e'
d4-- r8 a8-. d a d e
f2^\markup{Solo unisono}~f8 d( b a )
gis2 ~gis8 a (b c)
d8 (e f gis b4) d,--
c4 b8 (a) c'2~
c8 ( b a b16 gis a2)~
a8 (g f e d c b gis )
a4. (b8) b4. (a8)
a2 ~a8 \breathe a8 b c
d4 r r d
g,4 r r g
a'4 r r g,
a'4 ~a-- r a--
a,4---. a---. a---. a---.
d4 r r a
g4 r r a
d4. e8 d d c a
\repeat volta 2{
g4-- r8 g-. g4-- r8 g-.
fis4-- r8 fis-. fis4-- r8 fis-.
e4-- r8 e-. e4-- r8 e'-.
d4-- r8 d-. d4-- r8 d--
g,4-- r8 g-. g4-- r8 g-.
c4-- r8 c-. cis4-- r8 cis-.
d4-- r8 c!-. d4-- r8 d-.
g,4-- r8 g-. a4-- r8 fis-.
e4-- r8 e-. a4-- r8 a-.
}
\alternative{{
d8 (cis d e d c b a) }{
d2 d\fermata}}\bar"|."
}
}
