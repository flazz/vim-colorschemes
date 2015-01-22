set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="honeybadger"

hi Normal          ctermfg=251    ctermbg=234    cterm=bold
hi Cursor          ctermfg=234    ctermbg=228    cterm=none
hi CursorLine      ctermfg=none   ctermbg=235    cterm=none
hi LineNr          ctermfg=101    ctermbg=232    cterm=none
hi CursorLineNR    ctermfg=11     ctermbg=none   cterm=none

hi CursorColumn    ctermfg=none   ctermbg=235    cterm=none
hi FoldColumn      ctermfg=14     ctermbg=242    cterm=none
hi SignColumn      ctermfg=14     ctermbg=242    cterm=none
hi Folded          ctermfg=145    ctermbg=237    cterm=none

hi VertSplit       ctermfg=237    ctermbg=237    cterm=none
hi ColorColumn     ctermfg=none   ctermbg=1      cterm=none
hi TabLine         ctermfg=15     ctermbg=242    cterm=underline
hi TabLineFill     ctermfg=none   ctermbg=none   cterm=reverse
hi TabLineSel      ctermfg=none   ctermbg=none   cterm=bold

hi Directory       ctermfg=159    ctermbg=none   cterm=none
hi Search          ctermfg=237    ctermbg=140    cterm=none
hi IncSearch       ctermfg=22     ctermbg=214    cterm=bold,underline

hi StatusLine      ctermfg=230    ctermbg=237    cterm=none
hi StatusLineNC    ctermfg=101    ctermbg=237    cterm=none
hi WildMenu        ctermfg=0      ctermbg=11     cterm=none
hi Question        ctermfg=121    ctermbg=none   cterm=none
hi Title           ctermfg=230    ctermbg=none   cterm=bold
hi ModeMsg         cterm=bold     ctermbg=none   cterm=none
hi MoreMsg         ctermfg=121    ctermbg=none   cterm=none

hi MatchParen      ctermfg=228    ctermbg=101    cterm=bold
hi Visual          ctermfg=228    ctermbg=64     cterm=bold
hi VisualNOS       ctermfg=none   ctermbg=none   cterm=bold,underline
hi NonText         ctermfg=12     ctermbg=none   cterm=none
hi Todo            ctermfg=101    ctermbg=11     cterm=none
hi Underlined      ctermfg=81     ctermbg=none   cterm=underline
hi Error           ctermfg=15     ctermbg=9      cterm=none
hi ErrorMsg        ctermfg=15     ctermbg=1      cterm=none
hi WarningMsg      ctermfg=196    ctermbg=none   cterm=none
hi Ignore          ctermfg=0      ctermbg=none   cterm=none
hi SpecialKey      ctermfg=241    ctermbg=235    cterm=none

hi Constant        ctermfg=173    ctermbg=none   cterm=none
hi String          ctermfg=113    ctermbg=none   cterm=none
hi StringDelimiter ctermfg=none   ctermbg=none   cterm=none
hi Character       ctermfg=173    ctermbg=none   cterm=none
hi Number          ctermfg=173    ctermbg=none   cterm=none
hi Boolean         ctermfg=173    ctermbg=none   cterm=none
hi Float           ctermfg=173    ctermbg=none   cterm=none
hi Identifier      ctermfg=192    ctermbg=none   cterm=none
hi Function        ctermfg=192    ctermbg=none   cterm=none

hi Statement       ctermfg=111    ctermbg=none   cterm=none
hi Conditional     ctermfg=111    ctermbg=none   cterm=none
hi Repeat          ctermfg=111    ctermbg=none   cterm=none
hi Label           ctermfg=111    ctermbg=none   cterm=none
hi Operator        ctermfg=111    ctermbg=none   cterm=none
hi Keyword         ctermfg=111    ctermbg=none   cterm=none
hi Exception       ctermfg=111    ctermbg=none   cterm=none
hi Comment         ctermfg=143    ctermbg=none   cterm=none
hi Special         ctermfg=223    ctermbg=none   cterm=none
hi SpecialChar     ctermfg=223    ctermbg=none   cterm=none
hi Tag             ctermfg=223    ctermbg=none   cterm=none
hi Delimiter       ctermfg=223    ctermbg=none   cterm=none
hi SpecialComment  ctermfg=223    ctermbg=none   cterm=none
hi Debug           ctermfg=223    ctermbg=none   cterm=none

