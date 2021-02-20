if daywalker#should_abort('lua')
    finish
endif

hi! link luaFunc  DaywalkerCyan
hi! link luaTable DaywalkerFg

" tbastos/vim-lua {{{

hi! link luaBraces       DaywalkerFg
hi! link luaBuiltIn      Constant
hi! link luaDocTag       Keyword
hi! link luaErrHand      DaywalkerCyan
hi! link luaFuncArgName  DaywalkerOrangeItalic
hi! link luaFuncCall     Function
hi! link luaLocal        Keyword
hi! link luaSpecialTable Constant
hi! link luaSpecialValue DaywalkerCyan

" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
