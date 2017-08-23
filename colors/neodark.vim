highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'neodark'

" Functions {{{
function! s:generate_base_colors(base1)
  let b1 = s:RGB2HSL(s:hex2RGB(a:base1))
  let b2 = [b1[0], b1[1], b1[2]+5]
  let b3 = [b1[0], b1[1], b2[2]+10]
  let b4 = [b1[0], b1[1], b3[2]+15]
  let b5 = [b1[0], b1[1], b4[2]+25]
  return [a:base1,
        \ s:RGB2hex(s:HSL2RGB(b2)),
        \ s:RGB2hex(s:HSL2RGB(b3)),
        \ s:RGB2hex(s:HSL2RGB(b4)),
        \ s:RGB2hex(s:HSL2RGB(b5))]
endfunction

function! s:hex2RGB(hex)
  let R = printf("%d", "0x".a:hex[1:2])
  let G = printf("%d", "0x".a:hex[3:4])
  let B = printf("%d", "0x".a:hex[5:6])
  return [R,G,B]
endfunction

function! s:RGB2hex(RGB)
  return printf("#%x%x%x", a:RGB[0], a:RGB[1], a:RGB[2])
endfunction

function! s:RGB2HSL(RGB)
  let R = a:RGB[0]
  let G = a:RGB[1]
  let B = a:RGB[2]

  let MAX = max([R, G, B])
  let MIN = min([R, G, B])

  let H = MAX - MIN
  if H > 0
    if MAX == R
      let H = 60 * (G - B) / H
    elseif MAX == G
      let H = 60 * (B - R) / H + 120
    elseif MAX == B
      let H = 60 * (R - G) / H + 240
    endif
    if H < 0
      let H += 360
    endif
  endif

  let CNT = (MAX + MIN) / 2
  if CNT < 128
    let S = 100 * (MAX - MIN) / (MAX + MIN)
  else
    let S = 100 * (MAX - MIN) / (510 - MAX - MIN)
  endif

  let L = CNT * 100 / 255

  return [H,S,L]
endfunction

function! s:HSL2RGB(HSL)
  let H = a:HSL[0]
  let S = a:HSL[1]
  let L = a:HSL[2]

  if L < 50
    let MAX = 255 * (L + L*S/100) / 100
    let MIN = 255 * (L - L*S/100) / 100
  else
    let MAX = 255 * (L + (100-L)*S/100) / 100
    let MIN = 255 * (L - (100-L)*S/100) / 100
  endif

  if H < 60
    let R = MAX
    let G = H * (MAX-MIN) / 60 + MIN
    let B = MIN
  elseif H < 120
    let R = (120-H) * (MAX-MIN) / 60 + MIN
    let G = MAX
    let B = MIN
  elseif H < 180
    let R = MIN
    let G = MAX
    let B = (H-120) * (MAX-MIN) / 60 + MIN
  elseif H < 240
    let R = MIN
    let G = (240-H) * (MAX-MIN) / 60 + MIN
    let B = MAX
  elseif H < 300
    let R = (H-240) * (MAX-MIN) / 60 + MIN
    let G = MIN
    let B = MAX
  else
    let R = MAX
    let G = MIN
    let B = (360-H) * (MAX-MIN) / 60 + MIN
  endif
  return [R,G,B]
endfunction

" }}}

if !exists('g:neodark#italics')
  let g:neodark#italics = 0
endif

if !exists('g:neodark#use_custom_terminal_theme')
  let g:neodark#use_custom_terminal_theme = 0
endif

if !exists('g:neodark#use_256color')
  let g:neodark#use_256color = 0
endif

if !exists('g:neodark#background')
  let g:neodark#background = ''
endif

if !exists('g:neodark#terminal_transparent')
  let g:neodark#terminal_transparent = 0
endif

if !exists('g:neodark#solid_vertsplit')
  let g:neodark#solid_vertsplit = 0
endif

if g:neodark#background == ''
  let s:base1 = ['#1F2F38', 236]
  let s:base2 = ['#263A45', 237]
  let s:base3 = ['#475C69', 59]
  let s:base4 = ['#658595', 245]
  let s:base5 = ['#AABBC4', 250]
