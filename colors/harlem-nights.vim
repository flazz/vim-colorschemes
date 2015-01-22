set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="harlem-nights"

hi Normal          ctermfg=250    ctermbg=235    cterm=none
hi Cursor          ctermfg=239    ctermbg=250    cterm=none
hi CursorLine      ctermfg=none   ctermbg=236    cterm=none
hi LineNr          ctermfg=239    ctermbg=none   cterm=none
hi CursorLineNR    ctermfg=130    ctermbg=none   cterm=none

hi CursorColumn    ctermfg=none   ctermbg=236    cterm=none
hi FoldColumn      ctermfg=4      ctermbg=235    cterm=none
hi SignColumn      ctermfg=4      ctermbg=237    cterm=none
hi Folded          ctermfg=245    ctermbg=236    cterm=none

hi VertSplit       ctermfg=240    ctermbg=240    cterm=none
hi ColorColumn     ctermfg=none   ctermbg=236    cterm=none
hi TabLine         ctermfg=240    ctermbg=250    cterm=reverse
hi TabLineFill     ctermfg=240    ctermbg=250    cterm=reverse
hi TabLineSel      ctermfg=none   ctermbg=none   cterm=bold

hi Directory       ctermfg=109    ctermbg=none   cterm=none
hi Search          ctermfg=none   ctermbg=none   cterm=bold,underline
hi IncSearch       ctermfg=22     ctermbg=214    cterm=bold,underline

hi StatusLine      ctermfg=240    ctermbg=222    cterm=reverse
hi StatusLineNC    ctermfg=240    ctermbg=250    cterm=reverse
hi WildMenu        ctermfg=0      ctermbg=11     cterm=none
hi Question        ctermfg=143    ctermbg=none   cterm=none
hi Title           ctermfg=245    ctermbg=none   cterm=none
hi ModeMsg         ctermfg=143    ctermbg=none   cterm=bold
hi MoreMsg         ctermfg=143    ctermbg=none   cterm=none

hi MatchParen      ctermfg=none   ctermbg=239    cterm=none
hi Visual          ctermfg=none   ctermbg=239    cterm=none
hi VisualNOS       ctermfg=none   ctermbg=none   cterm=bold,underline
hi NonText         ctermfg=239    ctermbg=none   cterm=none
hi Todo            ctermfg=245    ctermbg=235    cterm=none
hi Underlined      ctermfg=105    ctermbg=none   cterm=underline
hi Error           ctermfg=15     ctermbg=9      cterm=none
hi ErrorMsg        ctermfg=15     ctermbg=1      cterm=none
hi WarningMsg      ctermfg=167    ctermbg=none   cterm=none
hi Ignore          ctermfg=15     ctermbg=none   cterm=none
hi SpecialKey      ctermfg=239    ctermbg=none   cterm=none

hi Constant        ctermfg=173    ctermbg=none   cterm=none
hi String          ctermfg=143    ctermbg=none   cterm=none
hi StringDelimiter ctermfg=none   ctermbg=none   cterm=none
hi Character       ctermfg=173    ctermbg=none   cterm=none
hi Number          ctermfg=173    ctermbg=none   cterm=none
hi Boolean         ctermfg=173    ctermbg=none   cterm=none
hi Float           ctermfg=173    ctermbg=none   cterm=none
hi Identifier      ctermfg=167    ctermbg=none   cterm=none
hi Function        ctermfg=109    ctermbg=none   cterm=none

hi Statement       ctermfg=250    ctermbg=none   cterm=none
hi Conditional     ctermfg=250    ctermbg=none   cterm=none
hi Repeat          ctermfg=250    ctermbg=none   cterm=none
hi Label           ctermfg=250    ctermbg=none   cterm=none
hi Operator        ctermfg=109    ctermbg=none   cterm=none
hi Keyword         ctermfg=250    ctermbg=none   cterm=none
hi Exception       ctermfg=250    ctermbg=none   cterm=none
hi Comment         ctermfg=245    ctermbg=none   cterm=none
hi Special         ctermfg=250    ctermbg=none   cterm=none
hi SpecialChar     ctermfg=none   ctermbg=none   cterm=none
hi Tag             ctermfg=none   ctermbg=none   cterm=none
hi Delimiter       ctermfg=none   ctermbg=none   cterm=none
hi SpecialComment  ctermfg=none   ctermbg=none   cterm=none
hi Debug           ctermfg=none   ctermbg=none   cterm=none

