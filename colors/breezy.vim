highlight clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'breezy'

if(&background == "dark")
    hi Normal        guibg=#000000 guifg=#cfcfc2 gui=NONE
else
    hi Normal        guibg=#232629 guifg=#cfcfc2 gui=NONE
endif

hi LineNr        guibg=#31363b guifg=#7a7c7d gui=NONE
hi FoldColumn    guibg=#31363b guifg=#7a7c7d gui=NONE
hi Folded        guibg=#31363b guifg=#7a7c7d gui=NONE
hi MatchParen    guibg=#8e44ad guifg=#cfcfc2 gui=NONE
hi signColumn    guibg=#31363b guifg=#7a7c7d gui=NONE

hi Comment        guibg=NONE    guifg=#7a7c7d gui=NONE
hi Conceal        guibg=NONE    guifg=#cfcfc2 gui=NONE
hi Constant       guibg=NONE    guifg=#f67400 gui=NONE
hi Boolean        guibg=NONE    guifg=#27aeae gui=NONE
hi Debug          guibg=NONE    guifg=#a5a6a8 gui=bold
hi Error          guibg=#4d1f24 guifg=#95da4c gui=bold
hi Identifier     guibg=NONE    guifg=#8e44ad gui=NONE
hi Ignore         guibg=NONE    guifg=NONE    gui=NONE
hi Operator       guibg=NONE    guifg=NONE    gui=bold
hi PreProc        guibg=NONE    guifg=#27ae60 gui=NONE
hi Special        guibg=NONE    guifg=#3daee9 gui=NONE
hi SpecialComment guibg=NONE    guifg=#a5a6a8 gui=NONE
hi Statement      guibg=NONE    guifg=#fdbc4b gui=bold
hi String         guibg=NONE    guifg=#f44f4f gui=NONE
hi Todo           guibg=#451e1a guifg=#ca9219 gui=NONE
hi Type           guibg=NONE    guifg=#2980b9 gui=NONE
hi Underlined     guibg=NONE    guifg=#27ae60 gui=underline

hi NonText       guibg=NONE    guifg=#7a7c7d gui=NONE

hi Pmenu         guibg=#31363b guifg=#cfcfc2 gui=NONE
hi PmenuSbar     guibg=#606365 guifg=NONE    gui=NONE
hi PmenuSel      guibg=#2d5c76 guifg=#cfcfc2 gui=NONE
hi PmenuThumb    guibg=#a8a9ab guifg=#a8a9ab gui=NONE

hi ErrorMsg      guibg=#4d1f24 guifg=#95da4c gui=bold
hi ModeMsg       guibg=NONE    guifg=NONE    gui=bold
hi MoreMsg       guibg=NONE    guifg=#fdbc4b gui=bold
hi Question      guibg=NONE    guifg=#fdbc4b gui=bold
hi WarningMsg    guibg=NONE    guifg=#ffffff gui=NONE

hi TabLine       guibg=#31363b guifg=#7a7c7d gui=NONE
hi TabLineFill   guibg=#31363b guifg=NONE    gui=NONE
hi TabLineSel    guibg=#2d5c76 guifg=NONE    gui=NONE

hi Cursor        guibg=NONE    guifg=NONE    gui=reverse
hi CursorColumn  guibg=#2a2e32 guifg=NONE    gui=NONE
hi CursorLineNr  guibg=#31363b guifg=#a5a6a8 gui=NONE
hi CursorLine    guibg=#2a2e32 guifg=NONE    gui=NONE

hi helpLeadBlank guibg=NONE    guifg=NONE    gui=NONE
hi helpNormal    guibg=NONE    guifg=NONE    gui=NONE

hi StatusLine    guibg=#2d5c76 guifg=NONE    gui=NONE
hi StatusLineNC  guibg=#31363b guifg=#7a7c7d gui=NONE

hi Visual        guibg=#2d5c76 guifg=NONE    gui=NONE
hi VisualNOS     guibg=NONE    guifg=NONE    gui=underline

hi VertSplit     guibg=#2d5c76 guifg=#2d5c76 gui=NONE
hi WildMenu      guibg=NONE    guifg=NONE    gui=NONE

hi SpecialKey    guibg=NONE    guifg=#7a7c7d gui=NONE
hi Title         guibg=NONE    guifg=#ffffff gui=NONE

hi DiffAdd       guibg=#123723 guifg=NONE    gui=NONE
hi DiffChange    guibg=#424218 guifg=NONE    gui=NONE
hi DiffDelete    guibg=#4d1f24 guifg=NONE    gui=NONE
hi DiffText      guibg=NONE    guifg=NONE    gui=reverse

