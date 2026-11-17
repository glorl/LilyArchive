WhiteChristmasDrei = {\new Voice \relative c' {
\time 4/4
\key c \major
\partial 2 f4-- \mf f--
g2 g
f4. f8-- e4 d
f4-- g4-. d-- b8-- c-.
R1 \segno \bar"||"
a4--\p a-. r c---.
f4 (e dis e)
f4-- f-. r f---.
e4-- g-. b8-- g4-. fis8--
f4-- \< c-. r f---.
f4\> (f f d8 e~
e4.) \! e8-- g-- b4-. g8--
g4-- c,-. c-- g-.
a4-- a-. r g---.
c4-- c-. c-- c---.
a4-- a-. r a---.
as4-- as-. as-- as---.
r8 c4-. dis8 (e g bes4-.)
f4 (e d c8 a~
a4.) f'8 (e4-.) d-.
c4-- b-. \tuplet 3/2{e4-- \< f-- f-- }\bar"||"
g1\f
a4 (g fis g)
f!1
e4 (f2.)
f2\<  (g4 a)
b4\> (a g f)
e1\!
~e2 \breathe f4-- f--
g2 g
bes4-- bes2-- bes4--
bes4( a) f8 (g a as  ~
as2) c,4-- c--
c2 cis
f4. (d8) b4-- d--
c4.^\markup{\fontsize #3.5 {\musicglyph #"scripts.coda" }} \< a8 (g a) as-- g->
R1\! \bar"||"
c4--\mp c-. r c---.
f4-- e-. dis-- e-.
f4-- f-. r f---.
e4-- f-. f-- f-.
c4-- f-. r f---.
f4-- f-. f-- d-.
e4-- e-. r e---.
e4-- c-. d-- d-.
c4-- c-. r c---.
c4-- c-. c-- c-.
c4-- f-. r f---.
f4-- f-. d-- d-.
e4-- e-. r e---.
f4-- d-. b-- d-.
c4-- c-. d-- d-.
e2 ~e8 r r4 \bar"||"
f4. f8~f4 g---.
r8 g4.-> g4---. g---.
f4. f8~f4 g---.
r8 g4-. a8 fis (g c, c)
d4. f8~f4 f-.
r8 g4.-> a4-. a-.
f4. f8~f4 f-.
r8 g4-. fis8 g (e c d)
r8 c4.-> c4-. c-.
f,4. f8~f4 f-.
g-- g8-- g-. ~g g-- g4-.
g-- g8-- g-. ~g e' (c b)
a8 e'4.-> e4-. e-.
a,4.-- fis8~fis4 a-.
g4-- r8 fis''16 (g dis8 e b bes
a8 d a as) g \fermata r f,8\fermata f\fermata \bar"||"
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
c'1~ ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" } }
c4
r4 g'2\fermata
\bar"|."
}}
