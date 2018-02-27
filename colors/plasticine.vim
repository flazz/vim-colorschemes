" Vim color file
" Maintainer: github.com/prognostic
" Last Change: 2018/02/05
" version: 0.0.7
" License: The MIT License (MIT)

set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "plasticine"

hi Normal         ctermfg=15   ctermbg=66   cterm=NONE

hi Comment        ctermfg=109  ctermbg=NONE cterm=NONE

hi Character      ctermfg=195  ctermbg=NONE cterm=NONE
hi Float          ctermfg=195  ctermbg=NONE cterm=NONE
hi Number         ctermfg=123  ctermbg=NONE cterm=NONE
hi Boolean        ctermfg=195  ctermbg=NONE cterm=NONE
hi String         ctermfg=151  ctermbg=NONE cterm=NONE
hi Constant       ctermfg=195  ctermbg=NONE cterm=NONE

hi Identifier     ctermfg=229  ctermbg=NONE cterm=NONE
hi Function       ctermfg=15   ctermbg=NONE cterm=bold

hi Repeat         ctermfg=115  ctermbg=NONE cterm=bold
hi Conditional    ctermfg=115  ctermbg=NONE cterm=bold

hi IncSearch      ctermfg=109  ctermbg=1    cterm=NONE
hi WildMenu       ctermfg=NONE ctermbg=248  cterm=NONE
hi SignColumn     ctermfg=109  ctermbg=60   cterm=NONE
hi SpecialComment ctermfg=220  ctermbg=NONE cterm=NONE
hi Typedef        ctermfg=111  ctermbg=NONE cterm=bold
hi Title          ctermfg=189  ctermbg=235  cterm=bold
hi Folded         ctermfg=109  ctermbg=248  cterm=NONE
hi PreCondit      ctermfg=220  ctermbg=NONE cterm=NONE
hi TabLine        ctermfg=109  ctermbg=66   cterm=bold
hi TabLineFill    ctermfg=109  ctermbg=66   cterm=bold
hi TabLineSel     ctermfg=241  ctermbg=109  cterm=bold
hi Include        ctermfg=15   ctermbg=NONE cterm=NONE
hi StatusLineNC   ctermfg=109  ctermbg=66   cterm=bold
hi NonText        ctermfg=195  ctermbg=NONE cterm=NONE
hi DiffText       ctermfg=NONE ctermbg=52   cterm=NONE
hi ErrorMsg       ctermfg=195  ctermbg=88   cterm=NONE
hi Debug          ctermfg=220  ctermbg=NONE cterm=NONE
hi PMenuSbar      ctermfg=NONE ctermbg=102  cterm=NONE
hi SpecialChar    ctermfg=220  ctermbg=NONE cterm=NONE
hi StorageClass   ctermfg=111  ctermbg=NONE cterm=bold
hi Todo           ctermfg=229  ctermbg=109  cterm=bold
hi Special        ctermfg=120  ctermbg=NONE cterm=NONE
hi LineNr         ctermfg=109  ctermbg=NONE cterm=NONE
hi StatusLine     ctermfg=241  ctermbg=109  cterm=bold
hi Label          ctermfg=220  ctermbg=NONE cterm=bold
hi PMenuSel       ctermfg=109  ctermbg=1    cterm=NONE
hi Search         ctermfg=66   ctermbg=194  cterm=NONE
hi Delimiter      ctermfg=15   ctermbg=NONE cterm=NONE
hi Statement      ctermfg=229  ctermbg=NONE cterm=bold
hi SpellRare      ctermfg=189  ctermbg=235  cterm=underline
hi Operator       ctermfg=152  ctermbg=NONE cterm=bold
hi CursorLine     ctermfg=NONE ctermbg=NONE cterm=NONE
hi WarningMsg     ctermfg=195  ctermbg=88   cterm=NONE
hi VisualNOS      ctermfg=109  ctermbg=189  cterm=underline
hi DiffDelete     ctermfg=NONE ctermbg=235  cterm=NONE
hi ModeMsg        ctermfg=15   ctermbg=109  cterm=bold
hi CursorColumn   ctermfg=NONE ctermbg=236  cterm=NONE
hi Define         ctermfg=115  ctermbg=NONE cterm=NONE
hi FoldColumn     ctermfg=109  ctermbg=248  cterm=NONE
hi PreProc        ctermfg=229  ctermbg=NONE cterm=NONE
hi Visual         ctermfg=109  ctermbg=189  cterm=NONE
hi MoreMsg        ctermfg=220  ctermbg=NONE cterm=bold
hi SpellCap       ctermfg=189  ctermbg=235  cterm=underline
hi VertSplit      ctermfg=109  ctermbg=66   cterm=bold
hi Exception      ctermfg=220  ctermbg=NONE cterm=bold
hi Keyword        ctermfg=116  ctermbg=NONE cterm=bold
hi Type           ctermfg=121  ctermbg=NONE cterm=bold
hi DiffChange     ctermfg=NONE ctermbg=52   cterm=NONE
hi Cursor         ctermfg=109  ctermbg=15   cterm=NONE
hi SpellLocal     ctermfg=189  ctermbg=235  cterm=underline
hi Error          ctermfg=195  ctermbg=88   cterm=NONE
hi PMenu          ctermfg=109  ctermbg=66   cterm=NONE
hi SpecialKey     ctermfg=195  ctermbg=NONE cterm=NONE
hi Tag            ctermfg=112  ctermbg=NONE cterm=NONE
hi PMenuThumb     ctermfg=NONE ctermbg=248  cterm=NONE
hi MatchParen     ctermfg=16   ctermbg=15   cterm=bold
hi SpellBad       ctermfg=189  ctermbg=235  cterm=underline
hi Directory      ctermfg=116  ctermbg=NONE cterm=bold
hi Structure      ctermfg=111  ctermbg=NONE cterm=bold
hi Macro          ctermfg=220  ctermbg=NONE cterm=NONE
hi Underlined     ctermfg=189  ctermbg=235  cterm=underline
hi DiffAdd        ctermfg=NONE ctermbg=236  cterm=NONE
hi cursorim       ctermfg=109  ctermbg=60   cterm=NONE
hi EndOfBuffer    ctermfg=109  ctermbg=NONE cterm=NONE
hi CursorLineNR   ctermfg=109  ctermbg=NONE cterm=bold

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --

"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --

