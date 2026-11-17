#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))

scoop = \once \override NoteHead.stencil = #scoop-stencil 

#(define (gliss-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-1.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -2.2 -2 -3 -0.0))))))
gliss = \once \override NoteHead.stencil = #gliss-stencil 

GershwinSongsEins = {\new Voice \relative c''' {
\time 2/2
\key g \major
\compressEmptyMeasures
% \override Glissando.style =.trill
g2^\markup{Swing (\bold{S'Wonderful})}\f g8-- g8-. r g-.
r8 g4.->~g4 g-.
g2 g8 (e es-- d-.) 
R1*1\bar "||"
d4---.\mf d8-- b ~b2 
r4 r8 b, (d e g b) 
d4---. d8-- b ~b4. a8
(gis8 f e d~d4) r 
r8 d'4. (~d8 b d4) 
b2 (~b8 a d, dis 
e4-.) g2 b8 (d) 
e8 (b bes a~a4) r 
d8-- d4-. b8~b2 
r4 r8 fis'8 (g e d b) 
d4---. d8 (b~b c cis d) 
r4 r8 f (fis d b d) 
c2\glissando b
r8 d4. b4 (d,8 dis 
e4-.) g2 bes8 (a) 
g4\glissando d8-- g r4 g'4->\f \bar"||"
fis4.-> fis8->~fis4. fis8->
r8 cis4.-> fis8 (eis fis g
gis8 b gis fis~fis2) 
cis2 cis8 (e gis4) 
fis4-- dis8-- b ~b dis8-- fis4--
cis2 fis8-- bes4-. as16 (g
fis4.) e8~e2 
e8-- e4-. es8~es2 \bar"||"
d,4-.\mf d2 d4-.
r4 d2 d4-. 
e4-. e2 e4-. 
r4 e2 e4-. 
e4-. e2 e4-. 
r4 fis-. r e-. 
d4 r8 g'8_\markup{break} (bes4 \tuplet 3/2{g8 e d}
e8--) g4-. a16 (b d8 bes a e)  \bar"||"
\tuplet 3/2{g8( [a g]} e8 d b ais b d)
a'8-. g4 r8 r g (b c) 
d4.\glissando gis,8 (fis) b (f4) 
d8 (b a gis ~gis2) 
r8 e'4. (a8 c a gis
a8 fis e d~d4.) d,16 (dis
e8 g e d b4 d8 e 
g8 a b c~c e es4) 
d4-. d8 b~b4. d8
e8 ( g a ais b a g e 
g4-. g8 e~e4.) a8-- 
bes8-- a4-. as-. g-. e8-- 
g4(\glissando c,~c8 d a4)
d8 (e fis a b d a as
g8 e \tuplet 3/2 {g8 [a ais]} b e, bes' a
g4) r_\markup{\italic{poco rit.}} r2\bar"||" \time 4/4 \key d \major 
f,8\mf^\markup{Slow (\bold{Summertime})} (d f e~e d \tuplet 3/2{b8 d e)}
fis!8 (d cis b g) e4-. f8
fis!1 
~fis1
~fis1
e'4~e8 r8 fis'4\mf\glissando d \bar"||"
fis1
~fis4 fis8 (d e fis d4) 
b2 (fis
~fis4) r fis'4 (d) 
d8-- d4.~d2
r4 d8 (b d b d4
cis1
~cis2) r8 fis4 (d8) 
fis8-- fis4-. fis8~fis2
r4 e8 (d e fis d4) 
b2 (fis
~fis2) r4 fis4-- 
a4 (fis8 a b4 d) 
fis8 (e4. d2) 
\acciaccatura d8 b1
~b1
~b4 r r2
r4 ais'8 \mf (b) eis, (fis) \tuplet 3/2 {cis (e eis)} \bar"||"
fis4^\markup{Bossa (binär)} \tuplet 3/2 {fis8 (d b) } e8 cis' ais fis
~fis4 r8 e16 (d e fis e cis g8 b
~b4) cis16 (d e eis fis8) fis,~fis4 
~fis2 r8 b8-- fis'-- fis-- 
e4\prall e16 ( g a b d2) 
r4 d8 (b ais b d, e
cis4 b8 ais d) cis~cis4
r4 r8 fis8 cis'4(~cis16 bes fis e) 
fis8 (\scoop fis~fis d cis fis cis fis,
~fis4) b8 (ais) d (cis ) fis (ais) 
b4 b8 (d \tuplet 3/2 {ais8 b cis} e,16 eis fis g
fis2) r4 r8 eis16 (fis 
a!8) a4-- fis16 (a b d b a b a fis f
e4~e16 es d cis d4 b8 a) 
b8 (b4.~ b8 b16 f' fis8 b16 d 
b4) r r2 \bar"||"
b,2^\markup{Slow (ternär)}\p (ais) 
b2 (ais) 
fis2 (e) 
d2 ais'4 (gis) 
g!4~ (\tuplet 3/2{g8 a ais } b4~\tuplet 3/2{b8 c cis}
d4) g,(fis f) 
fis8 (cis fis f e cis gis' g ) 
fis2 r8 dis'4 (ais8) 
d2 (e) 
d2 (ais) 
fis2 ( e) 
d8 (b d b ais4) d-- 
fis4 d8 (fis fis4 b ) 
b1 
fis2._\markup{\italic{poco rit.}} fis4 
fis1\fermata \breathe \bar"||"
eis8^\markup{\italic {Cadenza ad lib.}} \mf (fis) ais (b) d (cis) eis (fis)
\tuplet 7/8{ gis16\< (ais b ais b c cis } d4.\!) \fermata b8 (
cis16 d e d cis b a g eis fis g fis e d cis b
a g fis e d cis b ais \tuplet 5/4 {b8 bes a as g}
fis2)\fermata\breathe eis4--_\markup{\italic{cresc. e accelerando}} fis 
\tuplet 3/2{ b8 (ais b)} \tuplet 3/2{ d (cis d)} \tuplet 3/2{ e (d cis)}\tuplet 3/2{ fis (e d)}
e16 (fis g ais \tuplet 5/4{b8 [c d e eis]}
fis8 b ~b4 bes16 a as g) 
fis4\fermata \breathe fis,4--\mf 
a4 (fis8 a b4 d) 
fis8 (e4.) d2 
b1\> ~
b2.\pp\fermata r4 \bar"||"\key g \major \time 2/2
b2.->^\markup{Vivo (\bold{Oh Lady Be Good})} b4-^
bes2.-> bes4-^
a2-> as4-^ g-^
fis4-^ r r2\bar"||"
d'2\mf b8 (c cis d
~d2) r4 r8 b8 
(d b g d~d2) 
r8 e'4. (\afterGrace{e2}{fis16 e}
\tuplet 3/2{d4 cis a} d,2) 
r2 b'8 (bes a g
~g2) e8 (d e g)
r4 b8-- c r b (c cis) 
d2 d8 (b c d
~d2) r8 c (cis4) 
d8 (b g d~d2) 
r4 e'8 (d e4. es8 )
d8 (c a d,~d2) 
r8 e (g bes~bes4.) a8 (
g8 e a g) a4-- ais8-- b-.
r4 c8 \<(d e fis g gis) \bar"||"\key c \major 
a2\f\segno a8-- a-. r a-.
r8 a4.-> c8-- a-. r gis--
a8-- g!4-. a8-- g2-- 
r4 g,8\< (a b c d dis) 
e4.->\! e8-> ~e4. e8-> 
~e4 e-. r8 d8-- e4-. 
e8 (a e d ~d2) 
r4 e (f fis )
g2 f!4( e) 
g4. g8~g4. g8-.
r8 e ( c g ~g2
~g4) r a'2
\tuplet 3/2{ g4-- f-- d-- } g,2
~g2 e'8-. e4.-> \bar"||"
c4-._\markup{break}^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r8 a'8 (c a \tuplet 3/2{g8 [e es]}
d f as g d' b f a) \bar"||"
g4\glissando e8 (f e4 f8 fis 
g4. a16 c es4.) a,8
(g8 e c g~g a c d) 
e4 ( g8 gis a4 e8 f 
g8 f d f a, g4.) 
r8 a (c b  e es d c
~c a as g~g2) 
r4 e'8 (f~f a e f) 
g8 (c g ges f e a as
g8--) g4-. es8 (d c a as
g8 e c g ~g2) 
r8 e'4-. g8-- a4\glissando e8 a
(g8 f' d g,~g4.) dis'8 
(e8 a d, dis e g b, d 
c4 g8 a es' d c a 
c8 ) r r4 e8\< (f g gis)\! \bar"||"
 \cadenzaOn 
\stopStaff 
\once \override TextScript.word-space = #1.5
\once \override TextScript.X-offset = #0
\once \override TextScript.Y-offset = #1
| s1*1^\markup { \center-column { "D.S. al Coda" \line { \musicglyph #"scripts.coda" \musicglyph #"scripts.tenuto" \musicglyph #"scripts.coda" } } }  
| s1*1 \bar""
| s1*1 \bar""
\startStaff 
\cadenzaOff
\break
c,8 r c'2_\markup{Solo\dynamic f} \gliss c4 \bar"||"
e4-. es-. c8-- g4-. a8-- 
\tuplet 3/2{d4-- a-- as--} g8 (f d f) 
a8 (d a as g b dis e) 
c4.-> c8-^ r2 \bar"|."
}}
 
