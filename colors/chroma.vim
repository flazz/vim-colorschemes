" chroma - a vim theme for console and gvim
"
" Author: crater2150

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "chroma"

function! PaletteHighlight(group, bg, fg, opts)
  exe 'hi ' . a:group
        \ . ' ctermbg=' . s:tcolors[a:bg]
        \ . ' ctermfg=' . s:tcolors[a:fg]
        \ . ' cterm='   . a:opts
        \ . ' guibg='   . s:gcolors[a:bg]
        \ . ' guifg='   . s:gcolors[a:fg]
        \ . ' gui='     . a:opts
endfunction

function! PaletteTheme(theme)
  for higroup in a:theme
    call PaletteHighlight(higroup[0], higroup[1], higroup[2], higroup[3])
  endfor

endfunction

if &background == "dark"
  " {{{
  "--------------
  " Dark Version 
  " used with background=dark
  "--------------

  let s:gcolors = {
  \ 'blue':        '#00afff',
  \ 'lightblue':   '#87afff',
  \ 'orange':      '#ffaf5f',
  \ 'yellow':      '#ffd75f',
  \ 'green':       '#87d75f',
  \ 'red':         '#ff0000',
  \ 'lightred':    '#ff5f5f',
  \ 'white':       '#ffffff',
  \ 'lightgray':   '#c6c6c6',
  \ 'gray':        '#8a8a8a',
  \ 'bggray':      '#1c1c1c',
  \ 'lightbggray': '#262626',
  \ 'visualgray':  '#303030',
  \ 'black':       '#000000',
  \ 'normfg':      '#ffffff',
  \ 'normbg':      '#000000',
  \ 'fg':          'fg',
  \ 'bg':          'bg',
  \ 'NONE':        'NONE'
  \}

  let s:tcolors = {
  \ 'blue':         39,
  \ 'lightblue':   111,
  \ 'orange':      215,
  \ 'yellow':      221,
  \ 'green':       113,
  \ 'red':         196,
  \ 'lightred':    203,
  \ 'white':       255,
  \ 'lightgray':   251,
  \ 'gray':        244,
  \ 'bggray':      234,
  \ 'lightbggray': 235,
  \ 'visualgray':  236,
  \ 'black':         0,
  \ 'normfg':      255,
  \ 'normbg':        0,
  \ 'fg':          'fg',
  \ 'bg':          'bg',
  \ 'NONE':        'NONE'
  \}

  "}}}
else
  "{{{
  "--------------
  " Light Version
  " used with background=dark
  "--------------

  let s:gcolors = {
  \ 'blue':        '#00afff',
  \ 'lightblue':   '#87afff',
  \ 'orange':      '#ffaf5f',
  \ 'yellow':      '#ffd75f',
  \ 'green':       '#87d75f',
  \ 'red':         '#ff0000',
  \ 'lightred':    '#ff5f5f',
  \ 'white':       '#ffffff',
  \ 'lightgray':   '#c6c6c6',
  \ 'gray':        '#8a8a8a',
  \ 'bggray':      '#1c1c1c',
  \ 'lightbggray': '#262626',
  \ 'visualgray':  '#303030',
  \ 'black':       '#000000',
  \ 'normfg':      '#000000',
  \ 'normbg':      '#ffffff',
  \ 'fg':          'fg',
  \ 'bg':          'bg',
  \ 'NONE':        'NONE'
  \}

  let s:tcolors = {
  \ 'blue':         33,
  \ 'lightblue':    39,
  \ 'orange':      166,
  \ 'yellow':      178,
  \ 'green':        35,
  \ 'red':         196,
  \ 'lightred':    167,
  \ 'white':       255,
  \ 'lightgray':   244,
  \ 'gray':        244,
  \ 'bggray':      250,
  \ 'lightbggray': 235,
  \ 'visualgray':  236,
  \ 'black':         0,
  \ 'normfg':        0,
  \ 'normbg':      255,
  \ 'fg':          'fg',
  \ 'bg':          'bg',
  \ 'NONE':        'NONE'
  \}

  "}}}
endif

"        HiGroup         BG Color       FG Color       Attributes
let s:theme = [
\ ['Normal',       'normbg',      'normfg',      'NONE'],
\ ['Underlined',   'NONE',        'NONE',        'NONE'],
\ ['Error',        'red',         'white',       'NONE'],
\ ['String',       'NONE',        'lightred',    'NONE'],
\ ['Todo',         'black',       'orange',      'NONE'],
\ ['Number',       'NONE',        'green',       'NONE'],
\ ['Special',      'NONE',        'yellow',      'italic'],
\ ['Function',     'NONE',        'orange',      'NONE'],
\ ['SpecialKey',   'NONE',        'red',         'NONE'],
\ ['MatchParen',   'NONE',        'lightred',    'bold'],
\ ['Comment',      'NONE',        'gray',        'NONE'],
\ ['Constant',     'NONE',        'green',       'NONE'],
\ ['Keyword',      'NONE',        'normfg',      'NONE'],
\ ['Identifier',   'NONE',        'lightgray',   'NONE'],
\ ['Statement',    'NONE',        'blue',        'NONE'],
\ ['PreProc',      'NONE',        'orange',      'NONE'],
\ ['Type',         'NONE',        'lightblue',   'Bold'],
\ ['Visual',       'visualgray',  'NONE',        'NONE'],
\ ['NonText',      'bggray',      'NONE',        'NONE'],
\ ['LineNr',       'bggray',      'gray',        'NONE'],
\
\ ['Pmenu',        'bggray',      'lightgray',   'NONE'],
\ ['PmenuSel',     'blue',        'black',       'NONE'],
\ ['PmenuSbar',    'visualgray',  'visualgray',  'NONE'],
\ ['PmenuThumb',   'gray',        'bggray',      'NONE'],
\ ['WildMenu',     'bggray',      'white',       'NONE'],
\
\ ['CursorColumn', 'bggray',      'NONE',        'NONE'],
\ ['CursorLine',   'bggray',      'NONE',        'NONE'],
\ ['CursorLineNr', 'black',       'NONE',        'bold'],
\
\ ['ColorColumn',  'bggray',      'NONE',        'NONE'],
\ ['SignColumn',   'bggray',      'white',       'NONE'],
\ ['StatusLine',   'bggray',      'lightblue',   'bold'],
\ ['StatusLineNC', 'black',       'visualgray',   'NONE'],
\ ['VertSplit',    'bggray',      'gray',        'NONE'],
\ ['Directory',    'NONE',        'blue',        'NONE'],
\
\ ['ErrorMsg',     'red',         'white',       'bold'],
\ ['WarningMsg',   'NONE',        'red',         'NONE'],
\ ['MoreMsg',      'NONE',        'blue',        'bold'],
\ ['ModeMsg',      'NONE',        'fg',          'bold'],
\ ['Question',     'NONE',        'green',       'NONE'],
\ ['Title',        'NONE',        'orange',      'bold'],
\ ['Search',       'orange',      'visualgray',   'NONE'],
\
\ ['TabLine',      'bggray',      'blue',        'NONE'],
\ ['TabLineSel',   'bggray',      'orange',      'underline'],
\ ['TabLineFill',  'bggray',      'lightgray',   'NONE'],
\
\ ['Folded',       'bggray',      'lightgray',   'underline'],
\
\ ['DiffAdd',      'bg',          'green',       'NONE'],
\ ['DiffChange',   'bg',          'yellow',      'NONE'],
\ ['DiffDelete',   'bg',          'lightred',    'bold'],
\ ['DiffText',     'bg',          'fg',          'NONE'],
\
\ ['SpellBad',     'NONE',        'red',         'undercurl'],
\ ['SpellCap',     'NONE',        'blue',        'undercurl'],
\ ['SpellRare',    'NONE',        'green',       'undercurl'],
\ ['SpellLocal',   'NONE',        'green',       'undercurl']
\ ]
call PaletteTheme(s:theme)

"===============================================================================
" Filetype specific
"===============================================================================

hi link diffRemoved DiffDelete
hi link diffAdded   DiffAdd
hi link diffChanged DiffChange

" vim: fdm=marker
