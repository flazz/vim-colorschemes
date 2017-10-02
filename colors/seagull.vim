hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'seagull'

hi Normal                                  cterm=NONE  ctermfg=11  ctermbg=15  guifg=#6d767d  guibg=#ffffff  gui=NONE

set background=light

hi ColorColumn                             cterm=NONE  ctermbg=7  guibg=#e6eaed  gui=NONE
hi Comment                                 cterm=NONE  ctermfg=14 guifg=#808487  gui=italic
hi ConId                                   cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi Conceal                                 cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi Constant                                cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi Cursor                                  cterm=NONE  ctermfg=15  ctermbg=15  guifg=#ffffff  guibg=#808487  gui=NONE
hi CursorColumn                            cterm=NONE  ctermbg=7  guibg=#e6eaed  gui=NONE
hi CursorLine                              cterm=NONE  ctermbg=7  guibg=#e6eaed  guisp=#61707a  gui=NONE
hi CursorLineNr                            cterm=NONE  ctermfg=11  gui=bold  guifg=#6d767d
hi DiffAdd                                 cterm=NONE  ctermfg=2  ctermbg=7  gui=NONE  guifg=#11ab00  guibg=#e6eaed  guisp=#11ab00  gui=NONE
hi DiffChange                              cterm=NONE  ctermfg=3  ctermbg=7  gui=NONE  guifg=#bf8c00  guibg=#e6eaed  guisp=#bf8c00  gui=NONE
hi DiffDelete                              cterm=NONE  ctermfg=1  ctermbg=7  gui=NONE  guifg=#ff4053  guibg=#e6eaed  gui=NONE
hi DiffText                                cterm=NONE  ctermfg=4  ctermbg=7  gui=NONE  guifg=#0099ff  guibg=#e6eaed  guisp=#0099ff  gui=NONE
hi Directory                               cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi Error                                   cterm=NONE  ctermfg=1  ctermbg=NONE  guifg=#ff4053  guibg=#ffffff  gui=NONE
hi ErrorMsg                                cterm=reverse  ctermfg=1  ctermbg=NONE guifg=#ff4053  guibg=NONE gui=reverse
hi FoldColumn                              cterm=NONE  ctermfg=11  ctermbg=7  guifg=#6d767d  guibg=#e6eaed  gui=NONE
hi Folded                                  cterm=NONE,underline  ctermfg=11  ctermbg=7  guifg=#6d767d  guibg=#e6eaed  guisp=#ffffff  gui=NONE
hi HelpExample                             cterm=NONE  ctermfg=10  guifg=#61707a  gui=NONE
hi Identifier                              cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi IncSearch                               cterm=standout  ctermfg=9  gui=standout  guifg=#ff6200
hi LineNr                                  cterm=NONE  ctermfg=14  ctermbg=7  guifg=#808487  guibg=#e6eaed  gui=NONE
hi MatchParen                              cterm=NONE  ctermfg=1  ctermbg=14  gui=NONE  guifg=#ff4053  guibg=#808487  gui=NONE
hi ModeMsg                                 cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi MoreMsg                                 cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi NonText                                 cterm=NONE  ctermfg=12  gui=NONE  guifg=#787e82  gui=NONE
hi Pmenu                                   cterm=reverse  ctermfg=11  ctermbg=7  guifg=#6d767d  guibg=#e6eaed  gui=reverse
hi PmenuSbar                               cterm=reverse  ctermfg=0  ctermbg=11  guifg=#1d252b  guibg=#6d767d  gui=reverse
hi PmenuSel                                cterm=reverse  ctermfg=14  ctermbg=0  guifg=#808487  guibg=#1d252b  gui=reverse
hi PmenuThumb                              cterm=reverse  ctermfg=11  ctermbg=15  guifg=#6d767d  guibg=#ffffff  gui=reverse
hi PreProc                                 cterm=NONE  ctermfg=9  guifg=#ff6200  gui=NONE
hi Question                                cterm=NONE  ctermfg=6  gui=NONE  guifg=#00a5ab  gui=NONE
hi Search                                  cterm=reverse  ctermfg=3  ctermbg=NONE  guifg=#bf8c00  guibg=NONE gui=reverse
hi SignColumn                              cterm=NONE  ctermfg=11  ctermbg=NONE  guifg=#6d767d  guibg=NONE  gui=NONE
hi Special                                 cterm=NONE  ctermfg=1  guifg=#ff4053  gui=NONE
hi SpecialKey                              cterm=NONE  ctermfg=12  ctermbg=7  gui=NONE  guifg=#787e82  guibg=#e6eaed  gui=NONE
hi SpellBad                                cterm=undercurl ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#ff4053
hi SpellCap                                cterm=undercurl  ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#9854ff
hi SpellLocal                              cterm=undercurl  ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#bf8c00
hi SpellRare                               cterm=undercurl  ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#00a5ab
hi Statement                               cterm=NONE  ctermfg=2  guifg=#11ab00  gui=NONE
hi StatusLine                              cterm=reverse  ctermfg=14  ctermbg=15  gui=reverse  guifg=#808487  guibg=#ffffff  guibg=NONE
hi StatusLineNC                            cterm=reverse  ctermfg=12  ctermbg=7  gui=reverse  guifg=#787e82  guibg=#e6eaed  guibg=NONE
hi TabLine                                 cterm=underline  ctermfg=11  ctermbg=7  gui=underline  guifg=#6d767d  guibg=#e6eaed  guisp=#6d767d
hi TabLineFill                             cterm=underline  ctermfg=11  ctermbg=7  gui=underline  guifg=#6d767d  guibg=#e6eaed  guisp=#6d767d
hi TabLineSel                              cterm=underline,reverse  ctermfg=14  ctermbg=0  gui=underline,reverse  guifg=#808487  guibg=#1d252b  guisp=#6d767d
hi Title                                   cterm=NONE  ctermfg=9  guifg=#ff6200  gui=NONE
hi Todo                                    cterm=NONE  ctermfg=5  guifg=#ff549b  guibg=NONE gui=bold
hi Type                                    cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi Underlined                              cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi VarId                                   cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi VertSplit                               cterm=NONE  ctermfg=12  ctermbg=12  guifg=#787e82  guibg=#787e82  gui=NONE
hi Visual                                  cterm=reverse  ctermfg=14  ctermbg=15 gui=reverse  guifg=#808487  guibg=#ffffff  guibg=NONE
hi VisualNOS                               cterm=reverse  ctermbg=7 gui=reverse  guibg=#e6eaed  guibg=NONE
hi WarningMsg                              cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff4053  gui=NONE
hi WildMenu                                cterm=reverse  ctermfg=0  ctermbg=7  guifg=#1d252b  guibg=#e6eaed  gui=reverse
hi cPreCondit                              cterm=NONE  ctermfg=9  guifg=#ff6200  gui=NONE
hi gitcommitBranch                         cterm=NONE  ctermfg=5  gui=NONE  guifg=#ff549b  gui=NONE
hi gitcommitComment                        cterm=NONE  ctermfg=14  gui=italic  guifg=#808487  gui=NONE
hi gitcommitDiscardedFile                  cterm=NONE  ctermfg=1  gui=NONE  guifg=#ff4053  gui=NONE
hi gitcommitDiscardedType                  cterm=NONE  ctermfg=1  guifg=#ff4053  gui=NONE
hi gitcommitFile                           cterm=NONE  ctermfg=11  gui=NONE  guifg=#6d767d  gui=NONE
hi gitcommitHeader                         cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi gitcommitOnBranch                       cterm=NONE  ctermfg=14  gui=NONE  guifg=#808487  gui=NONE
hi gitcommitSelectedFile                   cterm=NONE  ctermfg=2  gui=NONE  guifg=#11ab00  gui=NONE
hi gitcommitSelectedType                   cterm=NONE  ctermfg=2  guifg=#11ab00  gui=NONE
hi gitcommitUnmerged                       cterm=NONE  ctermfg=2  gui=NONE  guifg=#11ab00  gui=NONE
hi gitcommitUnmergedFile                   cterm=NONE  ctermfg=3  gui=NONE  guifg=#bf8c00  gui=NONE
hi gitcommitUntrackedFile                  cterm=NONE  ctermfg=6  gui=NONE  guifg=#00a5ab  gui=NONE
hi helpHyperTextEntry                      cterm=NONE  ctermfg=2  guifg=#11ab00  gui=NONE
hi helpHyperTextJump                       cterm=underline  ctermfg=4  gui=underline  guifg=#0099ff
hi helpNote                                cterm=NONE  ctermfg=5  guifg=#ff549b  gui=NONE
hi helpOption                              cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi helpVim                                 cterm=NONE  ctermfg=5  guifg=#ff549b  gui=NONE
hi hsImport                                cterm=NONE  ctermfg=5  guifg=#ff549b  gui=NONE
hi hsImportLabel                           cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi hsModuleName                            cterm=underline  ctermfg=2  gui=underline  guifg=#11ab00
hi hsNiceOperator                          cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi hsStatement                             cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi hsString                                cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi hsStructure                             cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi hsType                                  cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi hsTypedef                               cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi hsVarSym                                cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi hs_DeclareFunction                      cterm=NONE  ctermfg=9  guifg=#ff6200  gui=NONE
hi hs_OpFunctionName                       cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi hs_hlFunctionName                       cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi htmlArg                                 cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi htmlEndTag                              cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi htmlSpecialTagName                      cterm=NONE  ctermfg=4  gui=italic  guifg=#0099ff  gui=NONE
hi htmlTag                                 cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi htmlTagN                                cterm=NONE  ctermfg=10  gui=NONE  guifg=#61707a  gui=NONE
hi htmlTagName                             cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi javaScript                              cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi pandocBlockQuote                        cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocBlockQuoteLeader1                 cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocBlockQuoteLeader2                 cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE
hi pandocBlockQuoteLeader3                 cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi pandocBlockQuoteLeader4                 cterm=NONE  ctermfg=1  guifg=#ff4053  gui=NONE
hi pandocBlockQuoteLeader5                 cterm=NONE  ctermfg=11  guifg=#6d767d  gui=NONE
hi pandocBlockQuoteLeader6                 cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi pandocCitation                          cterm=NONE  ctermfg=5  guifg=#ff549b  gui=NONE
hi pandocCitationDelim                     cterm=NONE  ctermfg=5  guifg=#ff549b  gui=NONE
hi pandocCitationID                        cterm=underline  ctermfg=5  gui=underline  guifg=#ff549b
hi pandocCitationRef                       cterm=NONE  ctermfg=5  guifg=#ff549b  gui=NONE
hi pandocComment                           cterm=NONE  ctermfg=14  gui=italic  guifg=#808487  gui=NONE
hi pandocDefinitionBlock                   cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi pandocDefinitionIndctr                  cterm=NONE  ctermfg=13  gui=NONE  guifg=#9854ff  gui=NONE
hi pandocDefinitionTerm                    cterm=standout  ctermfg=13  gui=standout  guifg=#9854ff
hi pandocEmphasis                          cterm=NONE  ctermfg=11  gui=italic  guifg=#6d767d  gui=NONE
hi pandocEmphasisDefinition                cterm=NONE  ctermfg=13  gui=italic  guifg=#9854ff  gui=NONE
hi pandocEmphasisHeading                   cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocEmphasisNested                    cterm=NONE  ctermfg=11  gui=NONE  guifg=#6d767d  gui=NONE
hi pandocEmphasisNestedDefinition          cterm=NONE  ctermfg=13  gui=NONE  guifg=#9854ff  gui=NONE
hi pandocEmphasisNestedHeading             cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocEmphasisNestedTable               cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocEmphasisTable                     cterm=NONE  ctermfg=4  gui=italic  guifg=#0099ff  gui=NONE
hi pandocEscapePair                        cterm=NONE  ctermfg=1  gui=NONE  guifg=#ff4053  gui=NONE
hi pandocFootnote                          cterm=NONE  ctermfg=2  guifg=#11ab00  gui=NONE
hi pandocFootnoteDefLink                   cterm=NONE  ctermfg=2  gui=NONE  guifg=#11ab00  gui=NONE
hi pandocFootnoteInline                    cterm=NONE,underline  ctermfg=2  gui=NONE,underline  guifg=#11ab00  gui=NONE
hi pandocFootnoteLink                      cterm=underline  ctermfg=2  gui=underline  guifg=#11ab00
hi pandocHeading                           cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocHeadingMarker                     cterm=NONE  ctermfg=3  gui=NONE  guifg=#bf8c00  gui=NONE
hi pandocImageCaption                      cterm=NONE,underline  ctermfg=13  gui=NONE,underline  guifg=#9854ff  gui=NONE
hi pandocLinkDefinition                    cterm=underline  ctermfg=6  gui=underline  guifg=#00a5ab  guisp=#787e82
hi pandocLinkDefinitionID                  cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocLinkDelim                         cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi pandocLinkLabel                         cterm=underline  ctermfg=4  gui=underline  guifg=#0099ff
hi pandocLinkText                          cterm=NONE,underline  ctermfg=4  gui=NONE,underline  guifg=#0099ff  gui=NONE
hi pandocLinkTitle                         cterm=underline  ctermfg=12  gui=underline  guifg=#787e82
hi pandocLinkTitleDelim                    cterm=underline  ctermfg=14  gui=underline  guifg=#808487  guisp=#787e82
hi pandocLinkURL                           cterm=underline  ctermfg=12  gui=underline  guifg=#787e82
hi pandocListMarker                        cterm=NONE  ctermfg=5  guifg=#ff549b  gui=NONE
hi pandocListReference                     cterm=underline  ctermfg=5  gui=underline  guifg=#ff549b
hi pandocMetadata                          cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocMetadataDelim                     cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi pandocMetadataKey                       cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocNonBreakingSpace                  cterm=reverse  ctermfg=1  ctermbg=NONE  gui=reverse  guifg=#ff4053  guibg=NONE
hi pandocRule                              cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocRuleLine                          cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocStrikeout                         cterm=reverse  ctermfg=14  ctermbg=NONE  gui=reverse  guifg=#808487  guibg=NONE
hi pandocStrikeoutDefinition               cterm=reverse  ctermfg=13  ctermbg=NONE  gui=reverse  guifg=#9854ff  guibg=NONE
hi pandocStrikeoutHeading                  cterm=reverse  ctermfg=9  ctermbg=NONE  gui=reverse  guifg=#ff6200  guibg=NONE
hi pandocStrikeoutTable                    cterm=reverse  ctermfg=4  ctermbg=NONE  gui=reverse  guifg=#0099ff  guibg=NONE
hi pandocStrongEmphasis                    cterm=NONE  ctermfg=11  gui=NONE  guifg=#6d767d  gui=NONE
hi pandocStrongEmphasisDefinition          cterm=NONE  ctermfg=13  gui=NONE  guifg=#9854ff  gui=NONE
hi pandocStrongEmphasisEmphasis            cterm=NONE  ctermfg=11  gui=NONE  guifg=#6d767d  gui=NONE
hi pandocStrongEmphasisEmphasisDefinition  cterm=NONE  ctermfg=13  gui=NONE  guifg=#9854ff  gui=NONE
hi pandocStrongEmphasisEmphasisHeading     cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocStrongEmphasisEmphasisTable       cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocStrongEmphasisHeading             cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocStrongEmphasisNested              cterm=NONE  ctermfg=11  gui=NONE  guifg=#6d767d  gui=NONE
hi pandocStrongEmphasisNestedDefinition    cterm=NONE  ctermfg=13  gui=NONE  guifg=#9854ff  gui=NONE
hi pandocStrongEmphasisNestedHeading       cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocStrongEmphasisNestedTable         cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocStrongEmphasisTable               cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocStyleDelim                        cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi pandocSubscript                         cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi pandocSubscriptDefinition               cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi pandocSubscriptHeading                  cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocSubscriptTable                    cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocSuperscript                       cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi pandocSuperscriptDefinition             cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi pandocSuperscriptHeading                cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocSuperscriptTable                  cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocTable                             cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocTableStructure                    cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocTableZebraDark                    cterm=NONE  ctermfg=4  ctermbg=7  guifg=#0099ff  guibg=#e6eaed  gui=NONE
hi pandocTableZebraLight                   cterm=NONE  ctermfg=4  ctermbg=15  guifg=#0099ff  guibg=#ffffff  gui=NONE
hi pandocTitleBlock                        cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi pandocTitleBlockTitle                   cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocTitleComment                      cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi pandocVerbatimBlock                     cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi pandocVerbatimInline                    cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi pandocVerbatimInlineDefinition          cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi pandocVerbatimInlineHeading             cterm=NONE  ctermfg=9  gui=NONE  guifg=#ff6200  gui=NONE
hi pandocVerbatimInlineTable               cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi perlHereDoc                             cterm=NONE  ctermfg=10  ctermbg=15  guifg=#61707a  guibg=#ffffff  gui=NONE
hi perlStatementFileDesc                   cterm=NONE  ctermfg=6  ctermbg=15  guifg=#00a5ab  guibg=#ffffff  gui=NONE
hi perlVarPlain                            cterm=NONE  ctermfg=3  ctermbg=15  guifg=#bf8c00  guibg=#ffffff  gui=NONE
hi rubyDefine                              cterm=NONE  ctermfg=10  ctermbg=15  gui=NONE  guifg=#61707a  guibg=#ffffff  gui=NONE
hi texMathMatcher                          cterm=NONE  ctermfg=3  ctermbg=15  guifg=#bf8c00  guibg=#ffffff  gui=NONE
hi texMathZoneX                            cterm=NONE  ctermfg=3  ctermbg=15  guifg=#bf8c00  guibg=#ffffff  gui=NONE
hi texRefLabel                             cterm=NONE  ctermfg=3  ctermbg=15  guifg=#bf8c00  guibg=#ffffff  gui=NONE
hi texStatement                            cterm=NONE  ctermfg=6  ctermbg=15  guifg=#00a5ab  guibg=#ffffff  gui=NONE
hi vimCmdSep                               cterm=NONE  ctermfg=4  gui=NONE  guifg=#0099ff  gui=NONE
hi vimCommand                              cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi vimCommentString                        cterm=NONE  ctermfg=13  guifg=#9854ff  gui=NONE
hi vimGroup                                cterm=NONE,underline  ctermfg=4  gui=NONE,underline  guifg=#0099ff  gui=NONE
hi vimHiGroup                              cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi vimHiLink                               cterm=NONE  ctermfg=4  guifg=#0099ff  gui=NONE
hi vimIsCommand                            cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi vimSynMtchOpt                           cterm=NONE  ctermfg=3  guifg=#bf8c00  gui=NONE
hi vimSynType                              cterm=NONE  ctermfg=6  guifg=#00a5ab  gui=NONE

