
" It's based on:
runtime colors/Dim.vim

let g:colors_name = "DimGrey"

"hi Normal guibg=grey10
"hi NonText guibg=black
hi Normal guibg=grey15
hi NonText guibg=grey10

if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=grey20
    hi CursorColumn guibg=grey20
endif

