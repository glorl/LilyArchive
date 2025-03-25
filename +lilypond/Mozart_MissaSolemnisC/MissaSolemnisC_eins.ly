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
f8\p f16 (g) e8 e16 (f) d8 r
g2\f ~g8 r
g8\p g16 (a) f8 f16 (g) e8 r
R2.*4
fis2\fp (a8) r
d,2\f ~d8 r
f!16\p f-. f (g) e-. e-. e (f) d8 r
g2\f ~g8 r
g16\p g-. g (a) f-. f-. f (g) e8 r
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


MissaSolemnisCEinsGloria = \new Voice \transpose bes c' \relative c'{
\time 4/4
\key c \major
c2.\f c8 b4 c
}

MissaSolemnisCEinsCredo = \new Voice \transpose bes c' \relative c''{
\time 3/4
\key c \major
R2.
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
