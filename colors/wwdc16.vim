" Name:         WWDC16
" Description:  Colorful dark color scheme for Vim inspired by Apple's WWDC16 page
" Author:       Lifepillar <lifepillar@lifepillar.me>
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" Website:      https://github.com/lifepillar/vim-wwdc16-theme
" License:      This file is placed in the public domain
" Last Updated: Tue Jan 30 20:48:34 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < (get(g:, 'wwdc16_use16', 0) ? 16 : 256))
  echoerr '[WWDC16] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'wwdc16'

" 256-color variant
if !get(g:, 'wwdc16_use16', 0)
  let g:wwdc16_palette = ['#292c36', '#dc3c3c', '#52bd58', '#d28e5d', '#4670d8', '#b74989',
        \                   '#64878f', '#999999', '#333344', '#95c76f', '#efa16b',
        \                   '#5283ff', '#8485ce', '#00aba5', '#ffffff']

  " Color similarity table (dark background)
  "   brightwhite: GUI=#ffffff/rgb(255,255,255)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.000000]
  "         white: GUI=#999999/rgb(153,153,153)  Term=247 #9e9e9e/rgb(158,158,158)  [delta=1.572876]
  "    brightblue: GUI=#5283ff/rgb( 82,131,255)  Term= 69 #5f87ff/rgb( 95,135,255)  [delta=1.639382]
  " brightmagenta: GUI=#8485ce/rgb(132,133,206)  Term=104 #8787d7/rgb(135,135,215)  [delta=1.690709]
  "    brightcyan: GUI=#00aba5/rgb(  0,171,165)  Term= 37 #00afaf/rgb(  0,175,175)  [delta=2.504880]
  "        yellow: GUI=#d28e5d/rgb(210,142, 93)  Term=173 #d7875f/rgb(215,135, 95)  [delta=4.541877]
  "          cyan: GUI=#64878f/rgb(100,135,143)  Term= 66 #5f8787/rgb( 95,135,135)  [delta=4.665135]
  "         green: GUI=#52bd58/rgb( 82,189, 88)  Term= 71 #5faf5f/rgb( 95,175, 95)  [delta=4.668250]
  "   brightgreen: GUI=#95c76f/rgb(149,199,111)  Term=150 #afd787/rgb(175,215,135)  [delta=5.009389]
  "     brightred: GUI=#f84547/rgb(248, 69, 71)  Term=203 #ff5f5f/rgb(255, 95, 95)  [delta=5.247314]
  "  brightyellow: GUI=#efa16b/rgb(239,161,107)  Term=216 #ffaf87/rgb(255,175,135)  [delta=5.747334]
  "         black: GUI=#292c36/rgb( 41, 44, 54)  Term=236 #303030/rgb( 48, 48, 48)  [delta=6.276438]
  "          blue: GUI=#4670d8/rgb( 70,112,216)  Term= 26 #005fd7/rgb(  0, 95,215)  [delta=6.795669]
  "           red: GUI=#dc3c3c/rgb(220, 60, 60)  Term=167 #d75f5f/rgb(215, 95, 95)  [delta=7.719507]
  "       magenta: GUI=#b74989/rgb(183, 73,137)  Term=133 #af5faf/rgb(175, 95,175)  [delta=9.532785]
  "   brightblack: GUI=#333344/rgb( 51, 51, 68)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=9.891913]
  if !has('gui_running') && get(g:, 'wwdc16_transp_bg', 0)
    hi Normal ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi LineNr ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=231 ctermbg=236 guifg=#ffffff guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=fg ctermbg=237 guifg=fg guibg=#333344 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=247 ctermbg=237 guifg=#999999 guibg=#333344 guisp=NONE cterm=NONE gui=NONE
    hi LineNr ctermfg=247 ctermbg=237 guifg=#999999 guibg=#333344 guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=fg ctermbg=236 guifg=fg guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=66 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=fg ctermbg=26 guifg=fg guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=150 ctermbg=236 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=173 ctermbg=fg guifg=#d28e5d guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=167 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=71 ctermbg=fg guifg=#52bd58 guibg=fg guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi Directory ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=237 ctermbg=NONE guifg=#333344 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=167 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=247 ctermbg=237 guifg=#999999 guibg=#333344 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=133 ctermbg=fg guifg=#b74989 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,standout
  hi MatchParen ctermfg=237 ctermbg=173 guifg=#333344 guibg=#d28e5d guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi ModeMsg ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=236 ctermbg=66 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=237 ctermbg=237 guifg=#333344 guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=fg ctermbg=173 guifg=fg guibg=#d28e5d guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=237 ctermbg=173 guifg=#333344 guibg=#d28e5d guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi Search ctermfg=173 ctermbg=fg guifg=#d28e5d guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
  hi StatusLine ctermfg=66 ctermbg=fg guifg=#64878f guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=66 ctermbg=236 guifg=#64878f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi TabLine ctermfg=236 ctermbg=66 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=fg ctermbg=66 guifg=fg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=fg ctermbg=66 guifg=fg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=173 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=66 ctermbg=66 guifg=#64878f guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=26 ctermbg=fg guifg=#4670d8 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=fg ctermbg=26 guifg=fg guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=167 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=fg ctermbg=133 guifg=fg guibg=#b74989 guisp=NONE cterm=NONE gui=NONE
  hi Boolean ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=173 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi! link Conditional Statement
  hi Constant ctermfg=173 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Define PreProc
  hi Debug ctermfg=133 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=167 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link Exception Statement
  hi Float ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=71 ctermbg=NONE guifg=#52bd58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=167 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=66 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=71 ctermbg=NONE guifg=#52bd58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Macro PreProc
  hi Number ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link PreCondit PreProc
  hi PreProc ctermfg=133 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Repeat Statement
  hi Special ctermfg=133 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=133 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=167 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=66 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=167 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Tag Special
  hi Todo ctermfg=133 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Typedef Type
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=66 ctermbg=237 guifg=#64878f guibg=#333344 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NormalMode ctermfg=247 ctermbg=fg guifg=#999999 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=150 ctermbg=236 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=173 ctermbg=236 guifg=#d28e5d guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=26 ctermbg=fg guifg=#4670d8 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=133 ctermbg=fg guifg=#b74989 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=fg ctermbg=247 guifg=fg guibg=#999999 guisp=NONE cterm=NONE gui=NONE
    let g:terminal_color_0='#292c36'
    let g:terminal_color_1='#dc3c3c'
    let g:terminal_color_2='#52bd58'
    let g:terminal_color_3='#d28e5d'
    let g:terminal_color_4='#4670d8'
    let g:terminal_color_5='#b74989'
    let g:terminal_color_6='#64878f'
    let g:terminal_color_7='#999999'
    let g:terminal_color_8='#333344'
    let g:terminal_color_9='#f84547'
    let g:terminal_color_10='#95c76f'
    let g:terminal_color_11='#efa16b'
    let g:terminal_color_12='#5283ff'
    let g:terminal_color_13='#8485ce'
    let g:terminal_color_14='#00aba5'
    let g:terminal_color_15='#ffffff'
  endif
  if get(g:, 'wwdc16_enable_syntax_hi_groups', 0)
    hi vimCommentTitle ctermfg=167 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapModKey ctermfg=173 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapMod ctermfg=173 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimBracket ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimNotation ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link vimUserFunc Function
    hi gitcommitComment ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi markdownHeadingDelimiter ctermfg=173 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownURL ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlItalic ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi htmlBold ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlBoldItalic ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link javascriptBraces Delimiter
    hi SyntasticErrorSign ctermfg=167 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SyntasticWarningSign ctermfg=173 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  endif
  if get(g:, "wwdc16_term_italics", 1)
    hi Comment cterm=italic
    hi Folded cterm=italic
    hi htmlItalic cterm=italic
    hi htmlBoldItalic cterm=NONE,bold,italic
    hi gitcommitComment cterm=italic
  endif
  finish
