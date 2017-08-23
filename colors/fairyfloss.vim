set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'fairyfloss'

" UI

hi ColorColumn guifg=fg guibg=#a8a4b1 gui=NONE ctermfg=0
"hi Conceal
"hi Cursor
"hi CursorIM
hi CursorColumn guifg=NONE guibg=#716799 gui=NONE ctermfg=0
hi! link CursorLine CursorColumn
hi CursorLineNr guifg=#a8a4b1 guibg=#716799 gui=bold ctermfg=0 " fg is not defined on the original theme. It was taken using Digital Color Meter
hi Directory guifg=#c5a3ff guibg=NONE gui=NONE ctermfg=0
hi DiffAdd guifg=bg guibg=#c2ffdf gui=NONE ctermfg=0
hi DiffChange guifg=#f92672 guibg=#f8f8f0 gui=NONE ctermfg=0
hi DiffDelete guifg=#f92672 guibg=bg gui=NONE ctermfg=0
hi DiffText guifg=#f8f8f0 guibg=#f92672 gui=NONE ctermfg=0
hi ErrorMsg guifg=#f8f8f0 guibg=#f92672 gui=NONE ctermfg=0
"hi FoldColumn
hi Folded guifg=#8076aa guibg=NONE gui=NONE ctermfg=0
hi IncSearch guifg=bg guibg=#c2ffdf gui=NONE ctermfg=0
hi LineNr guifg=#a8a4b1 guibg=NONE gui=NONE ctermfg=0 " fg is not defined on the original theme. It was taken using Digital Color Meter
hi MatchParen guifg=#f8f8f0 guibg=#e6c000 gui=NONE ctermfg=0
"hi ModeMsg
hi MoreMsg guifg=#c2ffdf guibg=bg gui=NONE ctermfg=0
hi NonText guifg=#a8a4b1 guibg=NONE gui=NONE ctermfg=0 " fg is not defined on the original theme. It was taken using Digital Color Meter
hi Normal guifg=#f8f8f2 guibg=#5a5475 gui=NONE ctermfg=0
hi Pmenu guifg=fg guibg=#ff857f gui=NONE ctermfg=0
hi PmenuSel guifg=fg guibg=#ae81ff gui=NONE ctermfg=0
"hi PmenuSbar
"hi PmenuThumb
hi Question guifg=#c2ffdf guibg=bg gui=NONE ctermfg=0
"hi QuickFixLine
hi Search guifg=bg guibg=#c5a3ff gui=NONE ctermfg=0
hi SignColumn guifg=#a8a4b1 guibg=NONE gui=NONE ctermfg=0
"hi SpecialKey
hi SpellBad guifg=#f8f8f0 guibg=#f92672 gui=NONE ctermfg=0
"hi SpellCap
"hi SpellLocal
"hi SpellRare
hi StatusLine guifg=#a8a4b1 guibg=#373348 gui=NONE ctermfg=0
hi StatusLineNC guifg=#a8a4b1 guibg=#373348 gui=NONE ctermfg=0
hi Substitute guifg=#f8f8f0 guibg=#f92672 gui=NONE ctermfg=0
hi TabLine guifg=#a8a4b1 guibg=#373348 gui=NONE ctermfg=0
hi TabLineFill guifg=#a8a4b1 guibg=#373348 gui=NONE ctermfg=0
hi TabLineSel guifg=#a8a4b1 guibg=bg gui=NONE ctermfg=0
"hi TermCursor
"hi TermCursorNC
hi Title guifg=fg guibg=NONE gui=bold ctermfg=0
hi VertSplit guifg=#373348 guibg=#373348 gui=NONE ctermfg=0
hi Visual guifg=NONE guibg=#8077A8 gui=NONE ctermfg=0
hi WarningMsg guifg=#f8f8f0 guibg=#f92672 gui=NONE ctermfg=0
hi WildMenu guifg=bg guibg=#c2ffdf gui=bold ctermfg=0

" Text

hi Comment guifg=#e6c000 guibg=NONE gui=NONE ctermfg=0

hi Constant guifg=#c5a3ff guibg=NONE gui=NONE ctermfg=0
hi String guifg=#ffea00 guibg=NONE gui=NONE ctermfg=0
hi Character guifg=#c5a3ff guibg=NONE gui=NONE ctermfg=0
hi Number guifg=#c5a3ff guibg=NONE gui=NONE ctermfg=0
hi Boolean guifg=#c5a3ff guibg=NONE gui=NONE ctermfg=0
hi Float guifg=#c5a3ff guibg=NONE gui=NONE ctermfg=0

