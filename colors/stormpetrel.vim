hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'stormpetrel'

hi  Normal                                  ctermfg=12  ctermbg=8  guifg=#787e82  guibg=#0b141a  gui=NONE

set background=dark

hi  ColorColumn                             ctermbg=0  guibg=#1d252b  gui=NONE
hi  Comment                                 ctermfg=10  guifg=#61707a  gui=italic
hi  ConId                                   ctermfg=3  guifg=#8a7c55  gui=NONE
hi  Conceal                                 ctermfg=4  guifg=#5f8299  gui=NONE
hi  Constant                                ctermfg=6  guifg=#548587  gui=NONE
hi  Cursor                                  ctermfg=8  ctermbg=10  guifg=#0b141a  guibg=#61707a  gui=NONE
hi  CursorColumn                            ctermbg=0  guibg=#1d252b  gui=NONE
hi  CursorLine                              cterm=NONE  ctermbg=0  guibg=#1d252b  guisp=#808487  gui=NONE
hi  CursorLineNr                            cterm=NONE ctermfg=12  guifg=#787e82  gui=bold
hi  DiffAdd                                 ctermfg=2  ctermbg=0  guifg=#5b8a55  guibg=#1d252b  guisp=#5b8a55  gui=NONE
hi  DiffChange                              ctermfg=3  ctermbg=0  guifg=#8a7c55  guibg=#1d252b  guisp=#8a7c55  gui=NONE
hi  DiffDelete                              ctermfg=1  ctermbg=0  guifg=#9e7276  guibg=#1d252b  gui=NONE
hi  DiffText                                ctermfg=4  ctermbg=0  guifg=#5f8299  guibg=#1d252b  guisp=#5f8299  gui=NONE
hi  Directory                               ctermfg=4  guifg=#5f8299  gui=NONE
hi  Error                                   cterm=NONE  ctermfg=1  ctermbg=NONE  guifg=#9e7276  guibg=#0b141a  gui=NONE
hi  ErrorMsg                                cterm=reverse  ctermfg=1  ctermbg=NONE  guifg=#9e7276  guibg=NONE gui=reverse
hi  FoldColumn                              ctermfg=12  ctermbg=0  guifg=#787e82  guibg=#1d252b  gui=NONE
hi  Folded                                  cterm=NONE,underline  ctermfg=12  ctermbg=0  guifg=#787e82  guibg=#1d252b  guisp=#0b141a  gui=NONE
hi  HelpExample                             ctermfg=14  guifg=#808487  gui=NONE
hi  Identifier                              ctermfg=4  guifg=#5f8299  gui=NONE
hi  IncSearch                               cterm=standout  ctermfg=9  guifg=#9c7760  gui=standout
hi  LineNr                                  ctermfg=10  ctermbg=0  guifg=#61707a  guibg=#1d252b  gui=NONE
hi  MatchParen                              cterm=NONE  ctermfg=1  ctermbg=10  guifg=#9e7276  guibg=#61707a  gui=NONE
hi  ModeMsg                                 ctermfg=4  guifg=#5f8299  gui=NONE
hi  MoreMsg                                 ctermfg=4  guifg=#5f8299  gui=NONE
hi  NonText                                 cterm=NONE  ctermfg=11  guifg=#6d767d  gui=NONE
hi  Pmenu                                   cterm=reverse  ctermfg=12  ctermbg=0  guifg=#787e82  guibg=#1d252b  gui=reverse
hi  PmenuSbar                               cterm=reverse  ctermfg=7  ctermbg=12  guifg=#e6eaed  guibg=#787e82  gui=reverse
hi  PmenuSel                                cterm=reverse  ctermfg=10  ctermbg=7  guifg=#61707a  guibg=#e6eaed  gui=reverse
hi  PmenuThumb                              cterm=reverse  ctermfg=12  ctermbg=8  guifg=#787e82  guibg=#0b141a  gui=reverse
hi  PreProc                                 cterm=NONE  ctermfg=1  guifg=#9c7760  gui=NONE
hi  Question                                cterm=NONE  ctermfg=6  guifg=#548587  gui=NONE
hi  Search                                  cterm=reverse  ctermfg=3 ctermbg=NONE  guifg=#8a7c55  guibg=NONE  gui=reverse
hi  SignColumn                              cterm=NONE  ctermfg=12  ctermbg=NONE  guifg=#787e82  guibg=NONE  gui=NONE
hi  Special                                 cterm=NONE  ctermfg=1  guifg=#9e7276  gui=NONE
hi  SpecialKey                              cterm=NONE  ctermfg=11  ctermbg=0  guifg=#6d767d  guibg=#1d252b  gui=NONE
hi  SpellBad                                cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#9e7276  gui=undercurl
hi  SpellCap                                cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#86779e  gui=undercurl
hi  SpellLocal                              cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#8a7c55  gui=undercurl
hi  SpellRare                               cterm=undercurl  ctermfg=NONE  ctermbg=NONE  guisp=#548587  gui=undercurl
hi  Statement                               ctermfg=2  guifg=#5b8a55  gui=NONE
hi  StatusLine                              cterm=reverse  ctermfg=10  ctermbg=8  guifg=#61707a  guibg=#0b141a  gui=reverse
hi  StatusLineNC                            cterm=reverse  ctermfg=11  ctermbg=0  guifg=#6d767d  guibg=#1d252b  gui=reverse
hi  TabLine                                 cterm=underline  ctermfg=12  ctermbg=0  guifg=#787e82  guibg=#1d252b  guisp=#787e82  gui=underline
hi  TabLineFill                             cterm=underline  ctermfg=12  ctermbg=0  guifg=#787e82  guibg=#1d252b  guisp=#787e82  gui=underline
hi  TabLineSel                              cterm=underline,reverse  ctermfg=10  ctermbg=7  guifg=#61707a  guibg=#e6eaed  guisp=#787e82  gui=underline,reverse
hi  Title                                   cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  Todo                                    cterm=NONE  ctermfg=5  guifg=#997383  guibg=NONE  gui=bold
hi  Type                                    ctermfg=3  guifg=#8a7c55  gui=NONE
hi  Underlined                              ctermfg=13  guifg=#86779e  gui=NONE
hi  VarId                                   ctermfg=4  guifg=#5f8299  gui=NONE
hi  VertSplit                               ctermfg=11  ctermbg=11  guifg=#6d767d  guibg=#6d767d  gui=NONE
hi  Visual                                  cterm=reverse  ctermfg=10  ctermbg=8  guifg=#61707a  guibg=#0b141a  gui=reverse
hi  VisualNOS                               cterm=reverse  ctermbg=0  ctermbg=NONE  guibg=#1d252b  guifg=NONE  gui=reverse
hi  WarningMsg                              cterm=NONE  ctermfg=9  guifg=#9e7276  gui=NONE
hi  WildMenu                                cterm=reverse  ctermfg=7  ctermbg=0  guifg=#e6eaed  guibg=#1d252b gui=reverse

