\header {
  title = "NOW IS THE TIME"
    thecomposer = \markup 
    { \right-column 
      { "Words and Music by" \bold "PAUL CLARK" 
      } 
    }

  composer = \thecomposer
  copyright = \markup { \char ##x00A9 "Paul Clark / Minstrel's Voyage Music" }
}

\score {
  \relative c' {
    | R1 R R R | \break
    | c8. c16~ c8 c d8. d16~ d8 d |
  }

  \layout {}
  \midi {}
}