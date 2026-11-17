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

MontiDrei={\new Voice \relative c'{
\time 2/2
\key f \major
f4\f ^\markup{Vivo} r d r 
bes4-^ d2.\bar"||"
cis4 r r2\fermata \bar"||" 
f2^\markup{Lento} d
cis4 r r2 
a4---.\mp a---. d---. r
a4---. bes---. d8-- d ~d4
e,4---. g---. a---. r
a4---. g---. a---. r \bar"||"
a8-- a4-. a8-- a4 r 
a4-- d-.-- d---. r
e,4-- g---. a-- g---.
f4-- g---. a2 
g4--\f g---. bes-- c---.
bes4-- bes---. bes-- bes---.
c2 c4-- c-.--
c4.\< gis'8 (a) bes (c) e16 (f
e4\mf ) r r cis,-- \mp
e4. f8 (g) gis (a) e (
f4) d---. cis-- cis---. 
a4. g'8 (f) cis (d4) 
bes1
bes4 r4 r4 d
f1
d4-- d4-. a-- a-.
cis4-- cis-. cis-- cis 
cis4-- cis-. e-. r 
f,4-- f-. e-- e-. 
f4--\> g-. a-- \!r \bar"||"
a4-^\f^\markup{Vivace (\bold{Satz 2})} r r a-^
g4-^ r r f4-^ \bar"||"
d'8^\markup{Solo}\mf  (e f e d e f e) 
d8-- f4-. a-. cis8-- d4-.
f8 (a f e ~e d f e~
e2) r 
g,8 (a bes a g a bes a) 
g4-- bes-. d8-- bes4-. a16 (g) 
f8 (g a g f g a g ) 
f8 (g gis a~a4) r 
d4-. a,2-- cis4-. 
r4 cis4-. cis-. cis-. 
a4-. a2-- a4-. 
r4 a r a 
bes4 r r d4
bes4 r r bes 
a4 r r c4
~c4 r r c
r4 e4-. a,2--
a4-. cis2-- cis4-. 
r4 a-. a2-- 
a4-. r r d
d4.-> d8-> ~d4 d4-.
d4.-> d8-> ~d4 d4-.
d4.-> d8-> ~d4 d4-.
d4.-> d8-> ~d4 d4-.
a'8 (as g f d des bes a 
e'4-.) g-. e8-- e4-. g8-- 
f8 (a g f e es d e)
a4-^ r r2 \bar"||"\key d \major 
fis4.^\markup{Bossanova}\mf fis8-- fis8-- fis4-. g8-.
r8 g4.-> g4-. g-.
a4. a8-- ais8-- b4-. c8-- 
g4 r r2 \bar"||"
fis4. d8-- d-- d4-. c8-^ 
r8 c4.->  a4---. a---.
g4. g8-- a8-- g4-. b8-- 
g'1
cis,4.(g8) g4 (cis)
cis4.-- cis8-- cis-- cis4-. cis8-. 
r8 b4. a8 (bes a a) 
a2 r4 cis--
r4 d4 ~d4. c8
~c2 dis
r4 b2 b4
r4 d ~d8 d-- cis4-.
r4 a ~a a-.
b2 cis
b2 a8-- g4-. g8-- 
a4 r4 r2 
d4.-- d8-- d-- d4-. d8-. 
r8 c4.-- dis4-.-- dis-.--
b4.-- b8-- b-- dis4-. e8
r8 e4.-> e4-.-- e-.-- 
e4.-- e8-- e-- e4-. e8-. 
r8 cis4.-- cis4-.-- cis-.-- 
d4.-- fis8-- fis-- fis4-. fis8-. 
r8 fis4.-> fis4-.-- fis-.-- 
fis4. d8-- d-- d4-. c8
r8 c4.-- a4-.-- a-.-- 
g4. g8 e ( a g b
d4.) f16 (g \tuplet 3/2 {d4 f8\noBeam } \tuplet 3/2 {d8 f as) } 
a!4. \glissando fis!8 g (fis f fis) 
g8 (fis g fis e e d e) 
d4. (a8 a gis g4) 
a2. r4 \bar"||" \key f \major 
d4 \f^\markup{Swing} r d r 
d4 r e r \bar"||"
e4-.\mf e2-- e4-. 
r4 e4-. e2-- 
c4-. c2-- c4-. 
r4 c4-. c2-- 
cis4-. cis2-- cis4-. 
r4 cis4-. cis2-- 
d4-. d2-- d4-. 
r4 d4-. d2-- 
e4-. e2-- d4-. 
r4 e4-. d2-- 
d4-. d2-- d4-. 
r4 a4-. a2-- 
cis4-. cis2-- cis4-. 
r4 e4-.\< g-. e-. \!
d8-- d'4-^ bes-^ a-^ f8--
e8-- d4 cis8-- d2 \bar"||"\key d \major 
d4-. d2-- d4-. 
r4 d4-. d2-- 
d4-. d2-- d4-. 
r4 d4-. d2-- 
a4-- a-. a-- a-. 
a4-- a2 a4-. 
d4-- d-. d-- d-. 
e4-- e2 d4-. 
r4 d4-. d2-- 
a4-. a2-- fis'4-. 
r4 b,4-. b2-- 
d4-. d2-- d4-. 
d4-^\f a2-^ a4-^ 
g'4-^ gis4-^ a4-^ g4-^
fis4-- fis-. r d
r4 d-. d-. d-. 
r4 d r d
r4 d-. d-. d-. 
r4 e r e
e4-- e-. r8 e-- e4-. 
r4 d r d
r4 d-. d-. d-. 
d4-. d2-- d4-.
d4-- d-. d-- d-. 
g8 \f (fis! g b) r8 g (g fis)
g8 (g f g b g b cis!
a4-.) r a,4->_\markup{\italic cresc.} (es') 
d4-> (g) a8 (d, dis e) 
a2--->\ff  bes--->
b2---> c---> 
b1-> ~
b8 cis,!-> (d4-.) d-^ r\bar"|."
} }
