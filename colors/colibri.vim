" colibri.vim color theme
" Author: Blaž Hrastnik
"
" Note:
"
" Todo: Adjustable contrast?

" Preamble: {{{
hi clear
if exists("syntax_on") | syntax reset | endif
let s:is_dark=(&background == 'dark')
let g:colors_name = "colibri"
" }}}
" Colors: {{{
let s:colibri = {}

" foreground #a4a0e8 (non active window) # play with complements, #9FF28F could be hsl(143.3, 61%, 76.9%) (complement derived from primary), hsl(343.3, 61%, 76.9%)

" base shades
let s:colibri.white     = ["#FFFFFF", 231]
let s:colibri.white_lilac  = ["#f3f2fc", 0] "lilac at lightness 97% hsl(243.3, 61%, 97%)
"let s:colibri.white_lilac  = ["#FAF3EE", 0] " white_almond
"let s:colibri.white_lilac  = ["#FAF9F4", 0] " white_chamois
let s:colibri.white_lilac2 = ["#ebeafa", 0] "lilac at lightness 95% hsl(243.3, 61%, 95%)
let s:colibri.lilac     = ["#dbbfef", 183]
let s:colibri.lavender  = ["#a4a0e8", 146]
let s:colibri.comet     = ["#5a5977", 60]
let s:colibri.bossanova = ["#452859", 53]
let s:colibri.midnight  = ["#3b224c", 17]
let s:colibri.revolver  = ["#281733", 17]

" syntax groups
" white
let s:colibri.silver    = ["#CCCCCC", 188]
let s:colibri.sirocco   = ["#697C81", 66]
let s:colibri.mint      = ["#9FF28F", 156] " 81EECF / 7FB998 / -- 5fe7b7
" lilac
let s:colibri.almond    = ["#ECCDBA", 223]
let s:colibri.chamois   = ["#E8DCA0", 187]
let s:colibri.honey     = ["#EFBA5D", 215] " alt: saturation is closer #DDB56F

" selection
let s:colibri.cedar     = ["#802F00", 88]

if s:is_dark
  let s:colibri.bg1 = s:colibri.revolver
  let s:colibri.bg2 = s:colibri.midnight
  let s:colibri.bg3 = s:colibri.bossanova
  let s:colibri.fg1 = s:colibri.lavender
  let s:colibri.fg2 = s:colibri.white
  let s:colibri.fg3 = s:colibri.silver
  let s:colibri.fg4 = s:colibri.sirocco
else
  " it seems that +10% saturation -10% lightness works for light colors
  " mint: ~60% sat, 55% lightness
  " comet: +10% lightness
  " midnight: hsl(275.7, 18.2%, 50%) -20% sat? + 20% lightness
  " silver: #aaa (from #ccc)
  "
  " white lilac is lilac +10% sat + 24% lightness, we could derive almond bg too HSL(22.8, 76.8%, 96.7%)
  let s:colibri.comet    = ["#716f94", 0]
  let s:colibri.midnight = ["#6a5379", 0] " one step
  let s:colibri.midnight = ["#846897", 0] " two steps
  " white
  let s:colibri.comet    = s:colibri.silver " comet is only used for linenr, so override
  let s:colibri.silver   = ["#aaaaaa", 0]
  " sirocco
  let s:colibri.lilac    = ["#c590eb", 0]
  let s:colibri.lavender = ["#938fdb", 0]
  let s:colibri.mint     = ["#6bc05b", 0]
  let s:colibri.almond   = ["#e8ae8b", 0]
  let s:colibri.chamois  = ["#e9d77c", 0]
  let s:colibri.chamois  = ["#d4c57d", 0] " muted so it's easier to read
  let s:colibri.chamois  = ["#d7c25b", 0] " even more muted so it's easier to read

  " set some shades
  let s:colibri.bg1 = s:colibri.white
  let s:colibri.bg2 = s:colibri.white_lilac
  let s:colibri.bg3 = s:colibri.white_lilac2
  let s:colibri.fg1 = s:colibri.lavender
  let s:colibri.fg2 = s:colibri.midnight
  let s:colibri.fg3 = s:colibri.sirocco
  let s:colibri.fg4 = s:colibri.silver

  " flip the colors!
  "let s:colibri.almond = s:colibri.lavender
  "let s:colibri.chamois = s:colibri.lilac

  "let s:colibri.mint = ["#83DA74", 0]
endif

let s:colibri.foreground      = s:colibri.fg1
let s:colibri.background_dark = s:colibri.bg1
let s:colibri.background      = s:colibri.bg2
" dark contrast bg
"let s:colibri.background     = ["#311D40", 53] " HSB with B at 25 (instead of 30)
let s:colibri.background_light = s:colibri.bg3

let s:colibri.sign_column = s:colibri.bg2

" ui tones
let s:colibri.disabled = s:colibri.foreground
let s:colibri.active   = s:colibri.lilac
let s:colibri.window   = s:colibri.background_light
let s:colibri.linenr   = s:colibri.comet
let s:colibri.highlight = s:colibri.cedar

" #D7F4A8?
let s:colibri.error    = ["#f47868", 209]
let s:colibri.warning  = ["#ffcd1c", 220]