hi link Boolean                    Constant
hi link Character                  Constant
hi link Conditional                Statement
hi link Debug                      Special
hi link Define                     PreProc
hi link Delimiter                  Special
hi link Exception                  Statement
hi link Float                      Number
hi link Function                   Identifier
hi link HelpCommand                Statement
hi link Include                    PreProc
hi link Keyword                    Statement
hi link Label                      Statement
hi link Macro                      PreProc
hi link Number                     Constant
hi link Operator                   Statement
hi link PreCondit                  PreProc
hi link Repeat                     Statement
hi link SpecialChar                Special
hi link SpecialComment             Special
hi link StorageClass               Type
hi link String                     Constant
hi link Structure                  Type
hi link SyntasticError             SpellBad
hi link SyntasticErrorSign         Error
hi link SyntasticStyleErrorLine    SyntasticErrorLine
hi link SyntasticStyleErrorSign    SyntasticErrorSign
hi link SyntasticStyleWarningLine  SyntasticWarningLine
hi link SyntasticStyleWarningSign  SyntasticWarningSign
hi link SyntasticWarning           SpellCap
hi link SyntasticWarningSign       Todo
hi link Tag                        Special
hi link Typedef                    Type

hi link diffAdded                  Statement
hi link diffBDiffer                WarningMsg
hi link diffCommon                 WarningMsg
hi link diffDiffer                 WarningMsg
hi link diffIdentical              WarningMsg
hi link diffIsA                    WarningMsg
hi link diffLine                   Identifier
hi link diffNoEOL                  WarningMsg
hi link diffOnly                   WarningMsg
hi link diffRemoved                WarningMsg

