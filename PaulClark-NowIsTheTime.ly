\header {
  title = "NOW IS THE TIME"
  composer = \markup { \right-column {"Words and Music by" \bold "PAUL CLARK" } }
  tagline = ##f
  copyright = \markup \override #'(font-size . -2 ) { "© Copyright Paul Clark / Minstrel's Voyage Music (ASCAP)" }
  
}

 \paper {
    system-system-spacing.basic-distance = #15
  } 

melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

  \tempo "With Energy"
  \autoBeamOn

  

  | R1 | R | R | R |
  \repeat volta 2 { 
  | g8. g16~ g8 g a8. a16~ a8 a | c8. b16~ b8 a g4 fis |
  | g8. g16~ g8 g a8. a16~ a8 a | b8. c16~ c8 b a4 r4 |
  | g8. g16~ g8 g a8. a16~ a8 a | c8. b16~ b8 a g4 fis |
  | g8. g16~ g8 g g8. a16~ a8 b | a8. g16~ g8 fis g4 b8 d |
  | d1 | d8. c16~ c8 b b4 a | g8. g16~ g8 g g8. a16~ a8 b | 
  | b8. c16~ c8 b a4 b8 d | d1 | d8. c16~ c8 b b4 a |
  | g8. g16~ g8 g g8. a16~ a8 b | a8. g16~ g8 fis g4 r4 |
  }
  \alternative {
  { | R1 | R | }
  { | c2.( e4 | d1) | c2~( c8 b a g | g1) |
    | c2.( e4 | d1) | c2( d | e1) | }
  }
  
}
text = \lyricmode { 

  This is __ the day that the Lord God has giv -- en. 
  Now is the time for my soul to be free.
  This is the hour __ _ my heart is for -- giv -- en
  So I can be what You want me to be. For the
  Lord, rich in His mer -- cy, 
  full of com -- pas- sion and kind -- ness toward me will re --
  store that which was bro -- ken so I can be what He wants me to be.
  Whoa, __ Whoa, __ Whoa, __  Whoa! __
}

harmonies = \chordmode {
| g2 a:m7 | c d4:sus4 d | g2 a:m7 | c d4:sus4 d |
| g2 a:m7 | c d4:sus4 d | g2 a:m7 | c2 d |
| g2 a:m7 | c d4:sus4 d | g2 a:m7 | c2 g |

|e1:m7 | c | g | c2 d2 | e1:m7 | c | g2 a2:m7 | c g |
|g2 a:m7 | c8. d16~ d8  g8 g2 |
| f1 | g1 | f1 | g1 | f1 | g1 | f2 g2 | a1 |
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
  \layout { 



  \override NoteHead.font-size = #0
  

    \override Staff.StaffSymbol.staff-space = #.8
    \context { \ChordNames
     \override ChordName #'font-size = #1
     \override ChordName #'font-name = #"Serif"

  } 

  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/12)
      \override LyricText #'font-size = #1
  } 
 }
  \midi { }
}