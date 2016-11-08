
" mahewincs.vim: a colorscheme
" Maintainer: Natal Ngétal <hobbestigrou@erakis.im>
" Date Last Change: Mars 27, 2010
" Version: 0.1
"TODO: Definition color for wildmenu, warningmessage, fold, fuction and gui.  

set background=dark
hi clear
if exists( "syntax_on" )
    syntax reset 
endif 
let g:colors_name = "mahewincs"

"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=lightblue

"definitions for color in a terminal
hi Normal     ctermfg=brown 
hi NonText    cterm=bold ctermfg=yellow
hi Comment    ctermfg=darkgreen
hi Directory  ctermfg=red
hi LineNr     ctermfg=darkgreen
hi ModeMsg    ctermfg=green
hi MoreMsg    ctermfg=red
hi Title      ctermfg=green
hi Number     ctermfg=lightcyan
hi String     ctermfg=green
hi Identifier ctermfg=red
hi Statement  ctermfg=blue
hi type       ctermfg=white
hi Question   ctermfg=green
hi VertSplit  ctermbg=blue   ctermfg=yellow
hi Todo       ctermbg=yellow ctermfg=red 
hi StatusLine ctermbg=green  ctermfg=blue
hi IncSearch  ctermbg=black  ctermfg=green
hi Search     ctermbg=cyan   ctermfg=blue
hi Visual     ctermbg=blue   ctermfg=yellow
hi WildMenu   ctermbg=blue   ctermfg=yellow
hi ErrorMsg   cterm=bold     ctermbg=red ctermfg=yellow
hi Error      cterm=bold     ctermbg=red ctermfg=yellow
