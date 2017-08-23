" Distill colorscheme for Neovim/Gvim
" Copyright © 2016 Zandr Martin
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the "Software"),
" to deal in the Software without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distribute, sublicense,
" and/or sell copies of the Software, and to permit persons to whom the
" Software is furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included
" in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
" OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
" OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

" initialization {{{
let g:colors_name = 'distill'

if !has('gui_running') && !(&termguicolors)
    echoerr 'The ' . g:colors_name . ' colorscheme requires a 24-bit color Vim (Neovim or Gvim).'
    finish
endif

set background=dark

highlight clear

if exists('syntax_on')
    syntax reset
endif
" }}}

" colors {{{
highlight  Normal                guifg=#e2e4e9 guibg=#000000 gui=NONE
highlight  Visual                guifg=#e2e4e9 guibg=#274c77 gui=NONE

highlight  CursorLine                          guibg=#16181d gui=NONE
highlight  CursorLineNr          guifg=#7d849b guibg=#16181d gui=NONE
highlight! link                  CursorColumn                CursorLine
highlight! link                  ColorColumn                 CursorLine

highlight  StatusLine            guifg=#bcbccd guibg=#373b48 gui=NONE
highlight  StatusLineNC          guifg=#444554 guibg=#0b0c0e gui=NONE

highlight  LineNr                guifg=#373b48               gui=NONE
highlight  WildMenu              guifg=#e2e4e9 guibg=#646b82 gui=NONE
highlight  VertSplit             guifg=#595f73               gui=NONE
highlight  PmenuSbar             guifg=#7d849b guibg=#595f73 gui=bold
highlight  PmenuThumb                          guibg=#8c92a6 gui=bold
highlight! link                  Pmenu                       StatusLine
highlight! link                  PmenuSel                    WildMenu
highlight! link                  SignColumn                  LineNr
highlight! link                  FoldColumn                  LineNr
highlight! link                  Folded                      Comment
highlight! link                  TabLine                     StatusLine
highlight! link                  TabLineSel                  WildMenu
highlight! link                  TabLineFill                 StatusLine
highlight! link                  TabLineClose                WildMenu

highlight  Directory             guifg=#aa9b6d               gui=bold
highlight  Underlined            guifg=#af5f00               gui=NONE
highlight  Question              guifg=#618ca8               gui=bold
highlight  MoreMsg               guifg=#f2b58c               gui=bold
highlight  WarningMsg            guifg=#f28123               gui=bold
highlight  ErrorMsg              guifg=#e85555 guibg=NONE    gui=bold
highlight! link                  ModeMsg                     Directory

highlight  Comment               guifg=#555b6e               gui=italic
highlight  vimCommentTitleLeader guifg=#bcbccd               gui=italic
highlight  vimCommentTitle       guifg=#bcbccd               gui=italic
highlight  vimCommentString      guifg=#8c92a6               gui=italic
highlight  Conceal               guifg=#555b6e guibg=#000000 gui=NONE

highlight  SpellBad              guifg=#e85555               gui=underline
highlight  SpellCap              guifg=#f28123               gui=underline
highlight  SpellRare             guifg=#f2b58c               gui=underline
highlight! link                  SpellLocal                  SpellBad

highlight  SpecialKey            guifg=#4e5365               gui=NONE
highlight  NonText               guifg=#a00c3e               gui=NONE
highlight  MatchParen            guifg=#e2e4e9 guibg=#274c77 gui=bold

highlight  Boolean               guifg=#9e5a8f               gui=bold
highlight  Constant              guifg=#539987               gui=bold
highlight  Special               guifg=#9a879d               gui=NONE
highlight  Identifier            guifg=#618ca8               gui=bold
highlight  Statement             guifg=#aa9b6d               gui=bold
highlight  PreProc               guifg=#9e5a8f               gui=NONE
highlight  Type                  guifg=#8c92a6               gui=bold
highlight  String                guifg=#a69888               gui=NONE
highlight  Number                guifg=#db5461               gui=NONE
highlight  Define                guifg=#ad6a6c               gui=NONE

highlight  Error                 guifg=#ed7878 guibg=#700f0f gui=NONE
highlight  Function              guifg=#8baa81               gui=bold
highlight  Include               guifg=#ad6a6c               gui=NONE
highlight  PreCondit             guifg=#ad6a6c               gui=NONE
highlight  Keyword               guifg=#ad6a6c               gui=NONE
highlight  Search                guifg=#e2e4e9 guibg=#8a4f7d gui=NONE
highlight  IncSearch             guifg=#e2e4e9 guibg=#8a4f7d gui=reverse
highlight  Title                 guifg=#e2e4e9               gui=NONE
highlight  Delimiter             guifg=#8c92a6               gui=NONE
highlight  StorageClass          guifg=#b88e8d               gui=bold
highlight  Operator              guifg=#ba8730               gui=NONE

highlight  TODO                  guifg=#f28123 guibg=NONE    gui=bold,underline