endif

" 16-color variant
let g:wwdc16_palette = ['#292c36', '#dc3c3c', '#52bd58', '#d28e5d', '#4670d8', '#b74989',
      \                   '#64878f', '#999999', '#333344', '#95c76f', '#efa16b',
      \                   '#5283ff', '#8485ce', '#00aba5', '#ffffff']

if !has('gui_running') && get(g:, 'wwdc16_transp_bg', 0)
  hi Normal ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=fg ctermbg=8 guifg=fg guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=7 ctermbg=8 guifg=#999999 guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=7 ctermbg=8 guifg=#999999 guibg=#333344 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=fg ctermbg=0 guifg=fg guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=fg ctermbg=4 guifg=fg guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=10 ctermbg=0 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=3 ctermbg=fg guifg=#d28e5d guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=1 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=2 ctermbg=fg guifg=#52bd58 guibg=fg guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Directory ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=8 ctermbg=NONE guifg=#333344 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=1 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=7 ctermbg=8 guifg=#999999 guibg=#333344 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=5 ctermbg=fg guifg=#b74989 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi MatchParen ctermfg=8 ctermbg=3 guifg=#333344 guibg=#d28e5d guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ModeMsg ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=0 ctermbg=6 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=8 ctermbg=8 guifg=#333344 guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=fg ctermbg=3 guifg=fg guibg=#d28e5d guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=8 ctermbg=3 guifg=#333344 guibg=#d28e5d guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=3 ctermbg=fg guifg=#d28e5d guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b74989 cterm=NONE,underline gui=NONE,undercurl
