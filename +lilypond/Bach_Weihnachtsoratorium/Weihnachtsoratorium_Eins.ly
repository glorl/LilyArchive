WeihnachtsoratoriumEinsCoro = {
  \time 3/8
  \compressEmptyMeasures
  \set Score.markFormatter = #format-mark-alphabet
  \transpose bes c' \relative c {
  \key d \major
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
    r16 d''32 e e8.\trill d32 e
    fis8 r r  
    r32 d cis b a d cis b a g fis e
    fis4. ~
    fis4. ~
    fis8 fis'-. fis-.
    fis8 e16 d e8
    R4.*3   
    r8 r g
    fis8 e d
    a'4 e8
    dis16 (fis a4)
    c,32( b a16) \appoggiatura a b4 ~
    b16 cis!32 dis e16 fis32 g a8~   
    a16 g32 fis g16 fis32 e g16 e32 fis
    g16 b32 a g16 b32 a g8~
    g16 e32 fis g16 e32 fis g8 ~
    g16 fis32 g a16 g32 fis g16 fis32 e  
    fis16 a32 g fis16 a32 g fis8~
    fis8 d-. fis-.
    e8-. b -. e~
    e8 cis-. e-.
    d8-. a-. d~
    d8 e-. fis-.
    g8-. r r
    g8-. r r
    fis8-. d-. cis\trill
    d8 r r
    R4.*2  
    r16 d32 e e8.\trill d32 e
    fis8 r r
    d8 r r
    a8 r r
    r32 d cis b a d cis b a g fis e
    fis4.~
    fis4.~  
    fis8 fis' fis
    fis e16 d e8
    R4.*3
    r8 r g
    fis8 e d
    a'4 r8
    R4.*2  
    << {\override MultiMeasureRest.staff-position = #-6
        R4.
      r8 \revert MultiMeasureRest.staff-position }
      \new CueVoice {\stemUp r8 b,16^"Ob.II" (cis) cis16.\trill b64 cis
      d16 [cis]}
    >>\stemNeutral
    d16 (e) e16.\trill d64 e
    fis16 e fis gis gis16.\trill fis64 gis
    a16 e cis a' b, gis'
    a,4 r8
    r8 g!16 a a16.\trill g64 a
    b8. cis16 cis16.\trill b64 cis
    d8-. d-. cis-.
    d16 cis d fis e d
    cis16 b cis e dis fis
    e16 dis e fis fis16. \trill e64 fis
    g16 ( fis e d cis b)   
    ais16 ( cis e4)
    g,32 (fis e16) \appoggiatura e fis4~
    fis16 gis32 a b16 cis32 d e8~
    e16 d32 cis d16 cis32 b d16 b32 cis
    d16 fis32 e d16 fis32 e d8~  
    d16 b32 cis d16 b32 cis d8~
    d16 cis32 d e16 d32 cis d16 cis32 b
    cis16 e32 d cis16 e32 d cis16 a32 b
    cis16 b32 cis dis16 cis32 dis e16 dis32 e  
    fis8 b,4~
    b16 a32 b cis16 b32 cis d16 cis32 d
    e8 a,4~
    a16 gis32 a b16 a32 b cis16 b32 cis
    d8 fis16 e d8  
    b'8 d,4
    cis8 d b\trill
    a8 r r
    r r b16 cis
    d8-. d-. d-.
    d8 cis16 b cis8
    R4.*1  
    r8 r fis16 g
    a8 g16 fis e d
    cis16 b a g fis e
    d8 r r
    R4.*2
    r16 d'32 e e8.\trill d32 e  
    fis8 r r
    d8 r r
    a8 r r
    r32 d cis b a d cis b a g fis e
    fis4. ~
    fis4. ~  
    fis8 fis' fis
    fis8 e16 d e8
    R4.*3
    r8 r g
    fis8 e d
    a'4 r8
    R4.*1  
    << {\override MultiMeasureRest.staff-position = #-8
        R4. \revert MultiMeasureRest.staff-position
      cis,,8\rest }
      \new CueVoice {\stemUp r8 fis16^"Ob.II" (g) g16.\trill fis64 g
      a16 [g]}
    >>\stemNeutral
    cis16 d d16.\trill cis64 d
    e16 d e fis fis16.\trill d64 e
    g8 fis e
    d16 e fis g g16.\trill fis64 g   
    a8 a, r
    r8 d16 e e16.\trill d64 e
    fis16 e fis gis gis16.\trill fis64 gis
    a8 e-. fis-.
    g8-. c,-. c-.
    b8 d g  
    fis8 a, d
    cis16 b cis d e fis
    dis16 (fis a4)
    c,32 ( b a16) \appoggiatura a b4~
    b16 cis!32 dis e16 fis32 g a8~
    a16 g32 fis g16 fis32 e g16 e32 fis   
    g16 b32 a g16 b32 a g8~
    g16 e32 fis g16 e32 fis g8~
    g16 fis32 g a16 g32 fis g16 fis32 a
    fis16 a32 g fis16 a32 g fis8~
    fis8 d-. fis-.  
    e8-. b-. e~
    e cis-. e-.
    d8-. a-. d~
    d8 e fis
    g8 r r
    g8 r r
    fis8 d cis
    d4\fermata_\markup{Fine} r8 R4.*13  
    << {\override MultiMeasureRest.staff-position = #-6
        R4.
        R4.\override MultiMeasureRest.staff-position = #-8
        R4. \revert MultiMeasureRest.staff-position}
      \new CueVoice {\stemUp fis8^"Sopr." e16 d cis b
      cis8 a d
      g, e a }
    >>\stemNeutral
    a8-. d-. r
    a8^\markup{\italic simile} e' r
    d8 b r
    cis8 e r  
    d8 fis r
    b,8 e r
    e8 d r
    d8 cis r
    fis,8 b r
    b8 ais r
    b8 e r   
    cis8 fis r
    e8 fis r
    g8 a r
    e8 fis r
    b,8 g' r
    d8 d d
    d8 cis16 b cis8
    R4.*5
    r8 r16 b cis! d
    e8-. cis'-. e,-.
    e8\trill d-. r
    R4.  
    r8 fis16 e fis d
    e8 a16 gis a8~
    a8 g!16 fis g e
    fis8 b16 ais b8 ~
    b8 ais16 gis fis e
    d16  fis b8 d,~   
    d16 cis d8 e,~
    e16 fis32 gis a16 b32 cis d8~
    d16 cis32 b cis16 a32 b cis16 a32 b
    cis16 (e g4)
    b,32 (a g16) \appoggiatura g8 a4 ~  
    a16 b32 cis d16 e32 fis g16 a32 g
    fis4.~
    fis8 d b
    e4. ~
    e8 cis ais   
    d8 cis4\trill
    b8 cis16 (b) b8~
    b8 gis eis'
    fis8 cis16 (b a gis)
    fis4. _\markup{\italic{Da capo}} \bar"||"
}
}