hi PreProc         ctermfg=173    ctermbg=none   cterm=none
hi Include         ctermfg=173    ctermbg=none   cterm=none
hi Define          ctermfg=173    ctermbg=none   cterm=none
hi Macro           ctermfg=173    ctermbg=none   cterm=none
hi PreCondit       ctermfg=173    ctermbg=none   cterm=none
hi Type            ctermfg=192    ctermbg=none   cterm=none
hi StorageClass    ctermfg=192    ctermbg=none   cterm=none
hi Structure       ctermfg=192    ctermbg=none   cterm=none
hi Typedef         ctermfg=192    ctermbg=none   cterm=none

hi DiffAdd         ctermbg=4      ctermbg=none   cterm=none
hi DiffChange      ctermbg=5      ctermbg=none   cterm=none
hi DiffDelete      ctermfg=12     ctermbg=6      cterm=none
hi DiffText        ctermfg=none   ctermbg=9      cterm=bold

hi Pmenu           ctermfg=230    ctermbg=237    cterm=none
hi PmenuSel        ctermfg=232    ctermbg=192    cterm=none
hi PmenuSbar       ctermbg=248    ctermbg=none   cterm=none
hi PmenuThumb      ctermbg=15     ctermbg=none   cterm=none

hi SpellBad        ctermfg=9      ctermbg=none   cterm=underline
hi SpellCap        ctermfg=9      ctermbg=none   cterm=underline
hi SpellLocal      ctermfg=9      ctermbg=none   cterm=underline
hi SpellRare       ctermfg=9      ctermbg=none   cterm=underline

hi Conceal                ctermfg=7      ctermbg=242    cterm=none
hi SneakPluginTarget      ctermfg=250    ctermbg=239    cterm=none
hi SneakStreakTarget      ctermfg=230    ctermbg=237    cterm=underline
hi SneakStreakMask        ctermfg=237    ctermbg=237    cterm=underline
hi diffAdded              ctermfg=143    ctermbg=none   cterm=none
hi diffRemoved            ctermfg=167    ctermbg=none   cterm=none
hi clojureConstant        ctermfg=173    ctermbg=none   cterm=none
hi clojureBoolean         ctermfg=173    ctermbg=none   cterm=none
hi clojureCharacter       ctermfg=173    ctermbg=none   cterm=none
hi clojureKeyword         ctermfg=111    ctermbg=none   cterm=none
hi clojureNumber          ctermfg=173    ctermbg=none   cterm=none
hi clojureString          ctermfg=113    ctermbg=none   cterm=none
hi clojureRegexp          ctermfg=143    ctermbg=none   cterm=none
hi clojureParen           ctermfg=228    ctermbg=101    cterm=bold
hi clojureVariable        ctermfg=222    ctermbg=none   cterm=none
hi clojureCond            ctermfg=109    ctermbg=none   cterm=none
hi clojureDefine          ctermfg=139    ctermbg=none   cterm=none
hi clojureException       ctermfg=167    ctermbg=none   cterm=none
hi clojureFunc            ctermfg=192    ctermbg=none   cterm=none
hi clojureMacro           ctermfg=109    ctermbg=none   cterm=none
hi clojureRepeat          ctermfg=109    ctermbg=none   cterm=none
hi clojureSpecial         ctermfg=139    ctermbg=none   cterm=none
hi clojureQuote           ctermfg=109    ctermbg=none   cterm=none
hi clojureUnquote         ctermfg=109    ctermbg=none   cterm=none
hi clojureMeta            ctermfg=109    ctermbg=none   cterm=none
hi clojureDeref           ctermfg=109    ctermbg=none   cterm=none
hi clojureAnonArg         ctermfg=109    ctermbg=none   cterm=none
hi clojureDispatch        ctermfg=109    ctermbg=none   cterm=none
hi WikiLink               ctermfg=69     ctermbg=none   cterm=underline
hi markdownLinkText       ctermfg=160    ctermbg=none   cterm=underline
