" Lucario - The best colorful flat theme ever
" Author: Raphael Amorim
"
" GitHub project: https://github.com/raphamorim/lucario

set background=dark
highlight clear

set t_Co=256

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "lucario"

hi Cursor cterm=NONE guifg=#2b3e50 guibg=#f8f8f2
hi Visual ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#19242f gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#405160 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#405160 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#405160 gui=NONE
hi LineNr ctermfg=223 ctermbg=NONE cterm=NONE guifg=#929ba1 guibg=#2b3e50 gui=NONE
hi VertSplit ctermfg=60 ctermbg=60 cterm=NONE guifg=#66747f guibg=#66747f gui=NONE
hi MatchParen ctermfg=203 ctermbg=NONE cterm=underline guifg=#ff6541 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=60 cterm=bold guifg=#f8f8f2 guibg=#66747f gui=bold
hi StatusLineNC ctermfg=231 ctermbg=60 cterm=NONE guifg=#f8f8f2 guibg=#66747f gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=#19242f gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#66747f gui=NONE
hi IncSearch ctermfg=23 ctermbg=186 cterm=NONE guifg=#2b3e50 guibg=#e6db74 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi Folded ctermfg=68 ctermbg=23 cterm=NONE guifg=#5c98cd guibg=#2b3e50 gui=NONE

" Colors for tabs in cterm
hi TabLineFill ctermfg=12
hi TabLine ctermfg=17 ctermbg=11 cterm=NONE
hi TabLineSel ctermfg=8 ctermbg=14 cterm=NONE

hi Normal ctermfg=231 ctermbg=0 cterm=NONE guifg=#f8f8f2 guibg=#2b3e50 gui=NONE
hi Boolean ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi Character ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi Comment ctermfg=44 ctermbg=NONE cterm=NONE guifg=#5c98cd guibg=NONE gui=NONE
hi Conditional ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#478815 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0c10 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#26446c gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Float ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi Function ctermfg=71 ctermbg=NONE cterm=NONE guifg=#72c05d guibg=NONE gui=NONE
hi Identifier ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi Keyword ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi NonText ctermfg=74 ctermbg=0 cterm=NONE guifg=#61bbc8 guibg=#354758 gui=NONE
hi Number ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi Operator ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi PreProc ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi Parameter ctermfg=214 ctermbg=NONE cterm=NONE guifg=#ffab28 guibg=NONE gui=italic
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi SpecialKey ctermfg=74 ctermbg=59 cterm=NONE guifg=#61bbc8 guibg=#405160 gui=NONE
hi Statement ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi String ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Tag ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Todo ctermfg=68 ctermbg=NONE cterm=inverse,bold guifg=#5c98cd guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi rubyFunction ctermfg=71 ctermbg=NONE cterm=NONE guifg=#72c05d guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=214 ctermbg=NONE cterm=NONE guifg=#ffab28 guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=81 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyEscape ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi rubyControl ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi rubyException ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5c98cd guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi htmlTag ctermfg=15 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=15 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6541 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi cssURL ctermfg=214 ctermbg=NONE cterm=NONE guifg=#ffab28 guibg=NONE gui=italic
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssColor ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=71 ctermbg=NONE cterm=NONE guifg=#72c05d guibg=NONE gui=NONE
hi cssClassName ctermfg=71 ctermbg=NONE cterm=NONE guifg=#72c05d guibg=NONE gui=NONE
hi cssValueLength ctermfg=177 ctermbg=NONE cterm=NONE guifg=#ca94ff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi pythonStatement ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi pythonBuiltin ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
