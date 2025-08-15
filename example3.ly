\layout {
  \context {
    \Score
    \omit BarNumber
  }
}
\paper{
  indent = 1.5\cm
}

voiceMusic = \relative {\key e \major \time 4/4 
R1|R1
}
egMusic = \relative {\key e \major \time 4/4 
R1|r2
}
bassMusic = \relative {\clef bass \key e \major \time 4/4
R1|R1
}


drumContents = {
\relative
<<
\new DrumVoice \drummode {\voiceOne
<hho sn>8-> hho hho <hho sn>-> hho hho <hho sn>16-> sn hho8|
<hho sn>8-> hho hho <hho sn>-> hho16 sn hho8 sn16-^ sn-^ sn-^ sn-^ |
hhc16 sn\parenthesize
}
\new DrumVoice \drummode {
\voiceTwo
r16 bd r bd r bd r bd r bd r bd r8. bd16 | 
r16 bd r bd r bd r bd r8 bd r4 | 
}
>>
}

\score {
  <<
    \new Staff = "Staff_Vocal" \with { instrumentName = "Vocal" }
      \voiceMusic
    \new Staff = "Staff_Guitar" \with {instrumentName = "E. Guitar"}
      \egMusic
    \new Staff = "Staff_Bass" \with { instrumentName = "Bass"}
      \bassMusic
    \new DrumStaff \with { instrumentName = "Drums" }
      \drumContents
  >>
  \layout{}
}



