if daywalker#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown {{{1
  hi! link htmlBold       DaywalkerOrangeBold
  hi! link htmlBoldItalic DaywalkerOrangeBoldItalic
  hi! link htmlH1         DaywalkerPurpleBold
  hi! link htmlItalic     DaywalkerYellowItalic
  hi! link mkdBlockquote  DaywalkerYellowItalic
  hi! link mkdBold        DaywalkerOrangeBold
  hi! link mkdBoldItalic  DaywalkerOrangeBoldItalic
  hi! link mkdCode        DaywalkerGreen
  hi! link mkdCodeEnd     DaywalkerGreen
  hi! link mkdCodeStart   DaywalkerGreen
  hi! link mkdHeading     DaywalkerPurpleBold
  hi! link mkdInlineUrl   DaywalkerLink
  hi! link mkdItalic      DaywalkerYellowItalic
  hi! link mkdLink        DaywalkerPink
  hi! link mkdListItem    DaywalkerCyan
  hi! link mkdRule        DaywalkerComment
  hi! link mkdUrl         DaywalkerLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: {{{1
  hi! link markdownBlockquote        DaywalkerCyan
  hi! link markdownBold              DaywalkerOrangeBold
  hi! link markdownBoldItalic        DaywalkerOrangeBoldItalic
  hi! link markdownCodeBlock         DaywalkerGreen
  hi! link markdownCode              DaywalkerGreen
  hi! link markdownCodeDelimiter     DaywalkerGreen
  hi! link markdownH1                DaywalkerPurpleBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            DaywalkerYellowItalic
  hi! link markdownLinkText          DaywalkerPink
  hi! link markdownListMarker        DaywalkerCyan
  hi! link markdownOrderedListMarker DaywalkerCyan
  hi! link markdownRule              DaywalkerComment
  hi! link markdownUrl               DaywalkerLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
