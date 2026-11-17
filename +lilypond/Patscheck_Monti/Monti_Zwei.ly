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

MontiZwei={\new Voice \relative c''{
\time 2/2
\key f \major
a4\f ^\markup{Vivo} r f r 
d4-^ e2.\bar"||"
e4 r r2\fermata \bar"||" 
a2^\markup{Lento} e 
e4 r r2 
a,4---.\mp d---. f---. r
b,4---. d---. f8-- e ~e4
g,4---. a---. cis---. r
b4---. a---. a---. r \bar"||"
d8-- d4-. d8-- d4 r 
d4-- e-.-- e---. r
g,4-- a---. cis-- cis---.
a4-- a---. d2 
bes4--\f bes---. e-- e---.
e4-- e---. e-- e---.
f2 f4-- f-.--
f4.\< b8 (c) e (f) g16 (gis
a4\mf ) r r e,-- \mp
g4. gis8 (a) b (cis) a (
a4) f---. e-- e---. 
d4. bes'8 (a) e (f4) 
d2 g,16^\markup{Solo} (bes d e \tuplet 6/4 {g16 [bes d e g a]}
bes8-.) r r4 r4 e,,
f4. gis,16^\markup{Solo} (a e f a d \tuplet 6/4{ f[a d f a c]}
d8) r f,,4-. d-- d-.
e4-- e-. e-- cis 
e4-- e-. g-. r 
a,4-- a-. a-- g-. 
d'4--\> cis-. d-- \!r \bar"||"
d4-^\f^\markup{Vivace (\bold{Satz 2})} r r d-^
bes4-^ r r d4-^ \bar"||"
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
e4 r r g4
e4 r r d 
c4 r r f4
f4 r r f 
% << { \voiceOne \override Stem.direction = #UP
a,8 (gis a cis) e-- g4 gis8
a8 (f' e g~g2) 
a4 (as8 g cis, d e d 
f2.) r4
bes8 (a g bes~bes a g a
bes4) d4-. bes8-- a ~a4 
a8 (g f a~a g f g
a c g f~f2)% }
% { \voiceTwo \override Stem.direction = #DOWN
% s4 g,4-. cis,2--
% cis4-- e2 e4-. 
% r4 d-. d2-- 
% d4-. s s f
% g4.-> g8-> ~g4 g4-.
% g4.-> g8-> ~g4 g4-. 
% f4.-> f8-> ~f4 f4-.
% f4.-> f8-> ~f4 f4-.}
% >> \oneVoice 
a,8 (b cis d f e g e
cis4-.) a-. cis8-- g4-. bes8-- 
a8 (f' g gis a ais bes gis)
f4-^ r r2 \bar"||"\key d \major 
a,4.^\markup{Bossanova}\mf a8-- a8-- a4-. bes8-.
r8 bes4.-> bes4-. bes-.
d4. d8-- dis8-- e4-. f8-- 
cis!4 r r2 \bar"||"
a4. fis8-- fis-- fis4-. e8-^ 
r8 fis4.->  dis4---. dis---.
b4. b8-- c8-- b4-. e8-- 
e4. g,16^\markup{Solo} (fis \tuplet 6/4 {e16 [g b d e g]}\tuplet 6/4 {b16 [d e g a ais])}
b8-- e,,4-- a,8-- a4 (g')
g4. (e8--) e-- e4-. e8-. 
r8 d4. d8 (cis b cis) 
d2 r4 fis--\pp
r4 fis4 ~fis4. e8
~e2 fis 
r4 e2 e4
r4 f ~f8 f-- e4-.
r4 d ~d d-.
e2 e
d2 d8-- cis4-. cis8-- 
d4 r4 r2 
fis4.-- fis8-- fis-- fis4-. fis8-. 
r8 fis4.-- fis4-.-- fis-.--
e4.-- e8-- e-- fis4-. g8
r8 e4.-> e4-.-- e-.-- 
g4.-- g8-- g-- g4-. g8-. 
r8 e4.-> e4-.-- e-.-- 
g4.-- a8-- a-- a4-. a8-. 
r8 a4.-- a4-.-- a-.-- 
a4. fis8-- fis-- fis4-. e8
r8 fis4.-- dis4-.-- dis-.-- 
b4. b8 b ( c b e
f4.) f16 (g \tuplet 3/2 {as4 as8\noBeam } \tuplet 3/2 {b8 d f) } 
fis!4. \glissando d8 e (d d d) 
e2 cis8 ( g f g) 
g4. (fis!8 fis f e4) 
fis!2. r4 \bar"||" \key f \major 
f4 \f^\markup{Swing} r f r 
e4 r g r \bar"||"
g4--\mf g2 g4-. 
r4 g4-. g2-- 
f4-. f2-- f4-. 
r4 f4-. f2-- 
e4-. e2-- e4-. 
r4 e4-. e2-- 
f4-. f2-- f4-. 
r4 f4-. f2-- 
g4-. g2-- g4-. 
r4 g4-. g2-- 
f4-. f2-- f4-. 
r4 d4-. d2-- 
e4-. e2-- e4-. 
r4 g4-.\< a-. g-. \!
d8-- d'4-^ bes-^ a-^ f8--
e8-- d4 cis8-- d2 \bar"||"\key d \major 
fis4-. fis2-- fis4-. 
r4 fis4-. fis2-- 
fis4-. fis2-- fis4-. 
r4 fis4-. fis2-- 
d4-- d-. d-- d-. 
d4-. d2-- d4-. 
e4-- e-. e-- e-. 
g4-. g2-- g4-. 
r4 fis4-. fis2-- 
d4-. d2-- a'4-. 
r4 d,4-. e2-- 
gis4-. gis2-- gis4-. 
g!4-^\f a2-^ a4-^ 
bes4-^ b4-^ c4-^ cis4-^
a4-- a-. r fis
r4 fis-. fis-. fis-. 
r4 fis r fis 
r4 fis-. fis-. fis-. 
r4 g r g
g4-- g-. r8 g-- g4-. 
r4 g r g
r4 g-. g-. g-. 
fis4-- fis2 fis4-.
fis4-- fis-. fis-- fis-. 
b8 \f (a b e) r8 b (e dis)
e8 (cis b cis e cis e g
fis4-.) r a,,4->_\markup{\italic cresc.} (es') 
d4-> (g) a8 (d dis e) 
d2--->\ff  dis--->
e2---> f---> 
e1-> ~
e8 cis-> (d4-.) d,-^ r\bar"|."
} }
