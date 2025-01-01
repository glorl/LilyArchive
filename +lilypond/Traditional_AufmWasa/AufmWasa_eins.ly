AufmWasaEins = \new Voice \relative c'{
e4^\markup{E} e8 e b e
gis4 gis8 gis e gis
b4 b8 b a gis
fis4^\markup{H} fis8 fis4 r8
\repeat volta 2 {
a4^\markup{A} cis8 cis b a 
gis4^\markup{E} b8 b a gis 
fis4^\markup{H7} gis8 a4 cis8}
\alternative{
    {b4^\markup{E} a8 gis4 r8}
    {b4^\markup{E} dis,8 e4 r8}
}
\bar"|."
}
