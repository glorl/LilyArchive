WhiteChristmasVier = {\new Voice \relative c' {
\time 4/4
\key c \major
\partial 2 c4( \mf d)
e2 cis
d4. d8-- b4 g
c4-- c4-. d-- b8-- a-.
r8 g4.->~g8 a-- b4-.\segno \bar"||"
g4--\p g-. r a---.
c4 (b a b)
c4-- c-. r c---.
cis4-- d-. f8-- d4-. des8--
c4-- \< a-. r c---.
d4\> (c d b8 c~
c4.) \! c8-- e-- g4-. e8--
e4-- a,-. f-- f-.
g4-- g-. r g---.
g4-- bes-. bes-- bes---.
f4-- f-. r f---.
f4-- f-. f-- f---.
r8 a4-. r8 g4-- c4-.
c4 (c b fis8 f~
f4) r r2
r2 \tuplet 3/2{c'4-- \p\< d-- g,-- }\bar"||"
e'4.\f a,8 (d c e4)
f4 (e dis e)
c4. (a8 c4. d8)
cis4 (d)  b4. (bes8)
a2\<  (b4 c)
d4\> (c b a)
g4\! (a b4. d8)
c4 (g) d'-- d--
e4-- g,8 (a c2)
c4-- c2-- c4--
c1
c2 f,4-- f--
c'4 (g) bes2
d4. (b8) g4-- g--
g2.^\markup{\fontsize #3.5 {\musicglyph #"scripts.coda" }} \< as'8-- g->
R1\! \bar"||"
a,4--\mp a-. r a---.
d4-- c-. b-- c-.
c4-- c-. r c---.
cis4-- d-. d-- b-.
a4-- c-. r c---.
d4-- c-. d-- b-.
c4-- c-. r b---.
c4-- g-. c-- b-.
g4-- g-. r g---.
g4-- bes-. bes-- bes-.
a4-- c-. r c---.
c4-- d-. c-- c-.
c4-- c-. r c---.
d4-- a-. g-- g-.
g4-- g-. a-- a-.
c2 ~c8 r c4--\mf^\markup{Solo}\bar"||"
d4-- d8-- d~ d e-- f4--
g8-- g4-. g8~g4. <a a,>8--
\tuplet 3/2{<b b,>4 <c c,> <b b,>} <a a,>4 <b b,>
<c c,>2. \breathe <e, e,>4
\tuplet 3/2{<f f,>4-- <f f,>-- <f f,>--} <a a,>4 (b,)
<g' g,>2. <e e,>4
\tuplet 3/2{<f f,>4-- <f f,>-- <f f,>--} <a a,>4 (b,)
c2. c8-- b-.
r8 d4.-> d4-. d-.
d8 ( e d c~c4) d4-.
e1~
e2 ~e8 r r4
r8 fis4.-> fis4-. fis-.
fis8 (g fis e~e4) fis-.
g1
f2~f8 \fermata r r8\fermata r\fermata \bar"||"
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
g,1~ ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" } }
g4
r4 e'2\fermata
\bar"|."
}}
