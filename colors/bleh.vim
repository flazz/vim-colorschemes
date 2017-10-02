" ┏┓ ╻  ┏━╸╻ ╻ ╻ ╻╻┏┳┓
" ┣┻┓┃  ┣╸ ┣━┫ ┃┏┛┃┃┃┃
" ┗━┛┗━╸┗━╸╹ ╹╹┗┛ ╹╹ ╹
"
" A blueish 16 colors scheme that uses your terminal colors
" Made by Tudor Roman in 2016
" Based on shblah.vim by z3bra

if version > 580
    highlight clear
    if exists("g:syntax_on")
        syntax reset
    endif
endif
let g:colors_name="bleh"

" Actual colours and styles.
if &background == "dark"
	highlight ColorColumn  term=NONE cterm=NONE ctermfg=NONE ctermbg=0
	highlight Comment      term=NONE cterm=bold ctermfg=0    ctermbg=NONE
	highlight Constant     term=NONE cterm=NONE ctermfg=6    ctermbg=NONE
	highlight Cursor       term=NONE cterm=bold ctermfg=3    ctermbg=NONE
	highlight CursorLine   term=NONE cterm=NONE ctermfg=NONE ctermbg=0
	highlight CursorLineNr term=NONE cterm=NONE ctermfg=5    ctermbg=NONE
	highlight CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=0
	highlight DiffAdd      term=NONE cterm=bold ctermfg=2    ctermbg=NONE
	highlight DiffChange   term=NONE cterm=bold ctermfg=NONE ctermbg=NONE
	highlight DiffDelete   term=NONE cterm=bold ctermfg=7    ctermbg=1
	highlight DiffText     term=NONE cterm=bold ctermfg=7    ctermbg=4
	highlight Directory    term=NONE cterm=bold ctermfg=4    ctermbg=0
	highlight Error        term=NONE cterm=NONE ctermfg=0    ctermbg=1
	highlight ErrorMsg     term=NONE cterm=bold ctermfg=1    ctermbg=0
	highlight FoldColumn   term=NONE cterm=bold ctermfg=0    ctermbg=NONE
	highlight Folded       term=NONE cterm=bold ctermfg=0    ctermbg=NONE
	highlight Function     term=NONE cterm=bold ctermfg=5    ctermbg=NONE
	highlight Identifier   term=NONE cterm=NONE ctermfg=1    ctermbg=NONE
	highlight IncSearch    term=NONE cterm=bold ctermfg=5    ctermbg=5
	highlight NonText      term=NONE cterm=bold ctermfg=0    ctermbg=NONE
	highlight Normal       term=NONE cterm=NONE ctermfg=7    ctermbg=NONE
	highlight Pmenu        term=NONE cterm=NONE ctermfg=0    ctermbg=7
	highlight PreProc      term=NONE cterm=bold ctermfg=6    ctermbg=NONE
	highlight Search       term=NONE cterm=bold ctermfg=7    ctermbg=5
	highlight Special      term=NONE cterm=NONE ctermfg=2    ctermbg=NONE
	highlight SpecialKey   term=NONE cterm=NONE ctermfg=0    ctermbg=NONE
	highlight Statement    term=NONE cterm=NONE ctermfg=4    ctermbg=NONE
	highlight StatusLine   term=NONE cterm=bold ctermfg=0    ctermbg=NONE
	highlight String       term=NONE cterm=NONE ctermfg=2    ctermbg=NONE
	highlight TabLineSel   term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight Todo         term=NONE cterm=bold ctermfg=7    ctermbg=1
	highlight Type         term=NONE cterm=bold ctermfg=4    ctermbg=NONE
	highlight Underlined   term=underline cterm=underline ctermfg=NONE   ctermbg=NONE
	highlight VertSplit    term=NONE cterm=bold ctermfg=0    ctermbg=NONE
	highlight Visual       term=NONE cterm=reverse,bold ctermfg=0    ctermbg=NONE
	highlight WarningMsg   term=NONE cterm=bold ctermfg=3    ctermbg=NONE

	highlight ALEErrorSign ctermbg=NONE ctermfg=magenta
else
	highlight ColorColumn  term=NONE cterm=NONE ctermfg=NONE ctermbg=3
	highlight Comment      term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight Constant     term=NONE cterm=NONE ctermfg=6    ctermbg=NONE
	highlight Cursor       term=NONE cterm=bold ctermfg=3    ctermbg=NONE
	highlight CursorLine   term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
	highlight DiffAdd      term=NONE cterm=bold ctermfg=2    ctermbg=NONE
	highlight DiffChange   term=NONE cterm=bold ctermfg=NONE ctermbg=NONE
	highlight DiffDelete   term=NONE cterm=bold ctermfg=7    ctermbg=1
	highlight DiffText     term=NONE cterm=bold ctermfg=7    ctermbg=4
	highlight Directory    term=NONE cterm=bold ctermfg=4    ctermbg=7
	highlight Error        term=NONE cterm=NONE ctermfg=0    ctermbg=1
	highlight ErrorMsg     term=NONE cterm=bold ctermfg=1    ctermbg=7
	highlight FoldColumn   term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight Folded       term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight Function     term=NONE cterm=bold ctermfg=5    ctermbg=NONE
	highlight Identifier   term=NONE cterm=NONE ctermfg=1    ctermbg=NONE
	highlight IncSearch    term=NONE cterm=bold ctermfg=5    ctermbg=5
	highlight NonText      term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight Normal       term=NONE cterm=NONE ctermfg=0    ctermbg=NONE
	highlight Pmenu        term=NONE cterm=NONE ctermfg=7    ctermbg=0.
	highlight PreProc      term=NONE cterm=bold ctermfg=6    ctermbg=NONE
	highlight Search       term=NONE cterm=bold ctermfg=7    ctermbg=5
	highlight Special      term=NONE cterm=NONE ctermfg=2    ctermbg=NONE
	highlight SpecialKey   term=NONE cterm=NONE ctermfg=7    ctermbg=NONE
	highlight Statement    term=NONE cterm=NONE ctermfg=4    ctermbg=NONE
	highlight StatusLine   term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight String       term=NONE cterm=NONE ctermfg=2    ctermbg=NONE
	highlight TabLineSel   term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight Todo         term=NONE cterm=bold ctermfg=7    ctermbg=1
	highlight Type         term=NONE cterm=bold ctermfg=4    ctermbg=NONE
	highlight Underlined   term=underline cterm=underline ctermfg=NONE   ctermbg=NONE
	highlight VertSplit    term=NONE cterm=bold ctermfg=7    ctermbg=NONE
	highlight Visual       term=NONE cterm=NONE ctermfg=7    ctermbg=8
	highlight WarningMsg   term=NONE cterm=bold ctermfg=3    ctermbg=NONE
	highlight ALEErrorSign ctermbg=NONE ctermfg=magenta
endif
" General highlighting group links.
highlight! link diffAdded       DiffAdd
highlight! link diffRemoved     DiffDelete
highlight! link diffChanged     DiffChange
highlight! link StatusLineNC    StatusLine
highlight! link Title           Normal
highlight! link LineNr          NonText
highlight! link MoreMsg         Normal
highlight! link Question        DiffChange
highlight! link TabLine         StatusLineNC
highlight! link TabLineFill     StatusLineNC
highlight! link VimHiGroup      VimGroup
