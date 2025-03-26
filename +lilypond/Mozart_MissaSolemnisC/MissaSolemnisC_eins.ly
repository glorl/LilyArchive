MissaSolemnisCEinsKyrie = \new Voice \relative c'' {
\time 3/4
\key c \major
<>^\markup{\large {Andante}}R2.*5
<<
  { b,2.\rest
  b2.\rest}
  \new CueVoice {
    \stemUp \appoggiatura c'16^"Vl. I" bes8 (a16 bes) a8-. c-. f-. a-.
    c8. (a16) c8 a,4 (c8)
  }
>>
r4 r8 e\p (d cis)
cis4 (d8) f (b d)
d4 (c!) g4 ~
g8 (f4 e8) ~e16 (d) d(c)
\appoggiatura f16 e8 (d16 e) d8 g4\f b8
c4 r r
R2.
c,2. ~
c4 b f
e4 r r
R2.
a'4~a8 r r4
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
}


MissaSolemnisCEinsGloria = \new Voice \relative c''{
\time 4/4
\key c \major
c4.\f c8 b4 c
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
r4 bes4. (a8 g fis16 g)
a4 r r c-!
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
bes4 bes8. bes16 bes8 bes bes bes
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

MissaSolemnisCEinsCredo = \new Voice \relative c''{
\time 3/4
\key c \major
c2\f e4
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

}

MissaSolemnisCEinsSanctus = \new Voice \transpose bes c' \relative c''{
\time 4/4
\key c \major
R1
}

MissaSolemnisCEinsBenedictus = \new Voice \transpose bes c' \relative c'''{
\time 4/4
\key f \major
R1
}

MissaSolemnisCEinsAgnusdei = \new Voice \transpose bes c' \relative c'{
\time 3/4
\key c \major
R2.
}