hi IncSearch     guibg=#808021 guifg=#cfcfc2 gui=NONE
hi Search        guibg=#218058 guifg=#cfcfc2 gui=NONE

hi Directory     guibg=NONE    guifg=#ffffff gui=NONE

hi SpellBad      guibg=NONE    guifg=NONE    gui=undercurl
hi SpellCap      guibg=NONE    guifg=NONE    gui=undercurl
hi SpellLocal    guibg=NONE    guifg=NONE    gui=undercurl
hi SpellRare     guibg=NONE    guifg=NONE    gui=undercurl

hi ColorColumn   guibg=#2a2e32 guifg=NONE    gui=NONE

" general ---------------------------------------------------------------------

hi link Character      String
hi link Conditional    Statement
hi link Define         Type
hi link Delimiter      Normal
hi link Exception      Statement
hi link Float          Number
hi link Function       Normal
hi link HelpCommand    Statement
hi link HelpExample    Statement
hi link Include        PreProc
hi link Keyword        Operator
hi link Label          Type
hi link Macro          PreProc
hi link Number         Constant
hi link PreCondit      PreProc
hi link Repeat         Statement
hi link SpecialChar    Special
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type

" html -----------------------------------------------------------------------

hi link htmlBold    Normal
hi link htmlItalic  Normal
hi link htmlTag     PreProc
hi link htmlEndTag  PreProc
hi link htmlTagName Operator
hi link htmlTagN    Operator
hi link htmlArg     PreProc
hi link htmlEvent   PreProc

" CSS ------------------------------------------------------------------------

hi link cssClassName  Type
hi link cssProp Operator
hi link cssDefinition Operator

" Typescript -----------------------------------------------------------------

hi link typescriptImport PreProc
hi link typescriptExport PreProc
hi link typescriptDecorator Type
hi link typescriptMemberVariableDeclaration Type
hi link typescriptCall Type
hi link typescriptTypeReference Normal
hi link typescriptEndColons Normal

" diff msgs ------------------------------------------------------------------

hi link diffBDiffer   WarningMsg
hi link diffCommon    WarningMsg
hi link diffDiffer    WarningMsg
hi link diffIdentical WarningMsg
hi link diffIsA       WarningMsg
hi link diffNoEOL     WarningMsg
hi link diffOnly      WarningMsg
hi link diffRemoved   WarningMsg
hi link diffAdded     String

" markdown -------------------------------------------------------------------
hi markdownH1         guibg=NONE guifg=#8e44ad gui=bold
hi markdownH2         guibg=NONE guifg=#8e44ad gui=bold
hi markdownH3         guibg=NONE guifg=#8e44ad gui=bold
hi markdownH4         guibg=NONE guifg=#8e44ad gui=bold
hi markdownH5         guibg=NONE guifg=#8e44ad gui=bold
hi markdownH6         guibg=NONE guifg=#8e44ad gui=bold
hi markdownLineBreak  guibg=NONE guifg=#7a7c7d gui=underline
hi markdownItalic     guibg=NONE guifg=NONE    gui=italic
hi markdownBold       guibg=NONE guifg=NONE    gui=bold
hi markdownBoldItalic guibg=NONE guifg=NONE    gui=bold,italic

hi link markdownHeadingDelimiter  Comment
hi link markdownLinkText          PreProc
hi link markdownUrl               PreProc
hi link markdownCode              Constant
hi link markdownCodeBlock         Constant
hi link markdownCodeDelimiter     Comment
hi link markdownOrderedListMarker Statement
hi link markdownListMarker        Statement
hi link markdownBlockquote        Special
hi link markdownRule              Special

" python ---------------------------------------------------------------------
hi pythonBuiltin guibg=NONE guifg=#7f8c8d gui=NONE
hi link pythonImport        PreProc
hi link pythonFunction      Normal
hi link pythonExceptions    PreProc

" custom:
hi pythonMagic    guibg=NONE guifg=#8e44ad gui=NONE
hi link pythonDef            Operator
hi link pythonDocstring      Comment
hi link pythonSpecial        Boolean
hi link pythonDecorator      Type
hi link pythonAs             PreProc

" c / cpp --------------------------------------------------------------------

hi link cppStatement Operator
hi link cIncluded cInclude

" PLUGINS --------------------------------------------------------------------

hi AleErrorSign   guibg=#31363b guifg=#f67400 gui=NONE
hi AleWarningSign guibg=#31363b guifg=#fdbc4b gui=NONE
