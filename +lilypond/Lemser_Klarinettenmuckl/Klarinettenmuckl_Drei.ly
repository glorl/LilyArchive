KlarinettenmucklDrei = {\new Voice \relative c' {
\time 2/2
\key c \major
\compressEmptyMeasures
e2 \f f
f f
e d
f4-.-^ r r8 c4-.\mf b8--\bar"||"
g\segno (c e g c, e g c)
g8-- g4-. g8 ~g4 g8 (c)
c8 [(g c a] g [c] \tuplet 3/2 {c [g c])} 
b (d b g d4) r8 b16 (c)
b8 ( d f g d f g b) 
d8-- d4-. d8 ~d4 d8 (c)
d4-- b8 (d) d4. (f8) 
c (e c g e4) r8 c16 (b) 
g8 (c e g c, e g c) 
g8-- g4-. g8 ~g4 g8 (c)
c8 (g c a g c a c)
b (d b f d4) r8 b16 (c)
b8 ( d f g d f g b) 
d8-- d4-. d8 ~d4 d8 (f)
b, \<(c b d f d f d) 
c4-.\f^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r r2\bar"||"
c,4-- c-. r c-. 
r c-. r c-. 
c4-- c-. r c-. 
r d-. r d-. 
r8 f'4.\glissando g,4 b8 (d) 
g8 (a ais b ~b g f g) 
b8 ( bes a f b, d as' g)
~g2 r4 b,,4-.
g-- g-. r c-.
r c-. r c-.
c-- c-. r c-. 
r b-. r b-.
b-- b-. r d-.
r d-. r d-. 
d-- d-. r d-.
c4 c c8 r r4 \bar"||" \key g \major
fis2\p (fis) 
b2 ~ b8 b (g d) 
a'2 (fis)
d2 ~d8-- e4-. es8--
fis2 (fis) 
g2 ~g8 b (g d) 
fis2 (d ) 
d2 r2
c4-- c-. r c
r d r d 
c4-- c-. r c
r d r d 
c4-- c-. r c
r d r d
fis4-- fis-. r fis
d r r8 c4-. b8--  
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
\startStaff 
\cadenzaOff
\break
g'4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" Coda} } r r e'4-.-^\f
\bar"||" \key f \major 
f2->^\markup{Trio} f8 (c f f~
f2) r
c,4--\mf c-. r c
r c r cis'-.-^\f
c!2-> bes4-- (g8 e~
e2) r 
r4 \mf c r c 
c4-- c-. r bes'4-^-.\f
c4.-> b8 (c) g (a) f
(f2) r2
c4--\mf c4-. r c
r c r cis'-.-^\f 
c!4.-> a8 (c) gis (a) e
(g4) g8-- e ~e4 r8 bes'8--
c (bes bes g bes a c a 
a2) r 
r8 c4.-> b8-- c-. ~c a--
a8-- f4-. f8-- f4~f8 r 
c4-- \mf c-. r c4-. 
r c r e
r8 c'4.->\f g8 (bes g4) 
g8-- g4-. e8 (c4) e8 (g)
f8 ([a b bes] a [f] \tuplet 3/2 {f [g a]}
b4) r r8 g4-. f8--
\key c \major \bar"||"
a,8--^\markup{Unisono Chorus} c4-. c8-- \tuplet 3/2 {c ([a c]} \tuplet 3/2 {d [e g])}
a8-- g4-. c8-- a4. g8--
dis (e g a~ a [dis,] e8 a 
b8 f \tuplet 3/2 {a [f d]} as' [g]) r4
r f,8 g \tuplet 3/2 {b [d f]} \tuplet 3/2 {g [a ais]}
d8-- g,4-. b-. b-. d8--
b4.-- f8 g b a as 
\tuplet 3/2 {g [dis e]} \tuplet 3/2 {b [c as]} g4 r4
\tuplet 3/2 {c8 ([as g]} \tuplet 3/2 {c [b f']} \tuplet 3/2 {e [as g]} \tuplet 3/2 {c [a g])}
g8-- g4-. c-. c8 \glissando e4--
c4-- r8 dis,8 (e)  gis,4-. a8-- 
b (g' ges f b d g, ges 
f4) r \tuplet 3/2 {d8 ([f a]} \tuplet 3/2 {d [f a]}
d,4 \glissando \tuplet 3/2 {f,8 [b, d]} \tuplet 3/2 {gis [f d]} \tuplet 3/2 {b' [bes a])}
c4. a8 (\tuplet 3/2 {c [b c]} \tuplet 3/2 {d [c b]}
e4) r r c,8 \f (d) \bar"||"
a (c e g c, e g c)
a8-- a4-. a8 ~a4 a8 (c)
c8 [(a c a] g [c] \tuplet 3/2 {c [a c])} 
b (d b g f4) r8 b,16 (c)
b8 ( d f g d g f b) 
d8-- d4-. d8 ~d4 b8 (d)
d4-- b8 (d) f4. (d8) 
c (e c a e4) r8 c16 (b) 
a8 (c g' a c, g' a c) 
a8-- g4-. a8 ~a4 a8 (c)
c8 (a c a g c a g)
b (d b g f4) r8 b,16 (c)
b8 ( d f g d f g b) 
d8-- d4-. d8 ~d4 d8 (c)
b8 (d b bes a g ges f)
e4 r r2
a,8-- c4-. c-. e-. a8--
b8 \<(ais b c e c b d) 
e4-^\ff r r c,->\fermata
\bar"|."
}}
