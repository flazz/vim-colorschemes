"----------------------------------------------------------------------"
" Hilal - A dark colorscheme for Vim                                   "
" Copyright (c) 2016-2017 Osman Koçak <kocakosm@gmail.com>             "
" Licensed under the MIT license <https://opensource.org/licenses/MIT> "
"----------------------------------------------------------------------"


" Bootstrap
highlight clear
if exists("syntax_on")
  syntax reset
endif
set background=dark
let g:colors_name="hilal"


" Editor settings
hi Normal          guifg=#c0c6cb    guibg=#14171a    gui=NONE
hi Cursor          guifg=#14171a    guibg=#c0c6cb    gui=NONE
hi CursorLine      guifg=NONE       guibg=#181d22    gui=NONE
hi LineNr          guifg=#343c45    guibg=NONE       gui=NONE
hi CursorLineNR    guifg=#68788a    guibg=#181d22    gui=NONE


" Columns
hi CursorColumn    guifg=NONE       guibg=#181d22    gui=NONE
hi FoldColumn      guifg=#343c45    guibg=NONE       gui=NONE
hi SignColumn      guifg=#343c45    guibg=NONE       gui=NONE
hi ColorColumn     guifg=NONE       guibg=#181d22    gui=NONE
hi Folded          guifg=#68788a    guibg=NONE       gui=NONE


" Window/Tab delimiters
hi VertSplit      guifg=#000000    guibg=#181d22    gui=NONE
hi TabLine        guifg=#8d9497    guibg=#0d1d30    gui=NONE
hi TabLineFill    guifg=NONE       guibg=#181d22    gui=NONE
hi TabLineSel     guifg=#dae7ed    guibg=#103050    gui=NONE


" Navigation/Search
hi Directory    guifg=#68788a    guibg=NONE    gui=NONE
hi Search       guifg=NONE       guibg=NONE    gui=REVERSE
hi IncSearch    guifg=NONE       guibg=NONE    gui=REVERSE


" Prompt/Status
hi StatusLine      guifg=#dae7ed    guibg=#103050    gui=NONE
hi StatusLineNC    guifg=#8d9497    guibg=#103050    gui=NONE
hi WildMenu        guifg=NONE       guibg=NONE       gui=REVERSE
hi Question        guifg=#f37329    guibg=NONE       gui=NONE
hi Title           guifg=#ecf2fa    guibg=NONE       gui=BOLD
hi ModeMsg         guifg=#68788a    guibg=NONE       gui=NONE
hi MoreMsg         guifg=#68788a    guibg=NONE       gui=NONE


" Visual aid
hi MatchParen    guifg=#e9d5c1    guibg=NONE       gui=BOLD
hi Visual        guifg=#c0c6cb    guibg=#2a5787    gui=NONE
hi VisualNOS     guifg=#c0c6cb    guibg=#2a5787    gui=NONE
hi NonText       guifg=#343c45    guibg=NONE       gui=NONE
hi Todo          guifg=NONE       guibg=NONE       gui=BOLD,UNDERLINE
hi Underlined    guifg=NONE       guibg=NONE       gui=UNDERLINE
hi Error         guifg=#ea4d45    guibg=NONE       gui=NONE
hi ErrorMsg      guifg=#ea4d45    guibg=NONE       gui=NONE
hi WarningMsg    guifg=#f37329    guibg=NONE       gui=NONE
hi Ignore        guifg=NONE       guibg=NONE       gui=NONE
hi SpecialKey    guifg=#8d9497    guibg=NONE       gui=NONE


" Variable types
hi Constant      guifg=#4fafaf    guibg=NONE    gui=NONE
hi String        guifg=#e9d5c1    guibg=NONE    gui=NONE
hi Identifier    guifg=#3fafd0    guibg=NONE    gui=NONE
hi Function      guifg=#b46896    guibg=NONE    gui=NONE

hi link StringDelimiter    String
hi link Character          String
hi link Number             Constant
hi link Boolean            Constant
hi link Float              Number


" Language constructs
hi Statement      guifg=#2c90a9    guibg=NONE    gui=NONE
hi Conditional    guifg=#2c90a9    guibg=NONE    gui=NONE
hi Operator       guifg=#ffffff    guibg=NONE    gui=NONE
hi Keyword        guifg=#2c90a9    guibg=NONE    gui=NONE
hi Comment        guifg=#3f4f5a    guibg=NONE    gui=ITALIC
hi Special        guifg=#ffffff    guibg=NONE    gui=ITALIC
hi Delimiter      guifg=#2c90a9    guibg=NONE    gui=NONE

