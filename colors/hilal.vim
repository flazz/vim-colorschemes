"----------------------------------------------------------------------"
" Hilal - A dark colorscheme for gvim                                  "
" Copyright (c) 2016 Osman Koçak <kocakosm@gmail.com>                  "
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
hi CursorLineNR    guifg=#8198b9    guibg=#181d22    gui=NONE

" Columns
hi CursorColumn    guifg=NONE       guibg=#181d22    gui=NONE
hi FoldColumn      guifg=#343c45    guibg=NONE       gui=NONE
hi SignColumn      guifg=#343c45    guibg=NONE       gui=NONE
hi ColorColumn     guifg=NONE       guibg=#181d22    gui=NONE
hi Folded          guifg=#8198b9    guibg=NONE       gui=NONE

" Window/Tab delimiters
hi VertSplit       guifg=#256f94    guibg=#181d22    gui=NONE
hi TabLine         guifg=#7d8487    guibg=#0e2a37    gui=NONE
hi TabLineFill     guifg=NONE       guibg=#181d22    gui=NONE
hi TabLineSel      guifg=#dae7ed    guibg=#103040    gui=NONE

" Navigation/Search
hi Directory       guifg=#5fafaf    guibg=NONE       gui=NONE
hi Search          guifg=NONE       guibg=NONE       gui=REVERSE
hi IncSearch       guifg=NONE       guibg=NONE       gui=REVERSE

" Prompt/Status
hi StatusLine      guifg=#dae7ed    guibg=#103040    gui=NONE
hi StatusLineNC    guifg=#7d8487    guibg=#0e2a37    gui=NONE
hi WildMenu        guifg=#103040    guibg=#c0c6cb    gui=NONE
hi Question        guifg=#ffbb66    guibg=NONE       gui=NONE
hi Title           guifg=#ecf2fa    guibg=NONE       gui=BOLD
hi ModeMsg         guifg=#8198b9    guibg=NONE       gui=NONE
hi MoreMsg         guifg=#8198b9    guibg=NONE       gui=NONE

" Visual aid
hi MatchParen      guifg=#fefede    guibg=NONE       gui=BOLD
hi Visual          guifg=#c0c6cb    guibg=#2a5787    gui=NONE
hi VisualNOS       guifg=#c0c6cb    guibg=#2a5787    gui=NONE
hi NonText         guifg=#343c45    guibg=NONE       gui=NONE
hi Todo            guifg=NONE       guibg=NONE       gui=BOLD,UNDERLINE
hi Underlined      guifg=NONE       guibg=NONE       gui=UNDERLINE
hi Error           guifg=#ee6a6a    guibg=NONE       gui=NONE
hi ErrorMsg        guifg=#ee6a6a    guibg=NONE       gui=NONE
hi WarningMsg      guifg=#ffbb66    guibg=NONE       gui=NONE
hi Ignore          guifg=NONE       guibg=NONE       gui=NONE
hi SpecialKey      guifg=#7d8487    guibg=NONE       gui=NONE

" Variable types
hi Constant        guifg=#4fafaf    guibg=NONE       gui=NONE
hi String          guifg=#fefede    guibg=NONE       gui=NONE
hi Identifier      guifg=#3fafd0    guibg=NONE       gui=NONE
hi Function        guifg=#b46896    guibg=NONE       gui=NONE
hi link StringDelimiter String
hi link Character       String
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number

" Language constructs
hi Statement       guifg=#2c90a9    guibg=NONE       gui=NONE
hi Conditional     guifg=#2c90a9    guibg=NONE       gui=NONE
hi Operator        guifg=#ffffff    guibg=NONE       gui=NONE
hi Keyword         guifg=#2c90a9    guibg=NONE       gui=NONE
hi Comment         guifg=#3f4f5a    guibg=NONE       gui=ITALIC
hi Special         guifg=#ffbb66    guibg=NONE       gui=NONE
hi Delimiter       guifg=#2c90a9    guibg=NONE       gui=NONE
hi link Repeat         Conditional
hi link Label          Conditional
hi link Exception      Statement
hi link SpecialComment Special
hi link Debug          Special
hi link SpecialChar    Special
hi link Tag            Special

" C like syntax constructs
hi PreProc         guifg=#609faf    guibg=NONE       gui=NONE
hi Type            guifg=#2c90a9    guibg=NONE       gui=NONE
hi link StorageClass Type
hi link Structure    Type
hi link Typedef      Type
hi link Include      PreProc
hi link Define       PreProc
hi link Macro        PreProc
hi link PreCondit    PreProc

" Diff
hi DiffAdd         guifg=#ffffff    guibg=#308a3f    gui=NONE
hi DiffChange      guifg=#ffffff    guibg=#1f4f8a    gui=NONE
hi DiffDelete      guifg=#ffffff    guibg=#ee6a6a    gui=NONE
hi DiffText        guifg=#104070    guibg=#fafafa    gui=NONE

" Completion menu
hi Pmenu           guifg=#7d8487    guibg=#103040    gui=NONE
hi PmenuSel        guifg=#dae7ed    guibg=#2a5787    gui=NONE
hi PmenuSbar       guifg=NONE       guibg=NONE       gui=NONE
hi PmenuThumb      guifg=NONE       guibg=NONE       gui=NONE

" Spelling
hi SpellBad        guifg=NONE       guibg=NONE       gui=UNDERCURL    guisp=#ee6a6a
hi SpellCap        guifg=NONE       guibg=NONE       gui=NONE
hi SpellLocal      guifg=NONE       guibg=NONE       gui=NONE
hi SpellRare       guifg=NONE       guibg=NONE       gui=NONE

" Syntax highlighting for Java
hi JavaDocComment  guifg=#3f4f5a    guibg=NONE       gui=ITALIC
hi JavaAnnotation  guifg=#7a8a8f    guibg=NONE       gui=NONE
hi JavaParen       guifg=#9fafba    guibg=NONE       gui=NONE
hi link JavaScopeDecl      Identifier
hi link JavaCommentTitle   JavaDocComment
hi link JavaDocTags        JavaDocComment
hi link JavaDocParam       JavaDocTags
hi link JavaDocSeeTagParam JavaDocTags
hi link JavaDocSeeTag      JavaDocTags
hi link JavaParen1         JavaParen

" Syntax highlighting for XML
hi XmlTag          guifg=#4ca9b9    guibg=NONE       gui=NONE
hi link XmlTagName XmlTag
hi link XmlEndTag  XmlTag

" Syntax highlighting for Javascript
hi link JavaScriptNumber Number
hi javaScriptBraces guifg=NONE      guibg=NONE      gui=NONE

" Syntax highlighting for JSON
hi jsonBraces      guifg=NONE       guibg=NONE       gui=NONE

" Syntax highlighting for HTML
hi link HtmlTag     XmlTagName
hi link HtmlTagName XmlTagName
hi link HtmlEndTag  XmlTagName
