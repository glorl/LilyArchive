MuscatRambleVier = {\new Voice \relative c' {
\time 2/2
\key f \major
\compressEmptyMeasures
d4.-> \f d8-^ r2
es4.-> es8-^ r2
f4.-> f8-^ r2
c4-^ d dis e \bar"||"
f4 \segno \mf e d c 
g e' d c 
g e' d c 
f e d c 
f e d c 
c e c a
b1
a4 c d e  
f e d c 
g e' d c 
g e' d c 
f e d c 
d fis, a d 
g, g8 (gis ~ gis4 cis4) 
d g d c 
f8 (c d f ~f ) c-- c (cis) \bar"||"
f4-^ r fis-^ r 
g4-^ r e-^ r 
e4 (d) d2 
a2 d 
g4-- g8-- g ~g2
r4 gis8 (a ~a gis f e)
d4-- c8-- c~c2
r8 d4-. bes'8-- a (a f4) 
f4-^ r fis-^ r 
c2 e4 g
f2 f2 
r8 es4-. es8-- d-- d-- des4-.
c8-- c4-. c8 (d c d4) 
f4 (g8 f ~f2) 
f8-- f4-. f8 (g4 c,)
f2. ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r4 \bar"||"
a,4--\mp a-. r a
r bes2 bes4
bes4-- bes-. r g
r a2 a4
a4-- a-. r a 
r a2 a4 
gis4-- gis-. r gis 
r a2 a4
a4-- a-. r a 
r g2 g4
g4-- g-. r g 
a2. r4 \bar"||"
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
f'2. ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } r4 \bar"||"
\key bes \major 
es2.-> \f es4-^
d2.-> d4-^
des2-> c4-^ b4-^
c4 r r2
\repeat volta 2{
d2.^\markup{Barcarole / J. Offenbach} _\markup{\dynamic p - \dynamic mf} (es4) 
es2. (d4--) 
d2 (c4) es8-- es
~es2. d4-- 
d2 (c4 ) es8-- es
~es2.  d4-- }
\alternative{{
d1
r1}
{
d1}}
r1 
\repeat volta 2{
f2. (\p \<g4 
g2. f4 
es2. g4  
g2. f4)\! 
f2.(\> a4 
a2. a4
f1)\! ~ 
}
\alternative{{
f4 r r2}
{
f4 r r2 \bar"||"}}
f2.(\mf g4 
g2. f4) 
f2 (a) 
cis (bes)  
r8 f4.-> d4-. d-. 
f2 (g4 fis)
g1
r8 es4-.\> bes8-- a4-. as-. 
g4-. \f g2^\markup{Solo} (a4)
a2 g8 ( a bes c) 
~c1
~c1
r4 c4 g8 (gis a4) 
bes8 (d bes4) a g 
f2 c'4 a
as4 b d b 
f a  \< c es
f2 f \bar"||"
\key c \major 
e2.( \mf f4)
f2.( e4)
e2 d8-- f4-. f8
~f2. e4-- 
e2 d8-- f4-. f8
~f2. e4 
e1
~e4 g4-. cis,8 (bes g4
f4-.) r d'8 (dis e4 ) 
f8 (d e f g f a4) 
c,1
~c4 r8 g8 ( e' c a as )
g4-. g8 (e f g a4) 
b2 \< (c8 d dis g\!
~g1
~g4) bes4-. g8 (e cis4
d4-.) d4 (~d8 a c4 )
b8-- c4-. d8 (e c a as
c1) 
~c4 r fis2-- \f 
g1
~g4 r g4-. g-. 
c,1 
~c
~c4 g8-- e4-. g8-- a4-.
c4.-> c8-^ r2
\bar"|."
}}
