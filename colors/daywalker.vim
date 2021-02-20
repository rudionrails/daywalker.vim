" Daywalker Theme: {{{
"
" https://github.com/zenorocha/daywalker-theme
"
" Copyright 2016, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Trevor Heins <@heinst>
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Derek Sifford <dereksifford@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>
scriptencoding utf8
" }}}

" Configuration: {{{

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'daywalker'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: {{{2

let s:fg        = g:daywalker#palette.fg

let s:bglighter = g:daywalker#palette.bglighter
let s:bglight   = g:daywalker#palette.bglight
let s:bg        = g:daywalker#palette.bg
let s:bgdark    = g:daywalker#palette.bgdark
let s:bgdarker  = g:daywalker#palette.bgdarker

let s:comment   = g:daywalker#palette.comment
let s:selection = g:daywalker#palette.selection
let s:subtle    = g:daywalker#palette.subtle

let s:cyan      = g:daywalker#palette.cyan
let s:green     = g:daywalker#palette.green
let s:orange    = g:daywalker#palette.orange
let s:pink      = g:daywalker#palette.pink
let s:purple    = g:daywalker#palette.purple
let s:red       = g:daywalker#palette.red
let s:yellow    = g:daywalker#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:daywalker#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:daywalker#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: {{{2

if !exists('g:daywalker_bold')
  let g:daywalker_bold = 1
endif

if !exists('g:daywalker_italic')
  let g:daywalker_italic = 1
endif

if !exists('g:daywalker_underline')
  let g:daywalker_underline = 1
endif

if !exists('g:daywalker_undercurl')
  let g:daywalker_undercurl = g:daywalker_underline
endif

if !exists('g:daywalker_inverse')
  let g:daywalker_inverse = 1
endif

if !exists('g:daywalker_colorterm')
  let g:daywalker_colorterm = 1
endif

"}}}2
" Script Helpers: {{{2

let s:attrs = {
      \ 'bold': g:daywalker_bold == 1 ? 'bold' : 0,
      \ 'italic': g:daywalker_italic == 1 ? 'italic' : 0,
      \ 'underline': g:daywalker_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:daywalker_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:daywalker_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
" Daywalker Highlight Groups: {{{2

call s:h('DaywalkerBgLight', s:none, s:bglight)
call s:h('DaywalkerBgLighter', s:none, s:bglighter)
call s:h('DaywalkerBgDark', s:none, s:bgdark)
call s:h('DaywalkerBgDarker', s:none, s:bgdarker)

call s:h('DaywalkerFg', s:fg)
call s:h('DaywalkerFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('DaywalkerFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('DaywalkerComment', s:comment)
call s:h('DaywalkerCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('DaywalkerSelection', s:none, s:selection)

call s:h('DaywalkerSubtle', s:subtle)

call s:h('DaywalkerCyan', s:cyan)
call s:h('DaywalkerCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('DaywalkerGreen', s:green)
call s:h('DaywalkerGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('DaywalkerGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('DaywalkerGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('DaywalkerOrange', s:orange)
call s:h('DaywalkerOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('DaywalkerOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('DaywalkerOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('DaywalkerOrangeInverse', s:bg, s:orange)

call s:h('DaywalkerPink', s:pink)
call s:h('DaywalkerPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('DaywalkerPurple', s:purple)
call s:h('DaywalkerPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('DaywalkerPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('DaywalkerRed', s:red)
call s:h('DaywalkerRedInverse', s:fg, s:red)

call s:h('DaywalkerYellow', s:yellow)
call s:h('DaywalkerYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('DaywalkerError', s:red, s:none, [], s:red)

call s:h('DaywalkerErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('DaywalkerWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('DaywalkerInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('DaywalkerTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('DaywalkerSearch', s:green, s:none, [s:attrs.inverse])
call s:h('DaywalkerBoundary', s:comment, s:bgdark)
call s:h('DaywalkerLink', s:cyan, s:none, [s:attrs.underline])

call s:h('DaywalkerDiffChange', s:orange, s:none)
call s:h('DaywalkerDiffText', s:bg, s:orange)
call s:h('DaywalkerDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: {{{

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:daywalker_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  DaywalkerBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr DaywalkerYellow
hi! link DiffAdd      DaywalkerGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   DaywalkerDiffChange
hi! link DiffDelete   DaywalkerDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     DaywalkerDiffText
hi! link Directory    DaywalkerPurpleBold
hi! link ErrorMsg     DaywalkerRedInverse
hi! link FoldColumn   DaywalkerSubtle
hi! link Folded       DaywalkerBoundary
hi! link IncSearch    DaywalkerOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      DaywalkerFgBold
hi! link NonText      DaywalkerSubtle
hi! link Pmenu        DaywalkerBgDark
hi! link PmenuSbar    DaywalkerBgDark
hi! link PmenuSel     DaywalkerSelection
hi! link PmenuThumb   DaywalkerSelection
hi! link Question     DaywalkerFgBold
hi! link Search       DaywalkerSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      DaywalkerBoundary
hi! link TabLineFill  DaywalkerBgDarker
hi! link TabLineSel   Normal
hi! link Title        DaywalkerGreenBold
hi! link VertSplit    DaywalkerBoundary
hi! link Visual       DaywalkerSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   DaywalkerOrangeInverse

" }}}
" Syntax: {{{

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey DaywalkerRed
  hi! link LspDiagnosticsDefaultInformation DaywalkerCyan
  hi! link LspDiagnosticsDefaultHint DaywalkerCyan
  hi! link LspDiagnosticsDefaultError DaywalkerError
  hi! link LspDiagnosticsDefaultWarning DaywalkerOrange
  hi! link LspDiagnosticsUnderlineError DaywalkerErrorLine
  hi! link LspDiagnosticsUnderlineHint DaywalkerInfoLine
  hi! link LspDiagnosticsUnderlineInformation DaywalkerInfoLine
  hi! link LspDiagnosticsUnderlineWarning DaywalkerWarnLine
else
  hi! link SpecialKey DaywalkerSubtle
endif

hi! link Comment DaywalkerComment
hi! link Underlined DaywalkerFgUnderline
hi! link Todo DaywalkerTodo

hi! link Error DaywalkerError
hi! link SpellBad DaywalkerErrorLine
hi! link SpellLocal DaywalkerWarnLine
hi! link SpellCap DaywalkerInfoLine
hi! link SpellRare DaywalkerInfoLine

hi! link Constant DaywalkerPurple
hi! link String DaywalkerYellow
hi! link Character DaywalkerPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier DaywalkerFg
hi! link Function DaywalkerGreen

hi! link Statement DaywalkerPink
hi! link Conditional DaywalkerPink
hi! link Repeat DaywalkerPink
hi! link Label DaywalkerPink
hi! link Operator DaywalkerPink
hi! link Keyword DaywalkerPink
hi! link Exception DaywalkerPink

hi! link PreProc DaywalkerPink
hi! link Include DaywalkerPink
hi! link Define DaywalkerPink
hi! link Macro DaywalkerPink
hi! link PreCondit DaywalkerPink
hi! link StorageClass DaywalkerPink
hi! link Structure DaywalkerPink
hi! link Typedef DaywalkerPink

hi! link Type DaywalkerCyanItalic

hi! link Delimiter DaywalkerFg

hi! link Special DaywalkerPink
hi! link SpecialComment DaywalkerCyanItalic
hi! link Tag DaywalkerCyan
hi! link helpHyperTextJump DaywalkerLink
hi! link helpCommand DaywalkerPurple
hi! link helpExample DaywalkerGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
