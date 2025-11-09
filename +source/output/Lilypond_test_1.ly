\version "2.24.3"
% automatically converted by musicxml2ly from Lilypond_test_1.mxl
\pointAndClickOff

\header {
    title =  "THEME FROM ”SCHINDLER’S LIST” ."
    movementnumber =  "(For Violin, Clarinet, or Flute Solo and Band)"
    copyright =  "This Arrangement © 1994 Songs of Universal. Inc."
    composer =  "Composed by JOHN WILLIAMS"
    poet =  "Arranged by CALVIN CLISTER"
    encodingsoftware =  "Audiveris 5.7.1"
    encodingdate =  "2025-10-31"
    source = 
    "/home/georg/Dokumente/LilyArchive/+source/Lilypond_test_1.png"
    }

#(set-global-staff-size 26.125714285714285)
\paper {
    
    paper-width = 31.66\cm
    paper-height = 43.25\cm
    top-margin = 1.83\cm
    bottom-margin = 1.83\cm
    left-margin = 1.83\cm
    right-margin = 1.83\cm
    indent = 2.4353846153846153\cm
    short-indent = 2.4353846153846153\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b {
    \clef "treble" \time 3/4 \key g \major \bar "|"
    R2.*3 \time 4/4  % 2
    R1
    r2 r4  b4  |% 3
    b'8 ( [ e,8 b'8 e,8 ] c'8 [
    b8 g8 b,8 ) ] | % 4
    g'8 ( [ a,8 g'8 a8 ] b2 )
    \break | % 5
    b8 ( [ e,8 b'8 e,8 ] d'8 [
    c8 b8 a8 ) ] | % 6
    d,8 ( [ c8 fis8 a8 ] c8 [
    b8 a8 g8 ) ] | % 7
    a8 ( [ c,8 a'8 c,8 ] b'8 [
    a8 g8 a8 ) ] \break | % 8
    b2. b,4| % 9
    a'8 ( [ c,8 a'8 c,8 ] b'8 [
    a8 g8 fis8 ) ] | \barNumberCheck #10
    e2 fis2 \break | % 11
    g8 ( [ a,8 g'8 a,8 ] b'8 [
    a8 g8 fis8 ) ] | % 12
    e2. r4| % 13
    b''8 ( [ e,8 b'8 e,8 ]
    c'8 [ b8 g8 b,8 ) ] \break | % 14
    g'8 ( [ a,8 g'8 a8 ]
    b2 ) | % 15
    b8 ( [ e,8 b'8 e,8 ]
    d'8 [ c8 b8 a8 ) ] | % 16
    d,8 [ c8 fis8 a8 ] \stemDown
    c8 [ b8 a8 g8 ] \break | % 17
    a8 ( [ c,8 a'8 c,8 ]
    b'8 [ a8 g8 a8 ) ] | % 18
    b2. b,4| % 19
    a'8 [ c,8 a'8 c,8 ] \stemDown
    b'8 [ a8 g8 fis8 ] \break |
    \barNumberCheck #20
    e2 ( _\< fis2 ) -\! _\> | % 21
    g8 ( [ a,8 g'8 a,8 ]
    b'8 [ a8 g8 fis8 ) ] | % 22
    e1 }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \context Staff <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }

