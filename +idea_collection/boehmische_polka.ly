\version "2.24.2"
\header {
  title = "Variation über Bachs Partita Nr. 2 in d-Moll"
  subtitle = "nach der Allemanda"
  composer = "frei nach J. S. Bach"
  arranger = "Variation: ChatGPT"
}

violin = \relative d' {
  \voiceOne
  \key d \minor
  \time 4/4
  \tempo "Andante con moto"

  \partial 8 a'16( bes) |
  % Hauptthema
  c8.( d16) bes8 a16( g) a4 d8( e) |
  f8.( g16) e8 d c4 a'8( bes) |

  % Fortführung
  a8 g16( f) e8 f g4. g16( a) |
  bes8 a16( g) f8 e d4 r |

  % Ausschmückung der Einleitung
  d16( f) e( d) c( d e f) g4 a16( g f e) |
  f8.( e16) d8 c bes4. bes32( c d e) |
  f8( g) e( f) d4 a'16( g f e) |
  d8 f16( e) d8 c b( a) d4 |

  d16( e f g) a4 bes8 a16( g) f8 e |
  g4 e16( f g a) bes8 a16( g) f8 e |
  a4 d,16( e f d) e8 f g4 |
  f16( e d c) bes8 d a4 r |

  % Erweiterung: Episode mit Kadenz nach G-Moll
  g8( bes) a16( g) f( g) a8 d, g16( a bes c) |
  d8( e) f16( g a bes) g4. g16( a) |
  bes8( a) g f e d r4 |

  % Kadenz in d-Moll
  a'8 g16( f) e8 f d4 bes'16( a g f) |
  e8( d) a'4 a,8 bes16( c) d4 |

  % Übergang zur Subdominante (g-Moll)
  f8.( g16) a8 f bes,4 bes'16( a g f) |
  g4 a16( g f e) d4 r4 |

  % Rückkehr des Hauptthemas
  c'8.( d16) bes8 a16( g) a4 d8( e) |
  f8.( g16) e8 d c4 a'8( bes) |

  % Neue Schlusskadenz auf f
a8( g) f( e) d4 bes'16( a g f) |
e8( f) c'4 f,2 ermata |
}

viola = \relative d' {
  \voiceTwo
  \key d \minor
  \time 4/4

  \partial 8 f8 |
  % Kontrapunkt zum Hauptthema
  a8.( bes16) g8 f e4 f8( g) |
  a8.( bes16) g8 f e4 f8( g) |

  f8 e16( d) c8 d e4. e16( f) |
  g8 f16( e) d8 c bes4 r |

  bes16( d) c( bes) a( bes c d) e4 f16( e d c) |
  d8.( c16) bes8 a g4. g16( a bes c) |
  d8( e) c( d) bes4 f'16( e d c) |
  bes8 d16( c) bes8 a g( f) bes4 |

  bes16( c d e) f4 g8 f16( e) d8 c |
  e4 c16( d e f) g8 f16( e) d8 c |
  f4 bes,16( c d bes) c8 d e4 |
  d16( c bes a) g8 bes f4 r |

  % Episode
  f8( g) f16( e) d( e) f8 bes,4 e16( f g a) |
  bes8( c) d16( e f g) e4. e16( f) |
  g8( f) e d c bes r4 |

  % Kadenz in d-Moll
  f8 e16( d) c8 d bes4 g'16( f e d) |
  c8( bes) f'4 f,8 g16( a) bes4 |

  d8.( e16) f8 d g,4 g'16( f e d) |
  f4 g16( f e d) bes4 r4 |

  % Hauptthema Kontrapunkt
  a8.( bes16) g8 f e4 f8( g) |
  a8.( bes16) g8 f e4 f8( g) |

  % Neue Schlusskadenz kontrapunktisch, eine Oktave höher
  f'8( e) d( c) bes4 g'16( f e d) |
  c8( d) a'4 a,2 \fermata |
}


\score {
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \new Voice = "violin" { \violin }
    >>
    \new Staff <<
      \clef treble
      \new Voice = "viola" { \viola }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 72
  }
}
