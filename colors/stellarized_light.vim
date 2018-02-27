hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'stellarized_light'

hi Normal                                  cterm=NONE  ctermfg=11  ctermbg=15  guifg=#757880  guibg=#ffe9d4  gui=NONE

set background=light

hi ColorColumn                             cterm=NONE  ctermbg=7  guibg=#ebdbca  gui=NONE
hi Comment                                 cterm=NONE  ctermfg=14 guifg=#9e958b  gui=italic
hi ConId                                   cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi Conceal                                 cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi Constant                                cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi Cursor                                  cterm=NONE  ctermfg=15  ctermbg=11  guifg=#ffe9d4  guibg=#757880  gui=NONE
hi CursorColumn                            cterm=NONE  ctermbg=7  guibg=#ebdbca  gui=NONE
hi CursorLine                              cterm=NONE  ctermbg=7  guibg=#ebdbca  guisp=#595d6b  gui=NONE
hi CursorLineNr                            cterm=NONE  ctermfg=130  gui=NONE  guifg=Brown
hi DiffAdd                                 cterm=NONE  ctermfg=2  ctermbg=7  gui=NONE  guifg=#709431  guibg=#ebdbca  guisp=#719e07  gui=NONE
hi DiffChange                              cterm=NONE  ctermfg=3  ctermbg=7  gui=NONE  guifg=#9e8434  guibg=#ebdbca  guisp=#b58900  gui=NONE
hi DiffDelete                              cterm=NONE  ctermfg=1  ctermbg=7  gui=NONE  guifg=#c96565  guibg=#ebdbca  gui=NONE
hi DiffText                                cterm=NONE  ctermfg=4  ctermbg=7  gui=NONE  guifg=#568cab  guibg=#ebdbca  guisp=#268bd2  gui=NONE
hi Directory                               cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi Error                                   cterm=NONE  ctermfg=1  ctermbg=NONE  guifg=#c96565  guibg=#ffe9d4  gui=NONE
hi ErrorMsg                                cterm=reverse  ctermfg=1  ctermbg=NONE guifg=#c96565  guibg=NONE gui=reverse
hi FoldColumn                              cterm=NONE  ctermfg=11  ctermbg=7  guifg=#757880  guibg=#ebdbca  gui=NONE
hi Folded                                  cterm=NONE,underline  ctermfg=11  ctermbg=7  guifg=#757880  guibg=#ebdbca  guisp=#ffe9d4  gui=NONE
hi HelpExample                             cterm=NONE  ctermfg=10  guifg=#595d6b  gui=NONE
hi Identifier                              cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi IncSearch                               cterm=standout  ctermfg=9  gui=standout  guifg=#bf7830
hi LineNr                                  cterm=NONE  ctermfg=14  ctermbg=7  guifg=#9e958b  guibg=#ebdbca  gui=NONE
hi MatchParen                              cterm=NONE  ctermfg=1  ctermbg=14  gui=NONE  guifg=#c96565  guibg=#9e958b  gui=NONE
hi ModeMsg                                 cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi MoreMsg                                 cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi NonText                                 cterm=NONE  ctermfg=12  gui=NONE  guifg=#948e88  gui=NONE
hi Pmenu                                   cterm=reverse  ctermfg=11  ctermbg=7  guifg=#757880  guibg=#ebdbca  gui=reverse
hi PmenuSbar                               cterm=reverse  ctermfg=0  ctermbg=11  guifg=#282c36  guibg=#757880  gui=reverse
hi PmenuSel                                cterm=reverse  ctermfg=14  ctermbg=0  guifg=#9e958b  guibg=#282c36  gui=reverse
hi PmenuThumb                              cterm=reverse  ctermfg=11  ctermbg=15  guifg=#757880  guibg=#ffe9d4  gui=reverse
hi PreProc                                 cterm=NONE  ctermfg=9  guifg=#bf7830  gui=NONE
hi Question                                cterm=NONE  ctermfg=6  gui=NONE  guifg=#4a948a  gui=NONE
hi Search                                  cterm=reverse  ctermfg=3  ctermbg=NONE  guifg=#9e8434  guibg=NONE gui=reverse
hi SignColumn                              cterm=NONE  ctermfg=11  ctermbg=NONE  guifg=#757880  guibg=NONE  gui=NONE
hi Special                                 cterm=NONE  ctermfg=1  guifg=#c96565  gui=NONE
hi SpecialKey                              cterm=NONE  ctermfg=12  ctermbg=7  gui=NONE  guifg=#948e88  guibg=#ebdbca  gui=NONE
hi SpellBad                                cterm=undercurl ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#c96565
hi SpellCap                                cterm=undercurl  ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#8179b5
hi SpellLocal                              cterm=undercurl  ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#9e8434
hi SpellRare                               cterm=undercurl  ctermfg=NONE  ctermbg=NONE  gui=undercurl  guisp=#4a948a
hi Statement                               cterm=NONE  ctermfg=2  guifg=#709431  gui=NONE
hi StatusLine                              cterm=reverse  ctermfg=10  ctermbg=7  gui=reverse  guifg=#595d6b  guibg=#ebdbca  guibg=NONE
hi StatusLineNC                            cterm=reverse  ctermfg=12  ctermbg=7  gui=reverse  guifg=#948e88  guibg=#ebdbca  guibg=NONE
hi TabLine                                 cterm=underline  ctermfg=11  ctermbg=7  gui=underline  guifg=#757880  guibg=#ebdbca  guisp=#657b83
hi TabLineFill                             cterm=underline  ctermfg=11  ctermbg=7  gui=underline  guifg=#757880  guibg=#ebdbca  guisp=#657b83
hi TabLineSel                              cterm=underline,reverse  ctermfg=14  ctermbg=0  gui=underline,reverse  guifg=#9e958b  guibg=#282c36  guisp=#757880
hi Title                                   cterm=NONE  ctermfg=9  guifg=#bf7830  gui=NONE
hi Todo                                    cterm=NONE  ctermfg=5  guifg=#bf6f97  guibg=NONE gui=bold
hi Type                                    cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi Underlined                              cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi VarId                                   cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi VertSplit                               cterm=NONE  ctermfg=12  ctermbg=12  guifg=#948e88  guibg=#839496  gui=NONE
hi Visual                                  cterm=reverse  ctermfg=14  ctermbg=15 gui=reverse  guifg=#9e958b  guibg=#ffe9d4  guibg=NONE
hi VisualNOS                               cterm=reverse  ctermbg=7 gui=reverse  guibg=#ebdbca  guibg=NONE
hi WarningMsg                              cterm=NONE  ctermfg=9  gui=NONE  guifg=#c96565  gui=NONE
hi WildMenu                                cterm=reverse  ctermfg=0  ctermbg=7  guifg=#282c36  guibg=#ebdbca  gui=reverse
hi cPreCondit                              cterm=NONE  ctermfg=9  guifg=#bf7830  gui=NONE
hi gitcommitBranch                         cterm=NONE  ctermfg=5  gui=NONE  guifg=#bf6f97  gui=NONE
hi gitcommitComment                        cterm=NONE  ctermfg=14  gui=italic  guifg=#9e958b  gui=NONE
hi gitcommitDiscardedFile                  cterm=NONE  ctermfg=1  gui=NONE  guifg=#c96565  gui=NONE
hi gitcommitDiscardedType                  cterm=NONE  ctermfg=1  guifg=#c96565  gui=NONE
hi gitcommitFile                           cterm=NONE  ctermfg=11  gui=NONE  guifg=#757880  gui=NONE
hi gitcommitHeader                         cterm=NONE  ctermfg=14  guifg=#9e958b  gui=NONE
hi gitcommitOnBranch                       cterm=NONE  ctermfg=14  gui=NONE  guifg=#9e958b  gui=NONE
hi gitcommitSelectedFile                   cterm=NONE  ctermfg=2  gui=NONE  guifg=#709431  gui=NONE
hi gitcommitSelectedType                   cterm=NONE  ctermfg=2  guifg=#709431  gui=NONE
hi gitcommitUnmerged                       cterm=NONE  ctermfg=2  gui=NONE  guifg=#709431  gui=NONE
hi gitcommitUnmergedFile                   cterm=NONE  ctermfg=3  gui=NONE  guifg=#9e8434  gui=NONE
hi gitcommitUntrackedFile                  cterm=NONE  ctermfg=6  gui=NONE  guifg=#4a948a  gui=NONE
hi helpHyperTextEntry                      cterm=NONE  ctermfg=2  guifg=#709431  gui=NONE
hi helpHyperTextJump                       cterm=underline  ctermfg=4  gui=underline  guifg=#568cab
hi helpNote                                cterm=NONE  ctermfg=5  guifg=#bf6f97  gui=NONE
hi helpOption                              cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi helpVim                                 cterm=NONE  ctermfg=5  guifg=#bf6f97  gui=NONE
hi hsImport                                cterm=NONE  ctermfg=5  guifg=#bf6f97  gui=NONE
hi hsImportLabel                           cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi hsModuleName                            cterm=underline  ctermfg=2  gui=underline  guifg=#709431
hi hsNiceOperator                          cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi hsStatement                             cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi hsString                                cterm=NONE  ctermfg=12  guifg=#948e88  gui=NONE
hi hsStructure                             cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi hsType                                  cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi hsTypedef                               cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi hsVarSym                                cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi hs_DeclareFunction                      cterm=NONE  ctermfg=9  guifg=#bf7830  gui=NONE
hi hs_OpFunctionName                       cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi hs_hlFunctionName                       cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi htmlArg                                 cterm=NONE  ctermfg=12  guifg=#948e88  gui=NONE
hi htmlEndTag                              cterm=NONE  ctermfg=14  guifg=#9e958b  gui=NONE
hi htmlSpecialTagName                      cterm=NONE  ctermfg=4  gui=italic  guifg=#568cab  gui=NONE
hi htmlTag                                 cterm=NONE  ctermfg=14  guifg=#9e958b  gui=NONE
hi htmlTagN                                cterm=NONE  ctermfg=10  gui=NONE  guifg=#595d6b  gui=NONE
hi htmlTagName                             cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi javaScript                              cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi pandocBlockQuote                        cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocBlockQuoteLeader1                 cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocBlockQuoteLeader2                 cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE
hi pandocBlockQuoteLeader3                 cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi pandocBlockQuoteLeader4                 cterm=NONE  ctermfg=1  guifg=#c96565  gui=NONE
hi pandocBlockQuoteLeader5                 cterm=NONE  ctermfg=11  guifg=#757880  gui=NONE
hi pandocBlockQuoteLeader6                 cterm=NONE  ctermfg=14  guifg=#9e958b  gui=NONE
hi pandocCitation                          cterm=NONE  ctermfg=5  guifg=#bf6f97  gui=NONE
hi pandocCitationDelim                     cterm=NONE  ctermfg=5  guifg=#bf6f97  gui=NONE
hi pandocCitationID                        cterm=underline  ctermfg=5  gui=underline  guifg=#bf6f97
hi pandocCitationRef                       cterm=NONE  ctermfg=5  guifg=#bf6f97  gui=NONE
hi pandocComment                           cterm=NONE  ctermfg=14  gui=italic  guifg=#9e958b  gui=NONE
hi pandocDefinitionBlock                   cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi pandocDefinitionIndctr                  cterm=NONE  ctermfg=13  gui=NONE  guifg=#8179b5  gui=NONE
hi pandocDefinitionTerm                    cterm=standout  ctermfg=13  gui=standout  guifg=#8179b5
hi pandocEmphasis                          cterm=NONE  ctermfg=11  gui=italic  guifg=#757880  gui=NONE
hi pandocEmphasisDefinition                cterm=NONE  ctermfg=13  gui=italic  guifg=#8179b5  gui=NONE
hi pandocEmphasisHeading                   cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocEmphasisNested                    cterm=NONE  ctermfg=11  gui=NONE  guifg=#757880  gui=NONE
hi pandocEmphasisNestedDefinition          cterm=NONE  ctermfg=13  gui=NONE  guifg=#8179b5  gui=NONE
hi pandocEmphasisNestedHeading             cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocEmphasisNestedTable               cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocEmphasisTable                     cterm=NONE  ctermfg=4  gui=italic  guifg=#568cab  gui=NONE
hi pandocEscapePair                        cterm=NONE  ctermfg=1  gui=NONE  guifg=#c96565  gui=NONE
hi pandocFootnote                          cterm=NONE  ctermfg=2  guifg=#709431  gui=NONE
hi pandocFootnoteDefLink                   cterm=NONE  ctermfg=2  gui=NONE  guifg=#709431  gui=NONE
hi pandocFootnoteInline                    cterm=NONE,underline  ctermfg=2  gui=NONE,underline  guifg=#709431  gui=NONE
hi pandocFootnoteLink                      cterm=underline  ctermfg=2  gui=underline  guifg=#709431
hi pandocHeading                           cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocHeadingMarker                     cterm=NONE  ctermfg=3  gui=NONE  guifg=#9e8434  gui=NONE
hi pandocImageCaption                      cterm=NONE,underline  ctermfg=13  gui=NONE,underline  guifg=#8179b5  gui=NONE
hi pandocLinkDefinition                    cterm=underline  ctermfg=6  gui=underline  guifg=#4a948a  guisp=#948e88
hi pandocLinkDefinitionID                  cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocLinkDelim                         cterm=NONE  ctermfg=14  guifg=#9e958b  gui=NONE
hi pandocLinkLabel                         cterm=underline  ctermfg=4  gui=underline  guifg=#568cab
hi pandocLinkText                          cterm=NONE,underline  ctermfg=4  gui=NONE,underline  guifg=#568cab  gui=NONE
hi pandocLinkTitle                         cterm=underline  ctermfg=12  gui=underline  guifg=#948e88
hi pandocLinkTitleDelim                    cterm=underline  ctermfg=14  gui=underline  guifg=#9e958b  guisp=#948e88
hi pandocLinkURL                           cterm=underline  ctermfg=12  gui=underline  guifg=#948e88
hi pandocListMarker                        cterm=NONE  ctermfg=5  guifg=#bf6f97  gui=NONE
hi pandocListReference                     cterm=underline  ctermfg=5  gui=underline  guifg=#bf6f97
hi pandocMetadata                          cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocMetadataDelim                     cterm=NONE  ctermfg=14  guifg=#9e958b  gui=NONE
hi pandocMetadataKey                       cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocNonBreakingSpace                  cterm=reverse  ctermfg=1  ctermbg=NONE  gui=reverse  guifg=#c96565  guibg=NONE
hi pandocRule                              cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocRuleLine                          cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocStrikeout                         cterm=reverse  ctermfg=14  ctermbg=NONE  gui=reverse  guifg=#9e958b  guibg=NONE
hi pandocStrikeoutDefinition               cterm=reverse  ctermfg=13  ctermbg=NONE  gui=reverse  guifg=#8179b5  guibg=NONE
hi pandocStrikeoutHeading                  cterm=reverse  ctermfg=9  ctermbg=NONE  gui=reverse  guifg=#bf7830  guibg=NONE
hi pandocStrikeoutTable                    cterm=reverse  ctermfg=4  ctermbg=NONE  gui=reverse  guifg=#568cab  guibg=NONE
hi pandocStrongEmphasis                    cterm=NONE  ctermfg=11  gui=NONE  guifg=#757880  gui=NONE
hi pandocStrongEmphasisDefinition          cterm=NONE  ctermfg=13  gui=NONE  guifg=#8179b5  gui=NONE
hi pandocStrongEmphasisEmphasis            cterm=NONE  ctermfg=11  gui=NONE  guifg=#757880  gui=NONE
hi pandocStrongEmphasisEmphasisDefinition  cterm=NONE  ctermfg=13  gui=NONE  guifg=#8179b5  gui=NONE
hi pandocStrongEmphasisEmphasisHeading     cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocStrongEmphasisEmphasisTable       cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocStrongEmphasisHeading             cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocStrongEmphasisNested              cterm=NONE  ctermfg=11  gui=NONE  guifg=#757880  gui=NONE
hi pandocStrongEmphasisNestedDefinition    cterm=NONE  ctermfg=13  gui=NONE  guifg=#8179b5  gui=NONE
hi pandocStrongEmphasisNestedHeading       cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocStrongEmphasisNestedTable         cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocStrongEmphasisTable               cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocStyleDelim                        cterm=NONE  ctermfg=14  guifg=#9e958b  gui=NONE
hi pandocSubscript                         cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi pandocSubscriptDefinition               cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi pandocSubscriptHeading                  cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocSubscriptTable                    cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocSuperscript                       cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi pandocSuperscriptDefinition             cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi pandocSuperscriptHeading                cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocSuperscriptTable                  cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocTable                             cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocTableStructure                    cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocTableZebraDark                    cterm=NONE  ctermfg=4  ctermbg=7  guifg=#568cab  guibg=#ebdbca  gui=NONE
hi pandocTableZebraLight                   cterm=NONE  ctermfg=4  ctermbg=15  guifg=#568cab  guibg=#ffe9d4  gui=NONE
hi pandocTitleBlock                        cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi pandocTitleBlockTitle                   cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocTitleComment                      cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi pandocVerbatimBlock                     cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi pandocVerbatimInline                    cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi pandocVerbatimInlineDefinition          cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi pandocVerbatimInlineHeading             cterm=NONE  ctermfg=9  gui=NONE  guifg=#bf7830  gui=NONE
hi pandocVerbatimInlineTable               cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi perlHereDoc                             cterm=NONE  ctermfg=10  ctermbg=15  guifg=#595d6b  guibg=#ffe9d4  gui=NONE
hi perlStatementFileDesc                   cterm=NONE  ctermfg=6  ctermbg=15  guifg=#4a948a  guibg=#ffe9d4  gui=NONE
hi perlVarPlain                            cterm=NONE  ctermfg=3  ctermbg=15  guifg=#9e8434  guibg=#ffe9d4  gui=NONE
hi rubyDefine                              cterm=NONE  ctermfg=10  ctermbg=15  gui=NONE  guifg=#595d6b  guibg=#ffe9d4  gui=NONE
hi texMathMatcher                          cterm=NONE  ctermfg=3  ctermbg=15  guifg=#9e8434  guibg=#ffe9d4  gui=NONE
hi texMathZoneX                            cterm=NONE  ctermfg=3  ctermbg=15  guifg=#9e8434  guibg=#ffe9d4  gui=NONE
hi texRefLabel                             cterm=NONE  ctermfg=3  ctermbg=15  guifg=#9e8434  guibg=#ffe9d4  gui=NONE
hi texStatement                            cterm=NONE  ctermfg=6  ctermbg=15  guifg=#4a948a  guibg=#ffe9d4  gui=NONE
hi vimCmdSep                               cterm=NONE  ctermfg=4  gui=NONE  guifg=#568cab  gui=NONE
hi vimCommand                              cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi vimCommentString                        cterm=NONE  ctermfg=13  guifg=#8179b5  gui=NONE
hi vimGroup                                cterm=NONE,underline  ctermfg=4  gui=NONE,underline  guifg=#568cab  gui=NONE
hi vimHiGroup                              cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi vimHiLink                               cterm=NONE  ctermfg=4  guifg=#568cab  gui=NONE
hi vimIsCommand                            cterm=NONE  ctermfg=12  guifg=#948e88  gui=NONE
hi vimSynMtchOpt                           cterm=NONE  ctermfg=3  guifg=#9e8434  gui=NONE
hi vimSynType                              cterm=NONE  ctermfg=6  guifg=#4a948a  gui=NONE

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
  let g:terminal_color_0  = '#ebdbca'
  let g:terminal_color_1  = '#c96565'
  let g:terminal_color_2  = '#709431'
  let g:terminal_color_3  = '#9e8434'
  let g:terminal_color_4  = '#568cab'
  let g:terminal_color_5  = '#bf6f97'
  let g:terminal_color_6  = '#4a948a'
  let g:terminal_color_7  = '#282c36'
  let g:terminal_color_8  = '#ffe9d4'
  let g:terminal_color_9  = '#bf7830'
  let g:terminal_color_10 = '#9e958b'
  let g:terminal_color_11 = '#948e88'
  let g:terminal_color_12 = '#757880'
  let g:terminal_color_13 = '#8179b5'
  let g:terminal_color_14 = '#595d6b'
  let g:terminal_color_15 = '#1b1f2b'
endif

hi! link CursorLineNr Normal
