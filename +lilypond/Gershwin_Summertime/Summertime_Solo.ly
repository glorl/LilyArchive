SummertimeSolo=\new Voice \relative c''{
\set Timing.beamExceptions = #'()
\set Timing.baseMoment = #(ly:make-moment 1/4)
\set Timing.beatStructure = #'(1 1 1 1)
    \partial 4 r4 % |
r1 |
r1 |
r1 |
r2 \acciaccatura g'8 fis4 (d) \bar"||" |
fis1 ~ |
fis8 r8 e (d e fis d4)  |
b2 (fis2~ |
fis4) r fis' (d)  |
e4. e8 ~e2  |
r4 d8 \mp \<(b d b d4)\!  |
cis1~|
cis4. cis'8 (d b fis d)  |
fis8-- fis4-- fis8 ~fis2 |
r4 e8 (d e fis d4) |
b2 (fis~|
fis2) r4 fis4-- |
a4 fis8 (a) b4 (d) |
fis8 (e4. d2) |
\acciaccatura d8 b1~|
b1 ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }}~|
b4 r \tuplet 3/2{fis'4-- fis-- d-- }\bar"||"|
fis4 fis2.|
r8 fis8 (d d e fis d4) |
b2 (fis~|
fis4) r \acciaccatura eis'8 fis4 (d4) |
e8-- e4 e8~e2~|
e8 r8 d(b d b d4) |
cis1 ~|
cis2 r8 fis8-- fis (d) |
fis8 fis4. ~fis2|
r4 e8 (d e fis d4) |
b2 (fis)~|
fis2 ~fis8 r fis4-- |
a4 fis8 (a) b4 (d) |
fis8-- e4. d2|
\acciaccatura d8 b1~ |
b8 r^\markup{break} r4 r2\bar"||" |
\cadenzaOn 
\stopStaff 
% \once \override TextScript #'word-space = #1.5
\once \override TextScript.X-offset = #0
\once \override TextScript.Y-offset = #-0.5 | 
s1*1^\markup { \center-column { "Improv." } }  | 
s1*1 \bar""|
s1 |
s1 |
\startStaff 
\cadenzaOff
\bar"|"
b1^\markup { \fontsize #4 {\musicglyph #"scripts.coda"} }\> ~|
b1~|
b1~|
b1 \pp |
r1|
r1|
\bar"|."
}


SummertimeChorus=\relative c''{
\set Timing.beamExceptions = #'()
\set Timing.baseMoment = #(ly:make-moment 1/4)
\set Timing.beatStructure = #'(1 1 1 1)
r8 ais'16 (b \tuplet 3/2{f8 fis d}  cis d4 e16 eis) \bar"||"
fis4 (\tuplet 3/2{fis8 d b} cis8) ais'4 (fis16 e
fis4) r8 e16 (d cis fis e cis fis,8) cis'
b4 (cis16 d e eis fis8) fis,~\tuplet 3/2{fis8 ais d} 
cis8 b4. r2
r8 b8 (e g16 a b8 fis16 g e16 d8 b16 
g16 fis g8) r4 r r8 b16 (d
fis4 e16 cis8 b16 d8 cis16 b b d e eis
fis2)  r4 r8 fis,16 (e) 
fis8 d' \tuplet 3/2{e8 d b } ais4 cis16 ais8 e16 
d2 r8 d'8 \tuplet 3/2{cis8 (e g)}
fis4 \glissando b8 d \tuplet 3/2{ais8 (b cis)} e,16 eis fis g
\tuplet 3/2{fis8 (cis d)} b4 r2
a'!8 a4 fis16 a b16 d b a b a fis f
e8 b e16 es d c d4 b8 g
g8 e4 d8 fis8 b16 (fis' gis8 b16 d)
b4^\markup { \fontsize #4 {\musicglyph #"scripts.coda"} } r4 \tuplet 3/2{fis4 fis e}\bar"||"
b8 fis d' b cis fis4 cis'8
\tuplet 3/2{d8 b d~} d8 b(ais4) ais16 e8 cis16
b8 d4 e8 fis16 cis d e ais, b cis d 
g8 fis4. r4 r8 fis,8 
e16 b'8 g16 e'16 b8 g'16 e16 b'8 g16 e8 bes16 a
g8 fis16 e fis4 b,2
r4 r8 cis'16 dis f fis gis ais b8 f
fis8 ais,4 d8 cis8 fis,4. 
r4 r8 d'16 e fis g (fis8 fis) ais,
b8 fis d' cis~\tuplet 3/2{cis8 (e fis)} ais8 b 
d16 b8 a!16 g16 fis8 b,16 cis8 b16 ais e'8 ais,
d8 cis4 r8 r4 r8 b16 bes 
a8 fis'16 e d b fis a b8 d4 e16 (eis) 
fis8 e ais, b e d \tuplet 3/2{g, a cis}
b1
b4_\markup{Thema D.C. al \musicglyph #"scripts.coda" - \musicglyph #"scripts.coda"} r4 \grace g'8 (fis4) (d) \bar"||"
}

