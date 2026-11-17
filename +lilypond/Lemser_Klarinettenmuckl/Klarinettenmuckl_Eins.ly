KlarinettenmucklEins = {\new Voice \relative c''' {
\time 2/2
\key c \major
\compressEmptyMeasures
g8\f (a e es d g d c)
d-- f4-. g8-- a4. (as8) 
g (e c a f a c e ) 
d4-.-^ r r8 g,4-.\mf f8--\bar"||"
e\segno (g c e g, c e g)
e8-- e4-. e8 ~e4 e8 (g)
dis8 [(e g dis] e [a] \tuplet 3/2 {dis, [e g])} 
g (f d b g4) r8 g16 (ges)
f8 ( g! b d g, b d g) 
b8-- b4-. b8 ~b4 f8 (g)
b4-- f8 (g) b4. (a8) 
a (g e c g4) r8 g16 (f) 
e8 (g c e g, c e g) 
e8-- e4-. e8 ~e4 e8 (g)
dis8 (e g dis e a dis, e)
g (f d b g4) r8 g16 (ges)
f8 ( g! b d g, b d g) 
b8-- b4-. b8 ~b4 b8 (a)
g \<(fis g gis a g a b) 
c4-.\f^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r r2 \bar"||"
e,,4-- e-. r e-.
r e-. r e-.
e-- e-. r e-.
r f-. r f-.
f-- f-. r f-.
r f-. r f-.
f-- f-. r f-.
r f-. r f-.
c-- c-. r e-. 
r e-. r e-.
g-- g-. r g-. 
r d-. r r8 d'8
g8 (ges f d ~d [b] \tuplet 3/2 {g'[ gis a])}
b8-- d4-. b-. bes8 ( a [as]) 
g (fis g a b d des c~
c2) ~c8 r r4 \bar"||" \key g \major
c,2\p (e) 
g2 ~ g8 g (d b) 
fis'2 (d) 
b2 ~b8-- e4-. es8--
c2 (e) 
d2 ~d8 g (d b) 
d2 (c 
b2 ) r2
c \glissando c'4. (a8) 
g8 ([fis] \tuplet 3/2 {g [a b]~ } b2)
~b8 (d b bes a c a as) 
g (b e, d ~d4 ) r4
r8 d4. \glissando (d'8 des c ais)
b8-- g4-. d8-- b4. (c8) 
d (e fis a d des c a
g4) r r8 g,4 (f8) 
\key c \major
\bar"||"
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
% \bar""
c''4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" Coda} } r r c4-.-^\f
\bar"||" \key f \major 
c2->^\markup{Trio} a8 (f d c~
c2) r
\tuplet 3/2 {c'8 (d c } a [as] g [f d c]  
e [f fis g]) r4 bes4-.-^ 
bes2 g8 (e d c~
c2) r
\tuplet 3/2 {c8^\markup{Solo cl.1 or 2}  ([e g]} dis [e] g [a bes b]
c4 \glissando gis8 a) r4 c4-.-^\f
c4.-> gis8 (a) e (f) d
(c2.) r4
r8 c' (\tuplet 3/2 {a [f d]} c [a f d]
c bes e, g ~ g8 ) r bes''4-.-^ \f
bes4.-> fis8 (g) dis (e) d
(c4) d8 (c ~c4) r8 g'
(c bes g e d dis e f
~f2) r
r8 c'4.-> gis8-- a-. r e--
f-- e4-. des8 c4 ~c8 r
r4 \tuplet 3/2 {c'8 ([d c]} a [g f d]
c4 \glissando bes8 e, ~e4) r4
r8 bes''4.->\f e,8 (g e4) 
d8-- d4-. d8 (g,4) bes8 (d)
c8 ([a' as g] f [c] \tuplet 3/2 {d [e f]}
g4) r r8 g,4-. f8--
\key c \major \bar"||"
e8--^\markup{Unisono Chorus} g4-. fis8-- \tuplet 3/2 {g ([a c]} \tuplet 3/2 {d [e g])}
e8-- e4-. g16 (a c4.) g8--
dis (e g a~ a [dis,] \tuplet 3/2 {e [g a]}
b8 f \tuplet 3/2 {a [f d]} as' [g]) r4
r f,8 g \tuplet 3/2 {b [d f]} \tuplet 3/2 {g [a ais]}
b8-- d,4-. f-. g-. b8--
d4.-- f,8 g b a as 
\tuplet 3/2 {g [dis e]} \tuplet 3/2 {b [c as]} g4 r4
\tuplet 3/2 {e8 ([as g]} \tuplet 3/2 {c [b f']} \tuplet 3/2 {e [as g]} \tuplet 3/2 {c [a g])}
e8-- e4-. g-. a8 \glissando c4
a4-- r8 dis,8 (e)  gis,4-. a8-- 
b (g' ges f b, d g, ges 
f4) r \tuplet 3/2 {d8 ([f a]} \tuplet 3/2 {d [f a]}
b4 \glissando \tuplet 3/2 {f8 [b, d]} \tuplet 3/2 {gis [f d]} \tuplet 3/2 {b' [bes a])}
g4. fis8 (\tuplet 3/2 {g [gis a]} \tuplet 3/2 {b [c d]}
c4) r r g,8 \f (f) \bar"||"
e (g c e g, c e g)
e8-- e4-. e8 ~e4 e8 (g)
dis8 [(e g dis] e [a] \tuplet 3/2 {dis, [e g])} 
g (f d b g4) r8 g16 (ges)
f8 ( g! b d g, b d g) 
b8-- b4-. b8 ~b4 f8 (g)
b4-- f8 (g) b4. (a8) 
a (g e c g4) r8 g16 (f) 
e8 (g c e g, c e g) 
e8-- e4-. e8 ~e4 e8 (g)
dis8 (e g dis e a dis, e)
g (f d b g4) r8 g16 (ges)
f8 ( g! b d g, b d g) 
b8-- b4-. b8 ~b4 b8 (a)
g8 (b g ges f e es d )
c4 r r2
e,8-- g4-. a-. c-. e8--
g8 \<(fis g gis a gis a b) 
c4-^\ff r r c,,->\fermata
\bar"|."
}}
