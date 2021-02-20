if daywalker#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          DaywalkerOrangeItalic
hi! link rubyBlockParameter         DaywalkerOrangeItalic
hi! link rubyCurlyBlock             DaywalkerPink
hi! link rubyGlobalVariable         DaywalkerPurple
hi! link rubyInstanceVariable       DaywalkerPurpleItalic
hi! link rubyInterpolationDelimiter DaywalkerPink
hi! link rubyRegexpDelimiter        DaywalkerRed
hi! link rubyStringDelimiter        DaywalkerYellow
