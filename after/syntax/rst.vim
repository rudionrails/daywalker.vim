if daywalker#should_abort('rst')
    finish
endif

hi! link rstComment                             Comment
hi! link rstTransition                          Comment
hi! link rstCodeBlock                           DaywalkerGreen
hi! link rstInlineLiteral                       DaywalkerGreen
hi! link rstLiteralBlock                        DaywalkerGreen
hi! link rstQuotedLiteralBlock                  DaywalkerGreen
hi! link rstStandaloneHyperlink                 DaywalkerLink
hi! link rstStrongEmphasis                      DaywalkerOrangeBold
hi! link rstSections                            DaywalkerPurpleBold
hi! link rstEmphasis                            DaywalkerYellowItalic
hi! link rstDirective                           Keyword
hi! link rstSubstitutionDefinition              Keyword
hi! link rstCitation                            String
hi! link rstExDirective                         String
hi! link rstFootnote                            String
hi! link rstCitationReference                   Tag
hi! link rstFootnoteReference                   Tag
hi! link rstHyperLinkReference                  Tag
hi! link rstHyperlinkTarget                     Tag
hi! link rstInlineInternalTargets               Tag
hi! link rstInterpretedTextOrHyperlinkReference Tag
hi! link rstTodo                                Todo
