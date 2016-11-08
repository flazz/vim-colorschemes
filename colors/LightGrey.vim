
" It's based on:
runtime colors/Light.vim

let g:colors_name = "LightGrey"

hi Normal guibg=grey85
hi NonText guibg=grey80


if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=grey90
    hi CursorColumn guibg=grey90
endif