hi link gitcommitDiscarded         gitcommitComment
hi link gitcommitDiscardedArrow    gitcommitDiscardedFile
hi link gitcommitNoBranch          gitcommitBranch
hi link gitcommitSelected          gitcommitComment
hi link gitcommitSelectedArrow     gitcommitSelectedFile
hi link gitcommitUnmergedArrow     gitcommitUnmergedFile
hi link gitcommitUntracked         gitcommitComment

hi link helpSpecial                Special

hi link hsDelimTypeExport          Delimiter
hi link hsImportParams             Delimiter
hi link hsModuleStartLabel         hsStructure
hi link hsModuleWhereLabel         hsModuleStartLabel
hi link htmlLink                   Function

hi link lCursor                    Cursor

hi link pandocCodeBlock            pandocVerbatimBlock
hi link pandocCodeBlockDelim       pandocVerbatimBlock
hi link pandocEscapedCharacter     pandocEscapePair
hi link pandocLineBreak            pandocEscapePair
hi link pandocMetadataTitle        pandocMetadata
hi link pandocTableStructureEnd    pandocTableStructre
hi link pandocTableStructureTop    pandocTableStructre
hi link pandocVerbatimBlockDeep    pandocVerbatimBlock

hi link vimFunc                    Function
hi link vimSet                     Normal
hi link vimSetEqual                Normal
hi link vimUserFunc                Function
hi link vipmVar                    Identifier

