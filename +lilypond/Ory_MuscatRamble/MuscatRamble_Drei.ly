MuscatRambleDrei = {\new Voice \relative c'' {
\time 2/2
\key f \major
\compressEmptyMeasures
a4.-> \f a8-^ r2 
a4.->  a8-^ r2 
bes4.-> bes8-^ r2 
bes4-^ r r2 \bar"||"
a8 \segno \mf (a c a ~a a c a)
bes8 (bes c bes ~bes4) r
bes8 (bes c bes ~bes bes c bes)
a8 (a c c ~c4) r
a8 (a c a ~a a c a)
a8 (a c a ~a4) r
d,1
(c4) bes2.->
a'8 (a c a ~a a c a)
bes8 (bes c bes ~bes4) r
bes8 (bes c bes ~bes bes c bes)
a8 (a c a ~a4) r
fis2\f fis2 
bes4 (bes8 f ~f4) bes->
b4 (b bes g)
a8 (c d a~ a) c8-- c (cis)\bar"||"
g4-^ r a-^ r 
bes4-^ r bes-^ r 
a2-- a-- 
c,2 f
bes4-- bes8-- bes ~bes2
r4 b8 ( c~ c bes g g) 
f4-- f8-- f ~f2 
r8 c'4-. cis8-- c ( c a4) 
g4-^ r a-^ r 
g2 (e4 bes') 
a2 a 
r8 a4-. a8-- as-- as-- g4 
fis8-- fis4-. fis8-- a (fis a4) 
bes4 (a8 g ~g2)
bes8-- bes4-. b8 (bes4 bes4) 
a2. ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r4 \bar"||"
c,4--\mp c-. r c
r e2 e4
e4-- e-. r e
r c2 c4
c4-- c-. r c 
r c2 c4 
b4-- b-. r e 
r c2 c4
c4-- c-. r c 
r bes2 bes4
c4-- c-. r bes
c2. r4
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
a'2.^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } r4 \bar"||"
\key bes \major 
a2.-> \f a4-^
as2.-> as4-^
g2-> fis4-^ f4-^
es4-^ r r2
\repeat volta 2{
f2.^\markup{Barcarole / J. Offenbach} _\markup{\dynamic p - \dynamic mf} (g4) 
g2. (f4--) 
f2 (es4) g8-- g
~g2. f4-- 
f2 (es4 ) g8-- g
~g2.  f4-- }
\alternative{{
f1
r1}
{
f1}}
r1 
\repeat volta 2{
bes2.--\p \<bes4--
bes2.-- bes4--
a2.( c4) 
c2.-- c4--\! 
c2.--\> c4--
c2.-- c4--
bes1\! ~ 
}
\alternative{{
bes4 r r2}
{
bes4 r r2 \bar"||"}}
bes2.-- \mf bes4--
bes2.-- bes4--
bes2 (c) 
cis (d)  
r8 bes4.-> f4-. g-. 
bes2 (bes4 bes)
bes1
r8 g4-.\> es8-- c4-. b-. 
bes!4-. \p r bes2
e2 e
(c4-.) c (d-.) d
(dis-.) dis (e-.) e 
(e) r e2 \p 
e g
a2. a4-- 
gis2. gis4--
a2 \< a2 
b2 b \bar"||"
\key c \major 
g2.( \mf a4)
a2.( g4)
g2 f8-- a4-. a8
~a2. g4-- 
g2 f8-- a4-. a8
~a2. g4 
bes1
~bes4 bes4-. e,8 (cis bes4
f4-.) r d'8 (dis e4 ) 
f8 (d e f g f a4) 
e4 (e es d  
c4) r8 g'8 ( e' c a as )
g4-. g8 (e f g a4) 
b2 \< (c8 d dis e\!
~e1
~e4) g,4-. e8 (cis bes4
a4-.) d'4 (~d8 a c4 )
b8-- c4-. d8 (e c a as
g4) e (es d 
c4) r c'2-- \f 
d1
~d4 r d4-. d-. 
g,1 
(as1
g4) g8-- e4-. g8-- a!4-.
g4.-> g8-^ r2
\bar"|."
}}
 
