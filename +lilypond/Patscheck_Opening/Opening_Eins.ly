#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 

OpeningEins = {\new Voice \relative c {
\time 2/2
\key f \major
\compressEmptyMeasures
% \override Glissando.style = #'trill
f4-.\f a-. c8-- d4-. c8--
f4-. a-. c8-- d4-. c8--
f4-. f-. f8-- f4-. f8-^
r2 c,2\f ^\markup{Solo}\bar"||"
a'2. a4--
f a2 a4-.
d2 d8-- des4-. c8
~c2 r4 c,4 
f4. f8~(f4 a)
c4-. c2 (f,4) 
e1
~e4 r r c--
bes'2. bes4--
g4-. e2 e4-.
\afterGrace d1 ({e16 d16}
c2) r4 c--
d4. f8 ~( f4 bes4)
g4-. g2 gis4--
a1
~a4 r4 c2 \mf \bar"||"
a'2. a4--
f4-. a2 a4-. 
d2 d8-- des4-. c8
~c2 r4 c,4--
f4. f8 ~(f4 a)
c4-. c2 (f,4) 
e1
~e4 r r c4--
bes'2. bes4-- 
g4-. e2 e4-. 
\afterGrace d1 ({e16 d16}
c2) r4 c4-- 
d4. f8~(f4 bes )
c2 e,4 (g) 
f1
~f4 r g8 ^\markup{break}_\markup{\dynamic mf - \dynamic f} (f d c \bar"||"
f4) r e8 (f g gis) 
a-- a4-. a8-- gis (a c4) 
d2 ~ d8 cis (d4) 
c!2 r4 c,4--
f8-- g4-. a-. bes-. b8-- 
c4-. c ~c8 a (f4) 
e1 
r2 c8 (g' fis g) 
bes2 bes8 (d bes4) 
g8-- c,4-. d-. g8-- e4-. 
d8 (g d des c--) a4-. d8
(c2) r4 c4--
d4 f8( bes d4-.) bes4
g4-- c,8 (d e g gis4) 
a8 (c a as g bes g ges
f4) r c2 \mf \bar"||"
a'2. a4-- 
f4-. a2 a4-- 
d2 d8-- des4-. c8--
~c2 r4 c,
f4. f8 ~(f4 a4) 
c4-. c2 (f,4) 
e1
e4 r r c4-- 
bes'2. bes4-- 
g4-. e2 e4-. 
\afterGrace d1 ({e16 d16}
c2) r4 c4-- 
d4. f8~(f4 bes )
c2 e,4 (g) 
f1
~f4 r d2-- \mf \bar"||"\key g \major
g2. (fis4) 
e4 (b2.) 
g4 (b2 d4) 
e2 (c4-.) e4-. 
g2. (fis4) 
e4 (d2.) 
d4-^ dis-^ e8-- f4-. fis8-^
r4 fis (g gis) 
a2. (g4) 
fis2. (e4) 
b4 (d2.) 
~d4 b (c d) 
e2 (c4-.) e-. 
fis4 (d2 fis4) 
g2. (e8 es)
d4 r d8 \<(e f fis)  \bar"||"
g4-^^\markup{unisono} \f fis8-- e4-. d8-- b4-. 
e8 (d b) r bes (a g) r 
e4 (d~d) a'8 (g) 
c(b e d~ d fis g a) 
r4 es4 ~es c8 (a) 
g (b, es d ~d2) 
r4 c8 (b es4 d) 
fis8-- a4-. c-. e!8-- fis4-. 
a2 \glissando c,4-. e4-. 
fis8 (e c a e' es d c) 
b8-- d4-. dis8-- e (fis g a) 
b4-^ g,,2-^ gis4
(a4->) dis8-- e4-. gis8-- a4-. 
fis'4 (d8 e fis g a bes)
g8-- e4-. es8-- d8-- b4-. as8-- 
g4-. r d'2--\mf \bar"||"
g2. (fis4) 
e2 \glissando b4-- d4-. 
r g,4-- b-. d-. 
e2 c8-- e4-. fis8-- 
g2. (fis4) 
e2 (es4 d 
~d8) r r4 r2
r4 dis4-. e8 (fis g gis) 
a2. (g4)
fis4 (c2 e4) 
b4 (d2.
~d8) r b4 (c d) 
e2 c8-- e4-. f8--
fis4 (d2 fis4) 
g1
~g4 r d2-- \f \bar"||"
b'2 bes8-- a4-. g8-- 
e4-. d2 b8 (c) 
d8-- e4-. fis-. g-. a8-- 
c,2 r4 e4--
c'2 fis,8-- e4-. c8-- 
b4-. a ~a a8 (b) 
c (d dis e fis g a ais) 
b2. b8( c
d4-.) g,8 (a b4-.) e,8 (fis
g4-.) b,4-. d8-- des4-. c8 
~c2 r4 e,4--
fis8 \< (g a b c d e fis
g a b c d c b a 
g4\!) r r as4->\ff 
(g4-.) es-> (d-.) as->
(g) r g'-^ r
\bar"|."
} }
 
