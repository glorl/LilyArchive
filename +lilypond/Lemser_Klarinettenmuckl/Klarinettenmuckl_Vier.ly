KlarinettenmucklVier = {\new Voice \relative c' {
\time 2/2
\key c \major
\compressEmptyMeasures
c2 \f d
c c
c a
b4-.-^ r r8 g4-.\mf f8-- \bar"||"
e\segno (g c e g, c e g)
e8-- e4-. e8 ~e4 e8 (g)
fis8 [(e g fis] e [a] \tuplet 3/2 {fis [e g])} 
f (g f d b4) r8 g16 (a)
g8 (b d f b, d f4) 
g8-- g4-. g8 ~g4 g8 (f)
g4-- g8 (b) g4. (b8) 
g (a e c g4) r8 g16 (f) 
e8 (g c e g, c e g) 
e8-- e4-. e8 ~e4 e8 (g)
fis8 (e a fis e g fis e)
f! (g f d b4) r8 g16 (a)
g8 ( b d f b, d f4) 
g8-- g4-. g8 ~g4 g8 (b)
f \<(a f b b4. g8 ) 
~g4 \f^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} r r2\bar"||"
g,4-- g-. r g-. 
r g-. r g-. 
g4-- g-. r g-. 
r b-. r b-.
b4-- b-. r b-. 
r b-. r b-. 
b4-- b-. r b-. 
r b-. b-. r8 g'16 (f)^\markup{Solo}
e4 (\glissando c8 g ~g e a g)
\tuplet 3/2 {c8 [(d e]} g c dis e ~e4) 
r8 g8 (\tuplet 3/2 {dis8 [e g]} c a as g) 
g8-- a!4-. b8-- a4 ~a8 r 
f,,4-- f-. r b-.
r g-. r b-. 
b-- b-. r b-.
g4 g g r8 e'16 (es) \bar"||" \key g \major
d8 (e d cis e d e fis
g fis g a b4) r 
a,8 (d c b a c b a )
g (b a g) d'-- e4-. es8--
\tuplet 3/2 {d8 ([e! d]} cis8 d ) e-- d4-. e16 (fis )
g8 (fis g a b4) r 
a,8-- d4-. e16 (d) a8 (c b a 
g'4-.) b,8 d g e (es4) 
a,4-- a-. r a
r b r b 
a4-- a-. r a
r b r b
a4-- a-. r a
r b r b
a4-- a-. r a
b r r8  g4-. f8--
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
g'4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" Coda} } r r c4-.-^\f
\bar"||" \key f \major 
c2->^\markup{Trio} a8 (g e c~
c2) r
a4--\mf a-. r a
r a r g'-.-^\f
g2-> g4-- (e8 bes~
bes2) r 
r4 \mf c r c 
a4-- a-. r g'4-^-.\f
a4.-> f8 (d) cis (d) c
(c2) r2
a4--\mf a4-. r a
r g r g'-.-^\f 
g4.-> es8 (c) c (bes) d
(e4) e8-- bes ~bes4 r8 c8--
g' (e g c, e fis g f
~f2) r 
r8 a4.-> f8-- c-. ~c f--
f8-- d4-. e8-- f4~f8 r 
a,4-- \mf a-. r a4-. 
r g r g
r8 g'4.->\f c,8 (e c4-.) 
e8-- bes4-. c8 (bes4) c8 (e)
c8 ([f f g] f [c] \tuplet 3/2 {d [e f]}
f4) r r8 g4-. f8--
\key c \major \bar"||"
g,8--^\markup{Unisono Chorus} a4-. a8-- \tuplet 3/2 {a ([a c]} \tuplet 3/2 {d [e g])}
g8-- e4-. a8-- g4. g8--
dis (e g a~ a [dis,] e8 a 
b8 f \tuplet 3/2 {a [f d]} as' [g]) r4
r f,8 g \tuplet 3/2 {b [d f]} \tuplet 3/2 {g [a ais]}
g8-- f4-. f-. f-. g8--
d4.-- f8 g b a as 
\tuplet 3/2 {g [dis e]} \tuplet 3/2 {b [c as]} g4 r4
\tuplet 3/2 {g8 ([as g]} \tuplet 3/2 {c [b f']} \tuplet 3/2 {e [as g]} \tuplet 3/2 {c [a g])}
a,8-- b4-. a'-. g8-- g4-- 
g4-- r8 dis8 (e)  gis,4-. a8-- 
b (g' ges f b, d g, ges 
f4) r \tuplet 3/2 {d'8 ([f a]} \tuplet 3/2 {d, [f a]}
g4~ \tuplet 3/2 {g8 [b, d]} \tuplet 3/2 {gis [f d]} \tuplet 3/2 {b' [bes a])}
g4. a8 ~ (\tuplet 3/2 {a [f g]} \tuplet 3/2 {gis [a gis]}
a4) r r g,8 \f (f) \bar"||"
g (a e' g a, e' g a)
g8-- e4-. g8 ~g4 g8 (a)
fis8 [(g a fis ] a [g] \tuplet 3/2 {fis [g a])} 
g4  (f!8 d b4) r8 g16 (a)
g8 (b d f b, d g f ) 
g8-- gis4-. g8 ~g4 g8 (f)
g4-- g8 (f) g4. (b8) 
g (a g e a,4) r8 g16 (f) 
g8 (a e' g a, e' g a) 
g8-- a4-. g8 ~g4 g8 (a)
fis8 (g a fis a g fis g)
f! (g f d b4) r8 g16 (a)
g8 ( b d f b, d f4) 
g8-- gis4-. g8 ~g4 g8 (fis)
f!8 (g f e d des c b)
a4 r r2
g8-- a4-. g-. a-. g'8--
f8 \<(e f fis g fis f g) 
a4-^\ff r r c,->\fermata
\bar"|."
}}
