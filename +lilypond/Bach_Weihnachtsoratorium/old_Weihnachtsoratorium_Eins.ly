\version "2.22.1"

\paper {
    top-margin = 10\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    ragged-last = ##f
}

\header{
  title = "Weihnachts-Oratorium"
  subtitle = "1. Teil / Am 1. Weihnachtstag / Jauchzet, frohlocket, auf, preiset die Tage"
  composerShort = "J. S. Bach"
  composer = "Johann Sebastian Bach"
  tagline = ""
}

% Adapt this for automatic line-breaks
% mBreak = {}
% pBreak = {}
mBreak = {  }
pBreak = { \pageBreak }
#(set-global-staff-size 18)

% Useful snippets
pCresc = _\markup { \dynamic p \italic "cresc." }
mfDim = _\markup { \dynamic mf \italic "dim." }
fCantabile = _\markup { \dynamic f \italic "cantabile" }
smorz = _\markup { \italic "smorz." }
sempreFf = _\markup { \italic "sempre" \dynamic ff }
sempreFff = _\markup { \italic "sempre" \dynamic fff }
pocoF = _\markup { \italic "poco" \dynamic f }
ffz = _\markup { \dynamic { ffz } }
crescMolto = _\markup { \italic "cresc. molto" }
pMoltoCresc = _\markup { \dynamic p \italic "molto cresc." }
sempreCresc = _\markup { \italic "sempre cresc." }
ppEspr = _\markup { \dynamic pp \italic "espr." }
ppiuEspress = _\markup { \dynamic p \italic "più espress." }
pocoCresc = _\markup { \italic "poco cresc." }
mfEspress = _\markup { \dynamic mf \italic "espress." }
pEspress = _\markup { \dynamic p \italic "espress." }
string = ^\markup { \italic "string." }
stringendo = ^\markup { \italic "stringendo" }
pocoString = ^\markup { \italic "poco string." }
sempreStringendo = ^\markup { \italic "sempre stringendo" }
sempreString = ^\markup { \italic "sempre string." }
tuttaForza = _\markup { \italic "tutta forza" }
allargando = _\markup { \italic "allargando" }
pocoMenoMosso = ^\markup {\italic \bold {"Poco meno mosso."} }
rit = ^\markup {\italic {"rit."} }
rall = ^\markup {\italic {"rall."} }
riten = ^\markup {\italic {"riten."} }
ritATempo = ^\markup { \center-align \italic {"  rit. a tempo"} }
aTempo = ^\markup { \italic {"a tempo"} }
moltoRit = ^\markup { \italic {"molto rit."} }
pocoRit = ^\markup {\italic {"poco rit."} }
pocoRiten = ^\markup {\italic {"poco riten."} }
sec = ^\markup {\italic {"sec."} }
pocoRall = ^\markup {\italic {"poco rall."} }
pocoAPocoRall = ^\markup {\italic {"poco a poco rall."} }
pocoAPocoAccel = ^\markup {\italic {"poco a poco accel."} }
pocoAPocoAccelAlD = ^\markup {\italic {"poco a poco accel. al D"} }
sempreAccel = ^\markup {\italic {"sempre accel."} }
solo = ^\markup { "Solo" }
piuF = _\markup { \italic "più" \dynamic f }
piuP = _\markup { \italic "più" \dynamic p }
lento = ^\markup { \italic "Lento" }
accel = ^\markup { \bold { "accel." } }
tempoPrimo = ^\markup { \italic { "Tempo I" } }

