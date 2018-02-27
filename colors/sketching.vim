" Name:       sketching.vim
" Version:    0.1
" Maintainer: github.com/thenewvu
" License:    The MIT License (MIT)
"
" A minimal white colorscheme for Vim/Neovim.
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

let g:colors_name='sketching'

let s:bg1         = { "gui": "#EFEFF4" }
let s:bg2         = { "gui": "#d1d1df" }
let s:bg3         = { "gui": "#e0e0ea" }
let s:fg1         = { "gui": "#606060" }
let s:fg2         = { "gui": "#a0a0a0" }

let s:red         = { "gui": "#D02884" }
let s:yellow      = { "gui": "#cb6511" }
let s:blue        = { "gui": "#1177cb" }

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
call s:h("Cursor",        {"gui": "standout"})

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
call s:h("StatusLine",    {"fg": s:fg2, "bg": s:bg2})
call s:h("StatusLineNC",  {"fg": s:fg2, "bg": s:bg2})
call s:h("VertSplit",     {"fg": s:fg2}) 
call s:h("Title",         {"fg": s:fg2}) 
call s:h("Visual",        {"gui": "standout"}) 
call s:h("VisualNOS",     {"gui": "standout"}) 
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:fg1, "bg": s:bg2}) 
call s:h("Folded",        {"fg": s:fg1, "bg": s:bg3})
call s:h("FoldColumn",    {"fg": s:fg2}) 
call s:h("DiffAdd",       {"fg": s:blue})
call s:h("DiffDelete",    {"fg": s:red}) 
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:fg1}) 
call s:h("DiffFile",      {"fg": s:fg1, "gui": "underline"})
call s:h("SignColumn",    {"fg": s:fg1}) 

call s:h("Pmenu",         {"fg": s:fg2, "bg": s:bg2}) 
call s:h("PmenuSel",      {"fg": s:fg1, "bg": s:bg2}) 
call s:h("PmenuSbar",     {"fg": s:fg1, "bg": s:bg2}) 
call s:h("PmenuThumb",    {"fg": s:fg1, "bg": s:bg2}) 
call s:h("TabLine",       {"fg": s:fg2, "bg": s:bg2}) 
call s:h("TabLineSel",    {"fg": s:fg1, "bg": s:bg2}) 
call s:h("TabLineFill",   {"fg": s:fg2, "bg": s:bg2}) 
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