hi link Repeat            Conditional
hi link Label             Conditional
hi link Exception         Statement
hi link SpecialComment    Special
hi link Debug             Special
hi link SpecialChar       Special
hi link Tag               Special


" C like syntax constructs
hi PreProc    guifg=#609faf    guibg=NONE    gui=NONE
hi Type       guifg=#2c90a9    guibg=NONE    gui=NONE

hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc


" Diff
hi DiffAdd       guifg=#ffffff    guibg=#308a3f    gui=NONE
hi DiffChange    guifg=#ffffff    guibg=#1f4f8a    gui=NONE
hi DiffDelete    guifg=#ffffff    guibg=#ea4d45    gui=NONE
hi DiffText      guifg=#104070    guibg=#fafafa    gui=NONE


" Completion menu
hi Pmenu         guifg=#8d9497    guibg=#103050    gui=NONE
hi PmenuSel      guifg=#dae7ed    guibg=#2a5787    gui=NONE
hi PmenuSbar     guifg=NONE       guibg=NONE       gui=NONE
hi PmenuThumb    guifg=NONE       guibg=NONE       gui=NONE


" Spelling
hi SpellBad      guifg=NONE    guibg=NONE    gui=UNDERCURL    guisp=#ea4d45
hi SpellCap      guifg=NONE    guibg=NONE    gui=NONE
hi SpellLocal    guifg=NONE    guibg=NONE    gui=NONE
hi SpellRare     guifg=NONE    guibg=NONE    gui=NONE


" Syntax highlighting for Java
hi JavaDocComment    guifg=#3f4f5a    guibg=NONE    gui=ITALIC
hi JavaAnnotation    guifg=#7a8a8f    guibg=NONE    gui=NONE
hi JavaParen         guifg=#9fafba    guibg=NONE    gui=NONE

hi link JavaScopeDecl         Identifier
hi link JavaCommentTitle      JavaDocComment
hi link JavaDocTags           JavaDocComment
hi link JavaDocParam          JavaDocTags
hi link JavaDocSeeTagParam    JavaDocTags
hi link JavaDocSeeTag         JavaDocTags
hi link JavaParen1            JavaParen


" Syntax highlighting for Javascript / JSON
hi javaScriptBraces          guifg=NONE    guibg=NONE    gui=NONE
"hi javaScriptFunction        guifg=NONE    guibg=NONE    gui=NONE
"hi javaScriptFuncName        guifg=NONE    guibg=NONE    gui=NONE
"hi javaScriptFuncKeyword     guifg=NONE    guibg=NONE    gui=NONE
"hi javaScriptObjectLabel     guifg=NONE    guibg=NONE    gui=NONE
"hi javaScriptPropertyName    guifg=NONE    guibg=NONE    gui=NONE
hi jsonBraces                guifg=NONE    guibg=NONE    gui=NONE

hi link JavaScriptNumber    Number


" Syntax highlighting for XML / HTML
hi XmlTag             guifg=#4ca9b9    guibg=NONE    gui=NONE
hi htmlArg            guifg=NONE       guibg=NONE    gui=NONE
hi htmlSpecialChar    guifg=NONE       guibg=NONE    gui=NONE

hi link XmlTagName     XmlTag
hi link XmlEndTag      XmlTag
hi link HtmlTag        XmlTagName
hi link HtmlTagName    XmlTagName
hi link HtmlEndTag     XmlTagName


" Syntax highlighting for CSS
"hi cssURL              guifg=NONE    guibg=NONE    gui=NONE
"hi cssFunctionName     guifg=NONE    guibg=NONE    gui=NONE
"hi cssColor            guifg=NONE    guibg=NONE    gui=NONE
"hi cssPseudoClassId    guifg=NONE    guibg=NONE    gui=NONE
"hi cssClassName        guifg=NONE    guibg=NONE    gui=NONE
"hi cssValueLength      guifg=NONE    guibg=NONE    gui=NONE
"hi cssCommonAttr       guifg=NONE    guibg=NONE    gui=NONE
"hi cssBraces           guifg=NONE    guibg=NONE    gui=NONE


" Syntax highlighting for vim-signify
hi SignifySignAdd       guifg=#308a3f    guibg=NONE    gui=NONE
hi SignifySignChange    guifg=#1f4f8a    guibg=NONE    gui=NONE
hi SignifySignDelete    guifg=#ea4d45    guibg=NONE    gui=NONE
