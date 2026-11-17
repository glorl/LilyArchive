#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 

OpeningVier = {\new Voice \relative c {
\time 2/2
\key f \major
\compressEmptyMeasures
f4-.\f a-. c8-- d4-. c8-- 
f,4-. a-. c8-- d4-. c8-- 
c4-. c-. c8-- c4-. c8-^
r1 \bar"||"
f,4-.\mf f-. f-. r
f4-. f8-- f8-. r4 f4-. 
f4-. fis-. g-. r 
f!4-. f8-- g-. r4 g4-. 
f4-. f-. f-. r 
f4-. f8-- f-. r4 f4-. 
g4-. g-. g'8--^\markup{Solo} a4-. bes8-- 
c4-. a8 (g ~g8) r g,4-.
g4-. g-. g-. r 
g4-. g8-- g-. r4 g4-. 
f4-. fis-. g-. r 
f!4-. f8-- g8-. r4 g4-. 
f-. fis-. g-. r 
g4-. g8-- bes-. r4 bes4-. 
f'4-. f-. a8 ^\markup{Solo} (bes) c-. d-. 
e4-. r r bes,4-- \mf \bar"||"
f'2. c4-- 
f4-. f2 f4-. 
d2 d8-- des4-. c8
~c2 r4 bes4--
f'4. f8 ~(f4 f)
c4-. c2 (f4) 
c1
~c4 r r bes4--
g'2. g4-- 
c,4-. c2 c4-. 
\afterGrace d1( {e16 d16}
c4) r r bes4-- 
d4. f8~(f4 f)
bes2 g4 (c,)
f1
~f4 r r2 \bar"||"
c2.\mp a4-.
r a4-. a2
bes4-- bes-. r bes4-. 
r c4 ~c2
c4-- c4-. r a-. 
r a4-. a2
g4-. r c2
bes2 g4-. g-. 
g-- g-. r bes4-. 
r g4-. g2 
bes4-- bes-. r bes4-. 
r a4-. a2 
bes4-- bes-. r bes-. 
r bes4-. bes2
a bes4-. bes-. 
f'-. r bes,2-- \mf \bar"||"
f'2. c4-- 
f4-. f2 f4-- 
d2 d8-- des4-. c8--
~c2 r4 bes
f'4. f8 ~(f4 f4) 
c4-. c2 f4--
c1
~c4 r r bes4-- 
g'2. g4-- 
c,4-. c2 c4-. 
\afterGrace d1 ({e16 d}
c4) r4 r bes4-- 
f'4. f8~(f4 f)
bes2 g4 (c,) 
f1
~f4 r c2-- \mf \bar"||"\key g \major
d1 
d4 (b2.) 
g4 (b2 d4) 
e2 (c4-.) e4-. 
g2. (d4) 
e4 (d2.) 
d4-^ dis-^ e8-- f4-. dis8-^
r4 d (e f) 
g2. (a4) 
fis2. fis4--
b,4 (d2.) 
~d4 b (c d) 
e2 (g4-.) a-. 
d,4 (c2 d4) 
g2. (e8 es)
c4 r d8 \<(e f fis)  \bar"||"
e4-^^\markup{unisono} \f fis8-- e4-. d8-- b4-. 
e8 (d b) r bes (a g) r 
g2~g4 a8 (g) 
c (b e d~ d fis g a) 
r4 es4 ~es c8 (a) 
g (b es e, ~e2) 
r4 c'8 (b es4 d) 
fis,8-- a4-. c-. e!8-- fis4-. 
g2 \glissando d4-. fis4-. 
e4-- (c8 a e' es d c) 
b8-- d4-. dis8-- e (fis g a) 
e4-^ g,2-^ gis4
(a4->) dis8-- e4-. gis8-- a4-. 
e4 (d8 e fis g a bes)
e,8-- d4-. fis8-- e8-- d4-. bes8-- 
b!4-. r c2--\mf \bar"||"
e2. (g4) 
d2 d4-- e4-. 
r b4-- d-. e-. 
g2 e8-- g4-. a8-- 
a2. (e4) 
d2 (fis4 e 
~e8) r r4 r2
r4 fis4-. g8 (a b4--) 
g2. (a4)
e4 (d2 fis4) 
d4 (e2.
~e8) r d4 (e f) 
e2 e8-- g4-. gis8--
fis4 (c2 d4) 
e1
~e4 r c2-- \f \bar"||"
g'2 e8-- es4-. d8-- 
c4-. d2 d8 (e) 
c8-- fis4-. d-. e-. fis8-- 
d2 r4 g4--
g2 d8-- fis4-. e8-- 
d4-. c ~c c8 (d) 
g,4 r c r 
e2. r4 
r2 r4 e8 (fis
e4-.) d4-. e8-- e4-. d8 
~d2 r4 a4--
fis8 \< (g a b c d e fis
g a b c d c b a
g4\!) r r as4->\ff 
(g4-.) es-> (d-.) as->
(g) r e'-^ r
\bar"|."
} }
 