hi clear SyntasticErrorLine
hi clear SyntasticWarningLine
hi clear helpLeadBlank
hi clear helpNormal
hi clear pandocTableStructre

if has('nvim')
  let g:terminal_color_0  = '#e6eaed'
  let g:terminal_color_1  = '#ff4053'
  let g:terminal_color_2  = '#11ab00'
  let g:terminal_color_3  = '#bf8c00'
  let g:terminal_color_4  = '#0099ff'
  let g:terminal_color_5  = '#ff549b'
  let g:terminal_color_6  = '#00a5ab'
  let g:terminal_color_7  = '#1d252b'
  let g:terminal_color_8  = '#ffffff'
  let g:terminal_color_9  = '#ff6200'
  let g:terminal_color_10 = '#808487'
  let g:terminal_color_11 = '#787e82'
  let g:terminal_color_12 = '#6d767d'
  let g:terminal_color_13 = '#9854ff'
  let g:terminal_color_14 = '#61707a'
  let g:terminal_color_15 = '#0b141a'
endif

" This colour scheme was generated by modifying the 'flattened_light' colour
" scheme by Romain Lafourcade (https://github.com/romainl/flattened), which
" is in turn derived from the 'Solarized' colour scheme by Ethan Schnoonover
" (https://github.com/altercation/vim-colors-solarized).
