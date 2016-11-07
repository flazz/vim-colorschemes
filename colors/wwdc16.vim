" Name: WWDC16 colorscheme
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License: This file is placed in the public domain

hi clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'wwdc16'
set background=dark

if !has('gui_running') && get(g:, "wwdc16_term_trans_bg", 0)
  hi Normal ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
else
  hi Normal ctermfg=15 ctermbg=0 cterm=NONE guifg=#ffffff guibg=#292c36 gui=NONE
endif

hi ColorColumn ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#333333 gui=NONE guisp=NONE
hi Conceal ctermfg=2 ctermbg=NONE cterm=NONE guifg=#64878f guibg=NONE gui=NONE guisp=NONE
hi Cursor ctermfg=NONE ctermbg=15 cterm=NONE guifg=NONE guibg=#ffffff gui=NONE guisp=NONE
hi CursorIM ctermfg=NONE ctermbg=15 cterm=NONE guifg=NONE guibg=#ffffff gui=NONE guisp=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#333333 gui=NONE guisp=NONE
hi CursorLine ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#333333 gui=NONE guisp=NONE
hi CursorLineNr ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi DiffAdd ctermfg=11 ctermbg=0 cterm=NONE,reverse guifg=#95c76f guibg=#292c36 gui=NONE,reverse guisp=NONE
hi DiffChange ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#d28e5d guibg=#ffffff gui=NONE,reverse guisp=NONE
hi DiffDelete ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#dc3c3c guibg=#ffffff gui=NONE,reverse guisp=NONE
hi DiffText ctermfg=10 ctermbg=15 cterm=NONE,bold,reverse guifg=#52bd58 guibg=#ffffff gui=NONE,bold,reverse guisp=NONE
hi Directory ctermfg=11 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi EndOfBuffer ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi Error ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#dc3c3c guibg=#ffffff gui=NONE,reverse guisp=NONE
hi ErrorMsg ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#dc3c3c guibg=#ffffff gui=NONE,reverse guisp=NONE
hi FoldColumn ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi Folded ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi IncSearch ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#d28e5d guibg=#ffffff gui=NONE,standout guisp=NONE
hi LineNr ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi MatchParen ctermfg=13 ctermbg=15 cterm=NONE,bold,reverse guifg=#8485ce guibg=#ffffff gui=NONE,bold,reverse guisp=NONE
hi ModeMsg ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi MoreMsg ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi NonText ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi Pmenu ctermfg=0 ctermbg=2 cterm=NONE guifg=#292c36 guibg=#64878f gui=NONE guisp=NONE
hi PmenuSbar ctermfg=9 ctermbg=8 cterm=NONE guifg=#666666 guibg=#333333 gui=NONE guisp=NONE
hi PmenuSel ctermfg=15 ctermbg=3 cterm=NONE guifg=#ffffff guibg=#d28e5d gui=NONE guisp=NONE
hi PmenuThumb ctermfg=9 ctermbg=3 cterm=NONE guifg=#666666 guibg=#d28e5d gui=NONE guisp=NONE
hi Question ctermfg=7 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=NONE guisp=NONE
hi Search ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#d28e5d guibg=#ffffff gui=NONE,reverse guisp=NONE
hi SignColumn ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi SpecialKey ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE cterm=NONE,underline guifg=NONE guibg=NONE gui=NONE,undercurl guisp=#b73999
hi SpellCap ctermfg=13 ctermbg=NONE cterm=NONE,underline guifg=#8485ce guibg=NONE gui=NONE,undercurl guisp=#b73999
hi SpellLocal ctermfg=13 ctermbg=NONE cterm=NONE,underline guifg=#8485ce guibg=NONE gui=NONE,undercurl guisp=#b73999
hi SpellRare ctermfg=13 ctermbg=NONE cterm=NONE,underline guifg=#8485ce guibg=NONE gui=NONE,undercurl guisp=#b73999
hi StatusLine ctermfg=2 ctermbg=15 cterm=NONE,reverse guifg=#64878f guibg=#ffffff gui=NONE,reverse guisp=NONE
hi StatusLineNC ctermfg=2 ctermbg=0 cterm=NONE,reverse guifg=#64878f guibg=#292c36 gui=NONE,reverse guisp=NONE
hi TabLine ctermfg=0 ctermbg=2 cterm=NONE guifg=#292c36 guibg=#64878f gui=NONE guisp=NONE
hi TabLineFill ctermfg=0 ctermbg=2 cterm=NONE guifg=#292c36 guibg=#64878f gui=NONE guisp=NONE
hi TabLineSel ctermfg=15 ctermbg=2 cterm=NONE guifg=#ffffff guibg=#64878f gui=NONE guisp=NONE
hi Title ctermfg=3 ctermbg=NONE cterm=NONE,bold guifg=#d28e5d guibg=NONE gui=NONE,bold guisp=NONE
hi VertSplit ctermfg=2 ctermbg=2 cterm=NONE guifg=#64878f guibg=#64878f gui=NONE guisp=NONE
hi Visual ctermfg=4 ctermbg=15 cterm=NONE,reverse guifg=#4670d8 guibg=#ffffff gui=NONE,reverse guisp=NONE
hi VisualNOS ctermfg=15 ctermbg=4 cterm=NONE guifg=#ffffff guibg=#4670d8 gui=NONE guisp=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE guifg=#ffffff guibg=#b73999 gui=NONE guisp=NONE
hi Boolean ctermfg=11 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Character ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi Comment ctermfg=7 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=NONE,italic guisp=NONE
hi Constant ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi Debug ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi Delimiter ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi Float ctermfg=11 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Function ctermfg=10 ctermbg=NONE cterm=NONE guifg=#52bd58 guibg=NONE gui=NONE guisp=NONE
hi Identifier ctermfg=6 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi Ignore ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi Include ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi Keyword ctermfg=2 ctermbg=NONE cterm=NONE guifg=#64878f guibg=NONE gui=NONE guisp=NONE
hi Label ctermfg=10 ctermbg=NONE cterm=NONE guifg=#52bd58 guibg=NONE gui=NONE guisp=NONE
hi Number ctermfg=11 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Operator ctermfg=6 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi PreProc ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi Special ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi SpecialChar ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi SpecialComment ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi Statement ctermfg=2 ctermbg=NONE cterm=NONE guifg=#64878f guibg=NONE gui=NONE guisp=NONE
hi StorageClass ctermfg=6 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi String ctermfg=11 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Structure ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi Todo ctermfg=5 ctermbg=NONE cterm=NONE,bold guifg=#b73999 guibg=NONE gui=NONE,bold guisp=NONE
hi Type ctermfg=13 ctermbg=NONE cterm=NONE guifg=#8485ce guibg=NONE gui=NONE guisp=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=NONE,underline guifg=NONE guibg=NONE gui=NONE,underline guisp=NONE
hi WWDC16Black ctermfg=0 ctermbg=NONE cterm=NONE guifg=#292c36 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Red ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi WWDC16Forestgreen ctermfg=2 ctermbg=NONE cterm=NONE guifg=#64878f guibg=NONE gui=NONE guisp=NONE
hi WWDC16Orange ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi WWDC16Blue ctermfg=4 ctermbg=NONE cterm=NONE guifg=#4670d8 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Fusia ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Bluegreen ctermfg=6 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Grey3 ctermfg=7 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Grey1 ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333333 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Grey2 ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Green ctermfg=10 ctermbg=NONE cterm=NONE guifg=#52bd58 guibg=NONE gui=NONE guisp=NONE
hi WWDC16Mintgreen ctermfg=11 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi WWDC16Purple ctermfg=13 ctermbg=NONE cterm=NONE guifg=#8485ce guibg=NONE gui=NONE guisp=NONE
hi WWDC16White ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi NormalMode ctermfg=9 ctermbg=15 cterm=NONE,reverse guifg=#666666 guibg=#ffffff gui=NONE,reverse guisp=NONE
hi InsertMode ctermfg=11 ctermbg=0 cterm=NONE,reverse guifg=#95c76f guibg=#292c36 gui=NONE,reverse guisp=NONE
hi ReplaceMode ctermfg=3 ctermbg=0 cterm=NONE,reverse guifg=#d28e5d guibg=#292c36 gui=NONE,reverse guisp=NONE
hi VisualMode ctermfg=4 ctermbg=15 cterm=NONE,reverse guifg=#4670d8 guibg=#ffffff gui=NONE,reverse guisp=NONE
hi CommandMode ctermfg=5 ctermbg=15 cterm=NONE,reverse guifg=#b73999 guibg=#ffffff gui=NONE,reverse guisp=NONE
hi vimMapModKey ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi vimMapMod ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi vimBracket ctermfg=6 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi vimNotation ctermfg=6 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi! link vimUserFunc Function
hi gitcommitComment ctermfg=9 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE,italic guisp=NONE
hi markdownHeadingDelimiter ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi markdownURL ctermfg=13 ctermbg=NONE cterm=NONE guifg=#8485ce guibg=NONE gui=NONE guisp=NONE
hi! link javascriptBraces Delimiter
hi SyntasticErrorSign ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi SyntasticWarningSign ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
if get(g:, "wwdc16_term_italics", 0)
  hi Comment cterm=italic
  hi gitcommitComment cterm=italic
endif
