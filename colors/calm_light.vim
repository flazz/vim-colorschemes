" Vim color file
" Maintainer: @juanjux <juanjo@juanjoalvarez.net>
" 
" Last Change: 7 may 2020
" Version:1.0
" Comment: Light color scheme that doesn't burn your eyes either by not being
" overly light or overly lacking contrast.
"
set background=light
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="calm_light"

hi Normal   guifg=black	 guibg=#FCF6E5
hi Statusline    gui=none guibg=#006666 guifg=#ffffff
hi  VertSplit    gui=none guibg=#006666 guifg=#ffffff
hi StatuslineNC  gui=none guibg=#666633 guifg=#ffffff
hi CursorLine    guibg=bisque cterm=NONE gui=NONE
hi ColorColumn guibg=DarkSeaGreen

hi Title    guifg=black	 guibg=white gui=BOLD cterm=bold
hi lCursor  guibg=Cyan   guifg=NONE
hi LineNr   guifg=white guibg=#006666 

" syntax highlighting groups
hi Comment    gui=NONE guifg=#6a7a82
hi Operator   guifg=blue3

hi Identifier guifg=black gui=NONE

hi Statement	 guifg=firebrick
hi TypeDef       guifg=#c000c8 gui=NONE
hi Type          guifg=#0000c8 gui=NONE
hi Boolean       guifg=#0000aa gui=NONE

hi String        guifg=darkgreen gui=NONE
hi Number        guifg=#9933ff gui=NONE
hi Constant      guifg=mediumblue

hi Function      gui=NONE guifg=DarkOrchid4
hi PreProc       guifg=#993300 gui=NONE
hi Define        gui=NONE guifg=firebrick

hi Keyword       guifg=#ff8088 gui=NONE
hi Search        gui=NONE guibg=#ffff00 
"guibg=#339900
hi IncSearch     gui=NONE guifg=#ffff00 guibg=#990000
hi Conditional   gui=NONE guifg=firebrick
hi browseDirectory  gui=none guifg=#660000 guibg=#ffffff

