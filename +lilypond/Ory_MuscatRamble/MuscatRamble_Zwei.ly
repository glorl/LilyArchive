MuscatRambleZwei = {\new Voice \relative c'' {
\time 2/2
\key f \major
\compressEmptyMeasures
c4.-> \f c8-^ r2 
c4.->  c8-^ r2 
d4.-> d8-^ r2 
e4-^ r r2 \bar"||"
c8 \segno \mf (a c c ~c a c c)
c8 (bes c c ~c4) r
c8 (bes c c ~c bes c c)
c8 (a c c ~c4) r
c8 (a c c ~c a c c)
c8 (bes c c ~c4) r
g1
(e4) e2.->
c'8 (a c c ~c a c c)
c8 (bes c c ~c4) r
c8 (bes c c ~c bes c c)
c8 (a c c ~c4) r
c2\f c 
d4 (a8 b ~b) e4.->
f4 (f d bes)
c8 (c d c~ c) c8-- c (cis)\bar"||"
b4-^ r b-^ r 
c4-^ r d-^ r 
c2-- c-- 
f,2 b
d4-- c8-- c ~c2
r4 dis8 ( e~ e d bes bes) 
a4-- a8-- a ~a2 
r8 f'4-. e8-- d (d c4) 
b4-^ r b-^ r 
bes2 (c4 e) 
c2 c 
r8 c4-. c8-- b-- b-- bes4 
a8-- a4-. a8-- c (a c4) 
d4 (d8 bes ~bes2)
d8-- d4-. d8 (d4 e4) 
f2. ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r4 \bar"||"
f,4--\mp f-. r f
r g2 g4
g4-- g-. r e
r f2 f4
f4-- f-. r f 
r e2 e4 
e4-- e-. r e 
r e2 e4
f4-- f-. r f 
r e2 e4
e4-- e-. r e 
f2. r4
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
c'2.^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } r4 \bar"||"
\key bes \major 
d2.-> \f d4-^
cis2.-> cis4-^
c!2-> b4-^ bes4-^
a4-^ r r2
\repeat volta 2{
bes2.--^\markup{Barcarole / J. Offenbach} _\markup{\dynamic p - \dynamic mf} bes4-- 
bes2.-- bes4-- 
a2-- a4-- c8-- c
~c2. a4-- 
a2 (a4 ) c8-- c
~c2.  a4-- }
\alternative{{
bes1
r1}
{
bes1}}
r1 
\repeat volta 2{
d2.--\p \< d4--
d2.-- d4--
c2. (es4) 
es2.-- es4--\! 
es2.--\> es4--
es2.-- es4--
d1\! ~ 
}
\alternative{{
d4 r r2}
{
d4 r r2 \bar"||"}}
d2. \mf (d4
d2. d4 ) 
d2 (es) 
e (f)  
r8 d4.-> bes4-. bes-. 
d2 d
es1
r8 bes4-.\> g8-- fis4-. f-. 
e4-. \p r e2
g2 g
(e4-.) e (f-.) f
(fis-.) fis (g-.) g 
(g) r g2 \p 
g bes
c2. c4--
b2. b4--
c2 \< c2 
d2 dis \bar"||"
\key c \major 
c2.-- \mf c4--
c2.-- c4--
b2 b8-- d4-. d8
~d2. d4-- 
b2 b8-- d4-. d8
~d2. e4 
cis1
~cis4 cis4-. bes8 (g e4
d4-.) r d8 (dis e4 ) 
f8 (d e f g f a4) 
g4 (g ges f  
e4) r8 g8 ( e' c a as )
g4-. g8 (e f g a4) 
b2 \< (c8 d dis cis\!
~cis1
~cis4) cis4-. bes8 (g e4
f4-.) d'4 (~d8 a c4 )
b8-- c4-. d8 (e c a as
e4) g (ges f 
e4) r es'2-- \f 
f1
~f4 r f4-. f-. 
e1 
(f1
e4) g,8-- e4-. g8-- a4-.
e'4.-> e8-^ r2
\bar"|."
}}
 
