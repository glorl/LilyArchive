ternaer = #(define-music-function (parser location ) ()
   #{
       \mark \markup {
        \line \general-align #X #LEFT {
          \score {                     % 2nd column in line
            \new Staff \with {
              fontSize = -3
              \override StaffSymbol.staff-space = #(magstep -3)
              \override StaffSymbol.line-count = #0
              \override VerticalAxisGroup.Y-extent = #'(-0.85 . 4)
            }

            {
              \relative c' { \stemUp \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 3/16)
              b'8[ b8] }
             
%             \override Score.SpacingSpanner.strict-note-spacing = ##t
              \once \override Score.TextScript.Y-offset = #-0.4
              s4.^\markup{ \halign #-1 \italic "=" }
              
              \relative c' { \stemUp \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 3/16)
              \tuplet 3/2 { b'4 b8 }
          }
            } 
            
            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver"
              }
            } % layout end

          } % Score end

        } % line end
    } % markup end
   #})


#(define (scoop-stencil grob)
         (ly:stencil-add
             (ly:note-head::print grob)
             (grob-interpret-markup grob
                 (markup #:with-dimensions '(0 . 0) '(0 . 0)
                                            #:translate '(-0.2 . -0.5)
                                                         #:path 0.25 '((moveto 0 0)
                                                                       (curveto 0 -1 -1 -1.5 -1.5 -1.5))))))
scoop = \once \override NoteHead.stencil = #scoop-stencil 
