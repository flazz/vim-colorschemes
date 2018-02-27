
" Vim Syntax Highlighting File
" 
" Language: C
"
" Extra: This is to copy the vi clone elvis on its
"        syntax highlighting.
"
" Maintainer: Dean Jones<dean@cleancode.org>
"
" Comment: This works well with the default c.vim
"          that comes with vim6.x.  It basically 
"          overrides the very bright colors it uses
"          and uses simple white for highlighting 
"          key words and types in the C language.
"          If you're using Eterm, uncomment the 
"          Normal line specified below.

hi clear

" Eterm users, uncomment the line below
" hi Normal ctermfg=grey

"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light
"
hi PreProc ctermfg=white
hi Type ctermfg=white
hi Statement ctermfg=white
hi Comment ctermfg=grey
hi Constant cterm=NONE ctermfg=NONE
hi Number cterm=NONE ctermfg=NONE
hi String cterm=NONE ctermfg=NONE
hi Special cterm=NONE ctermfg=NONE

" EOF for Dean's Elvis like highlighting
