MissaSolemnisCZweiKyrie = {
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
r4 r8 e\p (d cis)
cis4 (d8) f (b, d)
d4 (c!) g'4 ~
g8 (f4 e8) ~e16 (d) d(c)
\appoggiatura d16 c8 (b16 c) b8 g4\f f'8
e4 r r
R2.
c2. ~
c4 b f'
e4 r r
R2.
f4~f8 r r4
r4 r8 e8\p (d cis)
cis4 (d8) f (b, d)
d4 (c!) g'~
g8 (f4 e8)~e16 (d) d (c)
\appoggiatura d16 c8 (b16 c) b8 b4\f b8
b2~b8 r
d8-!\p d16 (e) c8-! c16 (d) b8-! r
e2\f ~e8 r
e8-!\p e16 (f) d8-! d16 (e) c8-! r
R2.*4
a2\fp (c8) r
b2\f ~b8 r
d16-.\p d-. d (e) c-. c-. c (d) b8-! r
e2\f ~e8 r
e16-.\p e-. e (f) d-. d-. d (e) c8-! r
R2.*9
cis4\fp (d) r
b4\fp (c!) r8. e16
e16 (d f d) c4 (b)
R2.*3
c2.\p
c2 b4
c2.\pp ~
c2 r4\fermata
\bar"|."
}}

MissaSolemnisCZweiGloria = \new Voice \transpose bes c' \relative c''{
\time 4/4
\key c \major
e,4.^\markup{\large \bold{Allegro molto}}\f e8 f4 g
a4 b c d
c4. e,8 f4 g
a4 b c d
c4 e2 e4
f1
e2. e8 d
c4 b a2
g8 g'-. g-. g-. g-. fis16-. e-. d-. c-. b-. a-.
g4. d8 c4 d
e4 fis g a
g4. d8 c4 d
e4 fis g a
g4 d'2 d4
e1
d1
c4 b a2
g4 r d2\fp ~
d1
~d4 r r2
R1*2
r4 a'4. (g8 fis e16 fis)
g4 r r2
R1
r2 e\fp~
e1 ~
e4 r r2
R1*2
r4 g'4. (f8 e d16 e)
f4 r r c-!\f
a4-! f-! r f'-!
c4-! a-! r f
a8-. c-. \p c-. c-. c-. es-. es-. es-.
es4 r r2
R1
r2 r4 bes-!\f
f4-! d-! r d'-!
bes4-! f-! r d'
bes8-. as-. as-. as-. as-. f'-. f-. f-.
f4 r r2
R1*3
r2 r4 g,-!\f
es4-! c-! r c'
g4-! e!-! r e
g8-. bes-. bes-. bes-. bes-. g'-. g-. g-.
g4 r r2
R1*3
r4 b,!2\f b4
c1
d1
c1
c1
bes1
as1
c1
b!4 r r2
R1
b4 b8. b16 b4 b
f'4 f8. f16 f8 f f f
e4. e,8 f4 g
a4 b c d
c4. e,8 f4 g
a4 b c d
c4 e2 d4
c2. b4
a4. b16 c d8 d4 d8
c2. b4
c4 r r2
r2 g2~\fp
g1~
g4 r r2
r4 d'4. (c8 b a16 b)
c4 r r2
R1*5
c,4\f e g2
a4 f d a'\trill
b4 g e b'\trill
c2 a
d1
c2. b4
c2 d
c8 c r c r a r b
c2 d
c8 c r c r a r b
c4 r r2
R1
g1~
g4 c c b
c4 c,8. c16 c4 r \fermata \bar"|."
}

