#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 

OpeningDrei = {\new Voice \relative c' {
\time 2/2
\key f \major
\compressEmptyMeasures
r1 
a2\f f'2
f4-. f-. f8-- f4-. f8-^
r1 \bar"||"
a,4-.\mf a-. a-. r
a4-. a8-- a8-. r4 a4-. 
bes4-. bes-. bes-. r 
a4-. a8-- bes-. r4 bes4-. 
a4-. a-. a-. r 
a4-. a8-- a-. r4 a4-. 
bes4-. bes-. bes'8--^\markup{Solo} c4-. d8-- 
e4-. c8 (bes ~bes8) r bes,4-.
bes4-. bes-. bes-. r 
bes4-. bes8-- bes-. r4 bes4-. 
bes4-. bes-. bes-. r 
a4-. a8-- bes8-. r4 bes4-. 
bes-. bes-. bes-. r 
bes4-. bes8-- c-. r4 c4-. 
c4-. c-. c'8 ^\markup{Solo} (d) e-. f-. 
g4-. r r e,4-- \mf \bar"||"
a2. a4-- 
a4-. a2 a4-. 
bes2 bes8-- bes4-. a8
~a2 r4 e4--
a4. a8 ~(a4 c)
a4-. a2. 
g1
~g4 r r e4--
bes'2. bes4-- 
bes4-. g2 g4-. 
f1
~f4 r r e4-- 
f4. bes8~(bes4 d)
c2 bes2
a1
~a4 r r2 \bar"||"
f2.\mp c4-.
r c4-. c2
d4-- d-. r d4-. 
r f4 ~f r 
f4-- f4-. r c-. 
r c4-. c2
bes4-. r c2
bes2 bes4-. bes-. 
bes-- bes-. r d4-. 
r e4-. e2 
d4-- d-. r d4-. 
r c4-. c2 
d4-- d-. r d-. 
r e4-. e2
c e4-. c-. 
c-. r e2-- \mf \bar"||"
a2. a4-- 
a4-. a2 a4-- 
bes2 bes8-- bes4-. a8--
~a2 r4 e
a4. a8 ~(a4 c4) 
a4-. a2 a4--
g1
~g4 r r e4-- 
bes'2. bes4-- 
bes4-. g2 g4-. 
f1
~f4 r4 r e4-- 
f4. bes8~(bes4 d)
c2 bes
a1
~a4 r fis2-- \mf \bar"||"\key g \major
g2. (b4) 
g4 (d2.) 
b4 (d2 g4) 
c2 (e,4-.) c'4-. 
c2. (a4) 
g4 (b2.) 
g4-^ gis-^ a8-- bes4-. a8-^
r4 a (b d) 
c2. (e4) 
c2. (a4) 
d,4 (g2.) 
~g4 d (e g) 
g2 (e4-.) g-. 
a4 (fis2 a4) 
b2. (a8 c)
a4 r d,8 \<(e f fis)  \bar"||"
b4-^^\markup{unisono} \f fis8-- e4-. d8-- b4-. 
e8 (d b) r bes' (a g) r 
g,4 (b!~b) a8 (g) 
c (b e d~ d fis g a) 
r4 es4 ~es c8 (a) 
g' (b, es b ~b2) 
r4 c8 (b es4 d) 
fis,8-- a4-. c-. e!8-- fis4-. 
c'2 \glissando fis,4-. a4-. 
a8 (e c a e' es d c) 
b8-- d4-. dis8-- e (fis g a) 
d4-^ g,,2-^ gis4
(a4->) dis8-- e4-. gis8-- a4-. 
a4 (d,8 e a b c d)
b8-- g4-. a8-- g8-- e4-. es8-- 
d4-. r fis2--\mf \bar"||"
b2. (d4) 
g,2 \glissando e4-- g4-. 
r d4-- e-. g-. 
a2 g8-- a4-. c8-- 
c2. (a4) 
g2 (a4 g 
~g8) r r4 r2
r4 a4-. g8 (a b d) 
c2. (e4)
a,4 (fis2 a4) 
e4 (g2.
~g8) r e4 (g gis) 
g!2 g8-- a4-. b8--
a4 (fis2 a4) 
b1
~b4 r fis2-- \f \bar"||"
b2 g8-- fis4-. e8-- 
g4-. g2 e8 (g) 
fis8-- a4-. a-. b-. c8-- 
fis,2 r4 a4--
c2 a8-- a4-. fis8-- 
e4-. d ~d d8 (e) 
e4 r c r 
g'2. r4 
r2 r4 g8 (a
b4-.) e,4-. g8-- g4-. fis8 
~fis2 r4 a,4--
a8 \< (b c d e fis g a
b c d e fis e d c
b4\!) r r c4->\ff 
(b4-.) g-> (fis-.) c->
(b) r b'-^ r
\bar"|."
} }
 
