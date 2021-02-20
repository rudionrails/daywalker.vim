if daywalker#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    DaywalkerGreen
hi! link diffNewFile DaywalkerRed

hi! link diffAdded   DaywalkerGreen
hi! link diffLine    DaywalkerCyanItalic
hi! link diffRemoved DaywalkerRed

