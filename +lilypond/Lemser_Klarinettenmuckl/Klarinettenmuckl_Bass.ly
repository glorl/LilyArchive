KlarinettenmucklBass = {\new Voice \relative c' {
\time 2/2
\key c \major
\compressEmptyMeasures
c2\f d
d' d,4 f
a2 b4 d
e4 g,,2 r4\bar"||"
c4\segno \mf e c g
c c a g
c g a c 
g b d b 
g b d b 
g g b d
g, d' g, b 
c g c g
c e c g 
c c g a 
c e c a 
g b d b 
g b d b 
g g b d
g,\< b d g,\!
c4\f^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }} \acciaccatura {fis8} g8  c,~c4 r \bar"||"
c4 e g e 
c c a g
c g a c
g b d b 
g b d b 
g g b d 
g f d b 
g g'8 f d4 b
c g c a
c e c g
c e c a
g b d b 
g r d' r 
g, b d b 
g' f d g,
c g c r8 e16 (es) \bar"||" \key g \major
d8 (e d cis e d e fis
g fis g a b4) r 
a,8 (d c b a c b a )
g (b a g) d'-- e4-. es8--
\tuplet 3/2 {d8 ([e! d]} cis8 d ) e-- d4-. e16 (fis )
g8 (fis g a b4) r 
a,8-- d4-. e16 (d) a8 (c b a 
g4-.) b8 d g e (es4) 
d4 c a fis 
g b d e 
d c a d 
g e d b 
d fis d a
g b d e 
d a d fis 
g d8 (g,) ~g4 r
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
c4^\markup { \fontsize #3.5 {\musicglyph #"scripts.coda" Coda} } bes a8 (as) g4-.-^ \f
\bar"||" \key f \major 
f4->^\markup{Trio} a c e
f e8 (d) c (as) a4--\mf
f r c' f
c  r e8 (d) des4-.-^ \f
c e c g
c e c8 (bes) g4
c\mf r g r 
f c' a8 (d) c4-.-^\f
f, c' f c 
f8-- e4-. d8-- c8 gis (a) c 
f,4 \mf r c' a 
c r e8 (d) des4-.-^\f
c e c g 
c g e g 
c d c g
f g8-- a4-. c8-- d4 
f, a b c 
f c a8 (as g4) 
f r c'a 
c g8-- c4-. d8-- des4
c e c g 
c g c8 (d) e4
f d c f,
g4-. g2-- r4
\key c \major \bar"||"
e'8--^\markup{Unisono Chorus} g4-. fis8-- \tuplet 3/2 {g ([a, c]} \tuplet 3/2 {d [e g])}
c,8-- c4-. g'16 (a c4.) g8--
dis (e g a~ a [dis,] \tuplet 3/2 {e [g a]}
b8 f \tuplet 3/2 {a [f d]} as' [g]) r4
r f,8 g \tuplet 3/2 {b [d f]} \tuplet 3/2 {g [a ais]}
b8-- d,4-. f-. g-. b8--
g4.-- f8 g b a as 
\tuplet 3/2 {g [dis e]} \tuplet 3/2 {b [c as]} g4 r4
\tuplet 3/2 {c8 ([as g]} \tuplet 3/2 {c [b f']} \tuplet 3/2 {e [as g]} \tuplet 3/2 {c [a g])}
c,8-- e4-. g-. a8 \glissando c4
a4-- r8 dis,8 (e)  gis,4-. a8-- 
b (g' ges f b, d g, ges 
f4) r \tuplet 3/2 {d'8 ([f a]} \tuplet 3/2 {d, [f a]}
g4 \glissando \tuplet 3/2 {f8 [b, d]} \tuplet 3/2 {gis [f d]} \tuplet 3/2 {b' [bes a])}
c,4. fis8( \tuplet 3/2 {g [gis a]} \tuplet 3/2 {b [c d]}
c8) dis,(e) c-. r2 \bar"||"
c4 e c g
c c a g
c c a c 
g b d b 
g b d b 
g g b d 
g, d' g, b 
c g c g
c e c g
c c g a 
c e c a
g b d b 
g b d b 
g b d b 
g c f, fis8 g 
c4 a8 (as) g (es' d4)
c e c a 
g\< b c g
c8\ff dis (e) c-.-^ r4 c4->\fermata
\bar"|."
}}
