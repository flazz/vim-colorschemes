" Adventurous Theme v1.0.0
"
" https://github.com/philpl/vim-adventurous
"
" Licensed under the CC0-1.0 license
"
" @author Phil Plueckthun <phil@plckthn.me>
"
set background=dark
highlight clear
if exists("syntax_on")
syntax reset
endif
let g:colors_name = "adventurous"

hi Cursor ctermfg=234 ctermbg=255 cterm=NONE guifg=#191B1F guibg=#F8F8F2 gui=NONE
hi Visual ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#404449 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#404449 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#404449 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#404449 gui=NONE
hi VertSplit ctermfg=238 ctermbg=238 cterm=NONE guifg=#404449 guibg=#404449 gui=NONE
hi MatchParen ctermfg=168 ctermbg=NONE cterm=underline guifg=#DE347A guibg=NONE gui=underline
hi StatusLine ctermfg=255 ctermbg=238 cterm=bold guifg=#F8F8F2 guibg=#404449 gui=bold
hi StatusLineNC ctermfg=255 ctermbg=238 cterm=NONE guifg=#F8F8F2 guibg=#404449 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#404449 gui=NONE
hi IncSearch ctermfg=234 ctermbg=220 cterm=NONE guifg=#191B1F guibg=#FFC620 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi Folded ctermfg=32 ctermbg=234 cterm=NONE guifg=#277BD3 guibg=#191B1F gui=NONE
if has('gui_running') || exists('neovim_dot_app')

hi Normal ctermfg=255 ctermbg=234 cterm=NONE guifg=#F8F8F2 guibg=#191B1F gui=NONE
hi LineNr ctermfg=238 ctermbg=234 cterm=NONE guifg=#404449 guibg=#191B1F gui=NONE
else

hi Normal ctermfg=255 ctermbg=NONE cterm=NONE guifg=#F8F8F2 guibg=NONE gui=NONE
hi LineNr ctermfg=238 ctermbg=NONE cterm=NONE guifg=#404449 guibg=NONE gui=NONE
endif

hi Boolean ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi Comment ctermfg=32 ctermbg=NONE cterm=italic guifg=#277BD3 guibg=NONE gui=italic
hi Conditional ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi DiffAdd ctermfg=255 ctermbg=70 cterm=bold guifg=#F8F8F2 guibg=#4BAE16 gui=bold
hi DiffDelete ctermfg=166 ctermbg=NONE cterm=NONE guifg=#D3422E guibg=NONE gui=NONE
hi DiffChange ctermfg=255 ctermbg=238 cterm=NONE guifg=#F8F8F2 guibg=#404449 gui=NONE
hi DiffText ctermfg=255 ctermbg=32 cterm=bold guifg=#F8F8F2 guibg=#404449 gui=bold
hi ErrorMsg ctermfg=255 ctermbg=168 cterm=NONE guifg=#F8F8F2 guibg=#DE347A gui=NONE
hi WarningMsg ctermfg=255 ctermbg=168 cterm=NONE guifg=#F8F8F2 guibg=#DE347A gui=NONE
hi Float ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi Function ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4BAE16 guibg=NONE gui=NONE
hi Identifier ctermfg=117 ctermbg=NONE cterm=italic guifg=#7FD6FA guibg=NONE gui=italic
hi Keyword ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi Label ctermfg=220 ctermbg=NONE cterm=NONE guifg=#FFC620 guibg=NONE gui=NONE
hi NonText ctermfg=238 ctermbg=238 cterm=NONE guifg=#404449 guibg=#404449 gui=NONE
hi Number ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi Operator ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi PreProc ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi Special ctermfg=255 ctermbg=NONE cterm=NONE guifg=#F8F8F2 guibg=NONE gui=NONE
hi SpecialKey ctermfg=238 ctermbg=238 cterm=NONE guifg=#404449 guibg=#404449 gui=NONE
hi Statement ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi StorageClass ctermfg=117 ctermbg=NONE cterm=italic guifg=#7FD6FA guibg=NONE gui=italic
hi String ctermfg=220 ctermbg=NONE cterm=NONE guifg=#FFC620 guibg=NONE gui=NONE
hi Tag ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi Title ctermfg=255 ctermbg=NONE cterm=bold guifg=#F8F8F2 guibg=NONE gui=bold
hi Todo ctermfg=32 ctermbg=NONE cterm=inverse,bold guifg=#277BD3 guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi rubyFunction ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4BAE16 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi rubyConstant ctermfg=117 ctermbg=NONE cterm=italic guifg=#7FD6FA guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=220 ctermbg=NONE cterm=NONE guifg=#FFC620 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=214 ctermbg=NONE cterm=italic guifg=#F5BB12 guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=203 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=220 ctermbg=NONE cterm=NONE guifg=#FFC620 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=220 ctermbg=NONE cterm=NONE guifg=#FFC620 guibg=NONE gui=NONE
hi rubyEscape ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi rubyControl ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi rubyException ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=117 ctermbg=NONE cterm=italic guifg=#7FD6FA guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=italic guifg=#7FD6FA guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=168 ctermbg=NONE cterm=NONE guifg=#DE347A guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=220 ctermbg=NONE cterm=NONE guifg=#FFC620 guibg=NONE gui=NONE
hi cssURL ctermfg=214 ctermbg=NONE cterm=italic guifg=#F5BB12 guibg=NONE gui=italic
hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi cssColor ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4BAE16 guibg=NONE gui=NONE
hi cssClassName ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4BAE16 guibg=NONE gui=NONE
hi cssValueLength ctermfg=32 ctermbg=NONE cterm=NONE guifg=#277BD3 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=117 ctermbg=NONE cterm=NONE guifg=#7FD6FA guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" end of document

hi NonText ctermbg=NONE cterm=NONE guifg=#404449 guibg=NONE gui=NONE

" invisibles

hi SpecialKey ctermbg=NONE cterm=NONE guifg=#404449 guibg=NONE gui=NONE
