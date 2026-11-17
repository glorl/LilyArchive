#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 

OpeningZwei = {\new Voice \relative c' {
\time 2/2
\key f \major
\compressEmptyMeasures
r1 
c2\f a'2
c4-. c-. c8-- c4-. c8-^
r1 \bar"||"
c,4-.\mf cis-. d-. r
c!4-. cis8-- d8-. r4 c4-. 
d4-. d-. d-. r 
c4-. c8-- c-. r4 c4-. 
c4-. cis-. d-. r 
c!4-. c8-- c-. r4 c4-. 
c4-. c-. c2
c2 ~c8 r c4-.
d4-. dis-. e-. r 
c4-. c8-- c-. r4 c4-. 
d4-. d-. d-. r 
c4-. c8-- c8-. r4 c4-. 
d-. d-. d-. r 
e4-. e8-- e-. r4 e4-. 
a,4-. a-.  c2 
~c2 ~c8 r g'4-- \mf \bar"||"
c2. f4-- 
c4-. c2 c4-. 
f2 f8-- f4-. f8
~f2 r4 c4--
c4. c8 ~(c4 a)
f'4-. f2 (c4) 
bes1
~bes4 c,4 ~c8 r g'4--
d'2. d4-- 
e4-. bes2 bes4-. 
bes1
(a4) r r g4-- 
bes4. d8~(d4 bes)
e2 c4 (e) 
c1
~c4 r r2 \bar"||"
a2.\mp f4-.
r f4-. f2
f4-- f-. r g4-. 
r f4 ~f r 
a4-- a4-. r f-. 
r f4-. f2
c4-. r c2
bes2 c4-. e-. 
d-- d-. r g4-. 
r e4-. e2 
f4-- f-. r f4-. 
r f4-. f2 
f4-- f-. r f-. 
r g4-. g2
f g4-. e-. 
f-. r g2-- \mf \bar"||"
c2. f4-- 
c4-. c2 c4-- 
f2 f8-- f4-. f8--
~f2 r4 g,
c4. c8 ~(c4 a4) 
f'4-. f2 c4--
bes1
~bes4 r r g4-- 
d'2. d4-- 
e4-. bes2 bes4-. 
bes1
(a4) r4 r g4-- 
bes4. d8~(d4 bes)
e2 c4 (e) 
c1
~c4 r a2-- \mf \bar"||"\key g \major
b2. (g4) 
b4 (g2.) 
d4 (g2 b4) 
c2 (a4-.) c4-. 
e2. (c4) 
b4 (g2.) 
b4-^ c-^ c8-- d4-. c8-^
r4 c (d b) 
e2. (c4) 
a2. (c4) 
g4 (c2.) 
~c4 g (a b) 
c2 (a4-.) c-. 
c4 (a2 c4) 
d2. (c8 a)
fis4 r d'8 \<(e f fis)  \bar"||"
d4-^^\markup{unisono} \f fis8-- e4-. d8-- b4-. 
e8 (d b) r bes (a g) r 
b,!4 (g b) a'8 (g) 
c (b e d~ d fis g a) 
r4 es4 ~es c8 (a) 
g (b, es d ~d2) 
r4 c8 (b es4 d) 
fis8-- a4-. c-. e!8-- fis4-. 
e2 \glissando c4-. c4-. 
c8 (e c a e' es d c) 
b8-- d4-. dis8-- e (fis g a) 
b4-^ g,,2-^ gis4
(a4->) dis8-- e4-. gis8-- a4-. 
c4 (d8 e c d e fis)
g8-- e4-. es8-- d8-- b4-. bes8-- 
e,4-. r a2--\mf \bar"||"
d2. (b4) 
b2 \glissando g4-- b4-. 
r e,4-- g-. b-. 
c2 a8-- c4-. dis8-- 
e2. (c4) 
b2 (c4 b 
~b8) r r4 r2
r4 c4-. b8 (c d f) 
e2. (c4)
c4 (a2 c4) 
g4 (b2.
~b8) r g4 (a b) 
c2 a8-- c4-. d8--
c4 (a2 c4) 
d1
~d4 r bes2-- \f \bar"||"
d2 des8-- c4-. b8-- 
a4-. b2 g8 (a) 
a8-- c4-. c-. d-. e8-- 
a,2 r4 c4--
e2 c8-- c4-. a8-- 
g4-. fis ~fis fis8 (g) 
a4 r a r 
d2. r4 
r4 e8 (fis g4-.) c,8 (d
d4-.) g,4-. b8-- bes4-. a8 
~a2 r4 c,4--
d8 \< (e fis g a b c d
e fis g a b a g fis 
d4\!) r r es4->\ff 
(d4-.) bes-> (a-.) es->
(d) r d'-^ r
\bar"|."
} }
 