hi  cPreCondit                              ctermfg=9  guifg=#9c7760  gui=NONE

hi  gitcommitBranch                         cterm=NONE  ctermfg=5  guifg=#997383  gui=NONE
hi  gitcommitComment                        ctermfg=10  guifg=#61707a  gui=italic
hi  gitcommitDiscardedFile                  cterm=NONE  ctermfg=1  guifg=#9e7276  gui=NONE
hi  gitcommitDiscardedType                  ctermfg=1  guifg=#9e7276  gui=NONE
hi  gitcommitFile                           cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi  gitcommitHeader                         ctermfg=10  guifg=#61707a  gui=NONE
hi  gitcommitOnBranch                       cterm=NONE  ctermfg=10  guifg=#61707a  gui=NONE
hi  gitcommitSelectedFile                   cterm=NONE  ctermfg=2  guifg=#5b8a55  gui=NONE
hi  gitcommitSelectedType                   ctermfg=2  guifg=#5b8a55  gui=NONE
hi  gitcommitUnmerged                       cterm=NONE  ctermfg=2  guifg=#5b8a55  gui=NONE
hi  gitcommitUnmergedFile                   cterm=NONE  ctermfg=3  guifg=#8a7c55  gui=NONE
hi  gitcommitUntrackedFile                  cterm=NONE  ctermfg=6  guifg=#548587  gui=NONE

