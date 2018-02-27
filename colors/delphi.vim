" Vim color file
" Maintainer : Sebastian-Torsten Tillmann <sttillmann@users.sourceforge.net>
" Last Change: 2006-02-21
" Version    : 1.0.1

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="delphi"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light


hi Comment    gui=Italic  guifg=DarkBlue  guibg=NONE
hi Constant   gui=NONE    guifg=DarkBlue  guibg=NONE
hi Identifier gui=NONE    guifg=Black     guibg=NONE
hi Statement  gui=Bold    guifg=Black     guibg=NONE
hi PreProc    gui=NONE    guifg=DarkGreen guibg=NONE
hi Type       gui=NONE    guifg=Black     guibg=NONE
hi Special    gui=NONE    guifg=DarkBlue  guibg=NONE
hi Todo       gui=Italic  guifg=DarkBlue  guibg=NONE
hi Error      gui=NONE    guifg=DarkRed   guibg=NONE
