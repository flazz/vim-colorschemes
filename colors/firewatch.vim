" Firewatch Color Scheme
set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "firewatch"

" colors
let s:cyan      =  73
let s:blue      =  69
let s:red       = 174
let s:red_dark  = 168
let s:orange    = 166
let s:pink      = 181
let s:pink_dark = 131
let s:tan       = 180
let s:white     = 255
let s:gray      = 249
let s:gray_dark = 236

" h(ex)_colors
let s:h_cyan      = "#56b6c2"
let s:h_blue      = "#528bff"
let s:h_red       = "#d19a66"
let s:h_red_dark  = "#e06c75"
let s:h_orange    = "#dd672c"
let s:h_pink      = "#c8ae9d"
let s:h_pink_dark = "#be5046"
let s:h_tan       = "#e5c07b"
let s:h_white     = "#ebebff"
let s:h_gray      = "#abb2bf"
let s:h_gray_dark = "#282c34"

" aliases
exe "let s:bg_none      = ' guibg=NONE                ctermbg=NONE'"
exe "let s:bg_gray      = ' guibg=" .s:h_gray.      " ctermbg=" .s:gray. "'"
exe "let s:fg_cyan      = ' guifg=" .s:h_cyan.      " ctermfg=" .s:cyan. "'"
exe "let s:fg_blue      = ' guifg=" .s:h_blue.      " ctermfg=" .s:blue. "'"
exe "let s:fg_red       = ' guifg=" .s:h_red.       " ctermfg=" .s:red. "'"
exe "let s:fg_red_dark  = ' guifg=" .s:h_red_dark.  " ctermfg=" .s:red_dark. "'"
exe "let s:fg_orange    = ' guifg=" .s:h_orange.    " ctermfg=" .s:orange. "'"
exe "let s:fg_pink      = ' guifg=" .s:h_pink.      " ctermfg=" .s:pink. "'"
exe "let s:fg_pink_dark = ' guifg=" .s:h_pink_dark. " ctermfg=" .s:pink_dark. "'"
exe "let s:fg_tan       = ' guifg=" .s:h_tan.       " ctermfg=" .s:tan. "'"
exe "let s:fg_white     = ' guifg=" .s:h_white.     " ctermfg=" .s:white. "'"
exe "let s:fg_gray      = ' guifg=" .s:h_gray.      " ctermfg=" .s:gray. "'"
exe "let s:fg_gray_dark = ' guifg=" .s:h_gray_dark. " ctermfg=" .s:gray_dark. "'"
exe "let s:normal       = ' cterm=NONE'"
exe "let s:bold         = ' cterm=BOLD'"
exe "let s:italic       = ' cterm=ITALIC'"
exe "let s:underline    = ' cterm=UNDERLINE'"

" definitions
exe "hi! Normal"     .s:bg_none .s:fg_gray
exe "hi! Comment"    .s:bg_none .s:fg_gray
exe "hi! Constant"   .s:bg_none .s:fg_red
exe "hi! String"     .s:bg_none .s:fg_tan
exe "hi! Identifier" .s:bg_none .s:fg_white
exe "hi! Function"   .s:bg_none .s:fg_cyan
exe "hi! Statement"  .s:bg_none .s:fg_orange
exe "hi! Operator"   .s:bg_none .s:fg_gray
exe "hi! PreProc"    .s:bg_none .s:fg_pink
exe "hi! PreCondit"  .s:bg_none .s:fg_pink_dark
exe "hi! Type"       .s:bg_none .s:fg_red
exe "hi! Special"    .s:bg_none .s:fg_blue

" editor
exe "hi! LineNr"     .s:bg_none .s:fg_gray      .s:normal
exe "hi! StatusLine" .s:bg_gray .s:fg_gray_dark .s:normal

" html
exe "hi! htmlString"    .s:bg_none .s:fg_tan
exe "hi! htmlTag"       .s:bg_none .s:fg_white
exe "hi! htmlLink"      .s:bg_none .s:fg_gray
hi link htmlTagName     Type
hi link htmlArg         Constant
hi link htmlTitle       Normal
hi link htmlEndTag      htmlTag
hi link htmlH1          Normal
hi link htmlH2          htmlH1
hi link htmlH3          htmlH2
hi link htmlH4          htmlH3
hi link htmlH5          htmlH4
hi link htmlH6          htmlH5
hi link htmlSpecialChar Constant

" markdown: https://github.com/plasticboy/vim-markdown
exe "hi! mkdUrl"        .s:bg_none .s:fg_red .s:underline
exe "hi! mkdLink"       .s:bg_none .s:fg_tan
exe "hi! mkdBlockQuote" .s:bg_none .s:fg_red .s:normal
exe "hi! mkdLinkDef"    .s:bg_none .s:fg_white .s:normal
hi link mkdCode         Normal
hi link mkdDelimiter    Type
hi link mkdListItem     String

" javascript: https://github.com/pangloss/vim-javascript
hi link jsGlobalObjects String
hi link jsPrototype     String
hi link jsArgsObj       String

" go: https://github.com/fatih/vim-go
exe "hi! goStructDef" .s:bg_none .s:fg_tan
hi link goDirective   Type
hi link goDeclaration Type
hi link goDeclType    Type
hi link goType        Type
hi link goConditional StorageClass
hi link goInterface   Normal
hi link goDecimalInt  Type
hi link goFunction    Identifier
hi link goMethod      Function
hi link goField       Type
hi link goPointer     Type
hi link goString      htmlString

" vim
hi link vimFunction  Function
hi link vimCommand   Function
hi link vimString    String
hi link vimVar       Type
hi link vimNumber    Normal
hi link vimHiGroup   Normal
hi link vimHLGroup   vimHiGroup
hi link vimGroup     vimHLGroup
hi link vimFunc      Function
hi link vimUserFunc  Function
hi link vimNotFunc   StorageClass
hi link vimIsCommand StorageClass
hi link vimParenSep  Normal

" Netrw
exe "hi! netrwDir"      .s:bg_none .s:fg_red
exe "hi! netrwClassify" .s:bg_none .s:fg_tan
exe "hi! netrwCmdSep"   .s:bg_none .s:fg_tan
exe "hi! netrwList"     .s:bg_none .s:fg_red
exe "hi! netrwVersion"  .s:bg_none .s:fg_cyan
