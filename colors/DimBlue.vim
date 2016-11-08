
" It's based on:
runtime colors/Dim.vim

let g:colors_name = "DimBlueBG"

hi Normal guibg=#000033
hi NonText guibg=#000011

if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=#22224a
    hi CursorColumn guibg=#22224a
endif

