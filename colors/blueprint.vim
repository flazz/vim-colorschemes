" Name:       blueprint.vim
" Version:    0.1
" Maintainer: github.com/thenewvu
" License:    The MIT License (MIT)
"
" A colorscheme was inspired by blueprints.
"
" A lot of works come from:
" https://github.com/noahfrederick/vim-hemisu/
" https://github.com/reedes/vim-colors-pencil
" https://github.com/pbrisbin/vim-colors-off
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='blueprint'

let s:white         = { "gui": "#ffffff" }

let s:blue          = { "gui": "#008ec4" }
let s:dark_blue     = { "gui": "#1458A2" }

let s:red           = { "gui": "#ff7e79" }
let s:green         = { "gui": "#73fa79" }
let s:yellow        = { "gui": "#ffd479" }

let s:fg1           = s:white
let s:fg2           = s:blue
let s:fg3           = s:dark_blue
let s:bg1           = s:dark_blue
let s:bg2           = s:blue

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
endfunction

" primitive syntaxs
call s:h("Normal",        {"fg": s:fg1, "bg": s:bg1})
call s:h("Comment",       {"fg": s:fg2})
call s:h("Cursor",        {"fg": s:bg1, "bg": s:fg1, "gui": "underline"})

call s:h("Constant",      {"fg": s:fg1})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

call s:h("Identifier",    {"fg": s:fg1})
hi! link Function         Identifier

call s:h("Statement",     {"fg": s:fg1})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("PreProc",       {"fg": s:fg1})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:fg1})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:fg1})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:fg2, "gui": "underline"})
call s:h("Ignore",        {}) 
call s:h("Error",         {"fg": s:red}) 
call s:h("Todo",          {"gui": "standout"}) 
call s:h("SpecialKey",    {"fg": s:fg1}) 
call s:h("NonText",       {"fg": s:fg2}) 
call s:h("Directory",     {"fg": s:fg1}) 
call s:h("ErrorMsg",      {"fg": s:red}) 
call s:h("IncSearch",     {"gui": "standout"}) 
call s:h("Search",        {"gui": "standout"}) 
call s:h("MoreMsg",       {"fg": s:fg2}) 
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:fg2}) 
call s:h("CursorLineNr",  {"fg": s:fg1}) 
call s:h("Question",      {"fg": s:fg1}) 
call s:h("StatusLine",    {"fg": s:bg1, "bg": s:bg2})
call s:h("StatusLineNC",  {"fg": s:fg3, "bg": s:bg2})
call s:h("VertSplit",     {"fg": s:fg2}) 
call s:h("Title",         {"fg": s:fg2}) 
call s:h("Visual",        {"gui": "standout"}) 
call s:h("VisualNOS",     {"gui": "standout"}) 
call s:h("WarningMsg",    {"fg": s:yellow}) 
call s:h("WildMenu",      {"fg": s:fg1, "bg": s:bg2}) 
call s:h("Folded",        {"fg": s:fg3, "bg": s:bg2})
call s:h("FoldColumn",    {"fg": s:fg2}) 
call s:h("DiffAdd",       {"fg": s:green}) 
call s:h("DiffDelete",    {"fg": s:red}) 
call s:h("DiffChange",    {"fg": s:yellow}) 
call s:h("DiffText",      {"fg": s:fg1}) 
call s:h("DiffFile",      {"fg": s:fg1, "gui": "underline"})
call s:h("SignColumn",    {"fg": s:fg1}) 

call s:h("Pmenu",         {"fg": s:fg3, "bg": s:bg2}) 
call s:h("PmenuSel",      {"fg": s:fg1, "bg": s:bg2}) 
call s:h("PmenuSbar",     {"fg": s:fg3, "bg": s:bg2}) 
call s:h("PmenuThumb",    {"fg": s:fg1, "bg": s:bg2}) 
call s:h("TabLine",       {"fg": s:fg3, "bg": s:bg2}) 
call s:h("TabLineSel",    {"fg": s:fg1, "bg": s:bg2}) 
call s:h("TabLineFill",   {"fg": s:fg3, "bg": s:bg2}) 
call s:h("CursorColumn",  {"fg": s:fg1}) 
call s:h("CursorLine",    {"fg": s:fg1}) 
call s:h("ColorColumn",   {"fg": s:fg1}) 

call s:h("MatchParen",    {"gui": "standout"}) 
call s:h("qfLineNr",      {"fg": s:fg1}) 

call s:h("htmlH1",        {"fg": s:fg1}) 
call s:h("htmlH2",        {"fg": s:fg1}) 
call s:h("htmlH3",        {"fg": s:fg1}) 
call s:h("htmlH4",        {"fg": s:fg1}) 
call s:h("htmlH5",        {"fg": s:fg1}) 
call s:h("htmlH6",        {"fg": s:fg1}) 

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd

hi! link htmlTag          Special
hi! link htmlEndTag       htmlTag

hi! link htmlTagName      KeyWord
hi! link htmlTagN         Keyword

hi! link xmlTag           htmlTag
hi! link xmlEndTag        xmlTag
hi! link xmlTagName       htmlTagName
