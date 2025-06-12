MissaSolemnisCEinsKyrie = {
\compressEmptyMeasures
\override DynamicTextSpanner.style = #'none
\new Voice \transpose bes c' \relative c'' {
\time 3/4
\key c \major
<>^\markup{\large \bold{Andante}}R2.*5
<<
  { b,2.\rest
  b2.\rest}
  \new CueVoice {
    \stemUp \appoggiatura c'16^"Vl. I" bes8 (a16 bes) a8-. c-. f-. a-.
    c8. (a16) c8 a,4 (c8)
  }
>>
r4 r8 g'\p (f e)
e4 (f8) a (d, f)
f4 (e8) c( c' b)~
b8 (a4 g8)~g16 (f) f (e)
\appoggiatura f16 e8 (d16 e) d8 g4\f b8
c4 r r
R2.
c,2. ~
c4 b f'
e4 r r
R2.
a4~a8 r r4
r4 r8 g8\p (f e)
e4 (f8) a (d, f)
f4 (e8) (c c' b)~
b8 (a4 g8)~g16 (f) f (e)
\appoggiatura f16 e8 (d16 e) d8 d4\f d8
d2~d8 r
f8-!\p f16 (g) e8-! e16 (f) d8-! r
g2\f ~g8 r
g8-!\p g16 (a) f8-! f16 (g) e8-! r
R2.*4
fis2\fp (a8) r
d,2\f ~d8 r
f!16-.\p f-. f (g) e-. e-. e (f) d8-! r
g2\f ~g8 r
g16-.\p g-. g (a) f-. f-. f (g) e8-! r
R2.*9
e4\fp (f) r
d4\fp (e) r8. g16
g16 (f a f) e4 (d)
R2.*3
e2.\p
d2.
c2.\pp ~
c2 r4\fermata
\bar"|."
}}


MissaSolemnisCEinsGloria = \new Voice \transpose bes c' \relative c''{
\time 4/4
\key c \major
c4.^\markup{\large \bold{Allegro molto}}\f c8 b4 c
d4 e f2
e4. c8 b b\trill (c) c\trill
(d) d\trill (e) e\trill f2
e4 g2 g4
a1
g1
f4 e d c
b8 g'-. g-. g-. g-. fis16-. e-. d-. c-. b-. a-.
g4. g8 fis4 g
a4 b c2
b4. g8 fis fis\trill (g) g\trill
(a) a\trill (b) b\trill c2
b4 b'2 b4
c1
b1
a4 g2 fis4
g4 r d2\fp ~
d1
~d4 r r2
R1*2
r4 c4. (b8 a g16 a)
b4 r r2
R1
r2 e\fp~
e1 ~
e4 r r2
R1*2
r4 bes'4. (a8 g f16 g)
a4 r r c,-!
a4-! f-! r f'-!
c4-! a-! r a
c8-. es-. \p es-. es-. es-. c'-. c-. c-.
c4 r r2
R1
r2 r4 bes,-!\f
f4-! d-! r d'-!
bes4-! f-! r f'
d8-. f-. f-. f-. f-. as-. as-. as-.
as4 r r2
R1*3
r2 r4 g,-!\f
es4-! c-! r c'
g4-! e!-! r c'
e!8-. g-. g-. g-. g-. bes-. bes-. bes-.
bes4 r r2
R1*3
r4 g2\f g4
fis1
f!1
e!1
es1
des1
c1
fis1
g4 r r2
R1
g4 g8. g16 g4 g
b4 b8. b16 b8 b b b
c4. c,8 b4 c
d4 e f2
e4. c8 b b\trill (c) c\trill
(d) d\trill (e) e\trill f2
e4 g4~g8 c4 b8 ~
b8 e, a4~a8 a4 g8~
g8 c, f4~f8 f4 f8
e2 d
c4 r r2
r2 g'2~\fp
g1~
g4 r r2
r4 f4. (e8 d c16 d)
e4 r r2
R1*5
c1\f ~
c4 cis d2~
d4 dis e2~
e2 f~
f1
e2 d
e2 f
e8 e r e r d r d
e2 f
e8 e r e r d r d
c4 r r2
R1
g'1~
g4 e d d
c4 c,8. c16 c4 r \fermata \bar"|."
}

