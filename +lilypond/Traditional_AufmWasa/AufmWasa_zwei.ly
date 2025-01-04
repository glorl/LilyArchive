AufmWasaZwei = \new Voice \relative c'{
\partial 8 c16 c 
c8^\markup{F} <a' f>8 r16 <gis e> <a f>4 c,16 c 
d8 <bes' g>8 r16 <a fis> <bes g>4 d,16 d
e8^\markup{C} <c' a>8 r16 <b gis> <c a>4 e,8 
<f a>4.^\markup{F} r 
\bar"||" \break 
f4^\markup{F} f8 f c f
a4 a8 a f a
<c a>4 <c a>8 <c a> <bes e,> <a f>
g4^\markup{C} <g f>8 <g e>4 r8
\repeat volta 2 {
<bes g>4^\markup{B} <d bes>8 <d bes> <c a> <bes g> 
<a f>4^\markup{F} <c a>8 <c f,> <bes f> <a f> 
<g e>4^\markup{C7} <a f>8 <bes g>4 <d g,>8}
\alternative{
    {<<{\stemUp c4^\markup{F} bes8 a4 r8} \new Voice {\stemDown e8 f g f4 r8}>> \oneVoice}
    {<<{\stemUp c'4^\markup{F} e,8 f4 r8} \new Voice {\stemDown c8 d e f4 r8}>> \oneVoice}
}
\bar"|."
}
% 