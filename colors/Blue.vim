
" It's based on:
runtime colors/Dark.vim

let g:colors_name = "Blue"

" hi Normal guibg=#000070 guifg=GhostWhite
hi Normal guibg=#000050 guifg=GhostWhite
"hi Normal guibg=#000040 guifg=GhostWhite
"hi NonText guibg=#000040
hi NonText guibg=#000038
"hi NonText guibg=#000030
hi Visual guifg=grey40

if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=#222260
    hi CursorColumn guibg=#222260
endif

" Experimental:
hi Cursor guibg=yellow guifg=bg
