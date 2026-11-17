#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 

OpeningBass = {\new Voice \relative c {
\time 2/2
\key f \major
\compressEmptyMeasures
f4-. \f a-. c8-- d4-. c8--
f2 c2 
f,4-. f-. f8-- f4-. f8-^
r1 \bar"||"
f4-.--\mf r f4-.-- c'-.--
f,4-.-- r c'-.-- r 
bes4_\markup{\italic simile} r f4 bes 
f a d8-- des4-. c8--
f,4 r f c' 
f,4 r c' r 
c4 bes a g 
c4 bes a c 
g4 r g d' 
c r g r 
bes4 r f bes 
f4 r c' r 
bes4 r f bes 
c4 r g r 
f a c d 
c8.^\markup{Solo} b16 (bes4) a g\mf \bar"||"
f4 r8 c'8 (f,4-.) c'4
f,4 r c' r 
bes4 r8 bes8 (f4-.) bes4
f4 a d8-- des4-. c8--
f,4 r f c' 
f,4 r c' r 
c4 bes g8-- ^\markup{Solo} bes4-. d8-- 
g4 e8-- d4-. des8-- c4
g4 r8 d'8 (g,4-.) d'4
c4 r g r 
bes4 f g bes 
c f e8 (d) c4
bes4 r f bes 
c4 bes g c 
f,4 a d8-- c4-. a8-- 
f4 r r2 \bar"||"
f4 \mp r c'4 r 
f, r a c 
bes r g d'
f, a d8-- c4-. a8--
f4 r c' a 
f r f a
c8--^\markup{Solo} e4-. c8-- bes4 (g) 
e'4 d8 (des) c4 r 
g r bes d 
c r g c 
bes r f bes 
f r c' a 
bes r f bes 
c r c g
f a c g
f r c'2-- \mf \bar"||"
f,4 r8 c' (f,4-.) c'4-. 
f,4 r c' r 
bes4 r8 bes8 (f4-.) bes 
f4 a d8-- des4-. c8--
f,4 r f c'
f, r c' r 
c4 bes g8--^\markup{Solo} bes4-. d8-- 
g4 e8-- d4-. des8-- c4-. 
g4 r8 d' (g,4-.) d'4
c4 r g r 
bes4 r8 bes (f4-.) bes4
f4^\markup{Solo} c'8-. e-. d8 (des c4) 
bes4 r f bes 
c bes g c
f, a d8-- c4-. a8--
f4-. r d'2-- \mf \bar"||"\key g \major
g,4 r8 d' (g,4-.) d'
g,4 r g d'
g, r8 d'8 (g,4-.) b 
a4 c e c 
a4 r8 e' (a,4-.) r 
g4 r d' g, 
g4-^ gis-^ a8-- bes4-. d8-^
r4 d (b gis) 
a4 r8 e'8 (a,4-.) r 
d4 c a d 
g,4 r8 e'8 (d4) g,
g4 d' (a g) 
a4 r8 e'8 (a,4) r 
d4 r a d
g, r8 a8 (b4) c 
d4 r d8 \<(c b a)  \bar"||"
g4-^^\markup{unisono} \f fis'8-- e4-. d8-- b4-. 
e8 (d b) r bes (a g) r 
e'4 (d~d) a8 (g) 
c (b e d~ d fis g a) 
r4 es4 ~es c8 (a) 
g (b es e ~e2) 
r4 c8 (b es4 d) 
fis,8-- a4-. c-. e!8-- fis4-. 
a2 \glissando d,4-. e4-. 
fis8 (e c a e' es d c) 
b8-- d4-. dis8-- e (fis g a) 
b4-^ g,2-^ gis4
(a4->) dis8-- e4-. gis8-- a4-. 
fis4 (d8 e fis g a bes)
g8-- e4-. es8-- d8-- b4-. bes8-- 
g4-. r d'2--\mf \bar"||"
g,4 r8 d'8 (g,4-.) d'
g, b d b 
g r8 d'8 (g,4-.) d'
a4 c e c 
a r8 e8 (a4-.) c
g b d b 
g b fis'8^\markup{Solo} (e es4) 
d4 r d b 
a r8 e'8 (a,4-.) e'
d e d a 
g r8 b8 (e4-.) d 
g,4 b a gis 
a r8 e'8 (a,4-.) r
d d a d
g, b g'8 ^\markup{Solo} (b bes a) 
g8-- e4-. es8-- d2-- \f \bar"||"
g,4 r8 b (d4-.) b 
c d e g,
d' r8 c (b4-.) a
d c b a 
c r8 e (d4-.) a
g d' a d 
a r a r 
g b e d
g, a d e 
g, d' e g, 
d' a fis a 
d\< r a r 
g r d' r 
g,\! r r as'->\ff 
(g4-.) es-> (d-.) as->
(g) r g-^ r
\bar"|."
} }
 
