GlennMillerStoryBass = {\new Voice \relative c' {
\time 2/2
\key c \major
\compressEmptyMeasures
% \override Glissando.style = #'trill
\partial 4 
r4^\markup{Swing (\bold{American Patrol})}
c \mf r g r 
c r g r 
c r g r 
c r g cis 
d r g, r 
c r c r 
d r d r 
g, r g g 
c r g r
c r g r 
c r g r
c r g r 
f r f r 
f r f r 
g r g2
c4 r r2
g4--\f r g-- r 
g-- r d' g, 
c r g r 
c8 c4. (a4) c
g-- r g r 
g r d' r 
c r g r 
c8 c4. (a4) c
f,\f r r2
c'4 r r2
e,4 r r2
c'4 r r2
f,4 r r2
c'4 r r2
g4 r g g8-- c-.
r4 c8^\markup{Solo} \p (d c b d c) \bar"||" \key g \major
b1
~b8 r g\mf (fis g a b c) 
d1
~d8 r b8 \f (ais b cis d e) 
fis1
~fis8 r d\ff (cis d e fis g) 
a1
~a8 r r4 r2 \bar"||"
d,4 \mf r a r 
d r a r 
g r g r 
g8 (cis d g,-.) r4 g
d' r a r 
d r a r 
g r d' r 
g,8 (cis d g,-.) r8 g4. 
c4\f r c r 
g r g r 
b r b r 
e, r e r 
c'2\f c4 c 
g4 r g g 
r8 d'4.->\sp \< cis-> b8->
~b4 a4->~a8 as4.->
g8-^\ff r d' g,~g4\fermata r \bar"||" \key c \major
g1^\markup{Moderato (\bold{A String of Pearls})}\ff
g4\sfz \< a b d
a'8---> \ff a-.-^ r4 r4 f8---> f-.-^
r2 g,8---> g-.-^ r4 
r4 g8---> g-.-^ r2
r1 \bar"||"
c4 \mp c a g 
c a as g 
c b a g
c b a g
c b bes a 
g g ges f
c' g c4. g8--\ff 
c8-- a4-. as8-- r8 g4.-> 
f4\p a c c 
f, a c a 
f a c a 
f a c a 
f a c a 
f a c g 
f4.-- f8-^ r8 e8\ff (f fis)
g8 g gis4 a b 
c4 \mp c a g  
c a as g
c b a g
c b a g
c bes a as
g g ges f 
c' g c\< g
c4 \f c2-> c4-^ \bar"||" \key f \major
f,2 c'2
f,4 r c' r 
f,4\p r c' r 
f,4 r c' r 
bes2\f f
bes4 r f bes 
f\p r d' c
f, r c' f, 
c'2\f cis4-^ d->
~d4 es-^-. e2->
f8-^ r r4 c4 r 
f, r r2
f4 r e r 
\new Voice <<
  \relative c'{  es4 }
  \relative c{  es4 }
>>
r d' r 
g, r g c8-- g
~g2  ~ g8\fermata \noBeam g8 \tuplet 3/2 {a8-- [r b]} \bar"||"\time 4/4 \key c \major
c4\mf^\markup{Slow (\bold{A Sentimental Journey})} e c  g 
c4 a g a8 (g) 
c4 e c a 
g4 a b8 a as g
c4 e c g
f4 a c as
g c r8 g4.
g8 (a b c ~c ) g g g
c4\p a g a 
c4 g e g 
c4 a g b 
g4 a b8 (a as g) 
c4 a g e 
f4 es' c as
c4 a r8 g4. 
g8 (a b c ~c ) g g g
f4 \mf a c a 
f4 a fis a 
c4 g e a 
c a fis g8-- c
cis4 e8 d c4 a8 c 
cis4 d a d 
g,4 a c8 g g g 
r8 g8 g g r8 g8 g g \bar"||" 
c8--\mf ^\markup{Solo unisono} e4-. c8-- e4. (c8) 
e8 (c e c e c4.) 
r8 e4-. c8-- e4. (f8) 
e4 (es8 d ~d2) 
c4-- \< e-. c-- g-. 
f4-- a-. c-- as-.
g4-- \f r r2
g8\> (a b c ~c2)\! \fermata \bar"||"\time 2/2 
c8^\markup{Swing (\bold{In The Mood})}\mf (e g c-.) ~c c4-.-> c8->-.
~c8 c4-.-> c8-> (b c g e) 
g (fis f e es) d4-.-> c8 
~c2. r4
d4 r r d
r2 r8 d4.-^
g,4 r r g 
R1 
\repeat volta 2{
\repeat percent 2 { 
c4_\markup{\dynamic mf - \dynamic f} e, g a 
c a g e
}
f4 a c d 
f4 d c a
c4 e, g a 
c4 a g e
g4 b d b 
g f d' g,
}
\alternative {{
c2 \p \< (f,) 
as4. g8 ~g g8-- \f g4-. }
{c2 \> f,
as8--\p g4-. c8 ~c2 }}
\repeat volta 2{
c2 \f c4 es8-- d
~d2 g, 
c2 c4 es8-- d
~d4 a g b 
c c es es8-- d
~d4 g, b d 
}
\alternative {{
g,4\p \< d' des bes 
g4 \f  as g c}
{r4 g->\f  r  g->}}
r4 as g c 
\repeat percent 3 { 
c4-- r es-- r 
d4-- r g,-- r 
}
r4 g-> r g->
r as g c
\repeat percent 3 { 
c4-- r es-- r 
d4-- r g,-- r 
}
r4 g-> r g->
r as g c
c8 \f (d e f) g-- c4-. g8-- 
gis8 (fis4-.) g8-> ~g4 fis,8-- f 
~f2 ges8-- a4-. ges8-- 
f4 r g2-^
\repeat volta 3{
c4_\markup{\dynamic mf - \dynamic p - \dynamic pp} e, g a 
c a g c-^
~c4 e, g a 
c a g c-^
~c4 a c d 
f d c c-^
~c4 e, g a 
c a g e
g b d b 
g f d' c-^ 
c1 ~\<
}
\alternative{
{
c1\! 
~c1
~c2. c4-^-.
}
{c2. r4
}
}
c4\ff e, g a 
c a g e
c'4 e, g a 
c a g c
f, a c d 
f d c a 
c e, g a 
c a g e 
g b d b 
g f d' c-^
c1\f \cresc 
c
c
c
c
c
c4 \ff e, g a  
c a g c-^
~c1 
c1\fermata
\bar"|."
} }
 
