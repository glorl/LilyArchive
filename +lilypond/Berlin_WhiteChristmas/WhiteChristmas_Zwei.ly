WhiteChristmasZwei = {\new Voice \relative c'' {
\time 4/4
\key c \major
\time 4/4
\key c \major
\partial 2 as4-- \mf as--
c2 bes
c4. a8-- g4 f
g4-- a4-. a-- f8-- e-.
R1 \segno \bar"||"
c4--\p c-. r e---.
a4 (g fis g)
a4-- a-. r a---.
bes4-- b-. c8-- b4-. bes8--
a4-- \< f-. r a---.
b4\> (a g f8 e~
e4.) \! g8-- b-- e4-. b8--
c8 (a e d ) c4 (b)
c4-- c-. r c---.
e4-- e-. e-- e---.
c4-- c-. r c---.
c4-- c-. c-- c---.
r8 b4-. c8 c4-- e-.
a4 (g fis e8 c~
c4.) c'8 (b4-.) a-.
g4-- f-. \tuplet 3/2{g4-- \< a-- b-- }\bar"||"
c1\f
d4 (c b c)
a1
ais4 (b2.)
c2\<  (d4 e)
f4\> (e d b)
c1\!
~c2 \breathe a4 (b)
c2 c
bes4 (e2 e4)
f1 (
g4 f) f,4-- f--
g4 g2.
c4. (f,8) e4-- d--
e2.^\markup{\fontsize #3.5 {\musicglyph #"scripts.coda" }} \< f8-- e->
R1\! \bar"||"
e4--\mp e-. r e---.
a4-- g-. fis-- g-.
a4-- a-. r a---.
ais4-- b-. g-- f-.
f4-- a-. r a---.
b4-- a-. g-- f-.
g4-- g-. r g---.
g4-- e-. f-- f-.
e4-- e-. r e---.
e4-- e-. e-- e-.
f4-- a-. r a---.
as4-- as-. f-- f-.
a!4-- a-. r g---.
a4-- f-. e-- f-.
e4-- e-. r f-.
g2~g8 r r4 \bar"||"
a4. b8~b4 b---.
r8 b4.-> c4---. c---.
b4. a8~a4 b---.
r8 b4-. d8 c (b a g)
a4. b8~b4 a-.
r8 b4.-> c4-. c-.
a4. b8~b4 a-.
r8 c4-. a8 c (g e d)
r8 f,4.-> f4-. f-.
g4. a8~a4 g-.
g4-- g8-- g-. ~g g-- g4-.
c4-- g8-- g-. ~g e' (c b)
a8 a4.-> a4-. a-.
b4.-- ais8~ais4 b-.
b1
a2~a8\fermata r a8\fermata b\fermata \bar"||"
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
e1~ ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" } }
e4
r4 d'2\fermata
\bar"|."
}}
