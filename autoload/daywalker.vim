" Palette: {{{

let g:daywalker#palette           = {}
let g:daywalker#palette.fg        = ['#F8F8F2', 253]

let g:daywalker#palette.bglighter = ['#424450', 238]
let g:daywalker#palette.bglight   = ['#343746', 237]
let g:daywalker#palette.bg        = ['#282A36', 236]
let g:daywalker#palette.bgdark    = ['#21222C', 235]
let g:daywalker#palette.bgdarker  = ['#191A21', 234]

let g:daywalker#palette.comment   = ['#6272A4',  61]
let g:daywalker#palette.selection = ['#44475A', 239]
let g:daywalker#palette.subtle    = ['#424450', 238]

let g:daywalker#palette.cyan      = ['#8BE9FD', 117]
let g:daywalker#palette.green     = ['#50FA7B',  84]
let g:daywalker#palette.orange    = ['#FFB86C', 215]
let g:daywalker#palette.pink      = ['#FF79C6', 212]
let g:daywalker#palette.purple    = ['#BD93F9', 141]
let g:daywalker#palette.red       = ['#FF5555', 203]
let g:daywalker#palette.yellow    = ['#F1FA8C', 228]

"
" ANSI
"
let g:daywalker#palette.color_0  = '#21222C'
let g:daywalker#palette.color_1  = '#FF5555'
let g:daywalker#palette.color_2  = '#50FA7B'
let g:daywalker#palette.color_3  = '#F1FA8C'
let g:daywalker#palette.color_4  = '#BD93F9'
let g:daywalker#palette.color_5  = '#FF79C6'
let g:daywalker#palette.color_6  = '#8BE9FD'
let g:daywalker#palette.color_7  = '#F8F8F2'
let g:daywalker#palette.color_8  = '#6272A4'
let g:daywalker#palette.color_9  = '#FF6E6E'
let g:daywalker#palette.color_10 = '#69FF94'
let g:daywalker#palette.color_11 = '#FFFFA5'
let g:daywalker#palette.color_12 = '#D6ACFF'
let g:daywalker#palette.color_13 = '#FF92DF'
let g:daywalker#palette.color_14 = '#A4FFFF'
let g:daywalker#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! daywalker#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'daywalker'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
