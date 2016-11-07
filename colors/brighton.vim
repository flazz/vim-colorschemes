" Vim color file

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "brighton"

hi Cursor ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi LineNr ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE
hi MatchParen ctermfg=63 ctermbg=NONE cterm=underline guifg=#4f73f7 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=241 cterm=bold guifg=#f8f8f2 guibg=#64645e gui=bold
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi IncSearch ctermfg=235 ctermbg=77 cterm=NONE guifg=#272822 guibg=#3fe132 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=226 ctermbg=NONE cterm=NONE guifg=#fdf100 guibg=NONE gui=NONE
hi Folded ctermfg=65 ctermbg=235 cterm=NONE guifg=#57746d guibg=#272822 gui=NONE

hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Character ctermfg=226 ctermbg=NONE cterm=NONE guifg=#fdf100 guibg=NONE gui=NONE
hi Comment ctermfg=65 ctermbg=NONE cterm=NONE guifg=#57746d guibg=NONE gui=NONE
hi Conditional ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#46830c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0807 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#243955 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Float ctermfg=135 ctermbg=NONE cterm=NONE guifg=#ab62ff guibg=NONE gui=NONE
hi Function ctermfg=44 ctermbg=NONE cterm=NONE guifg=#00e0e6 guibg=NONE gui=NONE
hi Identifier ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi Keyword ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi Label ctermfg=77 ctermbg=NONE cterm=NONE guifg=#3fe132 guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=236 cterm=NONE guifg=#49483e guibg=#31322c gui=NONE
hi Number ctermfg=135 ctermbg=NONE cterm=NONE guifg=#ab62ff guibg=NONE gui=NONE
hi Operator ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi PreProc ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=237 cterm=NONE guifg=#49483e guibg=#3c3d37 gui=NONE
hi Statement ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi String ctermfg=77 ctermbg=NONE cterm=NONE guifg=#3fe132 guibg=NONE gui=NONE
hi Tag ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Todo ctermfg=65 ctermbg=NONE cterm=inverse,bold guifg=#57746d guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi rubyFunction ctermfg=44 ctermbg=NONE cterm=NONE guifg=#00e0e6 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=226 ctermbg=NONE cterm=NONE guifg=#fdf100 guibg=NONE gui=NONE
hi rubyConstant ctermfg=205 ctermbg=NONE cterm=NONE guifg=#f234bf guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=77 ctermbg=NONE cterm=NONE guifg=#3fe132 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=245 ctermbg=NONE cterm=NONE guifg=#8a8a86 guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff2602 guibg=NONE gui=NONE
hi rubyInclude ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff2602 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=77 ctermbg=NONE cterm=NONE guifg=#3fe132 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=77 ctermbg=NONE cterm=NONE guifg=#3fe132 guibg=NONE gui=NONE
hi rubyEscape ctermfg=226 ctermbg=NONE cterm=NONE guifg=#fdf100 guibg=NONE gui=NONE
hi rubyControl ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff2602 guibg=NONE gui=NONE
hi rubyOperator ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi rubyException ctermfg=63 ctermbg=NONE cterm=NONE guifg=#4f73f7 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff2602 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=205 ctermbg=NONE cterm=NONE guifg=#f234bf guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=65 ctermbg=NONE cterm=NONE guifg=#57746d guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=226 ctermbg=NONE cterm=NONE guifg=#fdf100 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff2602 guibg=NONE gui=NONE
hi yamlAlias ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff2602 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=77 ctermbg=NONE cterm=NONE guifg=#3fe132 guibg=NONE gui=NONE
hi cssURL ctermfg=245 ctermbg=NONE cterm=NONE guifg=#8a8a86 guibg=NONE gui=italic
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssColor ctermfg=226 ctermbg=NONE cterm=NONE guifg=#fdf100 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssValueLength ctermfg=135 ctermbg=NONE cterm=NONE guifg=#ab62ff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=111 ctermbg=NONE cterm=NONE guifg=#9aafef guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
