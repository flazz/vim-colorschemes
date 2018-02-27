"  /$$    /$$ /$$$$$$  /$$$$$$  /$$$$$$$$
" | $$   | $$|_  $$_/ /$$__  $$| $$_____/
" | $$   | $$  | $$  | $$  \__/| $$      
" |  $$ / $$/  | $$  | $$      | $$$$$   
"  \  $$ $$/   | $$  | $$      | $$__/   
"   \  $$$/    | $$  | $$    $$| $$      
"    \  $/    /$$$$$$|  $$$$$$/| $$$$$$$$
"     \_/    |______/ \______/ |________/
                                        
" URL: https://github.com/bcicen/vim-vice
" Author: Bradley Cicenas <bradley@vektor.nyc>
" License: MIT

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "vice"

" Color definitions
let s:white         = [231, "#ffffff"]
let s:grey0         = [102, "#878787"] "lightest grey
let s:grey1         = [238, "#444444"] "mid grey
let s:grey2         = [236, "#303030"] "darkest grey
let s:pink          = [212, "#ff87d7"]
let s:light_pink    = [218, "#ffafd7"]
let s:hot_pink      = [201, "#ff00ff" ]
let s:red           = [197, "#ff005f" ]
let s:teal          = [123, "#87ffff"]
let s:light_blue    = [159, "#afffff"]
let s:light_yellow  = [229, "#ffffaf"]
let s:mint          = [158, "#afffd7"]
let s:dark_mint     = [49, "#00ffaf"]
let s:lavender      = [183, "#d7afff"]
let s:gray_purple   = [146, "#afafd7"]
let s:dark_lavender = [97, "#875faf"]
let s:none          = ["NONE", ""]

" func
function! s:Color(name, fg, bg, style)
  execute "hi " . a:name . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] " cterm=" . a:style
  if a:fg[1] != ""
    execute "hi " . a:name . " guifg=" . a:fg[1]
  endif
  if a:bg[1] != ""
    execute "hi " . a:name . " guibg=" . a:bg[1]
  endif
  execute "hi " . a:name . " gui=" . a:style
endfun

call s:Color("Normal", s:white, s:grey2, "NONE")
call s:Color("Cursor", s:grey2, s:white, "NONE")
call s:Color("Visual", s:none, s:grey0, "NONE")
call s:Color("CursorLine", s:none, s:grey2, "NONE")
call s:Color("CursorColumn", s:none, s:grey2, "NONE")
call s:Color("CursorLineNr", s:hot_pink, s:none, "NONE")
call s:Color("ColorColumn", s:none, s:grey2, "NONE")
call s:Color("LineNr", s:grey0, s:grey2, "NONE")
call s:Color("VertSplit", s:grey0, s:grey0, "NONE")
call s:Color("MatchParen", s:grey0, s:light_blue, "NONE")
call s:Color("StatusLine", s:white, s:grey1, "NONE")
call s:Color("StatusLineNC", s:white, s:grey0, "NONE")
call s:Color("Pmenu", s:white, s:grey0, "NONE")
call s:Color("PmenuSel", s:grey0, s:light_blue, "NONE")
call s:Color("IncSearch", s:grey0, s:light_blue, "NONE")
call s:Color("Search", s:grey0, s:light_blue, "NONE")
call s:Color("Directory", s:light_blue, s:none, "NONE")
call s:Color("Folded", s:mint, s:grey1, "NONE")
call s:Color("Define", s:gray_purple, s:none, "NONE")

" Diff
call s:Color("DiffAdd", s:white, s:dark_mint, "NONE")
call s:Color("DiffDelete", s:red, s:none, "NONE")
call s:Color("DiffChange", s:white, s:grey2, "NONE")
call s:Color("DiffText", s:grey0, s:light_blue, "NONE")

" Command line
call s:Color("ErrorMsg", s:white, s:hot_pink, "NONE")
call s:Color("Overlength", s:grey0, s:light_yellow, "NONE")
call s:Color("WarningMsg", s:white, s:hot_pink, "NONE")

