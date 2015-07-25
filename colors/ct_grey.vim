" ct_grey color scheme
" based off Todd Werth's ir_black
" More at: http://blog.infinitered.com/entries/show/8
" MIT License.


set background=dark
hi clear

if exists("syntax_on")
	syntax reset
endif

if has("eval")
	let colors_name = "ct_grey"
endif

" General colors
hi Normal						guifg=#f6f3e8	guibg=#1c1c1c		gui=NONE			ctermfg=NONE			ctermbg=NONE			cterm=NONE
hi NonText					guifg=#2c43db	guibg=#1c1c1c		gui=NONE			ctermfg=blue			ctermbg=NONE			cterm=NONE

hi Cursor						guifg=black		guibg=white			gui=NONE			ctermfg=black			ctermbg=white			cterm=reverse
hi LineNr						guifg=#3D3D3D	guibg=#1c1c1c		gui=NONE			ctermfg=darkgray	ctermbg=NONE			cterm=NONE

hi VertSplit				guifg=#202020	guibg=#202020		gui=NONE			ctermfg=darkgray	ctermbg=darkgray	cterm=NONE
hi StatusLine				guifg=#CCCCCC	guibg=#242424		gui=NONE			ctermfg=white			ctermbg=darkgray	cterm=NONE
hi StatusLineNC			guifg=#808080	guibg=#242424		gui=NONE			ctermfg=blue			ctermbg=darkgray	cterm=NONE

hi Folded						guifg=#a0a8b0	guibg=#384048		gui=NONE			ctermfg=NONE			ctermbg=NONE			cterm=NONE
hi Title						guifg=#f6f3e8	guibg=NONE			gui=bold			ctermfg=NONE			ctermbg=NONE			cterm=NONE
hi Visual						guifg=NONE		guibg=#262D51		gui=NONE			ctermfg=NONE			ctermbg=darkgray	cterm=NONE

hi SpecialKey				guifg=#808080	guibg=#343434		gui=NONE			ctermfg=NONE			ctermbg=NONE			cterm=NONE

hi WildMenu					guifg=green		guibg=yellow		gui=NONE			ctermfg=black			ctermbg=yellow		cterm=NONE
hi PmenuSbar				guifg=black		guibg=white			gui=NONE			ctermfg=black			ctermbg=white			cterm=NONE

hi ErrorMsg					guifg=white		guibg=#a81d1d		gui=BOLD			ctermfg=white			ctermbg=red				cterm=NONE
hi WarningMsg				guifg=#1c1c1c	guibg=yellow		gui=BOLD			ctermfg=black			ctermbg=yellow		cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg					guifg=black		guibg=#C6C5FE		gui=BOLD			ctermfg=black			ctermbg=cyan			cterm=BOLD

if version >= 700 " Vim 7.x specific colors
	hi CursorLine			guifg=NONE		guibg=#121212		gui=NONE			ctermfg=NONE			ctermbg=NONE			cterm=BOLD
	hi CursorColumn		guifg=NONE		guibg=#121212		gui=NONE			ctermfg=NONE			ctermbg=NONE			cterm=BOLD
	hi MatchParen			guifg=#f6f3e8	guibg=#857b6f		gui=BOLD			ctermfg=white			ctermbg=darkgray	cterm=NONE
	hi Pmenu					guifg=#f6f3e8	guibg=#444444		gui=NONE			ctermfg=NONE			ctermbg=NONE			cterm=NONE
	hi PmenuSel				guifg=#000000	guibg=#cae682		gui=NONE			ctermfg=NONE			ctermbg=NONE			cterm=NONE
	hi Search					guifg=NONE		guibg=NONE			gui=underline ctermfg=NONE			ctermbg=NONE			cterm=underline
endif

" Syntax highlighting
hi Comment					guifg=#7C7C7C	guibg=NONE			gui=NONE			ctermfg=darkgray	ctermbg=NONE			cterm=NONE
hi String						guifg=#5fd787	guibg=NONE			gui=NONE			ctermfg=green			ctermbg=NONE			cterm=NONE
hi Number						guifg=#ff5f5f	guibg=NONE			gui=NONE			ctermfg=darkred		ctermbg=NONE			cterm=NONE

hi Keyword					guifg=#96CBFE	guibg=NONE			gui=NONE			ctermfg=blue			ctermbg=NONE			cterm=NONE
hi PreProc					guifg=#96CBFE	guibg=NONE			gui=NONE			ctermfg=blue			ctermbg=NONE			cterm=NONE
hi Conditional			guifg=#6699CC	guibg=NONE			gui=NONE			ctermfg=blue			ctermbg=NONE			cterm=NONE

