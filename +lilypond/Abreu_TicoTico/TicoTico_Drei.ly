TicoTicoDrei = {\new Voice \relative c' {
\time 2/2
\key c \major
\compressEmptyMeasures
\partial 4. e8 \f (d des) 
c8\< (b c d f e d e )
g (a ais b c\> b a g)
f (e d c b a g f \!
e4-.) r r2 \bar"||"
e4-. \mf \segno  e ~e e-.
r gis-. gis2-- 
gis4-. gis ~gis gis-.
r e-. e2--
f4-. a ~a a-.
r a-. a2--
a4-. a ~a a-. 
r4 gis4-. gis2--
e4-. e ~e e-.
r gis-. gis2-- 
gis4-. gis ~gis gis-.
r e-. e2--
f4-. a ~a a-.
r a-. a2--
gis4-. gis ~gis gis-. 
r4 a4-. a2--
c4-. c ~c c-.
r b-. b2-- 
b4-. b ~b b-.
r c-. c2--
c4-. c ~c b-.
r d-. b-. b-. 
b4-. b (a) a-. 
r4 c4-. c-. c-. 
c4-. c~c c-.
r b-. b-. b-. 
b-. b~b b-. 
r4 ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }}  c ~c r 
r a-.\mf \< r c-. 
r c-. \! r cis-. \>
r a-. b-. e,-. 
fis-. \! r r8 g'\< (b d)\! \bar"||" \key g \major
b8 (g b b ~b) g (b g)  
g8 (g b g~g) g (b g )
g8 (g b g~g) g (b g )
g8 (a c fis,~fis) c' (d g, )
a8 (c d a ~a) c (d g,)
g8 (a c fis,~fis) c' (d fis, )
a8 (c d a ~a) c (d fis, )
g8 (g b g~g) g\< (b g )
b8 \f (g b b ~b) g (b g )
g8 (g b g~g) g (b g)
gis8 (d' b gis) gis (d' b gis) 
c, (gis' a b ) e,4-. r 
a,4-.\mf \< r bes-. r 
d-. r d-.\! r 
e-.\> r a-.\! r 
d,-. gis-^-. r2 \bar"||" \key c \major
e,4-. e ~e e-. 
r gis-. gis2-- 
gis4-. gis ~gis gis-.
r e-. e2--
f4-. a ~a a-. 
r a-. a2-- 
a4-. a ~a a-. 
r gis-. gis2-- 
e4-. e ~e e-. 
r gis-. gis2-- 
gis4-. gis ~gis gis-.
r e-. e2--
f4-. a ~a a-. 
r a-. a2-- 
gis4-. gis ~gis gis-. 
r a-. a2-- 
c4-. c ~c c-. 
r b-. b2-- 
b4-. b ~b b-.
r c-. c2--
c4-. c ~c c-. 
r d-. b-. b-. 
b4-. b (a) a-. 
r c-. c-. c-.
\tuplet 3/2 {g''8^\markup{Solo} \f (a g} e4-.) \tuplet 3/2 {g8 (a g} e4-.)
f8 \<(g a d)\! r g,4-. ges8--
(f b, d f g d f g 
a g e g-.-^) r2
a8-> (g es c) es-> (c a g) 
c8-> (b bes a ~a2)
d8\< (f a as g\> f e es 
d4\!) r r8 g, (\< b d)\! \bar"||" \key g \major 
b8\mf (g b b ~b) g (b g)  
g8 (g b g~g) g (b g )
b8 (g b g~g) g (b g )
a8 (a c fis,~fis) c' (d a)
a8 (c d a ~a) c (d g,)
g8 (a c fis, ~fis) c' (d fis,)
a8 (c d a ~a) c (d fis, )
g8 (g b g~g) g\< (b g )
b8 \f (g b b ~b) g (b g )
g8 (g b g~g) g (b g)
gis8 (d' b gis) gis (d' b gis) 
c, (gis' a b ) c4-. r 
a,4-.\mf \< r bes-. r 
d-. r d-.\! r 
e-.\> r e-.\! r 
d-. gis-^-. r2 \bar"||"
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
r4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } e4 ~e r 
c8  \f \< (b c d f e d e 
g a ais b \! c\> b a g 
f e d c b a g f )\! 
e4-. r e''4-^ r  
\bar"|."
}}
 
