" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file - terminal uses default xterm colors
" turly's vaguely blue-themed color scheme (I'm only interested in C and bash)
" See https://jonasjacek.github.io/colors/ for xterm color name table

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "bluish"
hi Normal		guifg=yellow1 guibg=#101848	ctermfg=226 ctermbg=234
hi Todo         guifg=yellow1 guibg=#101888	ctermfg=226 ctermbg=234
hi CursorLine	guibg=#282850
hi LineNr       guifg=gray91  guibg=#303060 ctermfg=250 ctermbg=235
hi Comment		guifg=cyan3			ctermfg=43
hi Identifier	guifg=GreenYellow	ctermfg=154
hi Constant		guifg=lightcyan		ctermfg=195
hi Statement	guifg=gray95		ctermfg=255
hi Special		guifg=gray95		ctermfg=255
hi cDelimiter	guifg=gray91		ctermfg=254
hi Type			guifg=skyblue		ctermfg=117
hi StorageClass	guifg=aquamarine	ctermfg=122
hi cString		guifg=wheat2		ctermfg=229
hi cSpecial		guifg=antiquewhite	ctermfg=230
hi cPreCondit	guifg=cyan2			ctermfg=50
hi cCppOutIf	guifg=cyan2			ctermfg=50
hi cBoolean		guifg=gray91		ctermfg=254
hi cOperator	guifg=gray93		ctermfg=254
hi Structure	guifg=gray93		ctermfg=254

hi Visual       guifg=#262626       guibg=#ffffff  ctermfg=235  ctermbg=15

hi Preproc			guifg=LightGoldenRod	ctermfg=227
hi cUserFunction	guifg=yellow			ctermfg=226
hi cAnsiFunction    guifg=antiquewhite2		ctermfg=230

