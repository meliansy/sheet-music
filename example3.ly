\layout {
  #(layout-set-staff-size 14)
  \context {
    \Score
    \omit BarNumber
  }
}
\paper{
  indent = 1.5\cm
   }

voiceMusic = \relative {\key e \major \time 4/4 
R1|R1|
r4. b''8~ b2~|b4. <fis a>8 <e gis>8 <fis a>16 <e gis>8 <cis fis>16 <b e>8|
r8 e dis' e r b4 cis8~|cis4~ cis16 b cis b~ b2|

}
egMusic = \relative {\key e \major \time 4/4 
R1|R1|
gis'4.^~ <gis~ fis~>8 <gis fis>2|e4.^~ <e dis>8~ <e dis>2|
R1|R1|

}
bassMusic = \relative {\key e \major \time 4/4
R1|R1|
\override NoteHead.style = #'slash
b'4. b8~b2 | b4. b8~b2| b4. b8~b2| b4. b8~b2|

}

Chords = 
  \chordmode {
    \set noChordSymbol = "-"
    R1
    R1
    e4.:5 gis8:5 r2 |
    cis4.:5 b8:5 r2|
    e4.:5 gis8:5 r2 |
    cis4.:5 b8:5 r2|
  }




drumContents = {
\relative
<<
\new DrumVoice \drummode {\voiceOne
<hho sn>8-> hho hho <hho sn>-> hho hho <hho sn>16-> sn hho8|
<hho sn>8-> hho hho <hho sn>-> hho16 sn hho8 sn16-^ sn-^ sn-^ sn-^ |
hh16-> \parenthesize sn hh8 <hh sn>16 \parenthesize sn hh \parenthesize sn hh8 hh <hh sn>8 hh16 \parenthesize sn|\break
hh16 \parenthesize sn hh8 <hh sn>16 \parenthesize sn hh \parenthesize sn hh8 hho <hh sn>8 sn16 sn|
hh16-> \parenthesize sn hh8 <hh sn>16 \parenthesize sn hh \parenthesize sn hh8 hho <hh sn>8 hh16 \parenthesize sn|
hh16 \parenthesize sn hh8 <hh sn>8 hh sn16 sn hh sn sn sn tomh8 |\break
}
\new DrumVoice \drummode {
\voiceTwo
r16 bd r bd r bd r bd r bd r bd r8. bd16 | 
r16 bd r bd r bd r bd r8 bd r4 | 
bd8. bd16 r8 bd r16 bd16 bd8 r4|
bd8. bd16 r8 bd r16 bd16 bd8 r4|
bd8. bd16 r8 bd r16 bd16 bd8 r4|
bd8. bd16 r8 bd r16 bd16 bd8 r4|
}
>>
}

\score {
  <<
    \new Staff = "Staff_Vocal" \with { instrumentName = "Vocal" }
      \voiceMusic
    \new Staff = "Staff_Organ" \with {instrumentName = "Organ"}
      \egMusic
    \new ChordNames
      \Chords
    \new Staff = "Staff_Guitar" \with { instrumentName = "E.Guitar"}
      \bassMusic
    \new DrumStaff \with { instrumentName = "Drums" }
      \drumContents
  >>
  \layout{}
}



