\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

\score {
  <<
  \new Voice \relative {\key bes \minor \time 4/4 a
  
  }
  \new PianoStaff <<
    \new Staff \relative {\key bes \minor
      a
    }
    \new Staff \relative {\key bes \minor
      a
    }
 
  >>
  >>
}

\paper{

  indent = 0
}
