\layout {
  \context {
    \Score
    \omit BarNumber
  }
}
\paper{
  indent = 1.5\cm
}

voiceMusic = \relative {\key bes \major \time 4/4 
r2 d''8 ees d c ~| c bes4 a8 a bes c4| bes2 bes8 c d g~ |g f4.~f2 \bar ""
}
pianoRHMusic = \relative {\key bes \major \time 4/4 
<f' bes d>8 q q q q q q q|<f a c> q q q q q q q|<g bes d> q q q q q q q| <f a d> q q q q q q q\bar ""
}
bassMusic = \relative {\clef bass \key bes \major \time 4/4 
bes4. bes8~bes2|a4. a8~a2|g4. g8~g2|f4. f8~f2\bar ""
}

\score {
  <<
    \new Staff = "Staff_Vocal" \with { instrumentName = "Vocal" }
      \voiceMusic
    \new Staff = "Staff_RHPiano" \with { instrumentName = "Keys" }
      \pianoRHMusic
    \new Staff = "Staff_Bass" \with { instrumentName = "Bass"}
      \bassMusic
  >>
  \layout{}
}


