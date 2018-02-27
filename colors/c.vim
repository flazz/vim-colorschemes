" Vim filetype plugin file
" Language:    C file syntax extensions
" Maintainer:  Alexey Mozhaev <lxmzhv@gmail.com>
" Last Change: 09-Jan-14

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
" Define operator / so that it wouldn't overlap definition of /* // and /=
syn match    Operator "/[^*/=]"me=e-1
syn match    Operator "/$"

" Functions
syn match cUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1
syn match cUserFunctionPointer "(\s*\*\s*\h\w*\s*)\(\s\|\n\)*(" contains=Delimiter,Operator

if filereadable( '.syntax.vim' ) | exec 'so .syntax.vim' | endif

syn match   Macro    "\<[A-Z_][A-Z_0-9]*\>"
syn keyword Macro    NULL TRUE FALSE

" Links
hi def link cUserFunction         Function
hi def link cUserFunctionPointer  Function
