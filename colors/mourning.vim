" mourning colorscheme
"
" Maintainer: Zak Johnson <me@zakj.net>
" URL: https://github.com/zakj/vim-mourning

" Setup.  {{{1
set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'mourning'


" HL helper function.  {{{1
let s:NULL = {'sentinel': 'until v:null support is universal'}
function! s:HL(group, fg, ...)
  let [l:fg, l:bg, l:style] = [a:fg, s:NULL, s:NULL]
  if a:0 >= 1
    unlet l:bg | let l:bg = a:1
  endif
  if a:0 >= 2
    unlet l:style | let l:style = a:2
  endif

  let cmd = ['hi', a:group, 'NONE']

  if type(l:fg) == type('')
    let cmd += ['ctermfg=' . l:fg, 'guifg=' . l:fg]
  elseif type(l:fg) == type([])
    let cmd += ['ctermfg=' . l:fg[0], 'guifg=' . l:fg[1]]
  endif

  if type(l:bg) == type('')
    let cmd += ['ctermbg=' . l:bg, 'guibg=' . l:bg]
  elseif type(l:bg) == type([])
    let cmd += ['ctermbg=' . l:bg[0], 'guibg=' . l:bg[1]]
  endif

  if type(l:style) == type('')
    let cmd += ['cterm=' . l:style, 'gui=' . l:style]
  endif

  execute join(cmd)
endfunction


" Color palette.  {{{1
let s:c = {}

let s:c.black =        [232, '#080808']
let s:c.mineshaft0 =   [234, '#1c1c1c']
let s:c.mineshaft1 =   [235, '#262626']
let s:c.mineshaft2 =   [237, '#3a3a3a']
let s:c.boulder =      [240, '#585858']
let s:c.dark_grey =    [242, '#6c6c6c']
let s:c.grey =         [245, '#8a8a8a']
let s:c.silver =       [250, '#bcbcbc']
let s:c.white =        [254, '#e4e4e4']

let s:c.orient =       [ 24, '#005f87']
let s:c.comet =        [ 60, '#5f5f87']
let s:c.scampi =       [ 61, '#5f5faf']
let s:c.juniper =      [ 66, '#5f8787']
let s:c.malibu =       [ 75, '#5fafff']
let s:c.bright_green = [ 84, '#5fff87']
let s:c.maroon =       [ 88, '#870000']
let s:c.wisteria =     [ 96, '#875f87']
let s:c.wild_blue =    [103, '#8787af']
let s:c.mint_green =   [121, '#87ffaf']
let s:c.bright_red =   [124, '#af0000']
let s:c.red =          [160, '#d70000']
let s:c.green_yellow = [155, '#afff5f']
let s:c.bittersweet =  [203, '#ff5f5f']



" General VIM chrome.  {{{1
" :help highlight-default

call s:HL('Normal', s:c.grey, s:c.mineshaft0)

call s:HL('ColorColumn', s:NULL, s:c.mineshaft1)
" TODO: Conceal

call s:HL('Cursor', s:c.black, s:c.bright_green)
for group in ['CursorColumn', 'CursorLine']
  call s:HL(group, s:NULL, s:c.black)
endfor

call s:HL('Directory', s:c.orient)  " TODO: brighter blue?
call s:HL('DiffAdd', s:NULL, s:c.mineshaft1)
call s:HL('DiffChange', s:NULL, s:c.mineshaft1)
call s:HL('DiffDelete', s:c.mineshaft0, s:c.black)
call s:HL('DiffText', s:NULL, s:c.mineshaft2)
call s:HL('ErrorMsg', s:c.white, s:c.red)
call s:HL('Folded', s:c.orient) | hi Folded gui=italic

for group in ['FoldColumn', 'SignColumn', 'LineNr', 'VertSplit']
  call s:HL(group, s:c.mineshaft2, s:c.black)
endfor
call s:HL('CursorLineNr', 'fg', s:c.black)

for group in ['Search', 'IncSearch']
  call s:HL(group, s:c.black, s:c.green_yellow)
endfor

call s:HL('MatchParen', s:c.bright_green, s:NULL, 'bold')
call s:HL('ModeMsg', s:NULL, s:NULL, 'bold')
call s:HL('MoreMsg', s:c.white, s:NULL, 'bold')
call s:HL('NonText', s:c.orient)
call s:HL('Pmenu', s:c.black, s:c.grey)
call s:HL('PmenuSel', s:c.white, s:c.orient)
call s:HL('PmenuSbar', s:NULL, s:c.silver)
call s:HL('PmenuThumb', s:NULL, s:c.white)
call s:HL('Question', s:c.mint_green, s:NULL, 'bold')
call s:HL('SpecialKey', s:c.orient)

" TODO
" SpellBad	Word that is not recognized by the spellchecker. |spell|
" 		This will be combined with the highlighting used otherwise.
" SpellCap	Word that should start with a capital. |spell|
" 		This will be combined with the highlighting used otherwise.
" SpellLocal	Word that is recognized by the spellchecker as one that is
" 		used in another region. |spell|
" 		This will be combined with the highlighting used otherwise.
" SpellRare	Word that is recognized by the spellchecker as one that is
" 		hardly ever used. |spell|
" 		This will be combined with the highlighting used otherwise.
call s:HL('StatusLine', s:c.white, s:c.black)
call s:HL('StatusLineNC', s:c.mineshaft2, s:c.black)
call s:HL('TabLine', s:c.grey, s:c.black)
call s:HL('TabLineFill', s:NULL, s:c.black)
call s:HL('TabLineSel', s:c.white, s:c.mineshaft0, 'bold')
call s:HL('Title', s:c.white, s:NULL, 'bold')
call s:HL('Visual', s:c.black, s:c.malibu)
call s:HL('WarningMsg', s:c.bittersweet)  " TODO: refine
call s:HL('WildMenu', s:c.black, s:c.green_yellow)


" Syntax highlighting.  {{{1
" :help group-name

call s:HL('Comment', s:c.boulder, s:NULL) | hi Comment gui=italic
call s:HL('Constant', s:c.maroon)
call s:HL('Identifier', s:c.wisteria)
call s:HL('Statement', s:c.grey, s:NULL, 'bold')
call s:HL('Operator', s:c.dark_grey)
call s:HL('PreProc', s:c.scampi)
call s:HL('Type', s:c.comet)
call s:HL('Special', s:c.juniper)
call s:HL('Underlined', s:NULL, s:NULL, 'underline')
call s:HL('Ignore', s:c.black)
call s:HL('Error', s:c.silver, s:c.bright_red, 'bold')
call s:HL('Todo', s:c.black, s:c.wild_blue, 'bold')


" Specific syntax overrides.   {{{1

hi link jsGlobalObjects Identifier
