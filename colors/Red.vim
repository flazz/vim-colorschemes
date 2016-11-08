
" It's based on:
runtime colors/Dark.vim

let g:colors_name = "Red"

hi Normal guibg=#500000 guifg=#FFFFD0
hi NonText guibg=#400000

" Experimental:
hi Cursor guibg=green guifg=black

if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=#602222
    hi CursorColumn guibg=#602222
endif