hi Error						guifg=white		guibg=#a81d1d		gui=NONE			ctermfg=white			ctermbg=red				cterm=NONE
hi Todo							guifg=#f6f3e8	guibg=#ff5f5f		gui=NONE			ctermfg=red				ctermbg=NONE			cterm=NONE
hi Constant					guifg=#99CC99	guibg=NONE			gui=NONE			ctermfg=cyan			ctermbg=NONE			cterm=NONE

hi Identifier				guifg=#C6C5FE	guibg=NONE			gui=NONE			ctermfg=cyan			ctermbg=NONE			cterm=NONE
hi Function					guifg=#FFD2A7	guibg=NONE			gui=NONE			ctermfg=brown			ctermbg=NONE			cterm=NONE
hi Type							guifg=#FFFFB6	guibg=NONE			gui=NONE			ctermfg=yellow		ctermbg=NONE			cterm=NONE
hi Statement				guifg=#6699CC	guibg=NONE			gui=NONE			ctermfg=lightblue	ctermbg=NONE			cterm=NONE

hi Special					guifg=#E18964	guibg=NONE			gui=NONE			ctermfg=white			ctermbg=NONE			cterm=NONE
hi Delimiter				guifg=#00A0A0	guibg=NONE			gui=NONE			ctermfg=cyan			ctermbg=NONE			cterm=NONE
hi Operator					guifg=#5fd7ff	guibg=NONE			gui=NONE			ctermfg=white			ctermbg=NONE			cterm=NONE

hi DiffAdd					guifg=#f6f3e8	guibg=#336633		gui=NONE			ctermfg=white			ctermbg=green			cterm=NONE
hi DiffDelete				guifg=#f6f3e8	guibg=#a81d1d		gui=NONE			ctermfg=white			ctermbg=red			cterm=NONE
hi DiffChange				guifg=#f6f3e8	guibg=#262d51		gui=NONE			ctermfg=white			ctermbg=cyan		cterm=NONE
hi DiffText					guifg=#384048	guibg=#96cbfe		gui=NONE			ctermfg=NONE			ctermbg=blue		cterm=NONE

if &t_Co == 256
	hi Normal					ctermfg=230				ctermbg=234				cterm=NONE
	hi NonText				ctermfg=blue			ctermbg=NONE			cterm=NONE

	hi Cursor					ctermfg=black			ctermbg=white			cterm=reverse
	hi LineNr					ctermfg=237				ctermbg=NONE			cterm=NONE

	hi VertSplit			ctermfg=darkgray	ctermbg=darkgray	cterm=NONE
	hi StatusLine			ctermfg=252				ctermbg=235				cterm=NONE
	hi StatusLineNC		ctermfg=blue			ctermbg=235				cterm=NONE

	hi Folded					ctermfg=146				ctermbg=NONE			cterm=NONE
	hi Title					ctermfg=230				ctermbg=NONE			cterm=NONE
	hi Visual					ctermfg=NONE			ctermbg=60				cterm=NONE

	hi SpecialKey			ctermfg=244				ctermbg=236				cterm=NONE

	hi WildMenu				ctermfg=green			ctermbg=yellow		cterm=NONE
	hi PmenuSbar			ctermfg=black			ctermbg=white			cterm=NONE

	hi Error					ctermfg=white			ctermbg=203				cterm=NONE
	hi ErrorMsg				ctermfg=white			ctermbg=203				cterm=NONE
	hi WarningMsg			ctermfg=234				ctermbg=yellow		cterm=NONE

	hi ModeMsg				ctermfg=black			ctermbg=147				cterm=BOLD

	if version >= 700 " Vim 7.x specific colors
		hi CursorLine		ctermfg=NONE			ctermbg=233				cterm=BOLD
		hi CursorColumn ctermfg=NONE			ctermbg=233				cterm=BOLD
		hi MatchParen		ctermfg=230				ctermbg=101				cterm=NONE
		hi Pmenu				ctermfg=230				ctermbg=238				cterm=NONE
		hi PmenuSel			ctermfg=NONE			ctermbg=NONE			cterm=NONE
		hi Search				ctermfg=NONE			ctermbg=NONE			cterm=underline
	endif

	" Syntax highlighting
	hi Comment				ctermfg=244				ctermbg=NONE			cterm=NONE
	hi String					ctermfg=78				ctermbg=NONE			cterm=NONE
	hi Number					ctermfg=203				ctermbg=NONE			cterm=NONE

	hi Keyword				ctermfg=111				ctermbg=NONE			cterm=NONE
	hi PreProc				ctermfg=111				ctermbg=NONE			cterm=NONE
	hi Conditional		ctermfg=68				ctermbg=NONE			cterm=NONE

	hi Todo						ctermfg=red				ctermbg=NONE			cterm=NONE
	hi Constant				ctermfg=151				ctermbg=NONE			cterm=NONE

	hi Identifier			ctermfg=189				ctermbg=NONE			cterm=NONE
	hi Function				ctermfg=223				ctermbg=NONE			cterm=NONE
	hi Type						ctermfg=229				ctermbg=NONE			cterm=NONE
	hi Statement			ctermfg=68				ctermbg=NONE			cterm=NONE

	hi Special				ctermfg=209				ctermbg=NONE			cterm=NONE
	hi Delimiter			ctermfg=37				ctermbg=NONE			cterm=NONE
	hi Operator				ctermfg=81				ctermbg=NONE			cterm=NONE

	hi DiffAdd				ctermfg=230				ctermbg=34			cterm=NONE
	hi DiffDelete			ctermfg=230				ctermbg=203			cterm=NONE
	hi DiffChange			ctermfg=230				ctermbg=60			cterm=NONE
	hi DiffText				ctermfg=238				ctermbg=117			cterm=NONE
