AufmWasaBass = \new Voice \relative c{\clef bass 
\partial 8 r8 
f8 r r c r r 
g'8 r r c, r r 
e8 r r c r r 
f8 r r c r r 
r2. 
f4 f8 f c f
<f f,>4 <f f,>8 <f f,> <c g> <c a> 
<d b>4 <d b>8 c4 r8
\repeat volta 2 {
<d g,>4 <g g,>8 <e c>4 <e c>8 
<c f,>4 <c f,>8 <<{\stemUp c4 c8} \new Voice {\stemDown a8 g f}>> \oneVoice 
<c' bes>4 <c a>8 <d g,>4 <bes g>8 }
\alternative{
    {<<{\stemUp g4 c8 c4 r8} \new Voice {\stemDown g8 c g f4 r8}>> \oneVoice}
    {<<{\stemUp g4 e8 f4 r8} \new Voice {\stemDown c8 d e f4 r8}>> \oneVoice}
}
\bar"|."
}
% 