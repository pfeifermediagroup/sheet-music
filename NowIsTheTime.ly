\header {
  title = "NOW IS THE TIME"
    thecomposer = \markup 
    { \right-column 
      { "Words and Music by" \bold "PAUL CLARK" 
      } 
    }

    tagline = ""

  composer = \thecomposer
  copyright = \markup { \char ##x00A9 "Paul Clark / Minstrel's Voyage Music" (ASCAP) }
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

harmonies = \chordmode {
  a2 c
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}