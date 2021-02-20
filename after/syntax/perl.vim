if daywalker#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       DaywalkerRed

" Builtin functions
hi! link perlOperator            DaywalkerCyan
hi! link perlStatementFiledesc   DaywalkerCyan
hi! link perlStatementFiles      DaywalkerCyan
hi! link perlStatementFlow       DaywalkerCyan
hi! link perlStatementHash       DaywalkerCyan
hi! link perlStatementIOfunc     DaywalkerCyan
hi! link perlStatementIPC        DaywalkerCyan
hi! link perlStatementList       DaywalkerCyan
hi! link perlStatementMisc       DaywalkerCyan
hi! link perlStatementNetwork    DaywalkerCyan
hi! link perlStatementNumeric    DaywalkerCyan
hi! link perlStatementProc       DaywalkerCyan
hi! link perlStatementPword      DaywalkerCyan
hi! link perlStatementRegexp     DaywalkerCyan
hi! link perlStatementScalar     DaywalkerCyan
hi! link perlStatementSocket     DaywalkerCyan
hi! link perlStatementTime       DaywalkerCyan
hi! link perlStatementVector     DaywalkerCyan

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd DaywalkerRed
endif

" Signatures
hi! link perlSignature           DaywalkerOrangeItalic
hi! link perlSubPrototype        DaywalkerOrangeItalic

" Hash keys
hi! link perlVarSimpleMemberName DaywalkerPurple
