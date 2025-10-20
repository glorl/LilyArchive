UngarischerTanzVierFuenf = {\new Voice \relative c {
\time 2/4
\key c \major
\compressEmptyMeasures
r8 e\mf r e
r8 e r e
r8 f r f
r8 e r e
r8 f r f
r8 e r e
r8 e r e
r8 e r e
r8 a\f r a
r8 a r a
r8 d r d
r8 a r a
a8-.\p c-. g-. b-. 
f8-. a-. e-. g-. 
e8-. gis-. e-. gis-. 
a8-.\< e'-. c'->\! r \bar"||"
r8 a,\f r a
r8 a r a
r8 b r d 
a8-- c-. r c 
r8 d r d
r8 c r c 
r8 b r b
r8 c r c
r8 e,\< r a \!
r8 c\f r c
r8 d r d
c8-- c-. r c
a8-.\p f'-. g,-. e'-. 
f,8-. d'-. e,-. c'-. 
e8-. d-. e-. d-. 
a4\<(a'8->) \!r 
\repeat volta 2{
r8 a,_\markup{\dynamic f\italic marcato} r a
r8 a r a
r8 d r d
r8 d r d 
r8 b r b 
r8 b r b 
r8 c r c 
r8 c r c 
r8 d_\markup{\dynamic p\italic rit.} r d 
r8 d r d 
r8 c r c
r8 c r c
gis8->_\markup{\dynamic ff \italic{a tempo}} r r8. e16
fis8-. r gis-. r 
a8-. a4-> gis16 (a) 
a4 (e8-.) r 
}
\key a \major \repeat volta 2{
e2->^\markup{Vivace}
e2->
r8 a-. r a-. 
e2->
e2->
r8 a-. r a-. 
}
\repeat volta 2{
r8 cis->_\markup{\italic rit.} r d->
r8 cis-> r b->
a8-._\markup{\italic {a tempo}} a'-. fis-. d-. 
a4-- a8-. r 
r8 cis->_\markup{\italic rit.} r d->
r8 e-> r a,->
a8-._\markup{\italic {a tempo}} d-. e-. e,-. 
a4 e8-. r 
}
\key c \major 
r8^\markup{Allegro} a\f r a 
r8 a r a
r8 gis r gis 
r8 a r a
r8 d r a
r8 c r c
r8 gis r b
r8 e, r e
r8 e\< r g\! 
r8 c\f r c 
r8 d r d
e8-- c-. r c
a8-.\p  f'-. g,-. e'-. 
f,8-. d'-. e,-. c'-. 
e,8-. gis-. e-. gis-. 
a4 \< (a'8->)\! r 
\repeat volta 2{
r8 a,_\markup{\dynamic f\italic marcato} r a
r8 a r a
r8 d r d
r8 d r d
r8 b r b
r8 b r b
r8 c r c
r8 c r c
r8 b_\markup{\dynamic p\italic rit.} r b 
r8 b r b 
r8 c r c
r8 c r c
gis8->_\markup{\dynamic ff\italic {a tempo}} r r8. e16
fis8-. r gis-. r 
a8-. a4-> gis16 (a) 
a4-> e8-> r 
}
a8->\ff r b-> r 
e,8-> r r4
\bar "|."
}}

UngarischerTanzVierSechs = {\new Voice \relative c' {
\time 2/4
\key c \major
\compressEmptyMeasures
\repeat volta 2{
c8->\f r r4\fermata
c8->\p r r4
c8-. f,4-> (e8)
e8-. e4->~e8 
f8-. g4->(f8) 
d'8 r r4 
g,8-. g4->(f8) 
b8-. e,4->(f8) 
c'8-. f,4->(e8) 
c'8_\markup{\italic{piu rit.}} e (dis-.) e-.
c8-. f,4->(e8) 
g8 e4->(e8) \bar"||"
g8--\ff^\markup{Vivo} b-. r b-.
r8 c r c 
r8 a r b 
r8 g r g
r8 b r b
r8 c r c 
a'8_\markup{\dynamic sfz \italic rit.} r r4 \bar"||"
g,2^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }}
c8-._\markup{\italic {a tempo}} g-. c-. r 
}
\repeat volta 2{
c8--\f g->-. r c->-.
r8 c r c 
c8->-. c->-. r c->-.
r8 c r c 
r8 g r g 
r8 g r g 
r8 fis r fis 
r8 fis r g 
c8-- g->-. r c->
r8 c r c 
c8-.-> c-.-> r c-.->
r8 c r c 
b4---.\p g---.
c4---. g'---.
b,4---. g---.
c4---. g'---.
b,4---. g---.
c8 r r4 
a'8_\markup{\dynamic sfz \italic rit.} r r4
g,2\p
c8-._\markup{\italic{a tempo}} g-. c-. r \fermata 
}
\key es \major \repeat volta 2{
g4->^\markup{Molto sostenuto}\f g->
g4.-> b8 
\acciaccatura d c16 (b) c-. d-. es8. fis16 
g8 r r4
r8 b, r b
r8 g g g 
as4 d
}
\alternative{
{g,4 r }
{g4 r }}
\repeat volta 2{
es'8-._\markup{\dynamic p \italic dolce} es-. g-. bes-. 
bes8-. d,-. f-. bes-. 
bes,8-. d-. f-. bes-. 
es,8-. g,8-. bes-. es-. 
b8-._\markup{\italic{a tempo}} f'-. c-. es-. 
g,8-. d'-. as-. c-. 
g8-. c-. g-. d'-. 
}
\alternative {{
c8-. g-. c-. r_\markup{\italic rit.}}{
c8-. g-. c-. r \fermata }}
\bar"||"\key c \major 
 \cadenzaOn 
\stopStaff 
\once \override TextScript.word-space = #1.5
\once \override TextScript.X-offset = #0
\once \override TextScript.Y-offset = #1
| s1*1^\markup { \center-column { "D.C. al Coda" \line { \musicglyph #"scripts.coda" \musicglyph #"scripts.tenuto" \musicglyph #"scripts.coda" } } }  
| s1*1 \bar""
| s1*1 \bar""
% | s1*1 \bar""
% | s1*1 \bar""
% | s1*1 \bar""
% | s1*1 \bar""
% | s1*1 \bar""
\startStaff 
\cadenzaOff
\break
% \bar"||"
g2^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } \p 
c8-._\markup{\italic{a tempo}} g-. c-. r \bar"||" 
g8-^\f r g4\sfz
~g8 r r4 
r8 f\p r e 
r8 e r e 
r8 g r f 
f-- f-. e-. f-. 
r8 g-. r f-. 
r8 e-. r f-. 
r8 f-. r e-. 
c'8-. e-. dis-. e-. 
r8 a,-. r g-. 
r8 c-. r c-. 
r8 b-.\pp r b-. 
c8-- c-. r c 
d8-- a-. r b
r8 c-. r c-. 
r8 b-. r b-. 
c8-. \< c (g e)\! 
a8-> r g4_\markup{\italic {a tempo}} 
c8-. g-. c-. r 
c8-.\f g-. c-. a-.->
r8 c-. r c-. 
c8-. g-. c-. a-.->
r8 c-. r c-. 
r8 b-. r b-. 
c8-. c-. a-. c-. 
r8 fis,-. r fis-. 
r8 fis-. r g-. 
c8-. b-. c-. a-.->
r8 c-. r c-. 
c8-. g-. c-. a-.->
r8 c-. r c-. 
b4---.\p g---.
c---. e---.
b---. g---.
c---. e---.
b---. g---.
c8 r r4 
a'8->_\markup{\italic rit.} r r4 
g,2 \p
c8-._\markup{\dynamic f \italic{a tempo}} g-. c-. r
d8->\ff r g-> r 
g8-> r r4
\bar "|."
}
}
