\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

\score {
  
  \new PianoStaff \with { instrumentName = "Piano"} <<
  \new Staff \relative { \key bes \minor \time 4/4 
  \repeat volta 2{
  <ges' bes ees>8 bes'16 aes~ aes [ bes8 des,16] <aes c ees>8 bes'16 aes~ aes[ bes8 ees,16] 
  | <bes des f>8 bes'16 aes~ aes[ bes8 ees,16] des ees f aes~ aes f ees8
  | <ges, bes ees>8 bes'16 aes~ aes [ bes8 des,16] <aes c ees>8 bes'16 aes~ aes[ bes8 ees,16]
  | <bes des f>8 bes'16 aes~ aes[ bes8 ees,16] des' c8 bes aes f16 

  
  } 
  }
  \new Staff \relative { \key bes \minor \clef bass ges8 des' ges des  aes ees' aes ees
  | bes f' bes f bes f bes f
  | ges,8 des' ges des aes ees' aes ees
  | bes f' bes f bes f bes f
  
  }

  >>
}
