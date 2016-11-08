
" It's based on:
runtime colors/Dim.vim

let g:colors_name = "DimRedBG"

hi Normal guibg=#180000
hi NonText guibg=#080000

if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=#302222
    hi CursorColumn guibg=#302222
endif

