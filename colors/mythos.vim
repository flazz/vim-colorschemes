" ----------------------------------------------------------------- "
" name			mythos												"
" description	A dark, low contrast, Cthulhu-esque colour scheme	"
" author		kamil.stachowski@gmail.com							"
" version		0.1 (2016.11.06)									"
" license		GPLv3+												"
" ----------------------------------------------------------------- "

" - preamble ---------------------------------------------------------------------------------- {{{ -

let colors_name = "mythos"
set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif
if version > 800
	set termguicolors
endif

function! s:hi(group, fg, bg, gui)
	let l:res = "hi " . a:group
	if a:fg != ""
		let l:res = l:res . " guifg=" . a:fg
	endif
	if a:bg != ""
		let l:res = l:res . " guibg=" . a:bg
	endif
	if a:gui != ""
		let l:res = l:res . " gui=" . a:gui
		let l:res = l:res . " cterm=". a:gui
	endif
	execute l:res
endfunction

" --------------------------------------------------------------------------------------------- }}} -
" - palette ----------------------------------------------------------------------------------- {{{ -

let s:col00 = "#151d20"		" black 1
let s:col01 = "#875a61"		" red 1
let s:col02 = "#4b725e"		" green 1
let s:col03 = "#766c45"		" brown 1
let s:col04 = "#526a87"		" blue 1
let s:col05 = "#775671"		" purple 1
let s:col06 = "#4e6c72"		" teal 1
let s:col07 = "#485356"		" grey 1
let s:col08 = "#202d31"		" black 2
let s:col09 = "#9c6b61"		" red 2
let s:col10 = "#657f5e"		" green 2
let s:col11 = "#9b996c"		" brown 2
let s:col12 = "#5b859e"		" blue 2
let s:col13 = "#7d7294"		" purple 2
let s:col14 = "#6e8f84"		" teal 2
let s:col15 = "#8a9193"		" grey 2


" --------------------------------------------------------------------------------------------- }}} -
" - originals --------------------------------------------------------------------------------- {{{ -

call s:hi ("Comment",		s:col07,	s:col08,	"none")
call s:hi ("Constant",		s:col06,	s:col08,	"none")
call s:hi ("Cursor",		s:col00,	s:col15,	"bold")
call s:hi ("CursorLine",	"",			s:col00,	"none")
call s:hi ("DiffAdd",		s:col02,	s:col08,	"none")
call s:hi ("DiffChange",	s:col04,	s:col08,	"none")
call s:hi ("DiffDelete",	s:col01,	s:col08,	"none")
call s:hi ("Error",			s:col15,	s:col01,	"none")
call s:hi ("Identifier",	s:col04,	s:col08,	"none")
call s:hi ("Ignore",		s:col00,	s:col08,	"none")
call s:hi ("ModeMsg",		s:col11,	s:col08,	"bold")
call s:hi ("Normal",		s:col15,	s:col08,	"none")
call s:hi ("Operator",		s:col03,	s:col08,	"none")
call s:hi ("Pmenu",			s:col15,	s:col08,	"none")
call s:hi ("PreProc",		s:col12,	s:col08,	"none")
call s:hi ("Search",		s:col09,	s:col08,	"none")
call s:hi ("Special",		s:col14,	s:col08,	"none")
call s:hi ("SpellRare",		s:col11,	s:col08,	"none")
call s:hi ("Statement",		s:col02,	s:col08,	"none")
call s:hi ("StatusLine",	s:col08,	s:col03,	"bold")
call s:hi ("StatusLineNC",	s:col08,	s:col15,	"none")
call s:hi ("Title",			s:col13,	s:col08,	"bold")
call s:hi ("Todo",			s:col09,	s:col08,	"none")
call s:hi ("Type",			s:col05,	s:col08,	"none")
call s:hi ("Underlined",	s:col15,	s:col08,	"underline")
call s:hi ("Visual",		s:col08,	s:col07,	"none")
call s:hi ("WarningMsg",	s:col09,	s:col08,	"none")

" --------------------------------------------------------------------------------------------- }}} -
" - linked ------------------------------------------------------------------------------------ {{{ -

hi! link Boolean		Constant
hi! link Character		Constant
hi! link ColorColumn	CursorColumn
hi! link Conceal		Comment
hi! link Conditional	Statement
hi! link CursorColumn	CursorLine
hi! link CursorIM		Cursor
hi! link CursorLineNr	Normal
hi! link Debug			Special
hi! link Define			PreProc
hi! link Delimiter		Special
hi! link DiffText		Normal
hi! link Directory		Type
hi! link EndOfBuffer	Ignore
hi! link ErrorMsg		Error
hi! link Exception		Statement
hi! link Float			Constant
hi! link FoldColumn		Comment
hi! link Folded			Comment
hi! link Function		Identifier
hi! link IncSearch		Search
hi! link Include		PreProc
hi! link Keyword		Operator
hi! link Label			Statement
hi! link LineNr			Ignore
hi! link Macro			PreProc
hi! link MatchParen		Search
hi! link MoreMsg		Special
hi! link NonText		Ignore
hi! link Number			Constant
hi! link PmenuSbar		StatusLineNC
hi! link PmenuSel		Visual
hi! link PmenuThumb		StatusLine
hi! link PreCondit		PreProc
hi! link Question		ModeMsg
hi! link Repeat			Statement
hi! link SignColumn		FoldColumn
hi! link SpecialChar	Special
hi! link SpecialComment	Special
hi! link SpecialKey		Special
hi! link SpellBad		Error
hi! link SpellCap		Error
hi! link SpellLocal		Operator
hi! link StorageClass	Type
hi! link String			Constant
hi! link Structure		Type
hi! link TabLine		StatusLineNC
hi! link TabLineFill	StatusLineNC
hi! link TabLineSel		StatusLine
hi! link Tag			Special
hi! link Typedef		Type
hi! link VertSplit		StatusLineNC
hi! link VisualNOS		Visual
hi! link WildMenu		StatusLineNC

" --------------------------------------------------------------------------------------------- }}} -
" - languages --------------------------------------------------------------------------------- {{{ -

" help
hi! link helpSectionDelim	Type

" --------------------------------------------------------------------------------------------- }}} -
