"A lighter color scheme, with a font that looks good bold.

" It's based on:
runtime colors/Light.vim

let g:colors_name = "LightTan"

hi Normal  guibg=#CDCABD   guifg=black
"hi NonText guibg=#BDBAAD   guifg=grey50
hi NonText guibg=#C5C2B5   guifg=grey50

if version >= 700
    hi CursorLine   guibg=grey75
    hi CursorColumn guibg=grey75
endif

