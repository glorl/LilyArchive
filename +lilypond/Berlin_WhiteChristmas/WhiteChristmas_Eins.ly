WhiteChristmasEinsa = {\new Voice \relative c'' {
\time 4/4
\key c \major
\partial 2 c4-- \mf d--
e2 e
a4. b,8-- b4-- b--
c4-- e4-. d-- a8-- g-.
R1 \segno \bar"||"
e1^\markup{volta 1}\mf
f4 (e dis e)
f1
fis4 (g2.)
a2 \< b4 c
d4\> (c b a8 g~
g1) \!~
g2 c,4 d
e2 e
e4 (a2 g4)
c,2 c
c4 (g'2 f4)
e1
f4 (e d c8 d~
d4.) e'8 (d4-.) c-.
b4-- a-. \tuplet 3/2{b4-- \< c-- d-- }\bar"||"
e1\f
f4 (e dis e)
f1
fis4 (g2.)
a2\<  (b4 c)
d4\> (c b a)
g1\!
~g2 \breathe c,4 (d)
e2 e
e4 (a2 g4)
c1 (
c2) c,4-- d--
e2 e
a4. (b,8) b4-- b--
c2.^\markup{\fontsize #3.5 {\musicglyph #"scripts.coda" }} \< des8-- c->
r8\! g'16 (ges f8 d b f' d dis) \bar"||"
e8--\mf g4 a-. as16 (g a c a g)
f8 (a, e' a, es' a, e' a, )
f'2~\tuplet 3/2{f8 d' c} \tuplet 3/2{b8 a g}
\tuplet 3/2{fis8 g a} fis8 g ~g2
r2 r8 a~\tuplet 3/2{a8 b c}
d8 (a d c~ c b a16 d a as
g4. ) e16 (es d8 c~c4)
r2 c8 (b d dis)
e4-.-- e8 (dis) e4---. e8 (dis)
e4---. \tuplet 3/2 {e8 (g a)} bes4~ (\tuplet 3/2{bes8 a bes)}
c2~c16 g (a c d des c a
as2) r8 c,-- d4-.
e4-- g16 (gis a c bes a gis f gis f e es)
d8-- a'4-. b!16 (c e8 b d) c~
c4.-- gis16 ( a d, f g gis a b c d
c2) r \bar"||"
d,4. d8~d4 d---.
r8 e4.-> e4---. e---.
d4. d8~d4 d---.
r8 e4-. f8 dis (e a, g)
c4. d8~d4 d-.
r8 e4.-> e4-. e-.
d4. d8~d4 d-.
r8 e4-. dis8 e (c a as)
r8 as,4.-> as4-. as-.
b4. c8~c4 b-.
c1~
c2~c8 r r4
r8 c4.-> c4-. c-.
dis4.-- cis8~cis4 d-.
e1
c2 (d8)\fermata r c8\fermata d\fermata \bar"||"
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
c4 r4 \grace {c'8 a g e d16 c8 d16~d8 e g e g}
a2\fermata
\bar"|."
}}

WhiteChristmasEinsb = {\new Voice \relative c' {
\stopStaff\partial 2 s2
s1*4
\startStaff\bar"||"
e2^\markup{volta 2}\mf c8 (d dis e)
f4 (e8 e dis--) e4-. f8-~
f2 a8 (f e d)
fis8 (g8~g2) r4
r8 a4. \< f8 (a b c)
d8--\> c4-. c8 (b c a g
g1 )\!~
g4 r c,8 (a d f)
\tuplet 3/2{e8 (c d } \tuplet 3/2{e8 c d} e8) e4-. e8--
e4 \glissando a4 ~a8 a-- g4-.
\tuplet 3/2{f8 (gis, a } c8 gis8) a8-- c4-. d8--
c4 \glissando g'8 as~as4. g16 (f)
e1
f8 (a f e d4 c8 d~
d4.) e'8 (d4-.) c-.
b4-- a8-- g4-. ges8-- f4-.\bar"||"
e'1\f
f4 (e dis e)
f1
fis4 (g2.)
a2\<  (b4 c)
d4\> (c b a)
g1\!
~g2 \breathe c,4 (d)
e2 e
e4 (a2 g4)
c1 (
c2) c,4-- d--
e2 e
a4. (b,8) b4-- b--
\stopStaff s1^\markup{\fontsize #3.5 {\musicglyph #"scripts.coda" }}

}}
