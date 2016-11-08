" Vim color file
"
" Maintainer:   Stefan Karlsson <stefan.74@comhem.se>
" Last Change:  29 September 2004
"

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="chela_light"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light


"= Syntax Groups =============================================

hi comment      guibg=#fafafa   guifg=#339900   gui=none

hi constant     guibg=#fafafa   guifg=#dd3333   gui=none
hi specialchar  guibg=#fafafa   guifg=#ff3333   gui=underline

hi identifier   guibg=#fafafa   guifg=#3333ff   gui=none

hi statement    guibg=#fafafa   guifg=#3333ff   gui=none
hi label        guibg=#fafafa   guifg=#3333ff   gui=none

hi preproc      guibg=#fafafa   guifg=#3333ff   gui=none
hi include      guibg=#fafafa   guifg=#3333ff   gui=none
hi precondit    guibg=#fafafa   guifg=#cc00cc   gui=none

hi type         guibg=#fafafa   guifg=#3333ff   gui=none

hi special      guibg=#fafafa   guifg=#cc00cc   gui=none

hi error        guibg=#ff3333   guifg=#ffffff   gui=none

hi todo         guibg=#339933   guifg=#ffffff   gui=none


"= General Groups ============================================

hi cursor       guibg=#000000   guifg=#ffffff   gui=none

hi directory    guibg=#fafafa   guifg=#3333ff   gui=none

hi diffadd      guibg=#66ff66   guifg=#000000   gui=none
hi diffdelete   guibg=#ff6666   guifg=#ff6666   gui=none
hi diffchange   guibg=#ffff00   guifg=#cccc99   gui=none
hi difftext     guibg=#ffff00   guifg=#000000   gui=none

hi errormsg     guibg=#ff3333   guifg=#ffffff   gui=none

hi vertsplit    guibg=#3333ff   guifg=#3333ff   gui=none

hi folded       guibg=#eeeeee   guifg=#3333ff   gui=none
hi foldcolumn   guibg=#eeeeee   guifg=#999999   gui=none

hi linenr       guibg=#fafafa   guifg=#bbbbbb   gui=none

hi modemsg      guibg=#fafafa   guifg=#999999   gui=none

hi moremsg      guibg=#339900   guifg=#ffffff   gui=none
hi question     guibg=#339900   guifg=#ffffff   gui=none

hi nontext      guibg=#fafafa   guifg=#999999   gui=none

hi normal       guibg=#fafafa   guifg=#000000   gui=none

hi search       guibg=#ffff00   guifg=#000000   gui=none
hi incsearch    guibg=#ffbb00   guifg=#000000   gui=none

hi specialkey   guibg=#fafafa   guifg=#cc00cc   gui=none

hi statusline   guibg=#3333ff   guifg=#ffffff   gui=none
hi statuslinenc guibg=#3333ff   guifg=#999999   gui=none

hi title        guibg=#fafafa   guifg=#6666ff   gui=none

hi visual       guibg=#bbbbbb   guifg=#333333   gui=none

hi warningmsg   guibg=#fafafa   guifg=#ff0000   gui=none

hi wildmenu     guibg=#339900   guifg=#ffffff   gui=none


" [eof]