% Adapted from http://lsr.di.unimi.it/LSR/Snippet?id=655
% Make title, subtitle, instrument appear on pages other than the first
#(define (part-not-first-page layout props arg)
   (if (not (= (chain-assoc-get 'page:page-number props -1)
               (ly:output-def-lookup layout 'first-page-number)))
       (interpret-markup layout props arg)
       empty-stencil))

\paper {
  oddHeaderMarkup = \markup
  \fill-line {
    " "
    \on-the-fly #part-not-first-page \fontsize #-1.0 \concat {
      \fromproperty #'header:composerShort
      "     -     "
      \fromproperty #'header:title
      "     -     "
      \fromproperty #'header:instrument
    }
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
  }
  evenHeaderMarkup = \markup
  \fill-line {
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    \on-the-fly #part-not-first-page \fontsize #-1.0 \concat {
      \fromproperty #'header:composerShort
      "     -     "
      \fromproperty #'header:title
      "     -     "
      \fromproperty #'header:instrument
    }
    " "
  }
  % Distance between title stuff and music
  markup-system-spacing.basic-distance = #12
  markup-system-spacing.minimum-distance = #12
  markup-system-spacing.padding = #10
  % Distance between music systems
  system-system-spacing.basic-distance = #14
  system-system-spacing.minimum-distance = #14
  % system-system-spacing.padding = #10

}

% This allows the use of \startMeasureCount and \stopMeasureCount
% See https://lilypond.org/doc/v2.23/Documentation/snippets/repeats#repeats-numbering-groups-of-measures
\layout {
  \context {
    \Staff
    \consists #Measure_counter_engraver
  }
}

% ---------------------------------------------------------

WeihnachtsoratoriumEinsCoro = {
  \set Score.markFormatter = #format-mark-alphabet
%   \accidentalStyle Score.modern-cautionary
  \compressEmptyMeasures
%   \defaultTimeSignature
  \time 3/8
  \key d \major
%   \clef violin
  \relative c {
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
    fis8 r r\mBreak
    r32 d cis b a d cis b a g fis e
    fis4. ~
    fis4. ~
    fis8 fis'-. fis-.
    fis8 e16 d e8
    R4.*3 \mBreak
    r8 r g
    fis8 e d
    a'4 e8
    dis16 (fis a4)
    c,32( b a16) \appoggiatura a b4 ~
    b16 cis!32 dis e16 fis32 g a8~ \mBreak
    a16 g32 fis g16 fis32 e g16 e32 fis
    g16 b32 a g16 b32 a g8~
    g16 e32 fis g16 e32 fis g8 ~
    g16 fis32 g a16 g32 fis g16 fis32 e\mBreak
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
    R4.*2\mBreak
    r16 d32 e e8.\trill d32 e
    fis8 r r
    d8 r r
    a8 r r
    r32 d cis b a d cis b a g fis e
    fis4.~
    fis4.~\mBreak
    fis8 fis' fis
    fis e16 d e8
    R4.*3
    r8 r g
    fis8 e d
    a'4 r8
    R4.*2\mBreak
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
    g16 ( fis e d cis b) \mBreak
    ais16 ( cis e4)
    g,32 (fis e16) \appoggiatura e fis4~
    fis16 gis32 a b16 cis32 d e8~
    e16 d32 cis d16 cis32 b d16 b32 cis
    d16 fis32 e d16 fis32 e d8~\mBreak
    d16 b32 cis d16 b32 cis d8~
    d16 cis32 d e16 d32 cis d16 cis32 b
    cis16 e32 d cis16 e32 d cis16 a32 b
    cis16 b32 cis dis16 cis32 dis e16 dis32 e\mBreak
    fis8 b,4~
    b16 a32 b cis16 b32 cis d16 cis32 d
    e8 a,4~
    a16 gis32 a b16 a32 b cis16 b32 cis
    d8 fis16 e d8\mBreak
    b'8 d,4
    cis8 d b\trill
    a8 r r
    r r b16 cis
    d8-. d-. d-.
    d8 cis16 b cis8
    R4.*1\mBreak
    r8 r fis16 g
    a8 g16 fis e d
    cis16 b a g fis e
    d8 r r
    R4.*2
    r16 d'32 e e8.\trill d32 e\mBreak
    fis8 r r
    d8 r r
    a8 r r
    r32 d cis b a d cis b a g fis e
    fis4. ~
    fis4. ~\mBreak
    fis8 fis' fis
    fis8 e16 d e8
    R4.*3
    r8 r g
    fis8 e d
    a'4 r8
    R4.*1\mBreak
    << {\override MultiMeasureRest.staff-position = #-8
        R4. \revert MultiMeasureRest.staff-position
      cis,,8\rest }
      \new CueVoice {\stemUp r8 fis16^"Ob.II" (g) g16.\trill fis64 g
      a16 [g]}
    >>\stemNeutral
    cis16 d d16.\trill cis64 d
    e16 d e fis fis16.\trill d64 e
    g8 fis e
    d16 e fis g g16.\trill fis64 g \mBreak
    a8 a, r
    r8 d16 e e16.\trill d64 e
    fis16 e fis gis gis16.\trill fis64 gis
    a8 e-. fis-.
    g8-. c,-. c-.
    b8 d g\mBreak
    fis8 a, d
    cis16 b cis d e fis
    dis16 (fis a4)
    c,32 ( b a16) \appoggiatura a b4~
    b16 cis!32 dis e16 fis32 g a8~
    a16 g32 fis g16 fis32 e g16 e32 fis \mBreak
    g16 b32 a g16 b32 a g8~
    g16 e32 fis g16 e32 fis g8~
    g16 fis32 g a16 g32 fis g16 fis32 a
    fis16 a32 g fis16 a32 g fis8~
    fis8 d-. fis-.\mBreak
    e8-. b-. e~
    e cis-. e-.
    d8-. a-. d~
    d8 e fis
    g8 r r
    g8 r r
    fis8 d cis
    d4\fermata_\markup{Fine} r8 R4.*13\mBreak
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
    cis8 e r\mBreak
    d8 fis r
    b,8 e r
    e8 d r
    d8 cis r
    fis,8 b r
    b8 ais r
    b8 e r \mBreak
    cis8 fis r
    e8 fis r
    g8 a r
    e8 fis r
    b,8 g' r
    d8 d d
    d8 cis16 b cis8
    R4.*3 \mBreak
    r4.
    r4.
    r8 r16 b cis! d
    e8-. cis'-. e,-.
    e8\trill d-. r
    R4.\mBreak
    r8 fis16 e fis d
    e8 a16 gis a8~
    a8 g!16 fis g e
    fis8 b16 ais b8 ~
    b8 ais16 gis fis e
    d16  fis b8 d,~ \mBreak
    d16 cis d8 e,~
    e16 fis32 gis a16 b32 cis d8~
    d16 cis32 b cis16 a32 b cis16 a32 b
    cis16 (e g4)
    b,32 (a g16) \appoggiatura g8 a4 ~\mBreak
    a16 b32 cis d16 e32 fis g16 a32 g
    fis4.~
    fis8 d b
    e4. ~
    e8 cis ais \mBreak
    d8 cis4\trill
    b8 cis16 (b) b8~
    b8 gis eis'
    fis8 cis16 (b a gis)
    fis4. _\markup{\italic{Da capo}} \bar"||"
}
}


clarinet_II = {
  \set Score.markFormatter = #format-mark-alphabet
%   \accidentalStyle Score.modern-cautionary
  \compressEmptyMeasures
%   \defaultTimeSignature
  \time 3/8
  \key d \major
%   \clef violin
  \relative c {
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

\bookpart {
  \header{
    instrument = "Oboe I+II in Bb"
  }
  \score {
    \new StaffGroup <<
    \new Staff {
%       \compressEmptyMeasures
      \set Score.markFormatter = #format-mark-box-alphabet
      \override DynamicLineSpanner.staff-padding = #3
%       \accidentalStyle Score.modern-cautionary
%       \new Voice {
        \transpose bes c' {\clarinet_I}
%       }
    }
    \new Staff {
%       \compressEmptyMeasures
      \set Score.markFormatter = #format-mark-box-alphabet
      \override DynamicLineSpanner.staff-padding = #3
%       \accidentalStyle Score.modern-cautionary
%       \new Voice {
        \transpose bes c' {\clarinet_II}
%       }
    }
    >>
  }
}