MissaSolemnisCEinsCredo = \new Voice \transpose bes c' \relative c''{
\time 3/4
\key c \major
c2^\markup{\large \bold{Allegro vivace}}\f e4
g4. f8 e d
c2 a4
e'4. d8 c b
a2 f4
c'4. d8 e f
\appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d \appoggiatura f16 e8 d16 c
d8 c b a g4
c2 e4
g4. f8 e d
c2 a4
e'4. d8 c b
a2 f4
c'4. d8 e f
g8 a g f e d
c8 g g e e c
c4 r r
r4 e' e
c'4. (b8 a gis)
a4 e4. cis8
d4 r r
r4 d d
b'4. (a8 g fis)
g4 d4. b8
c4 e fis8 g
a2 c4
b2 c4
b4 (a) r
d,4 d8 d d d
d4 (fis a)
g4 b,8 b b b
b4 (d fis)
e4 e8 e e fis
g4 g,8 a b c
d8 c' b a g fis
g8 d d bes bes g
g4 r r
a'8 e e cis cis a
a4 r r
d8 a' a f! f d
d8 a'4 g8 f e
d2 e4
f2 e4
d8 g g16 fis g a g f e d
c2 e4
d4 g b,
c2 a4
b4 e g,
a2 f4
c'4. d8 e f
\appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d \appoggiatura f16 e8 d16 c
\appoggiatura e16 d8 c16 b \appoggiatura d16 c8 bes16 a \appoggiatura c16 bes8 a16 g
\appoggiatura bes16 a8 g16 f \appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d
e8 c'' c c c c
c8. f,16 e4 d
c4 r\fermata r ^\markup{\large{\bold Andante}}
R2.*3
c'2.\p ~
c2. ~
c2. ~
c2.
r2.
bes2.
e,!2.
a2.
d,2.
g2.
c,2.
(d4) r r
R2.*2
a'2. ~
a2.~
a2.
a2.
(g8) g (fis g) c (a)
r8 g (fis g) a (fis)
e4^\markup{\large{\bold{Allegro vivace}}} r r
f!4\f f8 f f f
e4 r r
R2.*2
c2 e4
g4. f8 e d
c2 a4
e'4. d8 c b
a2 f4
c'4. d8 e f
\appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d \appoggiatura f16 e8 d16 c
d8-! d-! d-! bes-! bes-! g-!
g4 r r
a'8-! e-! e-! cis-! cis-! a-!
a4 r r
d8-! a'-! a-! f-! f-! d-!
d4 r r
e8-! b'-! b-! gis-! gis-! e-!
e4 r r
a8-! e-! e-! c-! c-! a-!
a4 r r
R2.*3
c2 e4
g4. f8 e d
c2 a4
e'4. d8 c b
a2 f4
c'4. d8 e f
g8 a g f e d
c'8 bes a g f e
f4 r r
R2.*2
r4 r a\p ~
a4 \appoggiatura c16 bes4 \appoggiatura a16 g4
\appoggiatura f16 e!4 (f) r
R2.*2
r4 r e ~
e4 \appoggiatura g16 f4 \appoggiatura e16 d4
\appoggiatura c16 b!4 (c) r
R2.
r4 r g'
c8 (c) c(bes) bes(a)
a4 (g) r
R2.*7
f8-!\f c'-! c-! a-! a-! f-!
f4 r r
r4 a, a
a'4. (g8 f e)
f4 a4. fis8
g4 r r
r g, g
g'4. (f!8 e d)
e4 g4. e8
f2. ~
f4 d a'
g2. ~
g4 e c'
f,2. ~
f2.
e2 f4
e4 d r
R2.*4
as'2.\p
g2.
fis2.
g8 g\f g16 fis g a g f e d
c2 e4
d4 g b,
c2 a4
b4 e g,
a2 f4
c'4. d8 e f
\appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d \appoggiatura f16 e8 d16 c
\appoggiatura e16 d8 c16 b \appoggiatura d16 c8 bes16 a \appoggiatura c16 bes8 a16 g
\appoggiatura bes16 a8 g16 f \appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d
e8 c'' c c c c
c8. f,16 e4 d
c8 g c d e f
g8 a g f e d
c8 g c d e f
g8 a g f e d
c4 r d
e4 r r \fermata \bar"|."
}