hi StatusLine ctermfg=6 ctermbg=fg guifg=#64878f guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=6 ctermbg=0 guifg=#64878f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=0 ctermbg=6 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=fg ctermbg=6 guifg=fg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=fg ctermbg=6 guifg=fg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VertSplit ctermfg=6 ctermbg=6 guifg=#64878f guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=4 ctermbg=fg guifg=#4670d8 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=fg ctermbg=4 guifg=fg guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=fg ctermbg=5 guifg=fg guibg=#b74989 guisp=NONE cterm=NONE gui=NONE
hi Boolean ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi Debug ctermfg=5 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=1 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi Float ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=2 ctermbg=NONE guifg=#52bd58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=2 ctermbg=NONE guifg=#52bd58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Macro PreProc
hi Number ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link PreCondit PreProc
hi PreProc ctermfg=5 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=5 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=5 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=5 ctermbg=NONE guifg=#b74989 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=6 ctermbg=8 guifg=#64878f guibg=#333344 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NormalMode ctermfg=7 ctermbg=fg guifg=#999999 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=10 ctermbg=0 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=3 ctermbg=0 guifg=#d28e5d guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=4 ctermbg=fg guifg=#4670d8 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=5 ctermbg=fg guifg=#b74989 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=fg ctermbg=7 guifg=fg guibg=#999999 guisp=NONE cterm=NONE gui=NONE
  let g:terminal_color_0='#292c36'
  let g:terminal_color_1='#dc3c3c'
  let g:terminal_color_2='#52bd58'
  let g:terminal_color_3='#d28e5d'
  let g:terminal_color_4='#4670d8'
  let g:terminal_color_5='#b74989'
  let g:terminal_color_6='#64878f'
  let g:terminal_color_7='#999999'
  let g:terminal_color_8='#333344'
  let g:terminal_color_9='#f84547'
  let g:terminal_color_10='#95c76f'
  let g:terminal_color_11='#efa16b'
  let g:terminal_color_12='#5283ff'
  let g:terminal_color_13='#8485ce'
  let g:terminal_color_14='#00aba5'
  let g:terminal_color_15='#ffffff'
endif
if get(g:, 'wwdc16_enable_syntax_hi_groups', 0)
  hi vimCommentTitle ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapModKey ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapMod ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimBracket ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimNotation ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link vimUserFunc Function
  hi gitcommitComment ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi markdownHeadingDelimiter ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownURL ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlItalic ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi htmlBold ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlBoldItalic ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link javascriptBraces Delimiter
  hi SyntasticErrorSign ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SyntasticWarningSign ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
