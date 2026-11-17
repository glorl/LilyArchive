TicoTicoZwei = {\new Voice \relative c'' {
\time 2/2
\key c \major
\compressEmptyMeasures
\partial 4. a8 \f (as g) 
f8\< (d e f a g f g )
c (d dis e f\> e d c)
b (a g f e d c b\! 
g4-.) r r2 \bar"||"
c4-. \mf \segno  c ~c c-.
r d-. d2-- 
d4-. d ~d d-.
r c-. c2--
d4-. f ~f f-.
r e-. e2--
fis4-. fis ~fis fis-. 
b,2 r8 e (dis e) 
f8-- e4-. a8-. ~a e (dis e)
f8-- e4-. gis8-. ~gis e (dis e)
f8 (e d' b gis e es d )
c2 r8 a'8 (as g)
f8-- a4-. d8-. ~d c (a f)
e8--  a4-. c8-. ~c c (b ais)
b8 (e, gis b e d c b)
a2 r2 
g4-. g~g g-.
r f-. f2--
f4-. f~f f-. 
r4 g-. g2
g4-. g ~g g-.
r a-. f-. f-. 
f-. f~f f-.
r g-. g-. g-. 
g4-. g~g g-.
r f-. f-. f-. 
f-. f~f f-. 
r4 ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }}  a (g) r 
r f-.\mf \< r a-. 
r g-. \! r g-. \>
r f-. g-. c,-. 
c-. \! r r8 g'\< (b d)\! \bar"||" \key g \major
d8 (g, b d ~d) g, (b b)  
b8 (g b b~b) g (b b )
b8 (g b b~b) g (b b )
c8 (a c c~c) c (d c )
c8 (c d c~c) c (d c )
c8 (a c c~c) c (d a )
c8 (c d c~c) c (d a )
b8 (g b b~b) g\< (b b )
d8 \f (g, b d ~d) g, (b b )
b8 (g b b~b) g (b b )
b8 (d b gis) b (d b gis) 
e (gis a b ) a4-. r 
c,4-.\mf \< r cis-. r 
g'-. r gis-.\! r 
a-.\> r c-.\! r 
gis-. b-^-. r8 e,8 (dis e) \bar"||" \key c \major
f8-- \f e4-. b'8 (c b a e
d b a gis a b c d
f8 e) r4 r8 e (es d
c b c e) r a (b c
d--) f4-. a8 (d c a f 
e a b c) r e ( c a
b8--) dis,4-. fis-. a-. c8--
b2. r4
c,,4-. \mp c ~c c-.
r d-. d2--
d4-. d~d d-. 
r c-. c2--
d4-. f~f f-.
r e-. e2--
d4-. d~d d-.
r e-. e2--
e4-. e~e e-.
r d-. d2--
d4-. d~d d-. 
r e-. e2-- 
e4-. e~e e-. 
r f-. d-. d-. 
d4-. d ~d d-.
r e-. e-. e-. 
e-. e~e e-. 
r d-. d-. d-. 
d-. d~d d-. 
r e-. r e-. 
r c-. r es-. 
r e-. r e-. 
r d-. d-. c-. 
a-. r r8 g'8 (\< b d)\! \bar"||" \key g \major 
d8\mf (g, b d ~d) g, (b b)  
b8 (g b b~b) g (b b )
b8 (g b b~b) g (b b )
c8 (a c c~c) c (d c )
c8 (c d c~c) c (d c )
c8 (a c c~c) c (d a )
c8 (c d c~c) c (d a )
b8 (g b b~b) g\< (b b )
d8 \f (g, b d ~d) g, (b b )
b8 (g b b~b) g (b b )
b8 (d b gis) b (d b gis) 
e (gis a b ) a4-. r 
c,4-.\mf \< r cis-. r 
g' r gis\! r 
a4-.\> r c-.\! r
gis-. b-^ r2 \bar"||"
\key c \major 
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
r4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } a4 (g) r 
f8 \f \< (d e f a g f g 
c d dis e \! f\> e d c 
b a g f e d c b )\! 
g4-. r g''4-^ r  
\bar"|."
}}
 