endif

hi link Character				Constant
hi link Boolean					Constant
hi link Float						Number
hi link Repeat					Statement
hi link Label						Statement
hi link Exception				Statement
hi link Include					PreProc
hi link Define					PreProc
hi link Macro						PreProc
hi link PreCondit				PreProc
hi link StorageClass		Type
hi link Structure				Type
hi link Typedef					Type
hi link Tag							Special
hi link SpecialChar			Special
hi link SpecialComment	Special
hi link Debug						Special

" Special handling for certain languages.
hi rubyRegexp									guifg=#B18A3D	guibg=NONE	gui=NONE		ctermfg=brown		ctermbg=NONE		cterm=NONE
hi rubyRegexpDelimiter				guifg=#FF8000	guibg=NONE	gui=NONE		ctermfg=brown		ctermbg=NONE		cterm=NONE
hi rubyEscape									guifg=white		guibg=NONE	gui=NONE		ctermfg=cyan		ctermbg=NONE		cterm=NONE
hi rubyInterpolationDelimiter	guifg=#00A0A0	guibg=NONE	gui=NONE		ctermfg=blue		ctermbg=NONE		cterm=NONE
hi rubyControl								guifg=#6699CC	guibg=NONE	gui=NONE		ctermfg=blue		ctermbg=NONE		cterm=NONE
hi rubyStringDelimiter				guifg=#336633	guibg=NONE	gui=NONE		ctermfg=lightgreen	ctermbg=NONE		cterm=NONE

hi link rubyClass							Keyword
hi link rubyModule						Keyword
hi link rubyKeyword						Keyword
hi link rubyOperator					Operator
hi link rubyIdentifier				Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable		Identifier
hi link rubyClassVariable			Identifier
hi link rubyConstant					Type

hi link javaScopeDecl					Identifier
hi link javaCommentTitle			javaDocSeeTag
hi link javaDocTags						javaDocSeeTag
hi link javaDocParam					javaDocSeeTag
hi link javaDocSeeTagParam		javaDocSeeTag

hi javaDocSeeTag							guifg=#CCCCCC		guibg=NONE		gui=NONE		ctermfg=darkgray	ctermbg=NONE		cterm=NONE
hi javaDocSeeTag							guifg=#CCCCCC		guibg=NONE		gui=NONE		ctermfg=darkgray	ctermbg=NONE		cterm=NONE

hi link xmlTag								Keyword
hi link xmlTagName						Conditional
hi link xmlEndTag							Identifier

hi link htmlTag								Keyword
hi link htmlTagName						Conditional
hi link htmlEndTag						Identifier

hi link diffAdded							String
hi link diffRemoved						Number

hi link javaScriptNumber			Number

hi link csXmlTag							Keyword

hi link perlStringStartEnd		rubyStringDelimiter
hi link perlVStringV					String

hi link pythonStringDelimiter	rubyStringDelimiter

hi link zshStringDelimiter		rubyStringDelimiter

hi link shQuote								rubyStringDelimiter

" vim: set ts=2 sw=2 sts=2 noet:
