
" It's based on:
runtime colors/Dark.vim

let g:colors_name = "SlateBG"

hi Normal guibg=DarkSlateGrey guifg=AntiqueWhite1
hi NonText guibg=#1F3F3F

"hi Cursor guifg=AntiqueWhite1 guibg=bg gui=reverse
hi Cursor guibg=salmon3

if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=#3f5f5f
    hi CursorColumn guibg=#3f5f5f
endif

