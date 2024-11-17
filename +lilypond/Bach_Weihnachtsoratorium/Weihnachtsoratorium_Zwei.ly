mBreak = {  }

WeihnachtsoratoriumZweiCoro = {
  \set Score.markFormatter = #format-mark-alphabet
  \compressEmptyMeasures
  \transpose bes c' \relative c {
    <<
      { \override MultiMeasureRest.staff-position = #-6 R4.
        \override MultiMeasureRest.staff-position = #-8 R4.
        R4.\revert MultiMeasureRest.staff-position
      }
     \new CueVoice {
      \clef "bass" \stemUp d8^"Timp." d d
      d8 a r
      d16 d32 d d16 a d a
    }
    >>\clef "violin" \stemNeutral
    r16 fis''32 g g8.\trill fis32 g
    a8 r r\mBreak
    r32 d cis b a d cis b a g fis e
    d4. ~
    d4. ~
    d8 d'-. d-.
    d8 cis16 b cis8
    R4.*3 \mBreak
    r8 r e
    a,16 b cis8 d
    cis4 cis8
    c8 (c c )
    fis,8 ( fis fis)
    e8 (e' dis)  \mBreak
    e8 (b) b
    e16 g32 fis e16 g32 fis e8~
    e16 cis32 d e16 cis32 d e8 ~
    e16 fis32 e d8-. cis-.
    d16 fis32 e d16 fis32 e d8~
    d8 b-. d~
    d8 gis,-. b-.
    cis8-. a-. c~
    c8 fis,-. a
    b8-. a-. a-.
    b8-. r r
    e8-. r r
    d8-. a-. e
    fis8 r r
    R4.*2\mBreak
    r16 fis32 g g8.\trill fis32 g
    a8 r r
    a8 r r
    fis8 r r
    r32 d' cis b a d cis b a g fis e
    d4.~
    d4.~\mBreak
    d8 d' d
    d cis16 b cis8
    R4.*3
    r8 r e
    a,16 b cis8-. d-.
    cis4 r8
    R4.*2\mBreak
    r8 b16 (cis) cis16.\trill b64 cis
    d8-. b-. a-.
    a8 a d
    e8 e, gis
    a8 e16 fis fis16.\trill e64 fis
    g8 e d~
    d16 cis d e e16.\trill d64 e
    fis16 e fis a g16.\trill fis64 g
    a8 d, r
    r8 e16 g fis16.\trill e64 fis
    g16 b e8-. dis-.
    e8 b g~\mBreak
    g8 g g
    e8 ais cis
    d8 b ais
    b8 fis fis
    b16 d32 cis b16 d32 cis b8~\mBreak
    b16 gis32 a b16 gis32 a b8~
    b16 cis32 b a8-. gis-.
    a16 cis32 b a16 cis32 b a16 a32 b
    cis16 b32 cis dis16 cis32 dis e16 dis32 e\mBreak
    fis8 b,4~
    b16 a32 b cis16 b32 cis d16 cis32 d
    e8 a,4~
    a16 gis32 a b16 a32 b cis16 b32 cis
    d8 fis16 e d8\mBreak
    b'8 d,4
    cis8 d b\trill
    a8 r r
    r r gis16 a
    b8-. b-. b-.
    b8 a16 gis a8
    R4.*1\mBreak
    r8 r d
    d4 b8
    cis8 e, cis'
    d8 r r
    R4.*2
    r16 fis,32 g g8.\trill fis32 g\mBreak
    a8 r r
    a8 r r
    fis8 r r
    r32 d' cis b a d cis b a g fis e
    d4. ~
    d4. ~\mBreak
    d8 d' d
    d8 cis16 b cis8
    R4.*3
    r8 r e
    a,16 b cis8 d
    cis4 r8
    R4.*1\mBreak
    r8 fis,16 (g) g16.\trill fis64 g
    a16 g a b b16.\trill a64 b
    cis8 a fis
    b16 cis d8-. e16.\trill d64 e
    fis8 fis, r
    r8 a16 b b16.\trill a64 b
    cis8 d a~
    a16 gis a8 d,
    e8 a-. dis,-.
    e8-. e-. d!-.
    d8 b' cis\mBreak
    d8 fis, b
    e,8 a cis
    c8 (c c)
    fis,8 (fis fis)
    e8 e'8 (dis)
    e8 b b
    e16 g32 fis e16 g32 fis e8~
    e16 cis32 d e16 cis32 d e8~
    e16 fis32 e d8-. cis-.
    d16 fis32 e d16 fis32 e d8~
    d8 b  d~\mBreak
    d8 gis, b
    cis a c~
    c8 fis, a
    b8 a a
    b8 r r
    e8 r r
    d8 a e
    fis4\fermata_\markup{Fine} r8 R4.*13\mBreak
    << {\override MultiMeasureRest.staff-position = #-6
        R4.
        R4.\override MultiMeasureRest.staff-position = #-8
        R4. \revert MultiMeasureRest.staff-position}
      \new CueVoice {\stemUp fis'8^"Sopr." e16 d cis b
      cis8 a d
      g, e a }
    >>\stemNeutral
    fis8-. a-. r
    e8^\markup{\italic simile} a r
    fis8 d r
    a'8 cis r\mBreak
    fis,8 a r
    d,8 g r
    cis8 b r
    b8 a r
    a8 fis r
    e8 fis r
    d8 g r \mBreak
    ais8 d r
    b8 fis r
    b8 cis r
    b8 cis r
    g8 b r
    b8 b b
    b8 ais16 gis ais8
    R4.*3 \mBreak
    r4.
    r4.
    r8 r16 d, e fis
    g8-. e'-. cis-.
    cis8\trill b-. r
    R4.\mBreak
    r8 a16 g a fis
    gis8 e e'~
    e8 b16 ais b cis
    ais8 fis fis' ~
    fis8 cis16 b ais cis
    b8 fis b~
    b16 a b8 b~ \mBreak
    b8 a gis
    a8 e e
    e8 cis'16 d e8~
    e8 cis a
    d8 d cis
    d4.~
    d16 fis, gis a b8 ~
    b8 e, g!
    fis8 fis16 e fis8~\mBreak
    fis8 f fis
    gis8 fis8 d'
    gis,4 gis8
    a8 cis16 (b a gis)
    fis4. _\markup{\italic{Da capo}} \bar"||"
}
}