\version "2.24.2"

\header {
  title = "Here Comes the Sun — Polka-Variation"
  subtitle = "im Schwarzwälder Stil"
  composer = "George Harrison"
  arranger = "Polka-Variation: ChatGPT"
}

melody = \relative c'' {
  \key d \major
  \time 2/4
  \tempo "Fröhlich"

  % Auftakt
  a8 a |

  % Thema als Polka-Melodie
  d4 fis8 a |
  b4. a8 |
  fis8 e d e |
  fis8 e d a |

  d4 fis8 a |
  b4. a8 |
  fis8 e d e |
  fis4 d8 a |

  % Zwischenspiel
  b8 cis d4 |
  a8 b d4 |
  b8 cis d b |
  a4 r |

  % Wiederholung
  \repeat volta 2 {
    d8 d e fis |
    g4. e8 |
    fis8 fis e d |
    e4 r |
  }
}

accompaniment = \relative c' {
  \key d \major
  \time 2/4

  % Auftakt
  d8 <fis a> |

  % Begleitung mit Polka-Oompah
  <d fis>4 r8 <a d> |
  <g b>4 r8 <fis a> |
  <d fis>8 r <a d> r |
  <d fis>8 r <a d> r |

  <d fis>4 r8 <a d> |
  <g b>4 r8 <fis a> |
  <d fis>8 r <a d> r |
  <d fis>4 r |

  % Zwischenspiel
  <g b>4 r |
  <fis a>4 r |
  <g b>4 <fis a> |
  <d fis>4 r |

  % Wiederholung
  \repeat volta 2 {
    <d fis>4 <a d> |
    <g b>4 r |
    <fis a>4 <d fis> |
    <a d>4 r |
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \new Voice = "melody" { \melody }
    >>
    \new Staff <<
      \clef treble
      \new Voice = "accompaniment" { \accompaniment }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 112
  }
}