highlight! link                  Noise                       DiffFile

" filetypes {{{
highlight  phpStringDelimeter    guifg=#875f00               gui=NONE
highlight  phpParent             guifg=#5d573c               gui=NONE
highlight  phpDocIdentifier      guifg=#618ca8               gui=italic
highlight  phpKeyword            guifg=#ad6a6c               gui=bold
highlight! link                  phpFunctions                Function
highlight! link                  phpFunction                 Function
highlight! link                  phpMemberSelector           Operator
highlight! link                  phpOperator                 Operator
highlight! link                  phpCommentTitle             vimCommentTitle
highlight! link                  phpDocTags                  vimCommentString
highlight! link                  phpDocParam                 vimCommentTitle

highlight  pythonDot             guifg=#ba8730               gui=bold
highlight  pythonRun             guifg=#5f875f               gui=NONE
highlight  pythonBuiltinObj      guifg=#618ca8               gui=bold
highlight  pythonFunction        guifg=#8baa81               gui=bold
highlight  pythonExClass         guifg=#f2b58c               gui=NONE
highlight  pythonException       guifg=#f2b58c               gui=bold
highlight  pythonDottedName      guifg=#c5badd               gui=NONE
highlight  pythonDecorator       guifg=#8a4f7d               gui=bold
highlight! link                  pythonSelf                  Identifier
highlight! link                  pythonOperator              Operator

highlight  xmlTag                guifg=#9a879d               gui=bold
highlight  xmlTagName            guifg=#87b677               gui=bold
highlight  xmlEndTag             guifg=#ad6a6c               gui=NONE
highlight! link                  htmlTag                     xmlTag
highlight! link                  htmlTagName                 xmlTagName
highlight! link                  htmlEndTag                  xmlEndTag

highlight  DiffAdd               guifg=#b6d2ac guibg=#4b7f52 gui=NONE
highlight  DiffChange            guifg=#f5e884 guibg=#332400 gui=NONE
highlight  DiffText              guifg=#f5e884 guibg=#332400 gui=reverse
highlight  diffLine              guifg=#618ca8               gui=bold
highlight  diffFile              guifg=#646b82               gui=NONE
highlight  diffNewFile           guifg=#646b82               gui=NONE
highlight! link                  DiffDelete                  Error
highlight! link                  diffAdded                   DiffAdd
highlight! link                  diffChanged                 DiffChange
highlight! link                  diffRemoved                 DiffDelete

highlight  mailQuoted1           guifg=#618ca8               gui=NONE
highlight  mailQuoted2           guifg=#8baa81               gui=NONE
highlight  mailQuoted3           guifg=#9a879d               gui=NONE
highlight  mailQuoted4           guifg=#ad6a6c               gui=NONE
highlight  mailQuoted5           guifg=#aa9b6d               gui=NONE
highlight  mailQuoted6           guifg=#7d849b               gui=NONE

highlight  vimMapModKey          guifg=#87b677               gui=NONE
highlight! link                  vimNotation                 vimMapModKey

highlight! link                  cssImportant                WarningMsg

highlight! link                  cFormat                     Preproc
highlight! link                  cBraces                     phpParent
highlight! link                  cDelimiter                  DiffFile
highlight! link                  cUserCont                   cDelimiter
highlight! link                  cStructure                  Identifier
highlight! link                  cCharacter                  Constant
highlight! link                  cSpecialCharacter           cCharacter

highlight! link                  jsonQuote                   phpParent
highlight! link                  jsFuncCall                  Function
highlight! link                  jsObjectKey                 Identifier
highlight! link                  jsVariableDef               Identifier
highlight! link                  jsParens                    phpParent
highlight! link                  jsBraces                    phpParent
highlight! link                  jsFuncBraces                jsBraces
highlight! link                  jsObjectBraces              jsBraces
" }}}

" plugins {{{
highlight  SyntasticWarning      guifg=#f5e884 guibg=#875f00 gui=bold
highlight  SyntasticError        guifg=#ed7878 guibg=#700f0f gui=bold

highlight  GitGutterAdd          guifg=#87b677 guibg=#000000 gui=NONE
highlight  GitGutterChange       guifg=#f5e884 guibg=#000000 gui=NONE
highlight  GitGutterDelete       guifg=#e85555 guibg=#000000 gui=NONE
highlight! link                  GitGutterChangeDelete       GitGutterChange

highlight! link                  CtrlPMode1                  StatusLine
highlight! link                  CtrlPMode2                  StatusLine

highlight  SneakPluginTarget     guifg=#db5461               gui=bold,underline
highlight  SneakStreakMask       guifg=#274c77 guibg=#274c77 gui=NONE
highlight  SneakStreakStatusLine guifg=#bcbccd guibg=#274c77 gui=NONE
highlight! link                  SneakStreakTarget           SneakPluginTarget
highlight! link                  SneakPluginScope            Visual
" }}}
" }}}
" vim: foldmethod=marker