hi PreProc         ctermfg=139    ctermbg=none   cterm=none
hi Include         ctermfg=109    ctermbg=none   cterm=none
hi Define          ctermfg=139    ctermbg=none   cterm=none
hi Macro           ctermfg=139    ctermbg=none   cterm=none
hi PreCondit       ctermfg=139    ctermbg=none   cterm=none
hi Type            ctermfg=109    ctermbg=none   cterm=none
hi StorageClass    ctermfg=109    ctermbg=none   cterm=none
hi Structure       ctermfg=139    ctermbg=none   cterm=none
hi Typedef         ctermfg=none   ctermbg=none   cterm=none

hi DiffAdd         ctermfg=66     ctermbg=237   cterm=bold
hi DiffChange      ctermfg=none   ctermbg=236   cterm=none
hi DiffDelete      ctermfg=236    ctermbg=238   cterm=none
hi DiffText        ctermfg=217    ctermbg=237   cterm=bold

hi Pmenu           ctermfg=250    ctermbg=239    cterm=none
hi PmenuSel        ctermfg=250    ctermbg=239    cterm=reverse
hi PmenuSbar       ctermbg=248    ctermbg=none   cterm=none
hi PmenuThumb      ctermbg=0      ctermbg=none   cterm=none

hi SpellBad        ctermfg=124    ctermbg=236    cterm=underline
hi SpellCap        ctermfg=20     ctermbg=236    cterm=underline
hi SpellLocal      ctermfg=20     ctermbg=236    cterm=underline
hi SpellRare       ctermfg=20     ctermbg=236    cterm=underline

hi Conceal                ctermfg=7      ctermbg=242    cterm=none
hi pythonStatement        ctermfg=139    ctermbg=none   cterm=none
hi pythonFunction         ctermfg=109    ctermbg=none   cterm=none
hi pythonConditional      ctermfg=139    ctermbg=none   cterm=none
hi pythonRepeat           ctermfg=109    ctermbg=none   cterm=none
hi pythonException        ctermfg=139    ctermbg=none   cterm=none
hi pythonInclude          ctermfg=139    ctermbg=none   cterm=none
hi pythonPreCondit        ctermfg=139    ctermbg=none   cterm=none
hi pythonExClass          ctermfg=173    ctermbg=none   cterm=none
hi javaScriptBraces       ctermfg=250    ctermbg=none   cterm=none
hi javaScriptFunction     ctermfg=139    ctermbg=none   cterm=none
hi javaScriptConditional  ctermfg=139    ctermbg=none   cterm=none
hi javaScriptRepeat       ctermfg=139    ctermbg=none   cterm=none
hi javaScriptNumber       ctermfg=173    ctermbg=none   cterm=none
hi javaScriptMember       ctermfg=173    ctermbg=none   cterm=none
hi htmlTag                ctermfg=167    ctermbg=none   cterm=none
hi htmlTagName            ctermfg=167    ctermbg=none   cterm=none
hi htmlArg                ctermfg=167    ctermbg=none   cterm=none
hi htmlScriptTag          ctermfg=167    ctermbg=none   cterm=none
hi diffAdded              ctermfg=143    ctermbg=none   cterm=none
hi diffRemoved            ctermfg=167    ctermbg=none   cterm=none
hi clojureConstant        ctermfg=173    ctermbg=none   cterm=none
hi clojureBoolean         ctermfg=173    ctermbg=none   cterm=none
hi clojureCharacter       ctermfg=173    ctermbg=none   cterm=none
hi clojureKeyword         ctermfg=143    ctermbg=none   cterm=none
hi clojureNumber          ctermfg=173    ctermbg=none   cterm=none
hi clojureString          ctermfg=143    ctermbg=none   cterm=none
hi clojureRegexp          ctermfg=143    ctermbg=none   cterm=none
hi clojureParen           ctermfg=109    ctermbg=none   cterm=none
hi clojureVariable        ctermfg=222    ctermbg=none   cterm=none
hi clojureCond            ctermfg=109    ctermbg=none   cterm=none
hi clojureDefine          ctermfg=139    ctermbg=none   cterm=none
hi clojureException       ctermfg=167    ctermbg=none   cterm=none
hi clojureFunc            ctermfg=109    ctermbg=none   cterm=none
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
hi SneakPluginTarget      ctermfg=250    ctermbg=239    cterm=none
hi SneakStreakTarget      ctermfg=250    ctermbg=239    cterm=underline
hi SneakStreakMask        ctermfg=239    ctermbg=239    cterm=underline
hi OverCommandLineCursorInsert ctermfg=100 ctermbg=50 cterm=underline
