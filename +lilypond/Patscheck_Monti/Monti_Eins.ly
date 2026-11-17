#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                    #:translate '(-0.2 . -0.5)
                    #:path 0.25 '((moveto 0 0)
                        (curveto -0.5 -1 -1.5 -1.5 -2 0))))))
%                         (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 

MontiEins={\new Voice \relative c''{
\time 2/2
\key f \major
    d4\f ^\markup{Vivo} r a r 
g4-^ bes2.\bar"||"
a4 \breathe \afterGrace{a,2.\fermata}{bes8._\markup{\italic {ad lib.}} (a16 gis16.[ a32 d16. cis32] f16. [e32 g16. a32]) \tuplet 6/4 {bes16 ([cis e f g a])}bes4\fermata \glissando cis,!4 } \bar"||" 
d2^\markup{Lento} bes 
a4 \breathe a,\mf \( \slashedGrace{c8(} bes4.) a8\) \bar"||"
a'2 \(~a8 f f g 
\grace{f16 (g} f8) e8 bes'2 ~bes8\) bes,
bes8  (a cis e g g f cis) 
e8 (d) d16 [(cis d e] f8) \breathe a, \noBeam \slashedGrace{c8\((} bes8) a\) \bar"||"
a'2 ~a8  f (f g)
\grace{f16 \((g} f8) e bes'2~bes8 \) bes,--
bes8 (a d cis) g'4. (e8) 
e8 (d4 cis8) d2
c!2\f ~( \tuplet 3/2 {c8 [e g]}\tuplet 3/2 {bes8 [c e])}
g8 (f e d) c \(bes4 gis16 a\)
bes4 \( a \slashedGrace{bes8(} a4) gis 
a1\) 
a,2\mf ~( \tuplet 3/2 {a8 [cis e]}\tuplet 3/2 {g8 [a cis])}
e8 (cis a'2 \glissando cis,4) 
e4 \(d \slashedGrace{e8(} d8) cis d e \) 
f2 r4 f4-- 
f8-- bes, ~bes4 ~bes2
~bes8 \noBeam e8 (f16 [e dis e] bes' [g dis e] \tuplet 3/2{g8 f e)}
e8 a, ~a4 ~a2
~a4. gis16 (a bes8 a c bes) 
bes8\prall (a a g g\prall f f e) 
a4. (e8) bes8 (a) \glissando e'4 
\(~e4. (d8) d4 cis\) 
d4 \>(\tuplet 3/2 { gis8 a cis} d4--\!) r \bar"||"
d,8--\f^\markup{Vivace (\bold{Satz 2})} d'4-. bes8 (~bes a g f) 
e8-- d4-. cis8 (d2) \bar"||"
d4-.\mf  d2-- d4-. 
r4 d-. d2-- 
d4-. d2-- d4-. 
r4 g-.  g2-- 
e4-. e2-- e4-. 
r4 e-. e2-- 
d4-. d2-- d4-. 
r4 d-. d-. f-. 
g4-. cis,2-- e4-. 
r4 e4-. e-. e-. 
d4-. d2-- d4-. 
r4 d r d 
e4 r r e4
e4 r r d 
c4 r r f4
f4 r r f 
r4 g4-. cis,2--
cis4-. e2-- e4-. 
r4 d-. d2-- 
d4-. r r f
g4.-> g8-> ~g4 g4-.
g4.-> g8-> ~g4 g4-. 
f4.-> f8-> ~f4 f4-.
f4.-> f8-> ~f4 f4-.
a8 (b cis d f e g a 
bes4-.) e,-. g8 cis,4-. e8-- 
d8 (f g gis a ais bes cis) 
d4-^ r r2 \bar"||"\key d \major 
d,4.^\markup{Bossanova}\mf d8-- d8-- d4-. es8-.
r8 es4.-> es4-. es-.
f4. f8-- fis8-- g4-. gis8-- 
a4 r r2 \bar"||"
d,4. a8-- a-- a4-. b8-^ 
r8 a4.->  g4---. fis---. 
fis4. e8-- dis8-- e4-. g8-- 
b1 
b4. \glissando cis,8 ~cis4 (e'4-.) 
e4. (g,8--) g-- g4-. a8-. 
r8 g4. fis8 (e d e) 
fis2 r4 a--
r4 a4 ~a4. a8
~a2 a 
% e'4. g,8-- g4-- g-. g8-. 
r4 g2 g4
r4 gis ~gis8 gis-- gis4-.
r4 fis ~fis fis-.
g2 g 
g fis8-- f4-. f8-- 
fis!4 r8 d'16 (e \tuplet 3/2{g8 [e g]} a16 ais b cis)
d2 \glissando a8 (gis a4) 
b4. (a8 g4 fis) 
fis\glissando b,8 e ~e dis4 e16 (g
b1) 
b4. \glissando cis,8 cis4 \glissando a'
cis4. (b8 a g4.) 
g4 (fis8\turn fis ~fis4 f8-- fis
~fis1) 
d4. a8-- a-- a4-. b8
r8 a4. g4 (fis) 
fis4. (e8 e dis e g
b4.) fis16 (g \tuplet 3/2 {as8 [b d] } \tuplet 3/2 {f8 as b) } 
d4. \glissando a8 b (a gis a) 
b2 a8 (\glissando cis, b cis) 
e4. (d8 d b cis4) 
d2. r4 \bar"||" \key f \major 
d'8--\f ^\markup{Swing} a4-. gis8-- (a f e d 
bes8 g bes b c4) r \bar"||"
c8 \mf (b c e g bes g e) 
c'8-- ces4-. bes-. g8-- e d 
c8 (d f d f g gis a) 
bes8 (a ~a4) r2
r4 r8 gis (a gis g f
e d cis  d e--) a,4-. cis8
d8 (f e a bes a f e 
~e2) r 
bes'8 (a  g bes a d, g a) 
bes8-- (des4-. ) c8 (c8) bes4.
a2 \glissando d,4 gis,8 (a
bes8 a f e d a~a4) 
r4 r8 a'8 (d cis d e
f \< g a bes a b c cis) \!
d8-- d4-^ bes-^ a-^ f8--
e8-- d4 cis8-- d2 \bar"||"\key d \major 
d8 \glissando d'4. ~d4. a16 (ais 
b8 fis e d~d2) 
r4 d8 (e fis e d e
fis8 a b d) r8 e4 f8
(fis!4 e8 dis e d b g 
fis8) e4. r2
g8 ( a b a~a ais b4) 
d2 (~d4 b8 a 
fis g a g fis e d b
a fis d a ~a4) r 
r4 e'4 gis8-- b4-. cis8-- 
d8 (b e d fis f e gis 
a4) r r2 
r1
d,8-- d'4-. b8 (a f fis a
e a es d ~d2) 
r4 d' \scoop d2 
fis8 (d b bes a e f fis
g8 fis e dis e b a g 
fis8) e4. r2
r4 g8 (e g a ais b
e d a' g a ais b d) 
r2 fis,8 (d f fis 
fis4\glissando a,8 b c cis d dis)
e8 \f (dis e g) r8 e (g a)
b8 (a gis a b a b cis 
d4-.) r a,,4->_\markup{\italic cresc.} (es') 
d4-> (g) a8 (d dis e) 
f2--->\ff  fis--->
g2---> gis---> 
a1-> ~
a8 cis,-> (d4-.) d,-^ r\bar"|."
} }
