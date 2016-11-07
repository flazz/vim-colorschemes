" ===============================================================
" OceanicNext
" 
" URL: 
" Author: Mike Hartington
" License: Apache
" Last Change: 2016/10/26 09:18
" ===============================================================

let g:colors_name="OceanicNext"
hi clear
if exists("syntax_on")
  syntax reset
endif
set background=dark

hi Bold gui=bold cterm=bold
hi Debug guifg=#ec5f67 ctermfg=203
hi Directory guifg=#6699cc ctermfg=68
hi ErrorMsg guifg=#ec5f67 ctermfg=203 guibg=#1b2b34 ctermbg=235
hi Exception guifg=#ec5f67 ctermfg=203
hi FoldColumn guibg=#343d46 ctermbg=237
hi Folded guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
hi IncSearch guifg=#343d46 ctermfg=237 guibg=#f99157 ctermbg=209
hi Italic gui=italic cterm=italic
hi Macro guifg=#ec5f67 ctermfg=203
hi MatchParen guifg=#c0c5ce ctermfg=251 guibg=#65737e ctermbg=243
hi ModeMsg guifg=#99c794 ctermfg=114
hi MoreMsg guifg=#99c794 ctermfg=114
hi Question guifg=#6699cc ctermfg=68
hi Search guifg=#65737e ctermfg=243 guibg=#fac863 ctermbg=221
hi SpecialKey guifg=#65737e ctermfg=243
hi TooLong guifg=#ec5f67 ctermfg=203
hi Underlined guifg=#ec5f67 ctermfg=203
hi Visual guibg=#4f5b66 ctermbg=240
hi VisualNOS guifg=#ec5f67 ctermfg=203
hi WarningMsg guifg=#ec5f67 ctermfg=203
hi WildMenu guifg=#ffffff ctermfg=15 guibg=#6699cc ctermbg=68
hi Title guifg=#6699cc ctermfg=68 gui=NONE cterm=NONE
hi Conceal guifg=#6699cc ctermfg=68 guibg=#1b2b34 ctermbg=235
hi Cursor guifg=#1b2b34 ctermfg=235 guibg=#c0c5ce ctermbg=251
hi NonText guifg=#65737e ctermfg=243
hi Normal guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
hi LineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
hi CursorLineNR guifg=#ffffff ctermfg=15 guibg=#ffffff ctermbg=15
hi SignColumn guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
hi StatusLine guifg=#a7adba ctermfg=145 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE
hi StatusLineNC guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi VertSplit guifg=#4f5b66 ctermfg=240 guibg=#4f5b66 ctermbg=240 gui=NONE cterm=NONE
hi ColorColumn guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi CursorColumn guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi CursorLine guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi CursorLineNr guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
hi PMenu guifg=#a7adba ctermfg=145 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi PMenuSel guifg=#343d46 ctermfg=237 guibg=#a7adba ctermbg=145
hi PmenuSbar guibg=#4f5b66 ctermbg=240
hi PmenuThumb guibg=#d8dee9 ctermbg=253
hi TabLine guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi TabLineFill guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi TabLineSel guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237 gui=NONE cterm=NONE
hi Boolean guifg=#f99157 ctermfg=209
hi Character guifg=#ec5f67 ctermfg=203
hi Comment guifg=#65737e ctermfg=243 gui=italic cterm=italic
hi Conditional guifg=#c594c5 ctermfg=176
hi Constant guifg=#f99157 ctermfg=209
hi Define guifg=#c594c5 ctermfg=176 gui=NONE cterm=NONE
hi Delimiter guifg=#ab7967 ctermfg=137
hi Float guifg=#f99157 ctermfg=209
hi Function guifg=#6699cc ctermfg=68
hi Identifier guifg=#ec5f67 ctermfg=203 gui=NONE cterm=NONE
hi Include guifg=#6699cc ctermfg=68
hi Keyword guifg=#c594c5 ctermfg=176
hi Label guifg=#fac863 ctermfg=221
hi Number guifg=#f99157 ctermfg=209
hi Operator guifg=#c0c5ce ctermfg=251 gui=NONE cterm=NONE
hi PreProc guifg=#fac863 ctermfg=221
hi Repeat guifg=#fac863 ctermfg=221
hi Special guifg=#5fb3b3 ctermfg=73
hi SpecialChar guifg=#ab7967 ctermfg=137
hi Statement guifg=#ec5f67 ctermfg=203
hi StorageClass guifg=#fac863 ctermfg=221
hi String guifg=#99c794 ctermfg=114
hi Structure guifg=#c594c5 ctermfg=176
hi Tag guifg=#fac863 ctermfg=221
hi Todo guifg=#fac863 ctermfg=221 guibg=#343d46 ctermbg=237
hi Type guifg=#fac863 ctermfg=221 gui=NONE cterm=NONE
hi Typedef guifg=#fac863 ctermfg=221
hi SpellBad guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
hi SpellLocal guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
hi SpellCap guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
hi SpellRare guibg=#1b2b34 ctermbg=235 gui=undercurl cterm=undercurl
hi csClass guifg=#fac863 ctermfg=221
hi csAttribute guifg=#fac863 ctermfg=221
hi csModifier guifg=#c594c5 ctermfg=176
hi csType guifg=#ec5f67 ctermfg=203
hi csUnspecifiedStatement guifg=#6699cc ctermfg=68
hi csContextualStatement guifg=#c594c5 ctermfg=176
hi csNewDecleration guifg=#ec5f67 ctermfg=203
hi cOperator guifg=#5fb3b3 ctermfg=73
hi cPreCondit guifg=#c594c5 ctermfg=176
hi cssColor guifg=#5fb3b3 ctermfg=73
hi cssBraces guifg=#c0c5ce ctermfg=251
hi cssClassName guifg=#c594c5 ctermfg=176
hi DiffAdd guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237
hi DiffChange guifg=#65737e ctermfg=243 guibg=#343d46 ctermbg=237
hi DiffDelete guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
hi DiffText guifg=#6699cc ctermfg=68 guibg=#343d46 ctermbg=237
hi DiffAdded guifg=#ffffff ctermfg=15 guibg=#99c794 ctermbg=114
hi DiffFile guifg=#ec5f67 ctermfg=203 guibg=#1b2b34 ctermbg=235
hi DiffNewFile guifg=#99c794 ctermfg=114 guibg=#1b2b34 ctermbg=235
hi DiffLine guifg=#6699cc ctermfg=68 guibg=#1b2b34 ctermbg=235
hi DiffRemoved guifg=#ffffff ctermfg=15 guibg=#ec5f67 ctermbg=203
hi gitCommitOverflow guifg=#ec5f67 ctermfg=203
hi gitCommitSummary guifg=#99c794 ctermfg=114
hi htmlBold guifg=#fac863 ctermfg=221
hi htmlItalic guifg=#c594c5 ctermfg=176
hi xmlTag guifg=#6699cc ctermfg=68
hi xmlEndTag guifg=#6699cc ctermfg=68
hi htmlTag guifg=#c0c5ce ctermfg=251
hi htmlEndTag guifg=#c0c5ce ctermfg=251
hi htmlTagName guifg=#c0c5ce ctermfg=251
hi javaScript guifg=#c0c5ce ctermfg=251
hi javaScriptNumber guifg=#f99157 ctermfg=209
hi javaScriptBraces guifg=#c0c5ce ctermfg=251
hi markdownCode guifg=#99c794 ctermfg=114
hi markdownCodeBlock guifg=#99c794 ctermfg=114
hi markdownHeadingDelimiter guifg=#6699cc ctermfg=68
hi markdownItalic guifg=#c594c5 ctermfg=176 gui=italic cterm=italic
hi markdownBold guifg=#fac863 ctermfg=221 gui=bold cterm=bold
hi markdownCodeDelimiter guifg=#ab7967 ctermfg=137 gui=italic cterm=italic
hi markdownError guifg=#c0c5ce ctermfg=251 guibg=#1b2b34 ctermbg=235
hi NeomakeErrorSign guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
hi NeomakeWarningSign guifg=#fac863 ctermfg=221 guibg=#343d46 ctermbg=237 gui=bold cterm=bold
hi NeomakeInfoSign guifg=#ffffff ctermfg=15 guibg=#343d46 ctermbg=237
hi NeomakeError guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl
hi NeomakeWarning guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl
hi NERDTreeExecFile guifg=#c0c5ce ctermfg=251
hi NERDTreeDirSlash guifg=#6699cc ctermfg=68
hi NERDTreeOpenable guifg=#c0c5ce ctermfg=251 gui=bold cterm=bold
hi phpComparison guifg=#c0c5ce ctermfg=251
hi phpParent guifg=#c0c5ce ctermfg=251
hi phpMemberSelector guifg=#c0c5ce ctermfg=251
hi pythonRepeat guifg=#c594c5 ctermfg=176
hi pythonOperator guifg=#c594c5 ctermfg=176
hi rubyConstant guifg=#fac863 ctermfg=221
hi rubySymbol guifg=#99c794 ctermfg=114
hi rubyAttribute guifg=#6699cc ctermfg=68
hi rubyInterpolation guifg=#99c794 ctermfg=114
hi rubyInterpolationDelimiter guifg=#ab7967 ctermfg=137
hi rubyStringDelimiter guifg=#99c794 ctermfg=114
hi rubyRegexp guifg=#5fb3b3 ctermfg=73
hi sassidChar guifg=#ec5f67 ctermfg=203
hi sassClassChar guifg=#f99157 ctermfg=209
hi sassInclude guifg=#c594c5 ctermfg=176
hi sassMixing guifg=#c594c5 ctermfg=176
hi sassMixinName guifg=#6699cc ctermfg=68
hi GitGutterAdd guifg=#99c794 ctermfg=114 guibg=#343d46 ctermbg=237
hi GitGutterChange guifg=#6699cc ctermfg=68 guibg=#343d46 ctermbg=237
hi GitGutterDelete guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
hi GitGutterChangeDelete guifg=#c594c5 ctermfg=176 guibg=#343d46 ctermbg=237


" ===================================
" Generated by Estilo 1.3.0
" https://github.com/jacoborus/estilo
" ===================================