hi  helpHyperTextEntry                      ctermfg=2  guifg=#5b8a55  gui=NONE
hi  helpHyperTextJump                       cterm=underline  ctermfg=4  guifg=#5f8299  gui=underline
hi  helpNote                                ctermfg=5  guifg=#997383  gui=NONE
hi  helpOption                              ctermfg=6  guifg=#548587  gui=NONE
hi  helpVim                                 ctermfg=5  guifg=#997383  gui=NONE

hi  hsImport                                ctermfg=5  guifg=#997383  gui=NONE
hi  hsImportLabel                           ctermfg=6  guifg=#548587  gui=NONE
hi  hsModuleName                            cterm=underline  ctermfg=2  guifg=#5b8a55  gui=underline
hi  hsNiceOperator                          ctermfg=6  guifg=#548587  gui=NONE
hi  hsStatement                             ctermfg=6  guifg=#548587  gui=NONE
hi  hsString                                ctermfg=11  guifg=#6d767d  gui=NONE
hi  hsStructure                             ctermfg=6  guifg=#548587  gui=NONE
hi  hsType                                  ctermfg=3  guifg=#8a7c55  gui=NONE
hi  hsTypedef                               ctermfg=6  guifg=#548587  gui=NONE
hi  hsVarSym                                ctermfg=6  guifg=#548587  gui=NONE
hi  hs_DeclareFunction                      ctermfg=9  guifg=#9c7760  gui=NONE
hi  hs_OpFunctionName                       ctermfg=3  guifg=#8a7c55  gui=NONE
hi  hs_hlFunctionName                       ctermfg=4  guifg=#5f8299  gui=NONE

hi  htmlArg                                 ctermfg=11  guifg=#6d767d  gui=NONE
hi  htmlEndTag                              ctermfg=10  guifg=#61707a  gui=NONE
hi  htmlSpecialTagName                      ctermfg=4  guifg=#5f8299  gui=italic
hi  htmlTag                                 ctermfg=10  guifg=#61707a  gui=NONE
hi  htmlTagN                                cterm=NONE  ctermfg=14  guifg=#808487  gui=NONE
hi  htmlTagName                             cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE

hi  javaScript                              ctermfg=3  guifg=#8a7c55  gui=NONE

