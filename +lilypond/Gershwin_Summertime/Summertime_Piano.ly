\parallelMusic #'(SummertimePianoSolo SummertimePianoAcc) {
\partial 4 r4 |
\partial 4 \tuplet 3/2{gis'8 (a c)} |

r1 |
es4 es8 (c es) c4 es8-- |

r1 |
e!8 (c g gis a4 \tuplet 3/2{c8 cis d}|

r1 |
e8-^)\noBeam es,8 d4 c b |

r2 fis4 (d) \bar"||" |
a4 g f8 e~e4 \bar"||" |

fis1 ~ |
s1 |

fis8 r8 e (d e fis d4)  |
s1 |

b2 (fis2~ |
s1 |

fis4) r fis' (d)  |
s1 |

e4. e8 ~e2  |
<< {f'!4~\tuplet 3/2 {f8 g( gis} a4)~\tuplet 3/2 {a8 bes (b}}
    {f,4~\tuplet 3/2 {f8 g( gis} a4)~\tuplet 3/2 {a8 s s }}>> |

r4 d8 \mp \<(b d b d4)\!  |
d'8) s8 s4 s2 |

cis1~ |
r8 b, (e es d! b fis' f |

cis2 fis4 (d!)  |
e8) e, (cis' c) bes4 c |

fis8-- fis4-- fis8 ~fis2 |
s1 |

r4 e8 (d e fis d4) |
s1 |

b2 (fis~|
s1 |

fis2) r4 fis4-- |
c8 (a) \tuplet 3/2 {c8 a gis~} gis4 a |

a4 fis8 (a) b4 (d) |
s1 |

fis8 (e4. d2) |
s1 |

\acciaccatura d8 b1~|
s1 |

b1 ^\markup { \fontsize #4 {\musicglyph #"scripts.coda" }}~|
s4 g8 fis g a fis4 |

b4 r \tuplet 3/2{fis'4 fis d }\bar"||"|
a4 r r2 |

fis4 fis2.|
s1 |

r8 fis8 (d d e fis d4) |
s1 |

b2 (fis~|
s1 |

fis4) r fis'4 (d4) |
s2 gis'4 (fis4) |

e8-- e4 e8~e2~|
<< {f8 fis g gis \tuplet 3/2 {a4 bes b}}{
s4 d,8 b \tuplet 3/2 {a4 g gis}}>> |

e8 r8 d(b d b d4) |
a4 e f fis |

cis1 ~|
r8 b8 (e es d b  fis' f  |

cis2 r8 fis8-- fis (d) |
e8) e, cis' c b bes4. |

fis8 fis4. ~fis2|
s1 |

r4 e8 (d e fis d4) |
s1 |

b2 (fis)~|
s1 |

fis2 ~fis8 r fis4-- |
c8 a \tuplet 3/2{c8 a gis~} gis8 s s4|

a4 fis8 (a) b4 (d) |
s1 |

fis8-- e4. d2|
s1 |

\acciaccatura d8 b1~ \break |
a4 d8 (c d e c4 \break |

b8 r^\markup{break} r4 r2\bar"||"|
a8) s s4 s2 \bar"||"|

\cadenzaOn 
\stopStaff 

\once \override TextScript.X-offset = #0
\once \override TextScript.Y-offset = #-0.5 | 
s1^\markup { \center-column { "Improv." } }  | 
s1 |

s1 |
s1 |

s1 |
s1 |

s1*1 \bar""|
s1*1 \bar""|

\startStaff 
\cadenzaOff
\bar"|"
a4^\markup { \fontsize #4 {\musicglyph #"scripts.coda"} } (d8 c d e c a) |
b1 ~|

d2 c |
b1\>~ |

bes2 e, |
b1~|

a4 b8 (c b c gis4) |
b1 |

a4 (fis g gis |
s1|

a2.)^\fermata r4 |
s1\pp|
\bar"|."
}

%{
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
}%}

