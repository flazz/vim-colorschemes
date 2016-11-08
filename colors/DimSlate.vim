
" It's based on:
runtime colors/Dim.vim

let g:colors_name = "DimSlateBG"

"hi Normal guibg=#002020
"hi NonText guibg=#001818
" The above was just too dark.  It almost looked black on this monitor
" (ViewSonic P810)
hi Normal guibg=#003838
hi NonText guibg=#003030

if version >= 700
    " Just a tad off of bg
    hi CursorLine   guibg=#224040
    hi CursorColumn guibg=#224040
endif