hi  pandocBlockQuote                        ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocBlockQuoteLeader1                 ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocBlockQuoteLeader2                 ctermfg=6  guifg=#548587  gui=NONE
hi  pandocBlockQuoteLeader3                 ctermfg=3  guifg=#8a7c55  gui=NONE
hi  pandocBlockQuoteLeader4                 ctermfg=1  guifg=#9e7276  gui=NONE
hi  pandocBlockQuoteLeader5                 ctermfg=12  guifg=#787e82  gui=NONE
hi  pandocBlockQuoteLeader6                 ctermfg=10  guifg=#61707a  gui=NONE
hi  pandocCitation                          ctermfg=5  guifg=#997383  gui=NONE
hi  pandocCitationDelim                     ctermfg=5  guifg=#997383  gui=NONE
hi  pandocCitationID                        cterm=underline  ctermfg=5  guifg=#997383  gui=underline
hi  pandocCitationRef                       ctermfg=5  guifg=#997383  gui=NONE
hi  pandocComment                           ctermfg=10  guifg=#61707a  gui=italic
hi  pandocDefinitionBlock                   ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocDefinitionIndctr                  cterm=NONE  ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocDefinitionTerm                    cterm=standout  ctermfg=13  guifg=#86779e  gui=standout
hi  pandocEmphasis                          ctermfg=12  guifg=#787e82  gui=italic
hi  pandocEmphasisDefinition                ctermfg=13  guifg=#86779e  gui=italic
hi  pandocEmphasisHeading                   cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocEmphasisNested                    cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi  pandocEmphasisNestedDefinition          cterm=NONE  ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocEmphasisNestedHeading             cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocEmphasisNestedTable               cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocEmphasisTable                     ctermfg=4  guifg=#5f8299  gui=italic
hi  pandocEscapePair                        cterm=NONE  ctermfg=1  guifg=#9e7276  gui=NONE
hi  pandocFootnote                          ctermfg=2  guifg=#5b8a55  gui=NONE
hi  pandocFootnoteDefLink                   cterm=NONE  ctermfg=2  guifg=#5b8a55  gui=NONE
hi  pandocFootnoteInline                    cterm=NONE,underline  ctermfg=2  guifg=#5b8a55  gui=NONE,underline
hi  pandocFootnoteLink                      cterm=underline  ctermfg=2  guifg=#5b8a55  gui=underline
hi  pandocHeading                           cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocHeadingMarker                     cterm=NONE  ctermfg=3  guifg=#8a7c55  gui=NONE
hi  pandocImageCaption                      cterm=NONE,underline  ctermfg=13  guifg=#86779e  gui=NONE,underline
hi  pandocLinkDefinition                    cterm=underline  ctermfg=6  guifg=#548587  guisp=#6d767d  gui=underline
hi  pandocLinkDefinitionID                  cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocLinkDelim                         ctermfg=10  guifg=#61707a  gui=NONE
hi  pandocLinkLabel                         cterm=underline  ctermfg=4  guifg=#5f8299  gui=underline
hi  pandocLinkText                          cterm=NONE,underline  ctermfg=4  guifg=#5f8299  gui=NONE,underline
hi  pandocLinkTitle                         cterm=underline  ctermfg=11  guifg=#6d767d  gui=underline
hi  pandocLinkTitleDelim                    cterm=underline  ctermfg=10  guifg=#61707a  guisp=#6d767d  gui=underline
hi  pandocLinkURL                           cterm=underline  ctermfg=11  guifg=#6d767d  gui=underline
hi  pandocListMarker                        ctermfg=5  guifg=#997383  gui=NONE
hi  pandocListReference                     cterm=underline  ctermfg=5  guifg=#997383  gui=underline
hi  pandocMetadata                          cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocMetadataDelim                     ctermfg=10  guifg=#61707a  gui=NONE
hi  pandocMetadataKey                       ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocNonBreakingSpace                  cterm=reverse  ctermfg=1  ctermbg=NONE  guifg=#9e7276  guibg=NONE  gui=reverse
hi  pandocRule                              cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocRuleLine                          cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocStrikeout                         cterm=reverse  ctermfg=10  ctermbg=NONE  guibg=NONE  guifg=#61707a  gui=reverse
hi  pandocStrikeoutDefinition               cterm=reverse  ctermfg=13  ctermbg=NONE  guibg=NONE  guifg=#86779e  gui=reverse
hi  pandocStrikeoutHeading                  cterm=reverse  ctermfg=9  ctermbg=NONE  guibg=NONE  guifg=#9c7760  gui=reverse
hi  pandocStrikeoutTable                    cterm=reverse  ctermfg=4  ctermbg=NONE  guibg=NONE  guifg=#5f8299  gui=reverse
hi  pandocStrongEmphasis                    cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi  pandocStrongEmphasisDefinition          cterm=NONE  ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocStrongEmphasisEmphasis            cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi  pandocStrongEmphasisEmphasisDefinition  cterm=NONE  ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocStrongEmphasisEmphasisHeading     cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocStrongEmphasisEmphasisTable       cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocStrongEmphasisHeading             cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocStrongEmphasisNested              cterm=NONE  ctermfg=12  guifg=#787e82  gui=NONE
hi  pandocStrongEmphasisNestedDefinition    cterm=NONE  ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocStrongEmphasisNestedHeading       cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocStrongEmphasisNestedTable         cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocStrongEmphasisTable               cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocStyleDelim                        ctermfg=10  guifg=#61707a  gui=NONE
hi  pandocSubscript                         ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocSubscriptDefinition               ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocSubscriptHeading                  cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocSubscriptTable                    ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocSuperscript                       ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocSuperscriptDefinition             ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocSuperscriptHeading                cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocSuperscriptTable                  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocTable                             ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocTableStructure                    ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocTableZebraDark                    ctermfg=4  ctermbg=0  guifg=#5f8299  guibg=#1d252b  gui=NONE
hi  pandocTableZebraLight                   ctermfg=4  ctermbg=8  guifg=#5f8299  guibg=#0b141a  gui=NONE
hi  pandocTitleBlock                        ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocTitleBlockTitle                   cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocTitleComment                      cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  pandocVerbatimBlock                     ctermfg=3  guifg=#8a7c55  gui=NONE
hi  pandocVerbatimInline                    ctermfg=3  guifg=#8a7c55  gui=NONE
hi  pandocVerbatimInlineDefinition          ctermfg=13  guifg=#86779e  gui=NONE
hi  pandocVerbatimInlineHeading             cterm=NONE  ctermfg=9  guifg=#9c7760  gui=NONE
hi  pandocVerbatimInlineTable               ctermfg=4  guifg=#5f8299  gui=NONE

