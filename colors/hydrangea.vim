" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  5.0.0
" License:  MIT License

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'hydrangea'

set background=dark

hi Normal ctermfg=252 ctermbg=235 guifg=#c3d5ec guibg=#1e222c
hi Cursor ctermfg=NONE ctermbg=255 cterm=NONE guifg=NONE guibg=#edf5ff gui=NONE
hi CursorIM ctermfg=NONE ctermbg=255 guifg=NONE guibg=#edf5ff
hi CursorLine ctermfg=NONE ctermbg=236 cterm=bold guifg=NONE guibg=#2a303b gui=bold
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#2a303b gui=NONE
hi Visual ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#3b4351 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=252 ctermbg=236 cterm=NONE guifg=#c3d5ec guibg=#2a303b gui=NONE
hi FoldColumn ctermfg=252 ctermbg=235 cterm=NONE guifg=#c3d5ec guibg=#1e222c gui=NONE
hi Title ctermfg=162 ctermbg=NONE cterm=bold guifg=#e242ac guibg=NONE gui=bold
hi StatusLine ctermfg=252 ctermbg=238 cterm=NONE guifg=#c3d5ec guibg=#3b4351 gui=NONE
hi StatusLineNC ctermfg=241 ctermbg=236 cterm=NONE guifg=#586374 guibg=#2a303b gui=NONE
hi VertSplit ctermfg=236 ctermbg=236 cterm=NONE guifg=#2a303b guibg=#2a303b gui=NONE
hi LineNr ctermfg=241 ctermbg=236 cterm=NONE guifg=#586374 guibg=#2a303b gui=NONE
hi CursorLineNr ctermfg=255 ctermbg=241 cterm=bold guifg=#edf5ff guibg=#586374 gui=bold
hi SpecialKey ctermfg=44 ctermbg=44 cterm=bold guifg=#064253 guibg=#169ec4 gui=bold
hi NonText ctermfg=241 ctermbg=235 cterm=NONE guifg=#586374 guibg=#1e222c gui=NONE
hi MatchParen ctermfg=197 ctermbg=NONE cterm=bold guifg=#e91e63 guibg=NONE gui=bold
hi Comment ctermfg=241 cterm=NONE guifg=#586374 gui=NONE
hi Constant ctermfg=44 ctermbg=23 cterm=NONE guifg=#36c2c2 guibg=#134242 gui=NONE
hi Number ctermfg=23 ctermbg=44 cterm=NONE guifg=#56c7ee guibg=#064253 gui=NONE
hi Identifier ctermfg=255 cterm=bold guifg=#edf5ff gui=bold
hi Function ctermfg=255 cterm=bold guifg=#edf5ff gui=bold
hi Statement ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Operator ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi Include ctermfg=98 cterm=NONE guifg=#996ddb gui=NONE
hi PreProc ctermfg=183 cterm=NONE guifg=#c398fe gui=NONE
hi Type ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi StorageClass ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Structure ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi Typedef ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Special ctermfg=111 ctermbg=NONE cterm=bold guifg=#8baafe guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=197 ctermbg=52 cterm=bold guifg=#e91e63 guibg=#681c36 gui=bold
hi Todo ctermfg=252 ctermbg=235 cterm=bold guifg=#c3d5ec guibg=#1e222c gui=bold
hi IncSearch ctermfg=235 ctermbg=44 cterm=bold guifg=#1e222c guibg=#169ec4 gui=bold
hi Search ctermfg=235 ctermbg=23 cterm=NONE guifg=#1e222c guibg=#56c7ee gui=NONE
hi Pmenu ctermfg=252 ctermbg=236 cterm=NONE guifg=#c3d5ec guibg=#2a303b gui=NONE
hi PmenuSel ctermfg=255 ctermbg=238 cterm=bold guifg=#edf5ff guibg=#3b4351 gui=bold
hi PmenuSbar ctermbg=236 cterm=NONE guibg=#2a303b gui=NONE
hi PmenuThumb ctermbg=241 cterm=NONE guibg=#586374 gui=NONE
hi TabLine ctermfg=252 ctermbg=235 cterm=NONE guifg=#c3d5ec guibg=#1e222c gui=NONE
hi TabLineSel ctermfg=235 ctermbg=162 cterm=bold guifg=#1e222c guibg=#e242ac gui=bold
hi TabLineFill ctermfg=252 ctermbg=235 cterm=NONE guifg=#c3d5ec guibg=#1e222c gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=44 ctermbg=44 cterm=NONE guifg=#169ec4 guibg=#064253 gui=NONE
hi DiffChange ctermfg=162 ctermbg=162 cterm=NONE guifg=#e242ac guibg=#68024b gui=NONE
hi DiffDelete ctermfg=162 ctermbg=162 cterm=NONE guifg=#e242ac guibg=#68024b gui=NONE
hi DiffText ctermfg=162 ctermbg=162 cterm=bold guifg=#ffc3e4 guibg=#68024b gui=bold
hi diffAdded ctermfg=44 ctermbg=44 cterm=NONE guifg=#169ec4 guibg=#064253 gui=NONE
hi diffRemoved ctermfg=162 ctermbg=162 cterm=NONE guifg=#e242ac guibg=#68024b gui=NONE
hi Directory ctermfg=44 cterm=NONE guifg=#36c2c2 gui=NONE
hi ErrorMsg ctermfg=197 ctermbg=NONE cterm=NONE guifg=#e91e63 guibg=NONE gui=NONE
hi SignColumn ctermfg=252 ctermbg=236 cterm=NONE guifg=#c3d5ec guibg=#2a303b gui=NONE
hi MoreMsg ctermfg=68 cterm=NONE guifg=#537dd5 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=197 cterm=NONE guifg=#e91e63 gui=NONE
hi WildMenu ctermfg=255 ctermbg=241 cterm=bold guifg=#edf5ff guibg=#586374 gui=bold
hi ColorColumn ctermfg=NONE ctermbg=52 cterm=NONE guifg=NONE guibg=#681c36 gui=NONE
hi GitGutterAdd ctermfg=44 ctermbg=236 cterm=bold guifg=#169ec4 guibg=#2a303b gui=bold
hi GitGutterChange ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
hi GitGutterDelete ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=111 guifg=#8baafe
hi vimVar NONE
hi link String Constant
hi link makeIdent Type
hi link makeSpecTarget Special
hi link makeTarget Function
hi link makeCommands NONE
hi link phpVarSelector Identifier
hi link phpIdentifier NONE
hi link phpFunctions NONE
hi link phpClasses NONE
hi link phpFunction Function
hi link phpClass Type
hi link rustQuestionMark Operator
hi link vimVar NONE
