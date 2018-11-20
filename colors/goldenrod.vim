" Name: goldenrod
" Author: John Black
"" local syntax file - set colors on a per-machine basis:
"" vim: tw=0 ts=4 sw=4

hi clear
set background=dark

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "goldenrod"

function <SID>set_color(name, fg, bg, ct)
    exe 'highlight ' . a:name . ' ctermfg=' . a:fg . ' ctermbg=' . a:bg . ' cterm=' . a:ct
endfunction

" Green
let color1 = '40'
" Magenta
let color3 = '197'
" Light Blue
let color6 = '45'
" Yellow
let color5 = '220'

" Gray
let color2 = '245'
" Dark Gray
let color4 = '233'

" light minty green
let color8 = '119'
" strings - beige
let color14 = '185'

" Blue
let color9 = '33'

" Black
let color10 = '232'
" lighter Black
let color11 = '235'
" darkish gray
let color12 = '236'
" Cyan
let color13 = '51'
" another gray
let color15 = '242'

let diffcolor1 = '237'
let diffcolor2 = '124'
let diffcolor3 = '53'
let diffcolor4 = '22'

let white = '254'
let red = '196'
let black = '16'
let search = '208'

call <SID>set_color("Boolean", color1, "NONE", "NONE")
call <SID>set_color("Comment", color2, "NONE", "NONE")
call <SID>set_color("Constant", color3, "NONE", "NONE")
call <SID>set_color("CursorColumn", "NONE", color4, "NONE")
call <SID>set_color("CursorLine", "NONE", color4, "NONE")
call <SID>set_color("CursorLineNr", color5, "NONE", "NONE")
call <SID>set_color("Directory", color6, "NONE", "NONE")
call <SID>set_color("DiffAdd", "NONE", diffcolor4, "NONE")
call <SID>set_color("DiffChange", "NONE", diffcolor1, "NONE")
call <SID>set_color("DiffDelete", "NONE", diffcolor2, "NONE")
call <SID>set_color("DiffText", "NONE", diffcolor3, "NONE")
call <SID>set_color("Error", white, red, "NONE")
call <SID>set_color("Function", color1, "NONE", "NONE")
call <SID>set_color("Identifier", color8, "NONE", "NONE")
call <SID>set_color("LineNr", white, "NONE", "NONE")
call <SID>set_color("MatchParen", color3, search, "NONE")
call <SID>set_color("NonText", color9, "NONE", "NONE")
call <SID>set_color("Normal", white, black, "NONE")
call <SID>set_color("Operator", color5, "NONE", "NONE")
call <SID>set_color("PreProc", color1, "NONE", "NONE")
call <SID>set_color("Pmenu", color5, color10, "NONE")
call <SID>set_color("PmenuSbar", color5, color11, "NONE")
call <SID>set_color("PmenuSel", color6, color10, "NONE")
call <SID>set_color("PmenuThumb", color5, color10, "NONE")
call <SID>set_color("Search", white, search, "NONE")
call <SID>set_color("Special", color9, "NONE", "NONE")
call <SID>set_color("SpecialKey", color13, "NONE", "NONE")
call <SID>set_color("SpellBad", "NONE", "NONE", "underline")
call <SID>set_color("SpellCap", "NONE", "NONE", "underline")
call <SID>set_color("SpellLocal", "NONE", "NONE", "underline")
call <SID>set_color("SpellRare", "NONE", "NONE", "underline")
call <SID>set_color("Statement", color5, "NONE", "NONE")
call <SID>set_color("StatusLine", color6, color11, "NONE")
call <SID>set_color("StatusLineNC", white, color11, "NONE")
call <SID>set_color("String", color14, "NONE", "NONE")
call <SID>set_color("TabLineFill", white, color11, "NONE")
call <SID>set_color("TabLineSel", white, black, "NONE")
call <SID>set_color("TabLine", white, color15, "NONE")
call <SID>set_color("Todo", white, "NONE", "bold")
call <SID>set_color("Type", color6, "NONE", "NONE")
call <SID>set_color("Visual", "NONE", color12, "NONE")

delf <SID>set_color
