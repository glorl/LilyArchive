TicoTicoVier = {\new Voice \relative c' {
\time 2/2
\key c \major
\compressEmptyMeasures
\partial 4. c8 \f (b bes) 
a8\< (gis a b d c b c )
e (f fis g a\> g f e)
d (c b a g' f e d \!
c4-.) r r2 \bar"||"
a4-. \mf \segno  a ~a a-.
r b-. b2-- 
b4-. b ~b b-.
r a-. a2--
a4-. c ~c c-.
r c-. c2--
dis4-. dis ~dis dis-. 
r4 d!4-. d2--
a4-. a ~a a-.
r b-. b2-- 
b4-. b ~b b-.
r a-. a2--
a4-. d ~d d-.
r c-. c2--
b4-. b ~b b-. 
r4 c4-. c2--
e4-. e ~e e-.
r d-. d2-- 
d4-. d ~d d-.
r e-. e2--
e4-. e ~e e-.
r f-. d-. d-. 
d4-. d ~d d-. 
r4 e4-. e-. e-. 
e4-. e ~e e-.
r d-. d-. d-. 
d-. d ~d d-. 
r4 ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }}  e ~e r 
r c-.\mf \< r es-. 
r e!-. \! r e-. \>
r d-. d-. a-. 
a-. \! r r2 \bar"||" \key g \major
g2 \mf fis 
e d' 
e d 
a d
g8 (c, d fis~fis) c (d e )
e8 (a, c d~d) c (d e)
g8 (c, d fis~fis) c (d fis )
e8 (g, b d~d) g, \<(b d)
g8 \f (g, b fis' ~fis) g, (b e )
e8 (g, b d~d) g, (b e)
e8 (d b gis) e' (d b gis) 
a (gis a b ) c4-. r 
e,4-.\mf \< r g-. r 
b-. r b-.\! r 
c-.\> r e-.\! r 
b-. d-^-. r2 \bar"||" \key c \major
a4-. \mp a ~a a-.
r b-. b2-- 
b4-. b ~b b-.
r a-. a2--
a4-. d ~d d-.
r c-. c2--
dis4-. dis ~dis dis-. 
r4 d!4-. d2--
a4-. a ~a a-.
r b-. b2-- 
b4-. b ~b b-.
r a-. a2--
a4-. d ~d d-.
r c-. c2--
b4-. b ~b b-. 
r4 c4-. c2--
c8^\markup{Solo} (g' e a g--) c4-. e8 
(a d, a' g ~g4) r8 ges
(f d f g! gis a b d
a4\trill) \glissando e8 (g-.) r2
c8 (g e) r b' (g e) r 
a (f d b) a'-- g4-. gis8 
a \<(b d e d \> b a g \!
e g) r4 r2 
c,,4-.\mf c ~c c-.
r b-. b-. b-. 
b-. b ~b b-.
r c-. r c-. 
r a-. r c-. 
r c-. r cis-. 
r a-. b-. e,-. 
fis-. a (d4) r4 \bar"||" \key g \major 
g,2 \mf fis 
e d' 
e d 
a d
g8 (c, d fis~fis) c (d e )
e8 (a, c d~d) c (d e)
g8 (c, d fis~fis) c (d e)
e8 (g, b d~d) g, \<(b d)
g8 \f (g, b fis' ~fis) g, (b e )
e8 (g, b d~d) g, (b e)
e8 (d b gis) e' (d b gis) 
a (gis a b ) c4-. r 
e,4-.\mf \< r g-. r 
b-. r b-.\! r 
c-.\> r c-.\! r 
b-. d-^-. r2 \bar"||"
\key c \major 
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
r4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } c4 ~c r 
a8  \f \< (gis a b d c b c 
e f fis g \! a \> g f e 
d c b a g' f e d )\! 
c4-. g-. c'4-^ r  
\bar"|."
}}
 
