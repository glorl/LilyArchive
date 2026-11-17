MuscatRambleBass = {\new Voice \relative c {
\time 2/2
\key f \major
\compressEmptyMeasures
f2-> \f ~f8 f'-- e4
es2->  ~es8 es-- d4-. 
g,2 ~g8 bes-- b4-. 
c-^ d dis e \bar"||"
f4 \segno \mf e d c 
g e' d c 
g e' d c 
f e d c 
f e d c 
c e c a
e1
a4 c d e  
f e d c 
g e' d c 
g e' d c 
f e d c 
a fis a d 
g, g8 (gis ~ gis4 cis4) 
d g d c 
f8 (c d f ~f ) c-- c (a) \bar"||"
g4-^ r b-^ r 
c4-^ r c-^ r 
f,2 a4 c 
f, a as2
g4 c b g
c b bes g
f e d' c
f, e d' c 
g4-^ r b-^ r 
c bes! a g
f a c d 
f, c' b bes 
a r d2 
g,4 bes! d b8 (a)
g4 bes c c 
f ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} c d e \bar"||"
f,4 \mp r c' r 
c r g r 
c r g r 
f r c' r 
f, r c' r 
a r e' r 
e, r bes' r 
a r e r 
f r c' r 
g r c r 
g r c r 
f c d e \bar"||"
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
f4 ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } c d e  \bar"||"
\key bes \major 
f2.-> \f f4-^
e2.-> e4-^
es!2-> d4-^ des4-^
f8 e es4 d c
\repeat volta 2{
bes4^\markup{Barcarole / J. Offenbach} _\markup{\dynamic p - \dynamic mf} d f bes, 
es,! g bes bes 
f a c a 
f a c a 
f a c a 
f a c a }
\alternative{{
bes d f g 
bes f8-- g4-. f8-- d4-. }
{bes d f g }}
bes, g'8 (ges) f4 d
\repeat volta 2{
bes\p \<d f d 
bes f' d bes 
f a c es 
f es \! c a 
f\> a c es 
f es c a
bes d f g\! 
}
\alternative{{
bes4 g8 (ges f d c4)}
{
bes'4 g8-- f4-. g8-- f4-. \bar"||"}}
bes,  \mf d f g
bes, d f d 
bes bes c c 
cis cis d d 
bes bes d f
bes as f d 
es bes g bes 
es, r r2
r4 g2\f^\markup{ {Solo}} a4
a2 g8 (a bes c)
~c1 
~c1
r4 c4 g8 (gis a4) 
bes8 (d bes4) a4 (g) 
f2 (c'4 a) 
as4 b d b 
f \< a c es 
d b g b \bar"||"
\key c \major 
c4 \mf e g c,
f, a c c 
g b d b 
g b d b 
g b d b 
g b d b 
g bes cis bes 
g1
d'4 r d8 (dis e4)
f8 (d e f g f a4)
c,1
g4 r8 g8 (e' c a as)
g4-. g8 (e f g a4) 
b2 \< (c8 d dis e\!
~e4) g e cis 
g1 
d'4-. d4 (d8 a' c,4) 
b8-- c4-. d8 (e c a as
c1) 
~c4 r c\f a 
g b d f 
g d b g 
c e g c,
f, as c as 
c4 g8-- e4-. g8-- a4-.
c4.-> c8-^ r2
\bar"|."
}}
 
