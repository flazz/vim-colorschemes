" Vim color file - Ian Main <imain@redhat.com
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "highlighter_term"

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

hi Normal ctermfg=black ctermbg=72 cterm=bold
hi NonText ctermfg=black ctermbg=72

" Used for indent guides background color
hi ColorColumn ctermfg=black ctermbg=71

" UI Bits:
hi StatusLine ctermfg=53 ctermbg=white
hi StatusLineNC ctermfg=53 ctermbg=253
hi VertSplit ctermfg=53 ctermbg=white
hi TabLine ctermfg=253 ctermbg=23 cterm=NONE
hi TabLineSel ctermfg=white ctermbg=23 cterm=bold
hi LineNr ctermfg=white ctermbg=53

hi Cursor ctermfg=black ctermbg=white
hi CursorLine ctermbg=52 ctermfg=white cterm=bold

hi IncSearch ctermfg=white ctermbg=88 cterm=underline,bold
hi Search ctermfg=white ctermbg=53 cterm=underline,bold

hi DiffAdd ctermfg=white ctermbg=28 cterm=bold
hi DiffChange ctermfg=white ctermbg=172 cterm=bold
hi DiffDelete ctermfg=white ctermbg=196 cterm=bold
hi DiffText ctermfg=white ctermbg=27 cterm=bold
hi FoldColumn ctermfg=black ctermbg=101
hi Folded ctermfg=black ctermbg=66

hi ModeMsg ctermfg=black ctermbg=215
hi MoreMsg ctermfg=white ctermbg=89

hi PMenu ctermfg=black ctermbg=191
hi PMenuSbar ctermfg=black ctermbg=253
hi PMenuSel ctermfg=88 ctermbg=229 cterm=bold
hi PMenuThumb ctermfg=black ctermbg=252

hi SpellBad ctermfg=black ctermbg=202
hi SpellCap ctermfg=black ctermbg=203
hi SpellRare ctermfg=black ctermbg=204

hi Visual ctermfg=white ctermbg=89 cterm=bold
hi VisualNOS ctermfg=black ctermbg=91
hi WarningMsg ctermfg=black ctermbg=208 cterm=bold
hi WildMenu ctermfg=white ctermbg=53
hi Boolean ctermfg=black ctermbg=75
hi Character ctermfg=88 ctermbg=44
hi Comment ctermfg=black ctermbg=223
hi Conditional ctermfg=black ctermbg=81
hi Constant ctermfg=black ctermbg=37
hi Debug ctermfg=black ctermbg=36
hi Define ctermfg=black ctermbg=115
hi Delimiter ctermfg=black ctermbg=225
hi Directory ctermfg=18 ctermbg=74
hi Error ctermfg=52 ctermbg=229 cterm=bold
hi ErrorMsg ctermfg=52 ctermbg=229 cterm=bold
hi Exception ctermfg=black ctermbg=147
hi Float ctermfg=black ctermbg=50
hi Function ctermfg=black ctermbg=140
hi Identifier ctermfg=black ctermbg=148
hi Include ctermfg=black ctermbg=79
hi Keyword ctermfg=black ctermbg=110
hi Label ctermfg=black ctermbg=146
hi LocalVariable ctermfg=black ctermbg=103
hi Macro ctermfg=black ctermbg=157
hi MatchParen ctermfg=white ctermbg=126 cterm=bold
hi Number ctermfg=black ctermbg=49
hi Operator ctermfg=black ctermbg=104
hi PreCondit ctermfg=19 ctermbg=193
hi PreProc ctermfg=19 ctermbg=117
hi Question ctermfg=black ctermbg=39
hi Repeat ctermfg=black ctermbg=111
hi Special ctermfg=black ctermbg=111
hi SpecialChar ctermfg=black ctermbg=147
hi SpecialComment ctermfg=black ctermbg=38
hi SpecialKey ctermfg=black ctermbg=39
hi Statement ctermfg=black ctermbg=75
hi StorageClass ctermfg=black ctermbg=105
hi String ctermfg=black ctermbg=174
hi Structure ctermfg=black ctermbg=80
hi Tag ctermfg=black ctermbg=15
hi Title ctermfg=18 ctermbg=194
hi Todo ctermfg=52 ctermbg=221
hi Type ctermfg=black ctermbg=192
hi Typedef ctermbg=black ctermbg=78


" Not sure these are even used.
hi browsecurdirectory ctermfg=88 ctermbg=224
hi browsedirectory ctermfg=21 ctermbg=171
hi browsefile ctermfg=18 ctermbg=145
hi browsesuffixes ctermfg=8 ctermbg=255
hi cformat ctermfg=176 ctermbg=238
hi cspecialcharacter ctermfg=176 ctermbg=238
hi cursorim ctermfg=15 ctermbg=93