hi  perlHereDoc                             ctermfg=14  ctermbg=8  guifg=#808487  guibg=#0b141a  gui=NONE
hi  perlStatementFileDesc                   ctermfg=6  ctermbg=8  guifg=#548587  guibg=#0b141a  gui=NONE
hi  perlVarPlain                            ctermfg=3  ctermbg=8  guifg=#8a7c55  guibg=#0b141a  gui=NONE

hi  rubyDefine                              cterm=NONE  ctermfg=14  ctermbg=8  guifg=#808487  guibg=#0b141a  gui=NONE

hi  texMathMatcher                          ctermfg=3  ctermbg=8  guifg=#8a7c55  guibg=#0b141a  gui=NONE
hi  texMathZoneX                            ctermfg=3  ctermbg=8  guifg=#8a7c55  guibg=#0b141a  gui=NONE
hi  texRefLabel                             ctermfg=3  ctermbg=8  guifg=#8a7c55  guibg=#0b141a  gui=NONE
hi  texStatement                            ctermfg=6  ctermbg=8  guifg=#548587  guibg=#0b141a  gui=NONE

hi  vimCmdSep                               cterm=NONE  ctermfg=4  guifg=#5f8299  gui=NONE
hi  vimCommand                              ctermfg=3  guifg=#8a7c55  gui=NONE
hi  vimCommentString                        ctermfg=13  guifg=#86779e  gui=NONE
hi  vimGroup                                cterm=NONE,underline  ctermfg=4  guifg=#5f8299  gui=NONE,underline
hi  vimHiGroup                              ctermfg=4  guifg=#5f8299  gui=NONE
hi  vimHiLink                               ctermfg=4  guifg=#5f8299  gui=NONE
hi  vimIsCommand                            ctermfg=11  guifg=#6d767d  gui=NONE
hi  vimSynMtchOpt                           ctermfg=3  guifg=#8a7c55  gui=NONE
hi  vimSynType                              ctermfg=6  guifg=#548587  gui=NONE

