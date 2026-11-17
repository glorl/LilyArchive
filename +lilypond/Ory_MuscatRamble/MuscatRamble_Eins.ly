MuscatRambleEins = {\new Voice \relative c'' {
\time 2/2
\key f \major
\compressEmptyMeasures
f4.-> \f f8-^ r2 
fis4.->  fis8-^ r2 
g4.-> g8-^ r2 
g4-^ r r2 \bar"||"
f8 \segno \mf (a, c f ~f a, c f)
e8 (bes c e ~e4) r
e8 (bes c e ~e bes c e)
f8 (a, c f ~f4) r
f8 (a, c f ~f a, c f)
e8 (bes c e ~e4) r
d8 (dis e f e d c b
a4) c2.->
f8 (a, c f ~f a, c f)
e8 (bes c e ~e4) r
e8 (bes c e ~e bes c e)
f8 (a, c f ~f4) r
d8-- \f f4-. d8-- f4. (d8) 
g4 (f8 d ~d) gis4.->
a8 (gis a g f4 e) 
f8 (c d f~ f) c8-- c (cis)\bar"||"
d4-^ r dis-^ r 
e4-^ r a-^ r 
g (f) f2--
r8 f( e f g f e d ) 
f4-- e8-- e ~e2
r4 gis8 ( a~ a g f c) 
d4-- c8-- c ~c2 
r8 a'4-. g8-- f (f e4) 
d4-^ r dis-^ r 
e4.-- e8 (a g c a) 
g4 (f) f2-- 
r8 f4-. f8-- e (e es4) 
d8-- d4-. d8-- fis (d fis4) 
g4 (f8 d ~d2)
a'8-- a4-. gis8 (a f gis4) 
f2. ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r4 \bar"||"
r8 c'4. ~c8 a (g f) 
e4 \glissando (bes8 c d e g4) 
bes4 \glissando e,4 d8 (e g a )
~a2. r4
f8-- a,4-. c-. f8 (d dis) 
e8 (a ~a4 ~a8 c a4) 
gis4 (b8 c d c b4) 
a8 (e ~e2) r4 
f8 (e c a) c4-. f-.
b,8 (g d' e ~e2) 
c8 ( b bes4) d8 (c a' as) 
g8 (f ~f4) r2 \bar"||"
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
f2.^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } r4 \bar"||"
\key bes \major 
f2.-> \f f4-^
e2.-> e4-^
es!2-> d4-^ des4-^
c4-^ r r2
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
f2.\p \<(g4
g2. a4
a2. bes4 
bes2. a4\! 
a2.\> g4
g2. f4)
f1\! ~
}
\alternative{{
f4 r r2}
{
f4 r r2 \bar"||"}}
f2. \mf (g4
g2. as4 ) 
bes1
~bes1 
r8 bes4.-> f4-. g-. 
as2 (g4 fis) 
g1
r8 es4-.\> bes8-- a4-. as-. 
g4-. \p r g2
c2 (bes4 g
e-.) e (f-.) f
(fis-.) fis (g-.) g 
(c) r bes2 \p 
(c e
f2. ) f4--
f2. f4--
f2 \< fis2 
g g \bar"||"
\key c \major 
e2. \mf (f4) 
f2. (e4) 
e2 d8-- f4-. f8
~f2. (e4) 
e2 d8-- f4-. f8
~f2. e4 
(g1) 
~g4 e4-. bes8 (g e4
d4-.) r d8 (dis e4 ) 
f8 (d e f g f a4) 
g1
~g4 r8 g8 ( e' c a as )
g4-. g8 (e f g a4) 
b2 \< (c8 d dis e\!
e1
e1)
d4-. d4 (~d8 a c4 )
b8-- c4-. d8 (e c a as
g1) 
~g4 r a'2-- \f 
b1
~b4 r b8 (g a b) 
c1
~c1 
~c4 g8-- e4-. g8-- a4-.
c4.-> c8-^ r2
\bar"|."
}}
 
