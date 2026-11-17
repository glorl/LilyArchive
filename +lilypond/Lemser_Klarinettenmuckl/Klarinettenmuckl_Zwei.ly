KlarinettenmucklZwei = {\new Voice \relative c'' {
\time 2/2
\key c \major
\compressEmptyMeasures
g2 \f a
a c
g f
g4-.-^ c r8 e,4-.\mf d8--\bar"||"
c\segno (e g c e, g c e)
c8-- c4-. c8 ~c4 c8 (e)
a,8 [(c e c] ~c [e] \tuplet 3/2 {a, [c e])} 
d (b g d f4) r8 d16 (es)
d8 ( f g b f g b d) 
f8-- f4-. f8 ~f4 b,8 (d)
f4-- d8 (f) f4. (d8) 
e (c g e c4) r8 e16 (d) 
c8 (e g c e, g c e) 
c8-- c4-. c8 ~c4 c8 (e)
a,8 (c e c ~c e c g)
d' (b g d f4) r8 d16 (es)
d8 ( f g b f g b d) 
f8-- f4-. f8 ~f4 f8 (d)
d \<(dis d f d f d f) 
e4-.\f^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r r g,8 (f) \bar"||"
e [(dis e g,] ~g [a] \tuplet 3/2 {c [d dis]}
e a g c ~c4.) e8
dis (e g a c d dis e)
% \override Glissando.style =.zigzag
d4 \glissando a8 g ~g4 d,-.\mf 
d-- d-. r d-.
r d-. r d-.
d-- d-. r d-.
r d-. r d-.
g,-- g-. r g-. 
r c-. r c-.
e-- e-. r e-. 
r b-. r b-.
d-- d-. r f-.
r f-. r f-. 
f-- f-. r f-.
e4 e e8 r r4 \bar"||" \key g \major
a2\p (a) 
d2 ~ d8 d (b g) 
c2 ~c 
g2 ~g8-- e4-. es8--
a2 (c) 
b2 ~b8 d (b g) 
a2 (fis 
d2 ) r2
fis4-- fis-. r fis
r g r g 
fis4-- fis-. r fis
r g r g 
fis4-- fis-. r fis
r g r g 
fis4-- fis-. r fis
g r r8 e4 (d8)  
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
e'4 ^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" Coda} } r r g4-.-^\f
\bar"||" \key f \major 
a2->^\markup{Trio} f8 (c gis a~
a2) r
f4--\mf f-. r f
r e r e'-.-^\f
e2-> e8 (c bes g~
g2) r
\tuplet 3/2 {c8^\markup{Solo cl.1 or 2} ([e g]} dis [e] g [a bes b]
c4 \glissando gis8 a) r4 e4-.-^\f
f4.-> d8 (f) e (c) gis
(a2) r2
f4--\mf f4-. r f
r e r e'-.-^\f 
e4.-> c8 (e) a, (c) bes
(bes4) bes8-- g ~g4 r8 e'8--
e (d e bes g c bes c
c2) r 
r8 f4.-> d8-- f-. ~f c--
c8-- a4-. a8-- a4~a8 r 
f4-- \mf f-. r f4-. 
r e r g
r8 e'4.->\f bes8 (e bes4) 
bes8-- c4-. bes8 (e,4) g8 (bes)
a8 ([c d e] c [a] \tuplet 3/2 {a [b c]}
d4) r r8 g,4-. f8--
\key c \major \bar"||"
c8--^\markup{Unisono Chorus} e4-. dis8-- \tuplet 3/2 {e ([a c]} \tuplet 3/2 {d [e g])}
c,8-- b4-. e8-- ~e4. g,8--
dis (e g a~ a [dis,] e8 a 
b8 f \tuplet 3/2 {a [f d]} as' [g]) r4
r f,8 g \tuplet 3/2 {b [d f]} \tuplet 3/2 {g [a ais]}
f'8-- b,4-. d-. f-. f8--
f4.-- f,8 g b a as 
\tuplet 3/2 {g [dis e]} \tuplet 3/2 {b [c as]} g4 r4
\tuplet 3/2 {c8 ([as g]} \tuplet 3/2 {c [b f']} \tuplet 3/2 {e [as g]} \tuplet 3/2 {c [a g])}
c8-- b4-. e-. e8 \glissando a4--
e4-- r8 dis8 (e)  gis,4-. a8-- 
b (g' ges f b, d g, ges 
f4) r \tuplet 3/2 {d8 ([f a]} \tuplet 3/2 {d [f a]}
b4 \glissando \tuplet 3/2 {f8 [b, d]} \tuplet 3/2 {gis [f d]} \tuplet 3/2 {b' [bes a])}
e4. dis8 (\tuplet 3/2 {e [d e]} \tuplet 3/2 {f [e f]}
g4) r r e,8 \f (d) \bar"||"
c (e g c e, g c e)
c8-- b4-. c8 ~c4 c8 (e)
a,8 [(c e c] ~c [e] \tuplet 3/2 {a, [c e])} 
d (b g f d4) r8 d16 (es)
d8 ( f g b f g b d) 
f8-- f4-. f8 ~f4 d8 (b)
f'4-- d8 (c) d4. (f8) 
e (c a g c,4) r8 e16 (d) 
c8 (e g c e, g c e) 
c8-- c4-. c8 ~c4 c8 (e)
a,8 (c e c ~c e c a)
d (b g f d4) r8 d16 (es)
d8 ( f g b f g b d) 
f8-- f4-. f8 ~f4 f8 (es)
d8 (f d des c b a as )
g4 r r2
c,8-- e4-. e-. g-. c8--
e8 \<(dis e f c dis d f) 
g4-^\ff r r c,,->\fermata
\bar"|."
}}
