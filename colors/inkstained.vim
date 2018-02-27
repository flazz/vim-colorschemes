" Name:     inkstained.vim --- Inkstained theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/inkstained-vim
" Version:  0.3.0
" License:  MIT License

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'inkstained'

set background=light

hi Normal ctermfg=243 ctermbg=254 guifg=#697383 guibg=#e7e5e2
hi Cursor ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#555f6f gui=NONE
hi CursorIM ctermfg=NONE ctermbg=59 guifg=NONE guibg=#555f6f
hi CursorLine ctermfg=NONE ctermbg=188 cterm=bold guifg=NONE guibg=#dfddd7 gui=bold
hi CursorColumn ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#dfddd7 gui=NONE
hi Visual ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#dfddd7 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=243 ctermbg=188 cterm=NONE guifg=#697383 guibg=#dfddd7 gui=NONE
hi FoldColumn ctermfg=243 ctermbg=254 cterm=NONE guifg=#697383 guibg=#e7e5e2 gui=NONE
hi Title ctermfg=132 ctermbg=NONE cterm=bold guifg=#a05b89 guibg=NONE gui=bold
hi StatusLine ctermfg=243 ctermbg=251 cterm=NONE guifg=#697383 guibg=#d3d1cc gui=NONE
hi StatusLineNC ctermfg=247 ctermbg=188 cterm=NONE guifg=#929cad guibg=#dfddd7 gui=NONE
hi VertSplit ctermfg=188 ctermbg=188 cterm=NONE guifg=#dfddd7 guibg=#dfddd7 gui=NONE
hi LineNr ctermfg=145 ctermbg=188 cterm=NONE guifg=#bdbbb6 guibg=#dfddd7 gui=NONE
hi CursorLineNr ctermfg=59 ctermbg=251 cterm=bold guifg=#555f6f guibg=#d3d1cc gui=bold
hi SpecialKey ctermfg=188 ctermbg=66 cterm=bold guifg=#cbd7dc guibg=#5e99b1 gui=bold
hi NonText ctermfg=247 ctermbg=254 cterm=NONE guifg=#929cad guibg=#e7e5e2 gui=NONE
hi MatchParen ctermfg=132 ctermbg=NONE cterm=bold guifg=#aa586e guibg=NONE gui=bold
hi Comment ctermfg=247 cterm=NONE guifg=#929cad gui=NONE
hi Constant ctermfg=66 ctermbg=188 cterm=NONE guifg=#608f8e guibg=#cfd9d9 gui=NONE
hi Number ctermfg=66 ctermbg=188 cterm=NONE guifg=#5e99b1 guibg=#cbd7dc gui=NONE
hi Identifier ctermfg=59 cterm=bold guifg=#555f6f gui=bold
hi Function ctermfg=59 cterm=bold guifg=#555f6f gui=bold
hi Statement ctermfg=24 cterm=bold guifg=#56759a gui=bold
hi Operator ctermfg=132 cterm=NONE guifg=#a05b89 gui=NONE
hi Include ctermfg=60 cterm=NONE guifg=#7c6a93 gui=NONE
hi PreProc ctermfg=103 cterm=NONE guifg=#9784ae gui=NONE
hi Type ctermfg=132 cterm=NONE guifg=#a05b89 gui=NONE
hi StorageClass ctermfg=24 cterm=bold guifg=#56759a gui=bold
hi Structure ctermfg=132 cterm=NONE guifg=#a05b89 gui=NONE
hi Typedef ctermfg=24 cterm=bold guifg=#56759a gui=bold
hi Special ctermfg=67 ctermbg=NONE cterm=bold guifg=#7593bb guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=132 ctermbg=181 cterm=bold guifg=#aa586e guibg=#edb8c4 gui=bold
hi Todo ctermfg=243 ctermbg=254 cterm=bold guifg=#697383 guibg=#e7e5e2 gui=bold
hi IncSearch ctermfg=254 ctermbg=66 cterm=bold guifg=#e7e5e2 guibg=#5e99b1 gui=bold
hi Search ctermfg=254 ctermbg=30 cterm=NONE guifg=#e7e5e2 guibg=#447487 gui=NONE
hi Pmenu ctermfg=243 ctermbg=251 cterm=NONE guifg=#697383 guibg=#d3d1cc gui=NONE
hi PmenuSel ctermfg=59 ctermbg=145 cterm=bold guifg=#555f6f guibg=#bdbbb6 gui=bold
hi PmenuSbar ctermbg=188 cterm=NONE guibg=#dfddd7 gui=NONE
hi PmenuThumb ctermbg=247 cterm=NONE guibg=#929cad gui=NONE
hi TabLine ctermfg=243 ctermbg=254 cterm=NONE guifg=#697383 guibg=#e7e5e2 gui=NONE
hi TabLineSel ctermfg=254 ctermbg=132 cterm=bold guifg=#e7e5e2 guibg=#a05b89 gui=bold
hi TabLineFill ctermfg=243 ctermbg=254 cterm=NONE guifg=#697383 guibg=#e7e5e2 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=66 ctermbg=188 cterm=bold guifg=#5e99b1 guibg=#cbd7dc gui=bold
hi DiffChange ctermfg=175 ctermbg=188 cterm=NONE guifg=#b0789b guibg=#dcd1d8 gui=NONE
hi DiffDelete ctermfg=175 ctermbg=188 cterm=NONE guifg=#b0789b guibg=#dcd1d8 gui=NONE
hi DiffText ctermfg=132 ctermbg=188 cterm=bold guifg=#a05b89 guibg=#dcd1d8 gui=bold
hi diffAdded ctermfg=66 ctermbg=188 cterm=NONE guifg=#5e99b1 guibg=#cbd7dc gui=NONE
hi diffRemoved ctermfg=175 ctermbg=188 cterm=NONE guifg=#b0789b guibg=#dcd1d8 gui=NONE
hi Directory ctermfg=66 cterm=NONE guifg=#608f8e gui=NONE
hi ErrorMsg ctermfg=132 ctermbg=NONE cterm=NONE guifg=#aa586e guibg=NONE gui=NONE
hi SignColumn ctermfg=243 ctermbg=188 cterm=NONE guifg=#697383 guibg=#dfddd7 gui=NONE
hi MoreMsg ctermfg=24 cterm=NONE guifg=#56759a gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=132 cterm=NONE guifg=#aa586e gui=NONE
hi WildMenu ctermfg=59 ctermbg=247 cterm=bold guifg=#555f6f guibg=#929cad gui=bold
hi ColorColumn ctermfg=NONE ctermbg=181 cterm=NONE guifg=NONE guibg=#edb8c4 gui=NONE
hi GitGutterAdd ctermfg=66 ctermbg=188 cterm=bold guifg=#5e99b1 guibg=#cbd7dc gui=bold
hi GitGutterChange ctermfg=103 ctermbg=60 cterm=bold guifg=#9784ae guibg=#d7d3dc gui=bold
hi GitGutterDelete ctermfg=175 ctermbg=188 cterm=bold guifg=#b0789b guibg=#dcd1d8 gui=bold
hi GitGutterChangeDelete ctermfg=175 ctermbg=188 cterm=bold guifg=#b0789b guibg=#dcd1d8 gui=bold
hi GitGutterAddLine ctermfg=66 ctermbg=188 cterm=NONE guifg=#5e99b1 guibg=#cbd7dc gui=NONE
hi GitGutterChangeLine ctermfg=103 ctermbg=60 cterm=NONE guifg=#9784ae guibg=#d7d3dc gui=NONE
hi GitGutterDeleteLine ctermfg=175 ctermbg=188 cterm=NONE guifg=#b0789b guibg=#dcd1d8 gui=NONE
hi GitGutterChangeDeleteLine ctermfg=175 ctermbg=188 cterm=NONE guifg=#b0789b guibg=#dcd1d8 gui=NONE
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=67 guifg=#7593bb
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
