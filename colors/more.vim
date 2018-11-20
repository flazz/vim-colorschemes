" vim color file
"
" Derived from <Less is More> by Brian Nelson
" (http://www.vim.org/scripts/script.php?script_id=854)
"

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "more"

"i Comment        term=bold cterm=bold ctermfg=0 gui=none guifg=DarkGray
hi clear Comment
hi Constant       term=bold cterm=none ctermfg=7 gui=none guifg=LightGray
"i Defined        term=bold cterm=bold ctermfg=6 gui=none guifg=LightCyan
hi Directory      term=bold cterm=bold ctermfg=cyan guifg=Cyan
hi Error          term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=Black guibg=Red
hi Function       term=bold cterm=bold ctermfg=7 gui=bold guifg=White
hi Identifier     term=none cterm=none ctermfg=2 gui=none guifg=LightCyan
"i Include        term=bold cterm=bold ctermfg=4 gui=none guifg=LightBlue
hi LineNr         term=underline cterm=bold ctermfg=darkcyan guifg=DarkCyan
hi ModeMsg        term=bold cterm=bold gui=bold guifg=White guibg=Blue
hi MoreMsg        term=bold cterm=bold ctermfg=darkgreen gui=bold guifg=DarkGreen
hi Normal         term=none ctermfg=7 gui=none guifg=LightGray guibg=black
hi PreProc        term=underline cterm=bold ctermfg=7 gui=bold guifg=White
"i clear PreProc
hi Question       term=standout cterm=bold ctermfg=darkgreen gui=bold guifg=DarkGreen
hi Search         term=reverse ctermfg=white  ctermbg=blue guifg=white guibg=Blue
hi Special        term=bold cterm=none ctermfg=6 gui=none guifg=Orange
"i clear Special
hi Statement      term=bold cterm=bold ctermfg=3 gui=bold guifg=Yellow
"i StorageClass   term=bold cterm=bold ctermfg=5 gui=none guifg=LightMagenta
"i String         term=none cterm=none ctermfg=3 gui=none guifg=LightYellow
hi Todo           term=standout cterm=none ctermfg=7 ctermbg=2 guifg=LightGray guibg=DarkGreen
hi Type           term=underline cterm=bold,underline ctermfg=3 gui=underline guifg=LightYellow

hi link Constant	Normal

hi link Character       String
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Operator        Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Macro           Include
hi link PreCondit       PreProc
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special

