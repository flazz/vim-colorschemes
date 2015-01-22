set background=dark
highlight clear
if exists("syntax on")
    syntax reset
endif
let g:colors_name="party-liquor"

hi Normal          ctermfg=249    ctermbg=236    cterm=none
hi Cursor          ctermfg=16     ctermbg=179    cterm=none
hi CursorLine      ctermbg=237    ctermbg=none   cterm=none
hi LineNr          ctermfg=244    ctermbg=237    cterm=none
hi CursorLineNR    ctermfg=none   ctermbg=none   cterm=none

hi CursorColumn    ctermbg=237    ctermbg=none   cterm=none
hi FoldColumn      ctermfg=79     ctermbg=237    cterm=none
hi SignColumn      ctermfg=79     ctermbg=237    cterm=none
hi Folded          ctermfg=244    ctermbg=none   cterm=none

hi VertSplit       ctermfg=244    ctermbg=237    cterm=none
hi ColorColumn     ctermfg=79     ctermbg=237    cterm=none
hi TabLine         ctermfg=231    ctermbg=237    cterm=none
hi TabLineFill     ctermfg=231    ctermbg=237    cterm=none
hi TabLineSel      ctermfg=253    ctermbg=238    cterm=none
hi Directory       ctermfg=103    ctermbg=none   cterm=none
hi Search          ctermfg=16     ctermbg=179    cterm=none
hi IncSearch       ctermfg=231    ctermbg=168    cterm=none

hi StatusLine      ctermfg=231    ctermbg=237    cterm=none
hi StatusLineNC    ctermfg=244    ctermbg=237    cterm=none
hi WildMenu        ctermfg=71     ctermbg=237    cterm=none
hi Question        ctermfg=38     ctermbg=none   cterm=none
hi Title           ctermfg=109    ctermbg=none   cterm=none
hi ModeMsg         ctermfg=222    ctermbg=none   cterm=none
hi MoreMsg         ctermfg=72     ctermbg=none   cterm=none
hi MatchParen      ctermfg=16     ctermbg=72     cterm=none
hi Visual          ctermfg=71     ctermbg=117    cterm=none
hi VisualNOS       ctermfg=71     ctermbg=116    cterm=none

hi NonText         ctermfg=244    ctermbg=none   cterm=none
hi Todo            ctermfg=189    ctermbg=none   cterm=none
hi Underlined      ctermfg=231    ctermbg=none   cterm=none
hi Error           ctermfg=231    ctermbg=167    cterm=none
hi ErrorMsg        ctermfg=210    ctermbg=none   cterm=none
hi WarningMsg      ctermfg=140    ctermbg=none   cterm=none
hi Ignore          ctermfg=none   ctermbg=none   cterm=none
hi SpecialKey      ctermfg=114    ctermbg=none   cterm=none

hi Constant        ctermfg=186    ctermbg=none   cterm=none
hi String          ctermfg=187    ctermbg=none   cterm=none
hi StringDelimiter ctermfg=none   ctermbg=none   cterm=none
hi Character       ctermfg=187    ctermbg=none   cterm=none
hi Number          ctermfg=179    ctermbg=none   cterm=none
hi Boolean         ctermfg=187    ctermbg=none   cterm=none
hi Float           ctermfg=179    ctermbg=none   cterm=none
hi Identifier      ctermfg=182    ctermbg=none   cterm=none
hi Function        ctermfg=182    ctermbg=none   cterm=none
hi Statement       ctermfg=110    ctermbg=none   cterm=none
hi Conditional     ctermfg=110    ctermbg=none   cterm=none
hi Repeat          ctermfg=110    ctermbg=none   cterm=none
hi Label           ctermfg=110    ctermbg=none   cterm=none
hi Operator        ctermfg=110    ctermbg=none   cterm=none
hi Keyword         ctermfg=110    ctermbg=none   cterm=none
hi Exception       ctermfg=110    ctermbg=none   cterm=none
hi Comment         ctermfg=244    ctermbg=none   cterm=none
hi Special         ctermfg=174    ctermbg=none   cterm=none
hi SpecialChar     ctermfg=174    ctermbg=none   cterm=none
hi Tag             ctermfg=174    ctermbg=none   cterm=none
hi Delimiter       ctermfg=174    ctermbg=none   cterm=none

