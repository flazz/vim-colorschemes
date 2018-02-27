" Vim filetype plugin file
" Language:    Python file syntax extensions
" Maintainer:  Alexey Mozhaev <lxmzhv@gmail.com>
" Last Change: 22-Oct-13

" Common
syn match    Delimiter "[[\](){},;:?]"
syn match    Operator "[!&]"
syn match    Operator "[*+]"
syn match    Operator "[-%]"
syn match    Operator "\."
syn match    Operator "="
syn match    Operator "<"
syn match    Operator ">"
syn match    Operator "|"
syn match    Operator "\^"
syn match    Operator "\~"
" Define operator / so that it wouldn't overlap definition of /=
syn match    Operator "/[^=]"me=e-1
syn match    Operator "/$"

" Functions
syn match pyUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1

" Links
hi def link pyUserFunction Function
