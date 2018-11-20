scriptencoding utf-8

set background=dark
highlight clear

let g:colors_name = 'japanesque'
if exists('syntax_on')
  syntax reset
endif

" 紫紺
let s:black      = '#3C2F41'
" 菜の花
let s:white      = '#F7F1D5'
" 灰
let s:dark_gray  = '#828282'
" 銀鼠
let s:gray       = '#91989F'
" 今様
let s:red        = '#D05A6E'
" 桃
let s:magenta    = '#F596AA'
" 苗
let s:green      = '#86C166'
" 鶯
let s:dark_green = '#6C6A2D'
" 藤
let s:purple     = '#8B81C3'
" 鬱金
let s:yellow     = '#EFBB24'


function! s:hi(group, highlight_args) abort
  if !has_key(a:highlight_args, 'gui')
    let a:highlight_args.gui = 'none'
  endif
  let a:highlight_args.cterm = a:highlight_args.gui
  let attrs = map(items(a:highlight_args), "v:val[0] . '=' . v:val[1]")
  let args = ['highlight', a:group] + attrs
  execute join(args, ' ')
endfunction

" UI
call s:hi('NonText',    { 'guifg': s:dark_gray })
call s:hi('Todo',       { 'guifg': s:red, 'guibg': 'NONE' })
call s:hi('Search',     { 'gui': 'reverse', 'guifg': s:yellow, 'guibg': 'NONE' })
call s:hi('SignColumn', { 'guifg': s:white, 'guibg': s:black})
call s:hi('FoldColumn', { 'guifg': s:white, 'guibg': s:black})
call s:hi('VertSplit',  { 'guifg': s:dark_gray, 'guibg': s:dark_gray})
call s:hi('Error',      { 'guifg': s:red, 'guibg': 'NONE'})
call s:hi('ErrorMsg',   { 'guifg': s:red, 'guibg': 'NONE'})
call s:hi('WarningMsg', { 'guifg': s:yellow})
call s:hi('SpecialKey', { 'guifg': s:dark_green})
call s:hi('Visual',     { 'gui': 'reverse', 'guifg': 'fg', 'guibg': 'bg'})
call s:hi('Folded',     { 'gui': 'underline', 'guifg': s:dark_green, 'guibg': 'bg'})
call s:hi('MoreMsg',    { 'guifg': s:dark_green})
call s:hi('Conceal',    { 'guifg': s:dark_gray})
call s:hi('Question',   { 'guifg': s:green})
call s:hi('DiffAdd',    { 'guifg': 'fg', 'guibg': s:green})
call s:hi('DiffDelete', { 'guifg': 'fg', 'guibg': s:red})
call s:hi('DiffChange', { 'guifg': 'fg', 'guibg': s:yellow})
call s:hi('DiffText',   { 'gui': 'reverse', 'guifg': 'fg', 'guibg': s:yellow})
call s:hi('MatchParen', { 'guibg': s:yellow})

if v:version >= 700
  call s:hi('Cursor', { 'gui': 'reverse', 'guifg': 'NONE', 'guibg': 'NONE' })
  call s:hi('CursorLine', { 'guibg': '#2c2c2c' })
  call s:hi('LineNr',       { 'guifg': s:gray })
  call s:hi('CursorLineNr', { 'guifg': s:yellow })
  call s:hi('Pmenu',        { 'guifg': 'fg', 'guibg': s:red })
  call s:hi('PmenuSel',     { 'guifg': 'fg', 'guibg': s:dark_gray })
endif

" Syntax
call s:hi('Normal',     { 'guifg': s:white, 'guibg': s:black })
call s:hi('NonText',    { 'guifg': s:dark_gray })
call s:hi('Comment',    { 'guifg': s:gray })
call s:hi('Constant',   { 'guifg': s:magenta })
call s:hi('Statement',  { 'guifg': s:dark_green })
call s:hi('PreProc',    { 'guifg': s:dark_green })
call s:hi('Type',       { 'guifg': s:yellow })
call s:hi('Identifier', { 'guifg': s:purple })
call s:hi('Function',   { 'guifg': s:green })
call s:hi('Conceal',    { 'guifg': s:dark_gray, 'guibg': 'NONE' })
call s:hi('Special',    { 'guifg': s:yellow })
call s:hi('Title',      { 'guifg': s:purple })

highlight default link Noise Conceal

" Perl
highlight default link perlVarPlain Identifier
highlight default link perlVarPlain2 Identifier
highlight default link perlStatementStorage StorageClass
highlight default link perlSharpBang Comment
highlight default link perlStringStartEnd Conceal
highlight default link perlMatchStartEnd Conceal
highlight default link perlFunction Statement
highlight default link perlSubName Function
highlight default link perlOperator Operator
highlight default link perlMethod Function
highlight default link perlStatementInclude Include

" JavaScript
highlight default link jsObjectKey Type
highlight default link jsFuncCall Function

" HTML
highlight default link htmlTag Conceal
highlight default link htmlEndTag Conceal
highlight default link htmlTagName Identifier

" TT2
highlight default link tt2_tag Conceal
highlight default link tt2_bracket_r Conceal
highlight default link tt2_operator Conceal

" TypeScript
highlight default link typescriptEndColons Conceal
highlight default link typescriptParens Conceal
highlight default link typescriptBraces Conceal

" Git
highlight default link gitcommitWarning WarningMsg

" Fugitive
highlight default link FugitiveblameDelimiter Delimiter

" Ruby
highlight default link rubyStringDelimiter Conceal

" Vim
highlight default link vimParenSep Conceal

" Markdown
highlight default link mkdDelimiter Statement

" YAML
highlight default link yamlKeyValueDelimiter Statement
