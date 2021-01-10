\header {
		    title = "Harry Potter theme"
			 composer = ""
			 tagline = ""
% for full lesson, go to
% https://www.youtube.com/watch?v=JEaHzypC3-o
}


  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup
  }

rhMusic = {
		  \tempo 4 = 126
		  \key c \major
		  \time 3/4
		  r2 b4 |
		  e'4. g'8 fis'4 |
		  e'2 b'4 | \break
		  a'2. |
%
		  fis'2. |
		  e'4. g'8 fis'4 |
		  dis'2 f'4 |
		  b2.~ |
%
		  b2 b4 | \break
		  e'4. g'8 fis'4 |
		  e'2 b'4 |
		  d''2 des''4 | 
%
		  c''2 gis'4 |
		  c''4. b'8 ais'4 |
		  ais2 g'4 | \break
		  e'2.~ |
%
		  e'2 g'4 |
		  d''2 des''4 | 
		  c''2 gis'4 |
		  c''4. b'8 ais'4 |
%
		  ais2 g'4 | \break
		  e'2.~ |
		  e'2 g'4 |
		  b'2 g'4 |
%
		  b'2 g'4 |
		  c''2 b'4 | 
		  ais'2 fis'4 | \break
		  g'4. b'8 ais'4 |
%
		  ais2 b4 |
		  b'2.~ |
		  b'2 g'4 |
		  b'2 g'4 | 
%
		  b'2 g'4 | \break
		  d''2 des''4 |
		  c''2 gis'4 |
		  c''4. b'8 ais'4 |
%
		  ais2 g'4 |
		  e'2.~ |
		  e'2 r4 \bar "|."

}

\score {
  \new PianoStaff <<
    \new Staff = "RH"  <<
      \rhMusic
    >>
  >>
  \midi{ \tempo 4 = 114}
  \layout{}
}
