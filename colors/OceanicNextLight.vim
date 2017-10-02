" ===============================================================
" OceanicNextLight
" 
" URL: 
" Author: Mike Hartington
" License: Apache
" Last Change: 2016/11/03 14:38
" ===============================================================

let g:colors_name="OceanicNextLight"
hi clear
if exists("syntax_on")
  syntax reset
endif
set background=light

hi Bold gui=bold cterm=bold
hi Debug guifg=#b40b11 ctermfg=124
hi Directory guifg=#526f93 ctermfg=60
hi ErrorMsg guifg=#b40b11 ctermfg=124 guibg=#d8dee9 ctermbg=253
hi Exception guifg=#b40b11 ctermfg=124
hi FoldColumn guibg=#cdd3de ctermbg=252
hi Folded guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252
hi IncSearch guifg=#cdd3de ctermfg=252 guibg=#b4713d ctermbg=131
hi Italic gui=italic cterm=italic
hi Macro guifg=#b40b11 ctermfg=124
hi MatchParen guifg=#4f5b66 ctermfg=240 guibg=#a7adba ctermbg=145
hi ModeMsg guifg=#869235 ctermfg=101
hi MoreMsg guifg=#869235 ctermfg=101
hi Question guifg=#526f93 ctermfg=60
hi Search guifg=#a7adba ctermfg=145 guibg=#a48c32 ctermbg=137
hi SpecialKey guifg=#a7adba ctermfg=145
hi TooLong guifg=#b40b11 ctermfg=124
hi Underlined guifg=#b40b11 ctermfg=124
hi Visual guibg=#c0c5ce ctermbg=251
hi VisualNOS guifg=#b40b11 ctermfg=124
hi WarningMsg guifg=#b40b11 ctermfg=124
hi WildMenu guifg=#ffffff ctermfg=15 guibg=#526f93 ctermbg=60
hi Title guifg=#526f93 ctermfg=60 gui=NONE cterm=NONE
hi Conceal guifg=#526f93 ctermfg=60 guibg=#d8dee9 ctermbg=253
hi Cursor guifg=#d8dee9 ctermfg=253 guibg=#4f5b66 ctermbg=240
hi NonText guifg=#a7adba ctermfg=145
hi Normal guifg=#4f5b66 ctermfg=240 guibg=#d8dee9 ctermbg=253
hi LineNr guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252
hi CursorLineNR guifg=#ffffff ctermfg=15 guibg=#ffffff ctermbg=15
hi SignColumn guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252
hi StatusLine guifg=#65737e ctermfg=243 guibg=#c0c5ce ctermbg=251 gui=NONE cterm=NONE
hi StatusLineNC guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi VertSplit guifg=#c0c5ce ctermfg=251 guibg=#c0c5ce ctermbg=251 gui=NONE cterm=NONE
hi ColorColumn guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi CursorColumn guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi CursorLine guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi CursorLineNr guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252
hi PMenu guifg=#65737e ctermfg=243 guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi PMenuSel guifg=#cdd3de ctermfg=252 guibg=#65737e ctermbg=243
hi PmenuSbar guibg=#c0c5ce ctermbg=251
hi PmenuThumb guibg=#1b2b34 ctermbg=235
hi TabLine guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi TabLineFill guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi TabLineSel guifg=#869235 ctermfg=101 guibg=#cdd3de ctermbg=252 gui=NONE cterm=NONE
hi Boolean guifg=#b4713d ctermfg=131
hi Character guifg=#b40b11 ctermfg=124
hi Comment guifg=#a7adba ctermfg=145 gui=italic cterm=italic
hi Conditional guifg=#896a98 ctermfg=96
hi Constant guifg=#b4713d ctermfg=131
hi Define guifg=#896a98 ctermfg=96 gui=NONE cterm=NONE
hi Delimiter guifg=#9a806d ctermfg=101
hi Float guifg=#b4713d ctermfg=131
hi Function guifg=#526f93 ctermfg=60
hi Identifier guifg=#b40b11 ctermfg=124 gui=NONE cterm=NONE
hi Include guifg=#526f93 ctermfg=60
hi Keyword guifg=#896a98 ctermfg=96
hi Label guifg=#a48c32 ctermfg=137
hi Number guifg=#b4713d ctermfg=131
hi Operator guifg=#4f5b66 ctermfg=240 gui=NONE cterm=NONE
hi PreProc guifg=#a48c32 ctermfg=137
hi Repeat guifg=#a48c32 ctermfg=137
hi Special guifg=#5b9c90 ctermfg=72
hi SpecialChar guifg=#9a806d ctermfg=101
hi Statement guifg=#b40b11 ctermfg=124
hi StorageClass guifg=#a48c32 ctermfg=137
hi String guifg=#869235 ctermfg=101
hi Structure guifg=#896a98 ctermfg=96
hi Tag guifg=#a48c32 ctermfg=137
hi Todo guifg=#a48c32 ctermfg=137 guibg=#cdd3de ctermbg=252
hi Type guifg=#a48c32 ctermfg=137 gui=NONE cterm=NONE
hi Typedef guifg=#a48c32 ctermfg=137
hi SpellBad guibg=#d8dee9 ctermbg=253 gui=undercurl cterm=undercurl
hi SpellLocal guibg=#d8dee9 ctermbg=253 gui=undercurl cterm=undercurl
hi SpellCap guibg=#d8dee9 ctermbg=253 gui=undercurl cterm=undercurl
hi SpellRare guibg=#d8dee9 ctermbg=253 gui=undercurl cterm=undercurl
hi csClass guifg=#a48c32 ctermfg=137
hi csAttribute guifg=#a48c32 ctermfg=137
hi csModifier guifg=#896a98 ctermfg=96
hi csType guifg=#b40b11 ctermfg=124
hi csUnspecifiedStatement guifg=#526f93 ctermfg=60
hi csContextualStatement guifg=#896a98 ctermfg=96
hi csNewDecleration guifg=#b40b11 ctermfg=124
hi cOperator guifg=#5b9c90 ctermfg=72
hi cPreCondit guifg=#896a98 ctermfg=96
hi cssColor guifg=#5b9c90 ctermfg=72
hi cssBraces guifg=#4f5b66 ctermfg=240
hi cssClassName guifg=#896a98 ctermfg=96
hi DiffAdd guifg=#869235 ctermfg=101 guibg=#cdd3de ctermbg=252
hi DiffChange guifg=#a7adba ctermfg=145 guibg=#cdd3de ctermbg=252
hi DiffDelete guifg=#b40b11 ctermfg=124 guibg=#cdd3de ctermbg=252
hi DiffText guifg=#526f93 ctermfg=60 guibg=#cdd3de ctermbg=252
hi DiffAdded guifg=#ffffff ctermfg=15 guibg=#869235 ctermbg=101
hi DiffFile guifg=#b40b11 ctermfg=124 guibg=#d8dee9 ctermbg=253
hi DiffNewFile guifg=#869235 ctermfg=101 guibg=#d8dee9 ctermbg=253
hi DiffLine guifg=#526f93 ctermfg=60 guibg=#d8dee9 ctermbg=253
hi DiffRemoved guifg=#ffffff ctermfg=15 guibg=#b40b11 ctermbg=124
hi gitCommitOverflow guifg=#b40b11 ctermfg=124
hi gitCommitSummary guifg=#869235 ctermfg=101
hi htmlBold guifg=#a48c32 ctermfg=137
hi htmlItalic guifg=#896a98 ctermfg=96
hi xmlTag guifg=#5b9c90 ctermfg=72 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEndTag guifg=#4f5b66 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#5b9c90 ctermfg=72
hi htmlEndTag guifg=#5b9c90 ctermfg=72
hi htmlArg guifg=#a48c32 ctermfg=137 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#1b2b34 ctermfg=235
hi javaScript guifg=#4f5b66 ctermfg=240
hi javaScriptNumber guifg=#b4713d ctermfg=131
hi javaScriptBraces guifg=#4f5b66 ctermfg=240
hi markdownCode guifg=#869235 ctermfg=101
hi markdownCodeBlock guifg=#869235 ctermfg=101
hi markdownHeadingDelimiter guifg=#526f93 ctermfg=60
hi markdownItalic guifg=#896a98 ctermfg=96 gui=italic cterm=italic
hi markdownBold guifg=#a48c32 ctermfg=137 gui=bold cterm=bold
hi markdownCodeDelimiter guifg=#9a806d ctermfg=101 gui=italic cterm=italic
hi markdownError guifg=#4f5b66 ctermfg=240 guibg=#d8dee9 ctermbg=253
hi NeomakeErrorSign guifg=#b40b11 ctermfg=124 guibg=#cdd3de ctermbg=252
hi NeomakeWarningSign guifg=#a48c32 ctermfg=137 guibg=#cdd3de ctermbg=252 gui=bold cterm=bold
hi NeomakeInfoSign guifg=#ffffff ctermfg=15 guibg=#cdd3de ctermbg=252
hi NeomakeError guifg=#b40b11 ctermfg=124 gui=undercurl cterm=undercurl
hi NeomakeWarning guifg=#b40b11 ctermfg=124 gui=undercurl cterm=undercurl
hi NERDTreeExecFile guifg=#4f5b66 ctermfg=240
hi NERDTreeDirSlash guifg=#526f93 ctermfg=60
hi NERDTreeOpenable guifg=#4f5b66 ctermfg=240 gui=bold cterm=bold
hi phpComparison guifg=#4f5b66 ctermfg=240
hi phpParent guifg=#4f5b66 ctermfg=240
hi phpMemberSelector guifg=#4f5b66 ctermfg=240
hi pythonRepeat guifg=#896a98 ctermfg=96
hi pythonOperator guifg=#896a98 ctermfg=96
hi rubyConstant guifg=#a48c32 ctermfg=137
hi rubySymbol guifg=#869235 ctermfg=101
hi rubyAttribute guifg=#526f93 ctermfg=60
hi rubyInterpolation guifg=#869235 ctermfg=101
hi rubyInterpolationDelimiter guifg=#9a806d ctermfg=101
hi rubyStringDelimiter guifg=#869235 ctermfg=101
hi rubyRegexp guifg=#5b9c90 ctermfg=72
hi sassidChar guifg=#b40b11 ctermfg=124
hi sassClassChar guifg=#b4713d ctermfg=131
hi sassInclude guifg=#896a98 ctermfg=96
hi sassMixing guifg=#896a98 ctermfg=96
hi sassMixinName guifg=#526f93 ctermfg=60
hi GitGutterAdd guifg=#869235 ctermfg=101 guibg=#cdd3de ctermbg=252
hi GitGutterChange guifg=#526f93 ctermfg=60 guibg=#cdd3de ctermbg=252
hi GitGutterDelete guifg=#b40b11 ctermfg=124 guibg=#cdd3de ctermbg=252
hi GitGutterChangeDelete guifg=#896a98 ctermfg=96 guibg=#cdd3de ctermbg=252
hi xmlTagName guifg=#4f5b66 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

let g:terminal_color_0 = "#d8dee9"
let g:terminal_color_1 = "#b40b11"
let g:terminal_color_2 = "#869235"
let g:terminal_color_3 = "#a48c32"
let g:terminal_color_4 = "#526f93"
let g:terminal_color_5 = "#896a98"
let g:terminal_color_6 = "#5b9c90"
let g:terminal_color_7 = "#1b2b34"
let g:terminal_color_8 = "#a7adba"
let g:terminal_color_9 = "#b40b11"
let g:terminal_color_10 = "#cdd3de"
let g:terminal_color_11 = "#c0c5ce"
let g:terminal_color_12 = "#65737e"
let g:terminal_color_13 = "#4f5b66"
let g:terminal_color_14 = "#9a806d"
let g:terminal_color_15 = "#1b2b34"
let g:terminal_color_background = "#d8dee9"
let g:terminal_color_foreground = "#1b2b34"

" ===================================
" Generated by Estilo 1.3.1
" https://github.com/jacoborus/estilo
" ===================================