else
  if g:neodark#background == 'black'
    echoerr '[neodark] black is deperecated for background. Use #191919 instead.'
    let g:neodark#background = '#191919'
  elseif g:neodark#background == 'gray'
    echoerr '[neodark] gray is deperecated for background. Use #272727 instead.'
    let g:neodark#background = '#272727'
  elseif g:neodark#background == 'brown'
    echoerr '[neodark] brown is deperecated for background. Use #2a2525 instead.'
    let g:neodark#background = '#2a2525'
  endif
  let bases = s:generate_base_colors(g:neodark#background)
  let s:base1 = [bases[0], 236]
  let s:base2 = [bases[1], 237]
  let s:base3 = [bases[2], 59]
  let s:base4 = [bases[3], 245]
  let s:base5 = [bases[4], 250]
endif

let s:red        = ['#DC657D', 168]
let s:green      = ['#84B97C', 108]
let s:yellow     = ['#D4B261', 179]
let s:blue       = ['#639EE4', 74]
let s:purple     = ['#B888E2', 140]
let s:orange     = ['#E18254', 173]
let s:pink       = ['#E69CA0', 181]
let s:teal       = ['#4BB1A7', 73]
let s:beige      = ['#C7C18B', 180]
let s:light_blue = ['#72C7D1', 80]
let s:brown      = ['#AE8785', 138]

if g:neodark#use_256color == 1
  let s:base1[0] = '#303030'
  let s:base2[0] = '#3a3a3a'
  let s:base3[0] = '#5f5f5f'
  let s:base4[0] = '#8a8a8a'
  let s:base5[0] = '#bcbcbc'

  let s:red[0]        = '#d75f87'
  let s:green[0]      = '#87af87'
  let s:yellow[0]     = '#d7af5f'
  let s:blue[0]       = '#5fafd7'
  let s:purple[0]     = '#af87d7'
  let s:orange[0]     = '#d7875f'
  let s:pink[0]       = '#d7afaf'
  let s:teal[0]       = '#5fafaf'
  let s:beige[0]      = '#d7af87'
  let s:light_blue[0] = '#5fd7d7'
  let s:brown[0]      = '#af8787'
endif

if g:neodark#use_custom_terminal_theme == 1
  let s:base1[1] = 0
  let s:base2[1] = 8
  let s:base3[1] = 13
  let s:base4[1] = 7
  let s:base5[1] = 15

  let s:red[1]        = 1
  let s:green[1]      = 2
  let s:yellow[1]     = 3
  let s:blue[1]       = 4
  let s:purple[1]     = 5
  let s:orange[1]     = 6
  let s:pink[1]       = 9
  let s:teal[1]       = 10
  let s:beige[1]      = 11
  let s:light_blue[1] = 12
  let s:brown[1]      = 14
endif

" Transparent Background
if g:neodark#terminal_transparent == 1
  let s:base1[1] = 'none' " This doesn't work well for airline
end


function! s:hi(group, fg, bg, attr)
  let l:attr = a:attr
  if g:neodark#italics == 0 && l:attr ==? 'italic'
    let l:attr = 'none'
  endif

  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif

  if l:attr != ''
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr . ' guisp=NONE'
  endif
endfun

" Vim Editor
call s:hi('ColorColumn',               '',           s:base2,    '')
call s:hi('Cursor',                    s:base2,      s:base5,    '')
call s:hi('CursorColumn',              '',           s:base2,    '')
call s:hi('CursorLine',                '',           s:base2,    'none')
call s:hi('CursorLineNr',              s:light_blue, s:base2,    'none')
call s:hi('Directory',                 s:blue,       '',         '')
call s:hi('DiffAdd',                   s:green,      s:base2,    'none')
call s:hi('DiffChange',                s:yellow,     s:base2,    'none')
call s:hi('DiffDelete',                s:red,        s:base2,    'none')
call s:hi('DiffText',                  s:blue,       s:base1,    'none')
call s:hi('ErrorMsg',                  s:red,        s:base1,    'bold')
call s:hi('FoldColumn',                s:base4,      s:base2,    '')
call s:hi('Folded',                    s:base3,      s:base1,    '')
call s:hi('IncSearch',                 s:beige,      '',         '')
call s:hi('LineNr',                    s:base3,      '',         '')
call s:hi('MatchParen',                s:light_blue, s:base1,    'underline,bold')
call s:hi('ModeMsg',                   s:green,      '',         '')
call s:hi('MoreMsg',                   s:green,      '',         '')
call s:hi('NonText',                   s:base4,      '',         'none')
call s:hi('Normal',                    s:base5,      s:base1,    'none')
call s:hi('Pmenu',                     s:base5,      s:base3,    '')
call s:hi('PmenuSbar',                 '',           s:base2,    '')
call s:hi('PmenuSel',                  s:base2,      s:green,    '')
call s:hi('PmenuThumb',                '',           s:base4,    '')
call s:hi('Question',                  s:blue,       '',         'none')
call s:hi('Search',                    s:base1,      s:beige,    '')
call s:hi('SignColumn',                s:base5,      s:base1,    '')
call s:hi('SpecialKey',                s:base4,      '',         '')
call s:hi('SpellBad',                  s:red,        s:base1,    'underline')
call s:hi('SpellCap',                  s:brown,      s:base1,    'none')
call s:hi('SpellRare',                 s:brown,      s:base1,    'none')
call s:hi('SpellLocal',                s:brown,      s:base1,    'none')
call s:hi('StatusLine',                s:base5,      s:base3,    'none')
call s:hi('StatusLineNC',              s:base2,      s:base4,    '')
call s:hi('TabLine',                   s:base4,      s:base2,    'none')
call s:hi('TabLineFill',               s:base4,      s:base2,    'none')
call s:hi('TabLineSel',                s:yellow,     s:base3,    'none')
call s:hi('Title',                     s:orange,     '',         'none')
call s:hi('Visual',                    s:base5,      s:base3,    '')
call s:hi('WarningMsg',                s:red,        '',         '')
call s:hi('WildMenu',                  s:base2,      s:green,	   '')

" Solid bar for vertical split
if g:neodark#solid_vertsplit == 1
  call s:hi('VertSplit',                 s:base2,      s:base2,    'none')
else
  call s:hi('VertSplit',                 s:base4,      s:base1,    'none')
endif

" Standard Syntax
call s:hi('Comment',                   s:base4,      '',         'italic')
call s:hi('Constant',                  s:red,        '',         '')
call s:hi('String',                    s:orange,     '',         '')
call s:hi('Character',                 s:orange,     '',         '')
call s:hi('Identifier',                s:teal,       '',         'none')
call s:hi('Function',                  s:blue,       '',         '')
call s:hi('Statement',                 s:green,      '',         'none')
call s:hi('Exception',                 s:red,        '',         '')
call s:hi('PreProc',                   s:purple,     '',         '')
call s:hi('Define',                    s:purple,     '',         'none')
call s:hi('Macro',                     s:purple,     '',         '')
call s:hi('Type',                      s:yellow,     '',         'none')
call s:hi('StorageClass',              s:teal,       '',         '')
call s:hi('Special',                   s:pink,       '',         '')
call s:hi('Delimiter',                 s:base5,      '',         '')
call s:hi('Underlined',                s:base5,      '',         'underline')
call s:hi('Error',                     s:red,        s:base1,    'bold')
call s:hi('Todo',                      s:base5,      s:base1,    'bold')
call s:hi('Conceal',                   s:beige,      s:base1,    '')

" Languages {{{
" Vim {{{
hi! link vimFunc     Function
hi! link vimUserFunc Function
call s:hi('vimLet',                    s:yellow,     '',         '')
" }}}
" Shell {{{
hi! link shFunction  Function
" }}}
" Markdown {{{
hi! link markdownHeadingDelimiter  Statement
hi! link markdownLinkDelimiter     Statement
hi! link markdownLinkTextDelimiter Statement
hi! link markdownLinkText          Statement
hi! link markdownURL               Underlined
call s:hi('markdownCode',          s:blue,       '',         '')
call s:hi('markdownListMarker',    s:teal,       '',         '')
call s:hi('markdownHeadingRule',   s:base4,      '',         '')
call s:hi('markdownCodeDelimiter', s:green,      '',         '')
call s:hi('markdownBold',          '',           '',         'bold')
call s:hi('markdownBoldItalic',    '',           '',         'bold,italic')
" }}}
" Pandoc markdown {{{
call s:hi('pandocDelimitedCodeBlock',      s:blue,       '',         '')
call s:hi('pandocDelimitedCodeBlockStart', s:base5,      '',         '')
call s:hi('pandocDelimitedCodeBlockEnd',   s:base5,      '',         '')
call s:hi('pandocAtxHeader',               s:orange,     '',         'bold')
" }}}
" TeX {{{
call s:hi('texRefZone', s:orange,       '',         '')
call s:hi('texMath',    s:blue,         '',         '')
" }}}
" Ruby {{{
hi! link rubyStringDelimiter String
hi! link rubyBlockParameterList rubyBlockParameter
call s:hi('rubyInterpolationDelimiter', s:teal,       '',         '')
" }}}
" Go {{{
hi! link goFunctionCall Function
hi! link goMethodCall   Function
" }}}
" }}}
" Plugins {{{
" Vim-Fugitive
call s:hi('diffAdded',                 s:green,      '',         '')
call s:hi('diffRemoved',               s:red,        '',         '')

" Vim-Gittgutter
call s:hi('GitGutterAdd',              s:green,      '',         '')
call s:hi('GitGutterChange',           s:yellow,     '',         '')
call s:hi('GitGutterDelete',           s:red,        '',         '')
call s:hi('GitGutterChangeDelete',     s:orange,     '',         '')

" indent-guides
call s:hi('IndentGuidesOdd',           '',           s:base2,    '')
call s:hi('IndentGuidesEven',          '',           s:base2,    '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete
" }}}

set background=dark
