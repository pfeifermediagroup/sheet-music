\header {
  title = "NOW IS THE TIME"
  composer = \markup { \right-column {"Words and Music by" \bold "PAUL CLARK" } }
 
}

melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

  \tempo \markup { \left-column { "With Energy" " " } }
  \autoBeamOn


  | R1 R R R | \break
  g8. g16~ g8 g a8. a16~ a8 a | c8. b16~ b8 a g4 fis |
  g8. g16~ g8 g a8. a16~ a8 a | b8. c16~ c8 b a4 r4|
  g8. g16~ g8 g a8. a16~ a8 a | c8. b16~ b8 a g4 fis |
  g8. g16~ g8 g g8. a16~ a8 b | a8. g16~ g8 fis g4 b8 d |


}

text = \lyricmode {
  This is __ the day that the Lord God has giv -- en. 
  Now is the time for my soul to be free.
  This is the hour __ _ my soul is for -- giv -- en
  So I can be what You want me to be. For the
}

harmonies = \chordmode {
| g2 a:m7 | c d4:sus4 d | g2 a:m7 | c d4:sus4 d |
| g2 a:m7 | c d4:sus4 d | g2 a:m7 | c2 g ||
}

\score {



  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \autoBeamOff 
    \set Score.barNumberVisibility = ##false \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout {  }
  \midi { }
}