MissaSolemnisCZweiCredo = \new Voice \transpose bes c' \relative c''{
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
g8 f e d c b
c8 g g e e c
c4 r r
r4 e' e
e4. (d8 c b)
c2 a4~
a4 r r
r4 d d
d4. (c8 b a)
b2 g4~
g2 c4~
c2 a'4
g2 a4
g4 (fis) r
b,4 b8 b b b
a4 (d fis)
b,4 g8 g g g
fis4 (b d)
g,4 g8 g g g
b4 g8 a b c
d8 e d c b a
g8 d' d bes bes g
g4 r r
a'8 e e cis cis a
a4 r r
d8 a' a f! f d
d8 a4 cis8 d c
b2 c4
d2 c4
b8 g' g16 fis g a g f e d
c2 e4
d4 g b,
c2 a4
b4 e g,
a2 f4
c'4. d8 e f
\appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d \appoggiatura f16 e8 d16 c
\appoggiatura e16 d8 c16 b \appoggiatura d16 c8 bes16 a \appoggiatura c16 bes8 a16 g
\appoggiatura bes16 a8 g16 f \appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d
e8 e' e e e e
e8. d16 c4 b
c4 r\fermata r ^\markup{\large {\bold Andante}}
R2.*3
c'2\p \appoggiatura c16 bes8 (a16 bes)
a2 \appoggiatura a16 g8 (fis16 g)
fis2 \appoggiatura f16 es8 (d16 es)
d2.
r2.
r8 d (es d es d)
cis2.
r8 c! (d c d c)
b!2.
r8 bes (c bes c bes)
a2.
(bes4) r r
R2.*2
a'2 \appoggiatura a16 g8 (fis16 g)
f!2 \appoggiatura f16 e8 (dis16 e)
d2 \appoggiatura d16 c8 (b!16 c)
b2.
(c8) e (dis e) a (fis)
r8 e (dis e) fis (dis)
e4^\markup{\large{\bold{Allegro vivace}}} r r
b4\f b8 b b b
c4 r r
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
g8 f e d c b
c8 bes' a g f e
f4 r r
R2.*2
r4 r es\p ~
es4 \appoggiatura es16 d4 \appoggiatura c16 bes4
bes4 (a) r
R2.*2
r4 r bes ~
bes4 \appoggiatura bes16 a4 \appoggiatura g16 f4
f4 (e) r
R2.
r4 r e'
f8 (a) a (g) g (f)
f4 (e) r
R2.*7
f8-!\f c-! c-! a-! a-! f-!
f4 r r
r4 a a
f'4. (e8 d cis)
d2. ~
d4 r r
r g, g
e'4. (d8 c! b)
c2.~
c4 a d~
d2 b4~
b4 g c~
c2 a4~
a4 f b~
b2.
c2 d4
c4 b r
R2.*4
r4 f'2\p~
f4 es2 ~
es4 (d c)
b8 g'\f g16 fis g a g f e d
c2 e4
d4 g b,
c2 a4
b4 e g,
a2 f4
c'4. d8 e f
\appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d \appoggiatura f16 e8 d16 c
\appoggiatura e16 d8 c16 b \appoggiatura d16 c8 bes16 a \appoggiatura c16 bes8 a16 g
\appoggiatura bes16 a8 g16 f \appoggiatura a16 g8 f16 e \appoggiatura g16 f8 e16 d
e8 e' e e e e
e8. d16 c4 b
c8 g c d e f
g8 f e d c b
c8 g c d e f
g8 f e d c b
c4 r b
c4 r r \fermata \bar"|."
}

MissaSolemnisCZweiSanctus = \new Voice \transpose bes c' \relative c''{
\time 4/4
\key c \major
c4^\markup{\large{\bold{Adagio}}}\f c, r2
cis'16 (d) d-. d-. cis (d) d-. d-. r2
dis16 (e) e-. e-. dis (e) e-. e-. r2
r2 d!2\p \cresc
g4 e2\f d4
c8 g4 g8 c4 r
c4 r c r
c4. a8 a8\trill g r\fermata r^\markup{\large{\bold{Allegro non troppo}}}
R1*3
r2 r4 r8 g\f
g8 (e'4) d16. (c32) b8 (f'4) e16. (d32)
c4 a'8 (g16 f) e8 (d) c e
cis8 (d e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 d d8 (dis) e-! e-!
cis (d! e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 d c4 e,
e4 c' e8. d16 c8 r
\appoggiatura g16 f8 (a16 f) e8 (d) e4 e
g4 c e8. d16 c8 r
R1*3
e4\f d c b
a4 g a8 a b4\trill
c4 r r2\fermata \bar"|."
}

MissaSolemnisCZweiBenedictus = \new Voice \transpose bes c' \relative c'{
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
gis4 e dis8 e4 dis8
e4. d!8 cis d4 cis8
d4. c!8 b c4 b8~
b8 c a4. b8 gis4
a8 a4 gis8 c4 a
b8 a r4 r8 a4 (gis8)
r8 f'4 (e8) r2
e4 a,4. b8 c b16 a
gis4 r r2
R1
d'16\p (c b a g! a b c d c b c d e f d )
e4 r r2
R1*2
r2 r4 r8 g,\f
g8 (e'4) d16. (c32) b8 (f'4 ) e16. (d32)
c4 a'8 (g16 f) e8 (d) c e
cis8 (d e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 d d8 (dis) e-! e-!
cis8 (d e d) \grace{d32 (e)} f8-! f4 e16. (d32)
c!8 c \appoggiatura e16 d8 c16 b c4 e,
g4 c e8. d16 c8 r
\appoggiatura g16 f8 (a16 f) e8 (d) e4 e
g4 c e8. d16 c8 r
R1*3
e4 d c b
a4 g a8 a b4\trill
c4 r r2\fermata \bar"|."
}

MissaSolemnisCZweiAgnusdei = \new Voice \transpose bes c' \relative c''{
\time 4/4
\key es \major
<>^\markup{\large{\bold{Andante sostenuto}}}
R1*27
<<
  { a,1\rest
  a1\rest
  a2\rest}
  \new CueVoice {
    \stemUp des''16-.^\markup{Kl. I} c-. bes-. as-. g-. f-. es-. des-. c4-! r
    r16 g' (bes g) r es (g es) r f (as f) r d (f d)
    es4 r
  }
>>
r bes\p
r2 r4 c
R1*2
fis4 (c) b r\fermata \bar"||" \time 3/4 \key c \major
<>^\markup{\large{\bold {Allegro assai}}} R2.*6
<<
  { b,,,2.\rest
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
d2.
e4 r8 c16 d \appoggiatura f16 e8 d16 c
g'4 c, b
c4 r8 c16 d \appoggiatura f16 e8 d16 c
g'4 c, b
c r r
c,2.\p ~
c2.~
c2.~
c4 r r\fermata \bar"|."
}