hi SpecialComment  ctermfg=174    ctermbg=none   cterm=none
hi Debug           ctermfg=174    ctermbg=none   cterm=none
hi PreProc         ctermfg=150    ctermbg=none   cterm=none
hi Include         ctermfg=150    ctermbg=none   cterm=none
hi Define          ctermfg=150    ctermbg=none   cterm=none
hi Macro           ctermfg=150    ctermbg=none   cterm=none
hi PreCondit       ctermfg=150    ctermbg=none   cterm=none
hi Type            ctermfg=146    ctermbg=none   cterm=none

hi StorageClass    ctermfg=146    ctermbg=none   cterm=none
hi Structure       ctermfg=146    ctermbg=none   cterm=none
hi Typedef         ctermfg=146    ctermbg=none   cterm=none

hi DiffAdd         ctermfg=16     ctermbg=149    cterm=none
hi DiffChange      ctermfg=16     ctermbg=217    cterm=none
hi DiffDelete      ctermfg=231    ctermbg=none   cterm=none
hi DiffText        ctermfg=16     ctermbg=211    cterm=none
hi DiffAdded       ctermfg=107    ctermbg=none   cterm=none
hi DiffChanged     ctermfg=179    ctermbg=none   cterm=none
hi DiffFile        ctermfg=244    ctermbg=none   cterm=none
hi DiffLine        ctermfg=244    ctermbg=none   cterm=none
hi DiffOldLine     ctermfg=104    ctermbg=none   cterm=none
hi DiffRemoved     ctermfg=175    ctermbg=none   cterm=none

hi Pmenu           ctermfg=231    ctermbg=237    cterm=none
hi PmenuSel        ctermfg=231    ctermbg=244    cterm=none
hi PmenuSbar       ctermfg=231    ctermbg=244    cterm=none
hi PmenuThumb      ctermfg=none   ctermbg=none   cterm=none

hi SpellBad        ctermfg=210    ctermbg=none   cterm=underline
hi SpellCap        ctermfg=174    ctermbg=none   cterm=underline
hi SpellLocal      ctermfg=180    ctermbg=none   cterm=underline
hi SpellRare       ctermfg=181    ctermbg=none   cterm=underline

hi SneakPluginTarget ctermfg=196  ctermbg=none cterm=none
hi SneakStreakTarget ctermfg=231  ctermbg=237  cterm=underline
hi SneakStreakMask   ctermfg=237  ctermbg=237  cterm=underline

hi diffAdded              ctermfg=143    ctermbg=none   cterm=none
hi diffRemoved            ctermfg=167    ctermbg=none   cterm=none

hi clojureConstant        ctermfg=186    ctermbg=none   cterm=none
hi clojureBoolean         ctermfg=187    ctermbg=none   cterm=none
hi clojureCharacter       ctermfg=187    ctermbg=none   cterm=none
hi clojureKeyword         ctermfg=110    ctermbg=none   cterm=none
hi clojureNumber          ctermfg=179    ctermbg=none   cterm=none
hi clojureString          ctermfg=187    ctermbg=none   cterm=none
hi clojureRegexp          ctermfg=143    ctermbg=none   cterm=none
hi clojureParen           ctermfg=none   ctermbg=252    cterm=none
hi clojureVariable        ctermfg=222    ctermbg=none   cterm=none
hi clojureCond            ctermfg=109    ctermbg=none   cterm=none
hi clojureDefine          ctermfg=139    ctermbg=none   cterm=none
hi clojureException       ctermfg=167    ctermbg=none   cterm=none
hi clojureFunc            ctermfg=182    ctermbg=none   cterm=none
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
