" Vim color file
" Converted from Textmate theme Oceanic Next using Coloration v0.3.4 (http://github.com/sickill/coloration)
" Maintainer:	Yosi Attias <yosy101@gmail.com>
" Last Change:	2015/05/09
" URL:	https://github.com/yosiat/oceanic-next-vim

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "OceanicNext"

hi Cursor guifg=#1b2b34 ctermfg=235 guibg=#c0c5ce ctermbg=251 gui=NONE
hi Visual guifg=NONE guibg=#4f5b66 ctermbg=240 gui=NONE
hi CursorColumn guifg=NONE guibg=#2d3c45 ctermbg=237 gui=NONE
hi ColorColumn guifg=NONE guibg=#2d3c45 ctermbg=237 gui=NONE
hi LineNr guifg=#747f89 ctermfg=8 guibg=#2d3c45 ctermbg=237 gui=NONE
hi VertSplit guifg=#4f5c65 ctermfg=240 guibg=#4f5c65 ctermbg=240 gui=NONE
hi MatchParen guifg=#c594c5 ctermfg=176 guibg=NONE gui=underline
hi StatusLine guifg=#cdd3de ctermfg=188 guibg=#4f5c65 ctermbg=240 gui=bold
hi StatusLineNC guifg=#cdd3de ctermfg=188 guibg=#4f5c65 ctermbg=240 gui=NONE
hi Pmenu guifg=NONE guibg=NONE gui=NONE
hi PmenuSel guifg=NONE guibg=#4f5b66 ctermbg=240 gui=NONE
hi IncSearch guifg=#1b2b34 ctermfg=235 guibg=#99c794 ctermbg=114 gui=NONE
hi Search guifg=NONE guibg=NONE gui=underline
hi Directory guifg=#99c794 ctermfg=114 guibg=NONE gui=NONE
hi Folded guifg=#65737e ctermfg=243 guibg=#1b2b34 ctermbg=235 gui=NONE



hi Normal guifg=#cdd3de guibg=#1b2b34 ctermbg=235 ctermfg=188 
hi Boolean guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi Character guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi Comment guifg=#65737e ctermfg=243 guibg=NONE gui=NONE
hi Conditional guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi Constant guifg=NONE guibg=NONE gui=NONE
hi Define guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi DiffAdd guifg=#cdd3de ctermfg=188 guibg=#44840f ctermbg=64 gui=bold
hi DiffDelete guifg=#89090a ctermfg=88 guibg=NONE gui=NONE
hi DiffChange guifg=#cdd3de ctermfg=188 guibg=#1e3b5e ctermbg=237 gui=NONE
hi DiffText guifg=#cdd3de ctermfg=188 guibg=#204a87 ctermbg=24 gui=bold
hi ErrorMsg guifg=NONE guibg=NONE gui=NONE
hi WarningMsg guifg=NONE guibg=NONE gui=NONE
hi Float guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi Function guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi Identifier guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi Keyword guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi Type guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi Special guifg=#6699cc ctermfg=68 guibg=NONE gui=italic
hi Label guifg=#99c794 ctermfg=114 guibg=NONE gui=NONE
hi NonText guifg=#65737e ctermfg=243 guibg=#24333d ctermbg=236 gui=NONE
hi Number guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi Operator guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi PreProc guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi SpecialKey guifg=#65737e ctermfg=243 guibg=#2d3c45 ctermbg=237 gui=NONE
hi Statement guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi StorageClass guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi String guifg=#99c794 ctermfg=114 guibg=NONE gui=NONE
hi Tag guifg=#eb606b ctermfg=167 guibg=NONE gui=NONE
hi Title guifg=#cdd3de ctermfg=188 guibg=NONE gui=bold
hi Todo guifg=#65737e ctermfg=243 guibg=NONE gui=inverse,bold
hi Underlined guifg=NONE guibg=NONE gui=underline
hi rubyClass guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi rubyFunction guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter guifg=NONE guibg=NONE gui=NONE
hi rubySymbol guifg=#99c794 ctermfg=114 guibg=NONE gui=NONE
hi rubyConstant guifg=#fac863 ctermfg=221 guibg=NONE gui=NONE
hi rubyStringDelimiter guifg=#99c794 ctermfg=114 guibg=NONE gui=NONE
hi rubyBlockParameter guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi rubyInstanceVariable guifg=#ec5f67 ctermfg=203 guibg=NONE gui=italic
hi rubyInclude guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi rubyGlobalVariable guifg=#cdd3de ctermfg=188 guibg=NONE gui=NONE
hi rubyRegexp guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi rubyRegexpDelimiter guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi rubyEscape guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi rubyControl guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi rubyClassVariable guifg=#cdd3de ctermfg=188 guibg=NONE gui=NONE
hi rubyOperator guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi rubyException guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi rubyPseudoVariable guifg=#ec5f67 ctermfg=203 guibg=NONE gui=italic
hi rubyRailsUserClass guifg=#fac863 ctermfg=221 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi rubyRailsARMethod guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi rubyRailsRenderMethod guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi rubyRailsMethod guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi erubyDelimiter guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi erubyComment guifg=#65737e ctermfg=243 guibg=NONE gui=NONE
hi erubyRailsMethod guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi htmlTag guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi htmlEndTag guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi htmlTagName guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi htmlArg guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi htmlSpecialChar guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi javaScriptFunction guifg=#c594c5 ctermfg=176 guibg=NONE gui=NONE
hi javaScriptRailsFunction guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi javaScriptBraces guifg=NONE guibg=NONE gui=NONE
hi yamlKey guifg=#eb606b ctermfg=167 guibg=NONE gui=NONE
hi yamlAnchor guifg=#cdd3de ctermfg=188 guibg=NONE gui=NONE
hi yamlAlias guifg=#cdd3de ctermfg=188 guibg=NONE gui=NONE
hi yamlDocumentHeader guifg=#99c794 ctermfg=114 guibg=NONE gui=NONE
hi cssURL guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi cssFunctionName guifg=#6699cc ctermfg=68 guibg=NONE gui=NONE
hi cssColor guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
hi cssPseudoClassId guifg=#bb80b3 ctermfg=139 guibg=NONE gui=NONE
hi cssClassName guifg=#bb80b3 ctermfg=139 guibg=NONE gui=NONE
hi cssValueLength guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi cssCommonAttr guifg=#f99157 ctermfg=209 guibg=NONE gui=NONE
hi cssBraces guifg=#5fb3b3 ctermfg=73 guibg=NONE gui=NONE