hi link Boolean                             Constant
hi link Character                           Constant
hi link Conditional                         Statement
hi link Debug                               Special
hi link Define                              PreProc
hi link Delimiter                           Special
hi link Exception                           Statement
hi link Float                               Number
hi link Function                            Identifier
hi link HelpCommand                         Statement
hi link Include                             PreProc
hi link Keyword                             Statement
hi link Label                               Statement
hi link Macro                               PreProc
hi link Number                              Constant
hi link Operator                            Statement
hi link PreCondit                           PreProc
hi link Repeat                              Statement
hi link SpecialChar                         Special
hi link SpecialComment                      Special
hi link StorageClass                        Type
hi link String                              Constant
hi link Structure                           Type
hi link SyntasticError                      SpellBad
hi link SyntasticErrorSign                  Error
hi link SyntasticStyleErrorLine             SyntasticErrorLine
hi link SyntasticStyleErrorSign             SyntasticErrorSign
hi link SyntasticStyleWarningLine           SyntasticWarningLine
hi link SyntasticStyleWarningSign           SyntasticWarningSign
hi link SyntasticWarning                    SpellCap
hi link SyntasticWarningSign                Todo
hi link Tag                                 Special
hi link Typedef                             Type

hi link diffAdded                           Statement
hi link diffBDiffer                         WarningMsg
hi link diffCommon                          WarningMsg
hi link diffDiffer                          WarningMsg
hi link diffIdentical                       WarningMsg
hi link diffIsA                             WarningMsg
hi link diffLine                            Identifier
hi link diffNoEOL                           WarningMsg
hi link diffOnly                            WarningMsg
hi link diffRemoved                         WarningMsg

hi link gitcommitDiscarded                  gitcommitComment
hi link gitcommitDiscardedArrow             gitcommitDiscardedFile
hi link gitcommitNoBranch                   gitcommitBranch
hi link gitcommitSelected                   gitcommitComment
hi link gitcommitSelectedArrow              gitcommitSelectedFile
hi link gitcommitUnmergedArrow              gitcommitUnmergedFile
hi link gitcommitUntracked                  gitcommitComment

hi link helpSpecial                         Special

hi link hsDelimTypeExport                   Delimiter
hi link hsImportParams                      Delimiter
hi link hsModuleStartLabel                  hsStructure
hi link hsModuleWhereLabel                  hsModuleStartLabel
hi link htmlLink                            Function

hi link lCursor                             Cursor

hi link pandocCodeBlock                     pandocVerbatimBlock
hi link pandocCodeBlockDelim                pandocVerbatimBlock
hi link pandocEscapedCharacter              pandocEscapePair
hi link pandocLineBreak                     pandocEscapePair
hi link pandocMetadataTitle                 pandocMetadata
hi link pandocTableStructureEnd             pandocTableStructre
hi link pandocTableStructureTop             pandocTableStructre
hi link pandocVerbatimBlockDeep             pandocVerbatimBlock

hi link vimFunc                             Function
hi link vimSet                              Normal
hi link vimSetEqual                         Normal
hi link vimUserFunc                         Function
hi link vipmVar                             Identifier

hi clear SyntasticErrorLine
hi clear SyntasticWarningLine
hi clear helpLeadBlank
hi clear helpNormal
hi clear pandocTableStructre

if has('nvim')
  let g:terminal_color_0  = '#1d252b'
  let g:terminal_color_1  = '#9e7276'
  let g:terminal_color_2  = '#5b8a55'
  let g:terminal_color_3  = '#8a7c55'
  let g:terminal_color_4  = '#5f8299'
  let g:terminal_color_5  = '#997383'
  let g:terminal_color_6  = '#548587'
  let g:terminal_color_7  = '#e6eaed'
  let g:terminal_color_8  = '#0b141a'
  let g:terminal_color_9  = '#9c7760'
  let g:terminal_color_10 = '#61707a'
  let g:terminal_color_11 = '#6d767d'
  let g:terminal_color_12 = '#787e82'
  let g:terminal_color_13 = '#86779e'
  let g:terminal_color_14 = '#808487'
  let g:terminal_color_15 = '#ffffff'
endif

" This colour scheme was generated by modifying the 'flattened_dark' colour
" scheme by Romain Lafourcade (https://github.com/romainl/flattened), which
" is in turn derived from the 'Solarized' colour scheme by Ethan Schnoonover
" (https://github.com/altercation/vim-colors-solarized).