hi Identifier guifg=#c2ffdf guibg=NONE gui=italic ctermfg=0
hi Function guifg=#fff352 guibg=NONE gui=NONE ctermfg=0

hi Statement guifg=#ffb8d1 guibg=NONE gui=NONE ctermfg=0
hi Conditional guifg=#ffb8d1 guibg=NONE gui=NONE ctermfg=0
"hi Repeat
hi Label guifg=#ffea00 guibg=NONE gui=NONE ctermfg=0
hi Operator guifg=#ffb8d1 guibg=NONE gui=NONE ctermfg=0
hi Keyword guifg=#ffb8d1 guibg=NONE gui=NONE ctermfg=0
"hi Exception

hi PreProc guifg=#ffb8d1 guibg=NONE gui=NONE ctermfg=0
"hi Include
hi Define guifg=#ffb8d1 guibg=NONE gui=NONE ctermfg=0
"hi Macro
"hi PreCondit

hi Type guifg=#fff352 guibg=NONE gui=NONE ctermfg=0
hi StorageClass guifg=#ffb8d1 guibg=NONE gui=italic ctermfg=0
hi Structure guifg=#fff352 guibg=NONE gui=NONE ctermfg=0
"hi Typedef

hi Special guifg=#ff857f guibg=NONE gui=NONE ctermfg=0
"hi SpecialChar
hi Tag guifg=#ffb8d1 guibg=NONE gui=NONE ctermfg=0
"hi Delimiter
"hi SpecialComment
"hi Debug

hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=0

"hi Ignore

hi Error guifg=#f8f8f0 guibg=#f92672 gui=NONE

hi Todo guifg=#e6c000 guibg=NONE gui=inverse,bold

hi rubyClass guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyFunction guifg=#fff352 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter guifg=NONE guibg=NONE gui=NONE
hi rubySymbol guifg=#c5a3ff guibg=NONE gui=NONE
hi rubyConstant guifg=#c2ffdf guibg=NONE gui=italic
hi rubyStringDelimiter guifg=#ffea00 guibg=NONE gui=NONE
hi rubyBlockParameter guifg=#ff857f guibg=NONE gui=italic
hi rubyInstanceVariable guifg=NONE guibg=NONE gui=NONE
hi rubyInclude guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyGlobalVariable guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp guifg=#ffea00 guibg=NONE gui=NONE
hi rubyRegexpDelimiter guifg=#ffea00 guibg=NONE gui=NONE
hi rubyEscape guifg=#c5a3ff guibg=NONE gui=NONE
hi rubyControl guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyClassVariable guifg=NONE guibg=NONE gui=NONE
hi rubyOperator guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyException guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyPseudoVariable guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass guifg=#c2ffdf guibg=NONE gui=italic
hi rubyRailsARAssociationMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsARMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsRenderMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsMethod guifg=#c2ffdf guibg=NONE gui=NONE

hi erubyDelimiter guifg=NONE guibg=NONE gui=NONE
hi erubyComment guifg=#e6c000 guibg=NONE gui=NONE
hi erubyRailsMethod guifg=#c2ffdf guibg=NONE gui=NONE

hi htmlTag guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag guifg=NONE guibg=NONE gui=NONE
hi htmlTagName guifg=NONE guibg=NONE gui=NONE
hi htmlArg guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar guifg=#c5a3ff guibg=NONE gui=NONE

hi javaScriptFunction guifg=#c2ffdf guibg=NONE gui=italic
hi javaScriptRailsFunction guifg=#c2ffdf guibg=NONE gui=NONE
hi javaScriptBraces guifg=NONE guibg=NONE gui=NONE

hi yamlKey guifg=#ffb8d1 guibg=NONE gui=NONE
hi yamlAnchor guifg=NONE guibg=NONE gui=NONE
hi yamlAlias guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader guifg=#ffea00 guibg=NONE gui=NONE

hi cssURL guifg=#ff857f guibg=NONE gui=italic
hi cssFunctionName guifg=#c2ffdf guibg=NONE gui=NONE
hi cssColor guifg=#c5a3ff guibg=NONE gui=NONE
hi cssPseudoClassId guifg=#fff352 guibg=NONE gui=NONE
hi cssClassName guifg=#fff352 guibg=NONE gui=NONE
hi cssValueLength guifg=#c5a3ff guibg=NONE gui=NONE
hi cssCommonAttr guifg=#c2ffdf guibg=NONE gui=NONE
hi cssBraces guifg=NONE guibg=NONE gui=NONE