if get(g:, "wwdc16_term_italics", 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
finish

" Color: black                rgb( 41,  44,  54)      ~        0
" Color: red                  rgb(220,  60,  60)      ~        1
" Color: green                rgb( 82, 189,  88)      ~        2
" Color: yellow               rgb(210, 142,  93)      ~        3
" Color: blue                 rgb( 70, 112, 216)      ~        4
" Color: magenta              rgb(183,  73, 137)      133      5
" Color: cyan                 rgb(100, 135, 143)      ~        6
" Color: white                rgb(153, 153, 153)      ~        7
" Color: brightblack          rgb( 51,  51,  68)      237      8
" Color: brightred            rgb(248,  69,  71)      ~        9
" Color: brightgreen          rgb(149, 199, 111)      ~        10
" Color: brightyellow         rgb(239, 161, 107)      ~        11
" Color: brightblue           rgb( 82, 131, 255)      ~        12
" Color: brightmagenta        rgb(132, 133, 206)      ~        13
" Color: brightcyan           rgb(  0, 171, 165)      ~        14
" Color: brightwhite          rgb(255, 255, 255)      ~        15
" Background: dark
"     Normal               brightwhite       none
"     CursorLineNr         fg                none
"     FoldColumn           white             none
"     LineNr               white             none
"     Terminal             fg                none
"     Normal               brightwhite       black
"     CursorLineNr         fg                brightblack
"     FoldColumn           white             brightblack
"     LineNr               white             brightblack
"     Terminal             fg                black
" ColorColumn          none              brightblack
" Conceal              cyan              none
" Cursor               fg                blue
" CursorColumn         none              brightblack
" CursorLine           none              brightblack
" DiffAdd              brightgreen       black             reverse
" DiffChange           yellow            fg                reverse
" DiffDelete           red               fg                reverse
" DiffText             green             fg                bold,reverse
" Directory            brightgreen       none
" EndOfBuffer          brightblack       none
" ErrorMsg             red               fg                reverse
" Folded               white             brightblack       g=italic
" IncSearch            magenta           fg                t=reverse g=standout
" MatchParen           brightblack       yellow            bold,reverse
" ModeMsg              fg                none
" MoreMsg              white             none
" NonText              fg                none
" Pmenu                black             cyan
" PmenuSbar            brightblack       brightblack
" PmenuSel             fg                yellow
" PmenuThumb           brightblack       yellow
" Question             white             none
" QuickFixLine     ->  Search
" Search               yellow            fg                reverse
" SignColumn           white             none
" SpecialKey           white             none
" SpellBad             brightmagenta     none              s=magenta t=underline g=undercurl
" SpellCap             brightmagenta     none              s=magenta t=underline g=undercurl
" SpellLocal           brightmagenta     none              s=magenta t=underline g=undercurl
" SpellRare            brightmagenta     none              s=magenta t=underline g=undercurl
" StatusLine           cyan              fg                reverse
" StatusLineNC         cyan              black             reverse
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" TabLine              black             cyan
" TabLineFill          fg                cyan
" TabLineSel           fg                cyan
" Title                yellow            none              bold
" VertSplit            cyan              cyan
" Visual               blue              fg                reverse
" VisualNOS            fg                blue
" WarningMsg           red               none
" WildMenu             fg                magenta
" Boolean              brightgreen       none
" Character            yellow            none
" Comment              white             none              g=italic
" Conditional       -> Statement
" Constant             yellow            none
" Define            -> PreProc
" Debug                magenta           none
" Delimiter            fg                none
" Error                red               fg                reverse
" Exception         -> Statement
" Float                brightgreen       none
" Function             green             none
" Identifier           brightcyan        none
" Ignore               fg                none
" Include              red               none
" Keyword              cyan              none
" Label                green             none
" Macro             -> PreProc
" Number               brightgreen       none
" Operator             brightcyan        none
" PreCondit         -> PreProc
" PreProc              magenta           none
" Repeat            -> Statement
" Special              magenta           none
" SpecialChar          magenta           none
" SpecialComment       red               none
" Statement            cyan              none
" StorageClass         brightcyan        none
" String               brightgreen       none
" Structure            red               none
" Tag               -> Special
" Todo                 magenta           none              bold
" Type                 brightmagenta     none
" Typedef           -> Type
" Underlined           none              none              underline
" lCursor           -> Cursor
" CursorIM             none              fg
" ToolbarLine          none              brightblack
" ToolbarButton        cyan              brightblack       bold
" NormalMode           white             fg                reverse
" InsertMode           brightgreen       black             reverse
" ReplaceMode          yellow            black             reverse
" VisualMode           blue              fg                reverse
" CommandMode          magenta           fg                reverse
" TermCursor        -> Cursor
" TermCursorNC         fg                white
" vimCommentTitle      red               none
" vimMapModKey         yellow            none
" vimMapMod            yellow            none
" vimBracket           brightcyan        none
" vimNotation          brightcyan        none
" vimUserFunc       -> Function
" gitcommitComment     white             none              g=italic
" markdownHeadingDelimiter yellow        none
" markdownURL          brightmagenta     none
" htmlItalic           fg                none              g=italic
" htmlBold             fg                none              bold
" htmlBoldItalic       fg                none              bold
" javascriptBraces  -> Delimiter
" SyntasticErrorSign   red               none
" SyntasticWarningSign yellow            none
