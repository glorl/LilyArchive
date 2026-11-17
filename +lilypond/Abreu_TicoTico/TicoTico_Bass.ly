TicoTicoBass = {\new Voice \relative c {
\time 2/2
\key c \major
\compressEmptyMeasures
\partial 4. r8 r4
f2\f\< g 
a d\!
f,\> g 
c4-. g (c)\! r \bar"||"
a4. \segno \mf e8 ~e4 a
b4. e,8 ~e4 b'
b4. e,8 ~e4 b'
a4. e8 ~e4 a
d4. a8 ~a4 d
a4. e8 ~e4 a
b4. fis8 ~fis4 b
e,4. b'8 ~b4 e,
a4. e8 ~e4 a
e4. b'8 ~b4 e,
e4. b'8 ~b4 e,
a4. e8 ~e4 a
d4. a8 ~a4 d
a4. e8 ~e4 a
e4. b'8 ~b4 e,
a4. e8 ~e4 a
c4. g8 ~g4 c
d4. g,8 ~g4 d'
d4. g,8 ~g4 d'
c4. g8 ~g4 c
c2 b 
a g 
b a 
g c
c4. g8 ~g4 c
g4 r d' r 
g,4 r d' r 
c^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} a (g) r 
f2\< fis 
g a\!
d\> g,4 c 
d4-. a (d)\! r \bar"||" \key g \major
g,2 \mf fis 
e d'
e d 
a d 
g fis 
e d
g, fis 
e d'\<
g, \f fis 
e d'
e, gis 
a a4 b 
c-. \mf \< r cis-. r 
d-. r e-.\! r 
a,-.\> r a-. r 
e'\! e,-^-. r2 \bar"||"\key c \major
a4. \mf e8 ~e4 a
b4. e,8 ~e4 b'
b4. e,8 ~e4 b'
a4. e8 ~e4 a
d4. a8 ~a4 d
a4. e8 ~e4 a
b4. fis8 ~fis4 b
e,4. b'8 ~b4 e,
a4. e8 ~e4 a
e4. b'8 ~b4 b
e,4. b'8 ~b4 e,
a4. e8 ~e4 a
d4. a8 ~a4 d
a4. e8 ~e4 a
e4. b'8 ~b4 e,
a4. e8 ~e4 a
c4. g8 ~g4 c
d4. g,8 ~g4 d'
d4. g,8 ~g4 d'
c4. g8 ~g4 c
c2 b 
a g
b a 
g c 
c4. g8 ~g4 c
g4 r d' r 
g,4 r d' r 
c r g r 
f r fis r 
g r a r 
d2 g,4 c 
d-. a (d) r \bar"||" \key g \major 
g,2 \mf fis 
e d'
e d 
a d 
g fis 
e d 
g, fis 
e d'\<
g,\f fis 
e d' 
e, gis 
a a4 b
c-.\mf \< r cis-. r 
d-. r e-.\! r 
a,-.\> r a-.\! r 
e'-. e,-. r2 \bar"||"\key c \major 
 \cadenzaOn 
\stopStaff 
\once \override TextScript.word-space = #1.5
\once \override TextScript.X-offset = #0
\once \override TextScript.Y-offset = #1
| s1*1^\markup { \center-column { "D.S. al Coda" \line { \musicglyph #"scripts.coda" \musicglyph #"scripts.tenuto" \musicglyph #"scripts.coda" } } }  
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
% \bar"|"
c'4-. ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } a (g) r 
f \f\< r g r 
a r d r \!
f, \> r g  r 
c-.\! g-. c-^ r 
\bar"|."
}}
 
