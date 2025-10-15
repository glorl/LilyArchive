SinfoniaVier = {\new Voice \relative c' {
\time 4/4
\key g \major
\compressEmptyMeasures
b4---.\p b---. r b
r4 c\< r8 c r4
r4 c r8 c\! r4
r4 c\mf r8 c r4
r4 b r8 b r4
r4 b r8 b r4
r4 cis r8 cis r4
r4 d r8 d r4
r4 b r8 b r4
r4 cis r8 cis r4
r4 g r8 a r4
r4 b r8 cis r4
r4 d r8 d r4
f2^\markup{Solo unisono}~f8 d( b a )
gis2 ~gis8 a (b c)
d8 (e f gis b4) d,--
c4 b8 (a) c'2~
c8 ( b a b16 gis a2)~
a8 (g f e d c b gis )
a4. (b8) b4. (a8)
a2 ~a8 r r4
d4---. r r a---.
g4---. r r b---.
g4---. r r b---.
f'8 (d c4--) r c--
c4---. \<a---. a---. a---.
a4\! r r c---.
b4---. r r e---.
d4~d4-- r r
\repeat volta 2{
r4 b---. r8 b-. b4---.
r4 a---. r8 d-. d4---.
r4 c---. r8 c-. c4---.
r4 c---. r8 c-. c4---.
r4 b---. r8 g-. g4---.
r4 a---. r8 fis-. fis4---.
r4 b---. r8 c-. c4---.
r4 b---. r8 fis-. fis4---.
r4 b---. r8 cis-. b4---.
}
\alternative{{
d1}{
g8 (a16 g) fis (g e8) d2\fermata}}\bar"|."
}
}
