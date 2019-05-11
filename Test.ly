melody = \relative c' {
  \clef treble
  \key c \major
  \time 3/4

  \partial 4 c8[ d] | e4 e e | d2 c8 d | e4 e g | fis2.
}

text = \lyricmode {
  Hea -- vy Cee Dee
}

harmonies = \chordmode {
  \partial 4 s4 | a2.:m | a:7/d
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