" Vim color file - Ian Main <imain@redhat.com
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "highlighter_term_bright"

"hi SignColumn -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi CTagsClass -- no settings --
"hi Underlined -- no settings --

hi Normal ctermfg=black ctermbg=229
hi NonText ctermfg=black ctermbg=229

" Used for indent guides background color
hi ColorColumn ctermfg=black ctermbg=222

" UI Bits:
hi StatusLine ctermfg=90 ctermbg=white
hi StatusLineNC ctermfg=90 ctermbg=253
hi VertSplit ctermfg=90 ctermbg=white
hi TabLine ctermfg=253 ctermbg=23 cterm=NONE
hi TabLineSel ctermfg=white ctermbg=23 cterm=bold
hi LineNr ctermfg=white ctermbg=53

hi Cursor ctermfg=black ctermbg=white
hi CursorLine ctermbg=20 ctermfg=white cterm=bold

hi IncSearch ctermfg=white ctermbg=124 cterm=underline,bold
hi Search ctermfg=white ctermbg=160 cterm=underline,bold

hi DiffAdd ctermfg=white ctermbg=28 cterm=bold
hi DiffChange ctermfg=white ctermbg=172 cterm=bold
hi DiffDelete ctermfg=white ctermbg=196 cterm=bold
hi DiffText ctermfg=white ctermbg=27 cterm=bold
hi FoldColumn ctermfg=white ctermbg=101
hi Folded ctermfg=white ctermbg=66

hi ModeMsg ctermfg=white ctermbg=215
hi MoreMsg ctermfg=white ctermbg=89 cterm=bold

hi PMenu ctermfg=black ctermbg=191
hi PMenuSbar ctermfg=black ctermbg=253
hi PMenuSel ctermfg=88 ctermbg=229 cterm=bold
hi PMenuThumb ctermfg=black ctermbg=252

hi SpellBad ctermfg=white ctermbg=94 cterm=bold
hi SpellCap ctermfg=white ctermbg=95 cterm=bold
hi SpellRare ctermfg=white ctermbg=96 cterm=bold

hi Visual ctermfg=white ctermbg=89 cterm=bold
hi VisualNOS ctermfg=white ctermbg=91
hi WarningMsg ctermfg=white ctermbg=208 cterm=bold
hi WildMenu ctermfg=white ctermbg=53

hi Comment ctermfg=black ctermbg=white
hi Repeat ctermfg=black ctermbg=85
hi Function ctermfg=black ctermbg=86
hi Identifier ctermfg=black ctermbg=87
hi Exception ctermfg=black ctermbg=121
hi Keyword ctermfg=black ctermbg=122
hi Statement ctermfg=black ctermbg=123
hi String ctermfg=black ctermbg=156
hi Number ctermfg=black ctermbg=157
hi Float ctermfg=black ctermbg=158
hi Character ctermfg=88 ctermbg=159
hi Boolean ctermfg=black ctermbg=191
hi Include ctermfg=black ctermbg=192
hi Conditional ctermfg=black ctermbg=193
hi Constant ctermfg=black ctermbg=194
hi Operator ctermfg=black ctermbg=195
hi Special ctermfg=black ctermbg=187
hi Debug ctermfg=black ctermbg=188
hi Define ctermfg=black ctermbg=189
hi Delimiter ctermfg=black ctermbg=222
hi Directory ctermfg=18 ctermbg=223
hi Error ctermfg=52 ctermbg=209 cterm=bold
hi ErrorMsg ctermfg=52 ctermbg=209 cterm=bold
hi Label ctermfg=black ctermbg=157
hi LocalVariable ctermfg=black ctermbg=158
hi Macro ctermfg=black ctermbg=159
hi MatchParen ctermfg=white ctermbg=126 cterm=bold
hi PreCondit ctermfg=19 ctermbg=149
hi PreProc ctermfg=19 ctermbg=150
hi Question ctermfg=black ctermbg=149
hi SpecialChar ctermfg=black ctermbg=152
hi SpecialComment ctermfg=black ctermbg=224
hi SpecialKey ctermfg=black ctermbg=225
hi StorageClass ctermfg=black ctermbg=217
hi Structure ctermfg=black ctermbg=218
hi Tag ctermfg=black ctermbg=219
hi Title ctermfg=18 ctermbg=220
hi Todo ctermfg=52 ctermbg=221
hi Type ctermfg=black ctermbg=192
hi Typedef ctermbg=black ctermbg=213


" Not sure these are even used.
hi browsecurdirectory ctermfg=88 ctermbg=224
hi browsedirectory ctermfg=21 ctermbg=171
hi browsefile ctermfg=18 ctermbg=145
hi browsesuffixes ctermfg=8 ctermbg=255
hi cformat ctermfg=176 ctermbg=238
hi cspecialcharacter ctermfg=176 ctermbg=238
hi cursorim ctermfg=15 ctermbg=93

