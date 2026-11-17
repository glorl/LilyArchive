WhiteChristmasBass = {\new Voice \relative c {
\time 4/4
\key c \major
\partial 2 f2 \mf
c'4 b bes g
f4 g b g
c4-- c4-. d-- g,8-- c-.
r8 g4.->~g8 a-- b4-.\segno \bar"||"
c4\p g a c
d4 c b c
d4 c a f
fis4 g b d8 e
f4 \< e d c
g4\> d' b g
c4 \! g c c
a4 a d g,
c4 g c b
bes4 g c g
f4 c' a c
d4 c as f
a4 c a g
f4 c' b a8-- f~
f4 ~f8 r r2
r2 \tuplet 3/2{g'4-- \p\< f-- d-- }\bar"||"
c4\f g a c
d4 e fis c
d4 c a d
e4 f! g f
f,4\< a d c
g4\> a b d
c4\! a g c
a4 c d g,
c4 e c b
bes4 a g g
f4 c' a c
f,4 as c d
c4 b bes g
f4 d' g, g8 b
c4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } \< g d' des8-- c->
R1\! \bar"||"
c4\mp g a c
d4 c b c
d4 c a f
fis4 g b d
f4 e d c
b4 d b g
c4 g b c
a4 a d g,
c4 g c b
ges'4 e c g
f4 c' a c
d4 c as f
c'4 g c a
d4 f, g b
c4 g f g
c g8 c~c r c4--\mf^\markup{Solo}\bar"||"
d4-- d8-- d~ d e-- f4--
g8-- g4-. g8~g4. a8--
\tuplet 3/2{b4 c b} a4 b
c2. \breathe e,4
\tuplet 3/2{f4-- f-- f--} a4 (b,)
g'2. e4
\tuplet 3/2{f4-- f-- f--} a4 (b,)
c2. c8-- b-.
r8 d4.-> c4-. as-.
g4 b d g,
c4-- g8-- g~ g g-- g4-.
c4-- g8-- g~ g e' (c b)
a4 c e c
b4 b cis dis
e4 d b g
d'4 c g8\fermata r r8\fermata r\fermata \bar"||"
\cadenzaOn
\stopStaff
\once \override TextScript.word-space = #1.5
\once \override TextScript.X-offset = #0
\once \override TextScript.Y-offset = #1
| s1*1^\markup { \center-column { "D.S. al Coda" \line { \musicglyph #"scripts.coda" \musicglyph #"scripts.tenuto" \musicglyph #"scripts.coda" } } }
| s1*1 \bar""
| s1*1 \bar""
| s1*1 \bar""
| s1*1 \bar""
| s1*1 \bar""
\startStaff
\cadenzaOff
% \break
\bar"||"
c4-. ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda"} } b a8 as g4
c4 r4 c2\fermata
\bar"|."
}}
