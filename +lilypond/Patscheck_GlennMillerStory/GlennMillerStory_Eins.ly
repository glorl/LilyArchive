#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 

GlennMillerStoryEins = {\new Voice \relative c' {
\time 2/2
\key c \major
\compressEmptyMeasures
% \override Glissando.style = #'trill
\partial 4 
\tuplet 3/2 {g8^\markup{Swing (\bold{American Patrol})} (a b}
c4-.) c-. c8 (b c d) 
e8-- e4-. e8 (~e d e f) 
g4-. g8 (fis g fis g c) 
g2 r8 dis8 (e4-.) 
f4-. f8 (e d d f4) 
e4 e8 (d c e4.) 
d8 (a4.) b4-. c8 (d
~d2) r4 \tuplet 3/2 {g,8 (a b}
c4-.) c-. c8 (b c d) 
e8-- e4-. e8 (~e d e f) 
g4-. g8 (fis g fis g c) 
g2 r8 b,8 (c a') 
r8 g4.-> f4-^ e-^
d4-^ c-^ b-^ c8 (d
~d4) e8 (f e8--) d4-. c8-.
r4 g'8 \< (a b c d e) 
f4-. \f f-. f-. f-. 
f8 (e f2) fis4 
g8-- g4-. g8 (~g f e f
g2) r8 e4.--->
f4-. f-. f-. f8-- f-.
r8 e8 (f4 ~f8) fis4.->
g8-- g4-. g8 (~g f e f
g2.) r8 c,,8
a'4-. a-. c4. (a8) 
g8-- g4-. a8 (g f e4-.) 
f4-. f-. b,4. (f'8) 
e8-- e4-. f8 (e d c4-.) 
r4 \tuplet 3/2 {a'8 (ais b)} c4. (a8) 
g4 g8 (a g f e4-.) 
f4-. f-. b,8 (ais b c-.) 
r1 \bar"||" \key g \major
r8 fis4.-> \p g4-. a8-- g-.
r1
r8 a4.-> \mf b4-. c8-- b-.
r1
r8 cis4.-> \f d4-. e8-- d-.
r1
r8 e4.-> \ff fis4-. g8-- fis-.
r4 d,8 \mf (e fis g a b) \bar"||"
c4-. c-. c-. c-. 
c8 (b c4 ~c8) cis4.->
d8 (g4.) d8 (c b c) 
d2 r8 g, (a b) 
c4-. c8 (b) c4-. c8 (b) 
c8 (b c4 ~c8) cis4.->
d8 (e4.) \tuplet 3/2 {d8 [(des c]} b8 c 
d!2) r8 g,4.-> \f 
e'4-. e-. g4.-- e8--
d8-- d4-. e8-- d (c b4-.) 
c4-. c-. fis,4. (c'8) 
b8-- b4-. c8-- b8 (a) g4-.
r4 e'8 (g ~g2) 
r4 r8 g8-^r8 g4.-^
r8 d8->\sp \< (cis d) es-> (d es) e->
(dis e) f-> (e f) fis-> (f fis) 
g4-^ \ff r r2\bar"||" \key c \major
r1^\markup{Moderato (\bold{A String of Pearls})} 
r1
g8--->\ff g-.-^ r4 r4 g,8---> g-.-^
r2 g8---> g-.-^ r4 
r4 g,8---> g-.-^ r8 g''8(\noBeam \tuplet 3/2 { a8) [r ais](}
b4 a g f) \bar"||"
e,4.--\mp e8 ~e4 e4-- 
~e8 e4.-- e8 (f g-.) r
e4.-- e8 ~e4 e4-- 
~e8 e4.-- e8 (f g-.) r
e4.-- e8 ~e4 e4-- 
~e8 e4. g8 (c, d-.) r
c4.-- c8-. r4 r8 g8 \f
c8-- a4-. as8-- r8 g4.-> 
a'4.--\mp a8 ~a4 a4-- 
~a8 a4.-- a8 (bes c-.) r
a4.-- a8 ~a4 a4-- 
~a8 a4.-- a8 (bes c-.) r
a4.-- a8 ~a4 a4-- 
~a8 a4.-- a8 (f g-.) r
f4.-- f8-^ r8 e8\ff (f fis
g2.) r4
e4.--\mp e8 ~e4 e4-- 
~e8 e4.-- e8 (f g-.) r
e4.-- e8 ~e4 e4-- 
~e8 e4.-- e8 (f g-.) r
e4.-- e8 ~e4 e4-- 
~e8 e4. e8 (c d-.) r
c4.-- c8-. r8 dis'8 \< (\tuplet 3/2 {e8 [g a]} 
c4-.) \f a2-> g4-^ \bar"||" \key f \major
f2-> f4.-> f8-> 
r8 f4.-> c8-- d4-. f,8-^
r8^\markup{Solo} c'8 (d f bes8) a4-. c8 
(es d c a c d as g) 
f2-> f4.-> f8-> 
r8 f4.-> c8-- d4-. f,8-^
r8 c'8 ( \tuplet 3/2 {f8 [d f]} c'8 a16 as g8 [ges])
f8 (f, d' es ~es4) c
c2-> c4-.-^ c-> 
~c c4-.-^ c2--->
c8-^ r d8 (f g gis a f)
r8 d4-^ d-^ d-^ a8-- 
d4 (\tuplet 3/2 {a8) r d--} cis4 (\tuplet 3/2 {gis8) r cis--}
c!4 (\tuplet 3/2 {g!8) r c--} b4 (\tuplet 3/2 {fis8) r b}
bes8-- bes4-. bes8 r4 bes8 b->
~b2 ~b8\fermata r8 r4 \bar"||"\time 4/4 \key c \major
r8^\markup{Slow (\bold{A Sentimental Journey})} e4 (c8 e4.  c8 
e8 c e c e c4.)
r8 e4 (c8 e4. f8 
e4 es8 d ~d2)
r8 e4 (c8 e4. c8 
es8 c es c es d4.)
r8 e4 (c8 e4. f8
e es \> d c ~c2)\p 
r8 e,4 (c8 e4. c8 
e8 c e c e c4.)
r8 e4 (c8 e4. f8 
e4 es8 d ~d2)
r8 e4 (c8 e4. c8 
es8 c es c es c4.)
r8 e4 (c8 e4. f8
e es d c ~c2)\bar"||" 
\scoop b''8\mf (c4. ~c2)
b8 (c4) b16 (c d c a fis dis e b' c
fis,8 g a g ~g2) 
fis8 (g fis g a g4.) 
cis8 (d4) a8 (d2) 
cis8 (d a ais c a \glissando d,16 e fis a) 
b4 \glissando f!8 a ~a2
g4 \glissando e8 f ~f2 \bar"||"
g,2\p ~g8 gis-- a4-.
g2 ~g8 e (g a ) 
g2 ~g8 a8-- as4-.
g4 (fis8 f~ f) a (as g) 
e8^\markup{Solo} \< (c e g16 a c8 b16 c e g c d) 
es8 (c es c es d4. \f) 
r8 \scoop e4 (c16 a g8 \glissando dis16 e c g a c) 
e8 \> (es d c~c2)\! \fermata \bar"||"\time 2/2 
c,8^\markup{Swing (\bold{In The Mood})}\mf (e g c-.) ~c c4-.-> c8->-.
~c8 c4-.-> c8-> (b c g e) 
g (fis f e es) d4-.-> c8 
r8 e'8 \f (g) c8-. ~c g (e c) 
d (e d c a4) d8 (e d c a8--) a8-. ~a e'4.-^
d8 (e d c a4) d8-> (e d c a--) a8-. ~a c4-^ c8--
\repeat volta 2{
\repeat percent 2 { 
    e,8_\markup{\dynamic mf - \dynamic f} (g c-> e, g c-> e, g 
c8-> e, g c->~c4) r4
}
f,8 (a c-> f, a c-> f, a 
c8-> f, a c->~c4) r4
e,8 (g c-> e, g c-> e, g 
c8-> e, g c->~c4) r4
g8 (b d-> g, b d-> g, b
d8-> g, b d->~d8) c4-. c8
}
\alternative {{
c8--\p \< c-- c-- c-- c-- c-- c-- c--
c8-- c-- c-- c-- ~c4 \f r4 }
{c8--\p \< c-- c-- c-- c-- c-- c-- c--
c8-- c-- c-- c-- ~c4 \f r4}}
\repeat volta 2{
c8--\f a4-. c8-> ~c2 
r8 f, (a c e e4.) 
c8-- a4-. c8-> ~c2 
r8 f, (a c e g4.) 
c,8-- a4-. c8-> ~c2 
r8 f, (a c) d-- g4-. d8--
}
\alternative {{
g8--\p \< g-- g-- g-- g-- g-- g-- g--
g4-- es8-- d-. ~d8 \f c4. }
{g'8--\f g-. r e-- g-- g-. r e--}}
g4-- es8-- d-. ~d8 c4.---> 
\grace { g16 (a c e)} g8--\f e4-. es-. c-. d8-.
~d8 c (d c a) g4.
e4-- e-. r c
r c r \tuplet 3/2 {g'8 a g }
c8-- (bes4.) fis8 (es4.)
a8 (f4.) d8 (g,4) d''8 
g8-- g-. r e8-- g8-- g-. r e8-- 
g4-- es8-- d8-. ~d c8 (es c
es-> c a c-> a fis a-> fis 
f! d a bes b g4.->) 
c4-- c-. r c 
r d r f \glissando
c'8 [(b16 bes] a8 g es'8 c a fis)  
bes8 ( a bes) r g (as g) e'-- 
g8-- g-. r e-- g-- g-. r e--
g4-- es8-- d-. ~d c4.-> 
c8 \f (d e f) g-- c4-. g8-- 
gis8 (fis4-.) g8-> ~g2 
r8 g8 (f4) es8-- d4-. fis8
(f!4) r g2-^
\repeat volta 3{
\repeat percent 2 { 
e,8_\markup{\dynamic mf - \dynamic p - \dynamic pp} (g c-> e, g c-> e, g 
c8-> e, g c->~c4) r4
}
f,8 (a c-> f, a c-> f, a 
c8-> f, a c->~c4) r4
e,8 (g c-> e, g c-> e, g 
c8-> e, g c->~c4) r4
g8 (b d-> g, b d-> g, b
d8-> g, b d->~d4) r 
r8 ^\markup {\translate-scaled #'(-1 . 0) 1.}_\markup {\translate-scaled #'(-3 . 0) 2.-3.}
\new Voice <<
  \relative c'''{  g8-. fis g gis a ais b }
  \relative c'''{  g,8 fis g gis a ais b }
>>
}
\alternative{
{
\new Voice <<
  \relative c'''{c4-^}
  \relative c''{c4}
>>
r r2
r1 
r1}
{c4-^ r r8 c'4-^ \ff c8-^ (
}
}
\repeat percent 2 { 
e,,8 g c-> e, g c-> e, g 
c8-> e, g c->~c4) r4
}
f,8 (a c-> f, a c-> f, a 
c8-> f, a c->~c4) r4
e,8 (g c-> e, g c-> e, g 
c8-> e, g c->~c4) r4
g8 (b d-> g, b d-> g, b
d8-> g, b d->~d4) r 
g,4-- \f \cresc fis8-. g-. gis-. a-. ais-. b-.
c4-- b8-. c-. cis-. d-. dis e-. 
f4-- dis8-. e-. f-. fis-. g-. gis-. 
a4-- gis8-. a-. bes4-. bes-. 
a8-. ais-. b4-. b-. ais8-. b-.
c2 \!
\new Voice <<
  \relative c'''{ c8-. cis-. d-. dis-.  e1 \ff ~e2~e4}
  \relative c'''{ gis8 a ais bis c1 ~c2~c4 }
>>
r 
r1
d1\fermata
\bar"|."
} }
 
