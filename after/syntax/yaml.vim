if daywalker#should_abort('yaml')
    finish
endif

hi! link yamlAlias           DaywalkerGreenItalicUnderline
hi! link yamlAnchor          DaywalkerPinkItalic
hi! link yamlBlockMappingKey DaywalkerCyan
hi! link yamlFlowCollection  DaywalkerPink
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         DaywalkerPink
hi! link yamlPlainScalar     DaywalkerYellow

