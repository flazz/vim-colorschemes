let g:colors_name = "falmouth"

set background=light
if exists("syntax_on")
  syntax reset
endif

hi String gui=italic      guifg=#dd5533 ctermfg=blue
hi Error  gui=italic  guibg=NONE  guifg=#885500       ctermfg=red
hi LineNr     guibg=#eefaee guifg=#000000 ctermbg=white   ctermfg=black
hi Visual     guibg=#ddddff
hi Search     guibg=#ffff88
hi constant gui=bold      guifg=#880000       ctermfg=darkgrey
set enc=utf-8
set fillchars+=vert:\
hi VertSplitNC  gui=NONE  guibg=#eefaee guifg=#000000       ctermfg=black
hi VertSplit  gui=NONE  guibg=#eefaee guifg=#000000 ctermbg=LightGray ctermfg=black
hi StatusLine gui=NONE  guibg=#eefaee guifg=#000000 ctermbg=LightGray ctermfg=black
hi StatusLineNC gui=NONE  guibg=#dddddd guifg=#000000 ctermbg=LightGray ctermfg=black

hi Folded     guibg=#DDDDDD guifg=Black ctermbg=LightGray ctermfg=black
hi FoldColumn     guibg=#DDDDDD guifg=#333333 ctermbg=LightGray ctermfg=black
hi FoldColumn     guibg=#DDDDDD guifg=#000000 ctermbg=LightGray ctermfg=black

hi DiffChange     guibg=#F9FFD9 guifg=#000000 ctermbg=White   ctermfg=Black
hi DiffText     guibg=#F9FFD9 guifg=#000000 ctermbg=White   ctermfg=DarkCyan
hi DiffAdd      guibg=#AADFFF guifg=#000000 ctermbg=White   ctermfg=DarkGreen
hi DiffDelete     guibg=#FFDFAA guifg=#000000 ctermbg=White   ctermfg=DarkRed

