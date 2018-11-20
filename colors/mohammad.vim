" Vim color file for dark backgrounds.

hi clear

let colors_name = "mohammad"

" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi Directory  ctermfg=Blue	   guifg=Blue
hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
hi FoldColumn ctermfg=Blue	   ctermbg=Grey     guibg=Grey	    guifg=Blue
hi Folded     ctermbg=Grey	   ctermfg=Blue guibg=LightGrey guifg=Blue
hi IncSearch  cterm=reverse	   gui=reverse
hi LineNr     ctermfg=Brown	   guifg=Brown
hi ModeMsg    cterm=bold	   gui=bold
hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi NonText    ctermfg=Blue	   gui=bold guifg=gray guibg=white
hi Pmenu      ctermfg=White        ctermbg=Black
hi PmenuSel   ctermfg=White	   ctermbg=DarkGreen  guifg=White  guibg=Blue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi Search     ctermfg=White	   ctermbg=DarkGreen guibg=White guifg=White
hi SpecialKey ctermfg=Blue	   guifg=Blue
hi StatusLine cterm=bold	   ctermbg=blue ctermfg=white guibg=gold guifg=blue
hi StatusLineNC	cterm=bold	   ctermbg=yellow ctermfg=black  guibg=gold guifg=blue
hi TabLineFill ctermfg=DarkBlue        ctermbg=DarkGreen
hi TabLine    ctermfg=Black        ctermbg=DarkBlue
hi TabLineSel ctermfg=White        ctermbg=Black  cterm=bold
hi Title      ctermfg=DarkMagenta  gui=bold guifg=Magenta
hi VertSplit  cterm=None	   gui=reverse
hi Visual     ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed	   guifg=Red
hi WildMenu   ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black
hi ColorColumn ctermbg=lightgrey guibg=lightgrey
hi CursorLine  cterm=NONE ctermbg=Brown

" syntax highlighting
hi Comment    cterm=NONE ctermfg=Red     gui=NONE guifg=red2
hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
hi Identifier cterm=NONE ctermfg=DarkCyan    gui=NONE guifg=darkblue
hi PreProc    cterm=NONE ctermfg=Magenta gui=NONE guifg=magenta3
hi Special    cterm=NONE ctermfg=LightRed    gui=NONE guifg=deeppink
hi Statement  cterm=bold ctermfg=Blue	     gui=bold guifg=blue
hi Type	      cterm=NONE ctermfg=Blue	     gui=bold guifg=blue

" Vim diff
highlight DiffAdd    cterm=bold ctermfg=Black ctermbg=Green gui=none guifg=Black guibg=Green
highlight DiffDelete cterm=bold ctermfg=Black ctermbg=LightRed gui=none guifg=Black guibg=Red
highlight DiffChange cterm=bold ctermfg=Black ctermbg=LightGreen gui=none guifg=Black guibg=Green
highlight DiffText   cterm=bold ctermfg=Black ctermbg=Yellow gui=none guifg=Black guibg=Red

" vim: sw=2