" Elements
call s:Color("Boolean", s:lavender, s:none, "NONE")
call s:Color("Character", s:lavender, s:none, "NONE")
call s:Color("Comment", s:gray_purple, s:none, "NONE")
call s:Color("Conditional", s:light_pink, s:none, "NONE")
call s:Color("Constant", s:mint, s:none, "NONE")
call s:Color("Float", s:lavender, s:none, "NONE")
call s:Color("Function", s:pink, s:none, "NONE")
call s:Color("Identifier", s:pink, s:none, "NONE")
call s:Color("Keyword", s:pink, s:none, "NONE")
call s:Color("Label", s:teal, s:none, "NONE")
call s:Color("NonText", s:white, s:grey2, "NONE")
call s:Color("Number", s:mint, s:none, "NONE")
call s:Color("Operator", s:light_pink, s:none, "NONE")
call s:Color("PreProc", s:teal, s:none, "NONE")
call s:Color("Special", s:pink, s:none, "NONE")
call s:Color("SpecialKey", s:white, s:grey2, "NONE")
call s:Color("Statement", s:teal, s:none, "NONE")
call s:Color("StorageClass", s:mint, s:none, "NONE")
call s:Color("String", s:mint, s:none, "NONE")
call s:Color("Tag", s:light_pink, s:none, "NONE")
call s:Color("Title", s:white, s:none, "NONE")
call s:Color("Todo", s:hot_pink, s:white, "inverse,NONE")
call s:Color("Type", s:mint, s:none, "NONE")
call s:Color("Underlined", s:none, s:none, "underline")

" Tab line
call s:Color("TabLine",  s:mint, s:grey1, "NONE")
call s:Color("TabLineSel", s:grey1, s:mint, "NONE")
call s:Color("TabLineFill",  s:white, s:grey2, "NONE")

" Language and filetype specific
call s:Color("pythonStatement", s:teal, s:none, "NONE")

call s:Color("htmlTag", s:none, s:none, "NONE")
call s:Color("htmlEndTag", s:none, s:none, "NONE")
call s:Color("htmlTagName", s:none, s:none, "NONE")
call s:Color("htmlArg", s:none, s:none, "NONE")
call s:Color("htmlSpecialChar", s:lavender, s:none, "NONE")
call s:Color("htmlItalic", s:mint, s:none, "NONE")
call s:Color("htmlBold", s:dark_mint, s:none, "NONE")

call s:Color("javaScriptFunction", s:mint, s:none, "NONE")
call s:Color("javaScriptRailsFunction", s:mint, s:none, "NONE")
call s:Color("javaScriptBraces", s:none, s:none, "NONE")

call s:Color("yamlKey", s:light_pink, s:none, "NONE")
call s:Color("yamlAnchor", s:none, s:none, "NONE")
call s:Color("yamlAlias", s:none, s:none, "NONE")
call s:Color("yamlDocumentHeader", s:light_yellow, s:none, "NONE")
call s:Color("yamlPlainScalar", s:light_blue, s:none, "NONE")
call s:Color("yamlBlockCollectionItemStart", s:light_pink, s:none, "NONE")

call s:Color("cssURL", s:hot_pink, s:none, "NONE")
call s:Color("cssFunctionName", s:mint, s:none, "NONE")
call s:Color("cssColor", s:lavender, s:none, "NONE")
call s:Color("cssPseudoClassId", s:light_pink, s:none, "NONE")
call s:Color("cssClassName", s:light_pink, s:none, "NONE")
call s:Color("cssValueLength", s:lavender, s:none, "NONE")
call s:Color("cssCommonAttr", s:mint, s:none, "NONE")
call s:Color("cssBraces", s:none, s:none, "NONE")

call s:Color("jsThis", s:light_pink, s:none, "NONE")
call s:Color("jsBraces", s:pink, s:none, "NONE")
call s:Color("jsGlobalObjects", s:mint, s:none, "NONE")

call s:Color("coffeeCurly", s:lavender, s:none, "NONE")
call s:Color("coffeeObjAssign", s:pink, s:none, "NONE")

call s:Color("cjsxAttribProperty", s:lavender, s:none, "NONE")

call s:Color("markdownH1", s:light_blue, s:none, "NONE")
call s:Color("markdownH2", s:light_blue, s:none, "NONE")
call s:Color("markdownH3", s:light_blue, s:none, "NONE")
call s:Color("markdownH4", s:light_blue, s:none, "NONE")
call s:Color("markdownH5", s:light_blue, s:none, "NONE")
call s:Color("markdownH6", s:light_blue, s:none, "NONE")
call s:Color("markdownHeadingDelimiter", s:light_blue, s:none, "NONE")
call s:Color("markdownRule", s:light_blue, s:none, "NONE")