MissaSolemnisCEinsSanctus = \new Voice \transpose bes c' \relative c''{
\time 4/4
\key c \major
c4^\markup{\large{\bold{Adagio}}}\f c, r2
e'16 (f) f-. f-. e (f) f-. f-. r2
fis16 (g) g-. g-. fis (g) g-. g-. r2
r2 b2\p \cresc
c4. b16 a g4\f f
e8 e4 e8 fis4 r
fis4 r fis r
fis4 ~fis16 \((e) d(c)\) c8\trill b r\fermata r^\markup{\large{\bold{Allegro non troppo}}}
R1*3
r2 r4 r8 g\f
g8 (e'4) d16. (c32) b8 (f'4) e16. (d32)
c8 (c'4 b16 a) g8 (f) e e
cis8 (d e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 d d8 (dis) e-! e-!
cis (d! e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 d c4 g
c4 e g8. f16 e8 r
\appoggiatura e16 d8 (f16 d) c8 (b) c4 g
c4 e g8. f16 e8 r
R1*3
g2\f \appoggiatura g8 f4 e
\appoggiatura e8 d4 c f8 f d4\trill
c4 r r2\fermata \bar"|."
}

MissaSolemnisCEinsBenedictus = \new Voice \transpose bes c' \relative c'{
\time 4/4
\key c \major
<> ^\markup{\large{\bold{Allegro non troppo}}}
R1*7
<<
  { b,,1\rest
  b1\rest}
  \new CueVoice {
    \cueClef "bass" \stemUp dis'8^\markup{Fag. I/II} e a,4 b8 c a b
    e1 \cueClefUnset
  }
>>
r8 e'\f e'4. f16 e d c b a
gis8 a4 b16 a b8 c d e
f4 e r2
g4 c, e2
d8 g, c4. b8 a d~
d c4 bes a8 g c16 bes
a8 c, c'4. d16 c bes a g f
e8 f4 e16 d e8 f4 e8
fis8 g4 fis8 g bes4 a8
g4 r r2
R1
a'4 e f2
e8 a, d4. c8 b e
c8 (b c e) a2
gis4 a4. g8 (fis b)
g2~g8 (f! e a)
f2~f8 (e d g)
e4. f8 d4. e8
c8 a4 gis8 c4 a
b8 a r4 r8 a4 (gis8)
r8 f'4 (e8) r2
e4 a,4. b8 c b16 a
gis4 r r2
R1
f'16\p (e d c b c d e f e d e f g! a b )
c4 r r2
R1*2
r2 r4 r8 g,\f
g8 (e'4) d16. (c32) b8 (f'4 ) e16. (d32)
c8 (c'4 b16 a) g8 (f) e e
cis8 (d e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 d d8 (dis) e-! e-!
cis8 (d e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 b c4 g
c4 e g8. f16 e8 r
\appoggiatura e16 d8 (f16 d) c8 (b) c4 g
c4 e g8. f16 e8 r
R1*3
g2 \appoggiatura g8 f4 e
\appoggiatura e8 d4 c f8 f d4\trill
c4 r r2\fermata \bar"|."
}

MissaSolemnisCEinsAgnusdei = \new Voice \transpose bes c' \relative c''{
\time 4/4
\key es \major
bes4.^\markup{\large{\bold{Andante sostenuto}}} (es8) \appoggiatura f16 es8 (d) r4
f4 ~f16 (g as as,) \appoggiatura bes as8 (g) r4
r4 r8 g'8 g16 (c) c4 (bes8)
bes8 (as4 g8) g16. (as64 g f16 es d c bes as)
g8 r r4 r2
bes'2 bes8. (g16) es8-. es-.
as8. (f16) d8-. d-. g2
r16 f (d bes) r es (c a) bes4 r
r2 f'8. (g32 a bes) a-. g-. f-. es-. d-. c-. bes-.
f4 r r8 c'32 (d c d) f16 (es d c )
bes4 r r2
R1
r2 bes8. (c32 d) es16 (d c bes)
d8. (es32 f) g16 (f es d) as'!-. g-. f-. es-. d-. c-. bes-. as-.
g8 r r4 r32 fis' (g fis g8) r32 d (es d es8)
R1
r2 r4 r8 f
f16 (as!) as4 (d,8) es r r4
bes'4 ~bes16 c \appoggiatura bes32 as16 \appoggiatura g32 f16 es8 d r4
R1
r2 r16 f (d bes) r16 es (c a)
bes4 r bes2 ~
bes2 ~bes8 r r4
r8 r16 c' (bes as! g f ) es4 r
es1~
es16 c' (bes as g f as f) bes16. (g32 ) es8 ~es16  f32 (g) \appoggiatura g32 f16 es32 d
es8. (f32 g) as16 (g f es) g8. (as32 bes) c16 (bes as g)
des'16-. c-. bes-. as-. g-. f-. es-. des-. c4-! r
r16 g' (bes g) r es (g es) r f (as f) r d! (f d)
es4 r r des8 (c)
r2 r4 es8 (d!)
R1*2
c'4 (fis,) g r\fermata \bar"||" \time 3/4 \key c \major
<>^\markup{\large{\bold {Allegro assai}}} R2.*6
<<
  { b,,,,2.\rest
  b2.\rest}
  \new CueVoice {
    \cueClef "bass" \stemUp c'4-!^\markup{Fag. I} f-! d-!
    g r r\cueClefUnset
  }
>>
c'8-.\f c-. c-. c-. c32\trill (b c8.)
d8-. c-. b a-. g16 a b c
d8-. d-. d-. d-. d32\trill (c d8.)
d4 (\appoggiatura f16 e4 ) d
g8. (a32 b c8) b-. a-. g-.
f8-. e-. d-. c-. b4
g'8. a16 c,4 b\trill
c4 r r
R2.*7
r4 r8 d\f (f d)
c8-. c-. c-. c-. c32 \trill (b c8.)
d8-. c-. b-. a-. g16 a b c
d8-. d-. d-. d-. d32\trill (c d8.)
d4 (\appoggiatura f16 e4) d
g8. (a32 b c8) b-. a-. g-.
f8-. e-. d-. c-. b4
g'8. a16 c,4 b
c4 c' (as\p
es4 c as
es4) r r
R2.*6
r8 g' (fis g fis g)
g,4 r r
R2.*6
r4 r8 d'\f (f! d)
c8-. c-. c-. c-. c32\trill (b c8.)
d8-. c-. b-. a-. g16 a b c
d8-. d-. d-. d-. d32 \trill (c d8. )
d4(\appoggiatura f16 e4) d
g8. (a32 b c8) b-. a-. g-.
f8-. e-. d-. c-. b4
R2.*2
e8. (f32 g a8) g-. f-. e-.
d-. c-. b-. a-. g4
R2.*10
e'2.\f
f2.
d2 (b4)
g'2.
e2.
f2.
b2.
c4 r8 c,16 d \appoggiatura f16 e8 d16 c
g'4 e d
e4 r8 c16 d \appoggiatura f16 e8 d16 c
g'4 e d
c r r
c'2.\p ~
c2.~
c2.~
c4 r r\fermata \bar"|."
}