let s:colibri.comment  = s:colibri.fg4
let s:colibri.builtin  = s:colibri.fg2
let s:colibri.string   = s:colibri.fg3
let s:colibri.proper   = s:colibri.fg2
let s:colibri.constant = s:colibri.mint
let s:colibri.bool     = s:colibri.fg2
let s:colibri.func     = s:colibri.fg2
let s:colibri.punct    = s:colibri.lilac
"let s:colibri.keyword  = ["#77B56B", 107]
let s:colibri.keyword  = s:colibri.almond
let s:colibri.number   = s:colibri.chamois

let s:colibri.special  = s:colibri.honey

" Diff colors
let s:colibri.diff_green  = ["#35BF86", 1]
let s:colibri.diff_red    = ["#F22C86", 1]
"let s:colibri.error    = s:colibri.diff_red " darken & consolidate the red on errors?
if s:is_dark
  let s:colibri.diff_change = ["#69A0F3", 1]
  let s:colibri.diff_change = ["#6F44F0", 1]
  let s:colibri.dblue       = ["#3B0FBF", 1] " 2CD5F2
else
  "swap
  let s:colibri.dblue = ["#6F44F0", 1]
  let s:colibri.diff_change = ["#3B0FBF", 1] " 2CD5F2
endif
" }}}
" Helpers: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  let highlightString = 'hi ' . a:group . ' '

  " Settings for highlight group ctermfg & guifg
  if strlen(a:fg)
    if a:fg == 'fg'
      let highlightString .= 'guifg=fg ctermfg=fg '
    elseif a:fg == 'none'
      let highlightString .= 'guifg=NONE ctermfg=NONE '
    else
      let color = get(s:colibri, a:fg)
      let highlightString .= 'guifg=' . color[0] . ' ctermfg=' . color[1] . ' '
    endif
  endif

  " Settings for highlight group termbg & guibg
  if a:0 >= 1 && strlen(a:1)
    if a:1 == 'bg'
      let highlightString .= 'guibg=bg ctermbg=bg '
    elseif a:1 == 'none'
      let highlightString .= 'guibg=NONE ctermbg=NONE '
    else
      let color = get(s:colibri, a:1)
      let highlightString .= 'guibg=' . color[0] . ' ctermbg=' . color[1] . ' '
    endif
  endif

  " Settings for highlight group cterm & gui
  if a:0 >= 2 && strlen(a:2)
    let highlightString .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
  endif

  " Settings for highlight guisp
  if a:0 >= 3 && strlen(a:3)
    let color = get(s:birds, a:3)
    let highlightString .= 'guisp=#' . color[0] . ' '
  endif

  " echom highlightString

  execute highlightString
endfunction
" }}}

"
call s:HL('Normal',       'foreground', 'background',      'none')

call s:HL('VertSplit',    'window',     'window',          '')

"call s:HL('Cursor',       'background', 'cursor',    'none') " vCursor, iCursor
call s:HL('Visual',       '',           'highlight',       'none')

call s:HL('Search',       'warning',    'background_dark', 'inverse')
call s:HL('WildMenu',     'active',     'background',      'inverse')

call s:HL('CursorLine',   '',           'window',          'none')
call s:HL('CursorColumn', '',           'window',          'none')
call s:HL('ColorColumn',  '',           'window',          'none')

call s:HL('TabLine',      '',           'bg3',             '')
call s:HL('TabLineFill',  'bg3',        '',                '')
call s:HL('TabLineSel',   'fg2',        'bg1',             '')

" - Gutter
call s:HL('LineNr',     'linenr',  '',                 '')
call s:HL('CursorLineNr','almond', '',                 '')
call s:HL('SignColumn', 'active',  'sign_column',      'none')
call s:HL('FoldColumn', 'active',  'window',           'none')
call s:HL('Folded',     'comment', 'background_light', 'none')

call s:HL('MatchParen',   'background_light', 'honey', '')
"call s:HL('MatchParen',   'background_light', 'lavender', '')

call s:HL('StatusLine',   'background_dark', 'active',           '')
call s:HL('StatusLineNC', 'background_dark', 'disabled',         '')

" Directories (netrw, etc.)
call s:HL('Directory',  'keyword',    '',     'bold')

" Some HTML tags (<title>, some <h*>s)
call s:HL('Title',      'foreground', '',     'bold')

call s:HL('ErrorMsg',   'error',      'none', 'bold')
call s:HL('WarningMsg', 'warning',    'none')
call s:HL('MoreMsg',    'diff_green', 'none')
call s:HL('Question',   'diff_green', 'none')
" TODO: ModeMsg

" - Completion menu
call s:HL('Pmenu',      'foreground', 'window',          'none')
"call s:HL('Pmenu',    'active', 'linenr', 'none')
call s:HL('PmenuSel',   'active',     'background_dark', 'none')
call s:HL('PmenuSbar',  '',           'background_dark')
call s:HL('PmenuThumb', '',           'active')

" Tildes below buffer
call s:HL('NonText', 'window', '', 'none')
let s:colibri.neon = ["#2CF2F1", 0] " rotated diff_red hue until cyan
" Special keys, e.g. some of the chars in 'listchars'. See ':h listchars'.
call s:HL('SpecialKey', 'neon', '', 'none')
" neovim: Whitespace

" - Diffs
call s:HL('DiffAdd',     'diff_green', 'background_light', 'bold')
call s:HL('DiffDelete',  'diff_red',   'background_light', '')
call s:HL('DiffChange',  'foreground', 'dblue',            '')
"call s:HL('DiffText',    'dblue',      'diff_change',      'bold')
call s:HL('DiffText',    'lilac',  'diff_change',      'bold')
" experimenting
"call s:HL('DiffChange',  'foreground', 'dblue',            '')
"call s:HL('DiffText',    'white_lilac','dblue',      'bold')

call s:HL('DiffAdded',   'diff_green', '',                 'bold')
call s:HL('DiffRemoved', 'diff_red',   '',                 '')
call s:HL('DiffChanged', 'foreground', 'dblue',            '')

" --> Syntax
" start simple
call s:HL('Special', 'special', '', 'none')
" TODO: Tag
call s:HL('Delimiter', 'punct', '', '') " hmm
call s:HL('ColibriInterpolationDelimiter', 'punct', '', '')

" next up, comments
call s:HL('Comment',        'comment', '',       '')
call s:HL('SpecialComment', 'comment', '',       'reverse')
call s:HL('Todo',           'warning', 'background', 'italic')
call s:HL('Error',          'error',   'background')

" -> Keywords
" generic statement
call s:HL('Statement',   'keyword',  '', '')
" sizeof, "+", "*", etc.
call s:HL('Operator',    'punct',    '', '')

" Functions and variable declarations
call s:HL('Identifier',  'builtin',  '', '')
call s:HL('Function',    'func',     '', '')

" Preprocessor
call s:HL('PreProc',     'punct',    '', '')
call s:HL('Define',      'keyword',  '', '')

" Constants
call s:HL('Constant',    'constant', '', '')
" character constant: 'c', '/n'
" Character
call s:HL('Boolean',     'bool',     '', '')
call s:HL('Number',      'number',   '', '')
call s:HL('Float',       'number',   '', '')
call s:HL('String',      'string',   '', '')

" --> Types
call s:HL('Type',        'proper',   '', '')

" --> Filetype specific

" Ruby
"call s:HL("rubySymbol", 'punct', '', '')
" apparently not the same as constant? (module/class name)
call s:HL('rubyConstant',                 'proper',  '', '')
hi link rubyInterpolationDelimiter ColibriInterpolationDelimiter
call s:HL('rubyStringDelimiter',          'string',  '', 'italic')
call s:HL('rubyIdentifier',               'proper',  '', '')

call s:HL('rubyRailsMethod',              'proper',  '', '')

" Elixir
call s:HL('elixirStringDelimiter',        'string',  '', 'italic')
hi link elixirInterpolationDelimiter ColibriInterpolationDelimiter

" HTML
call s:HL('htmlTag',                      'keyword', '', '')
call s:HL('htmlEndTag',                   'keyword', '', '')
call s:HL('htmlTagName',                  'keyword', '', '')
call s:HL('htmlArg',                      'func',    '', '')

" Markdown
call s:HL('htmlH1',                       'punct',   '', '')

" YAJS
hi! link javascriptImport Keyword
hi! link javascriptExport Keyword
call s:HL('javascriptIdentifier',         'proper',  '', '')
call s:HL('javascriptIdentifierName',     'proper',  '', '')
call s:HL('javascriptObjectLabel',        'punct',   '', '')
" hi! link javascriptBraces Delimiter
" hi! link typescriptBraces Delimiter
" hi! link javascriptEndColons Delimiter
" hi! link typescriptEndColons Delimiter
"
" For pangloss's highlighting
hi! link jsStorageClass Identifier
hi! link jsFunction Function
hi! link jsFuncName Identifier
hi! link jsFuncParens Normal
hi! link Noise Identifier

" YAML

" CSS
hi! link cssVendor cssDefinition
call s:HL("cssAttrComma",                 'punct',   '', '')

" --> Plugins

call s:HL('ColibriAddSign',    'diff_green',  'sign_column')
call s:HL('ColibriChangeSign', 'diff_change', 'sign_column')
call s:HL('ColibriDeleteSign', 'diff_red',    'sign_column')

" ALE integration
call s:HL('ALEWarningSign', 'warning', 'sign_column')
call s:HL('ALEErrorSign',   'error',   'sign_column')
" ALEInfoSign
hi! link SyntasticErrorSign AleErrorSign
hi! link SyntasticWarningSign AleWarningSign

"vim-gitgutter
hi! link GitGutterAdd ColibriAddSign
hi! link GitGutterChange ColibriChangeSign
hi! link GitGutterDelete ColibriDeleteSign
hi! link GitGutterChangeDelete ColibriChangeSign
" vim-signify
hi! link SignifyAdd ColibriAddSign
hi! link SignifyChange ColibriChangeSign
hi! link SignifyDelete ColibriDeleteSign

" vi: foldmethod=marker
