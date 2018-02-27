" ----------------------------------------------------------------- "
" name			nordisk												"
" description	A colour scheme closely modelled on					"
"				Arctic Ice Studio’s Nord palette					"
"				https://github.com/arcticicestudio/nord				"
" author		kamil.stachowski@gmail.com							"
" version		0.5 (2016.12.06)									"
" license		GPLv3+												"
" ----------------------------------------------------------------- "

" - preamble ---------------------------------------------------------------------------------- <<< -

let colors_name = "nordisk"
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

" --------------------------------------------------------------------------------------------- >>> -
" - palette ----------------------------------------------------------------------------------- <<< -

let s:col00 = "#252a33"		" blackish 1
let s:col01 = "#38404d"		" blackish 2
let s:col02 = "#4a5466"		" blackish 3
let s:col03 = "#5e6b81"		" blackish 4
let s:col04 = "#6f7e98"		" blackish 5
let s:col05 = "#d7dbe2"		" whitish 1
let s:col06 = "#ffffff"		" whitish 2
let s:col07 = "#8fbcbb"		" light blue 1
let s:col08 = "#81a1c1"		" light blue 3
let s:col09 = "#88c0d0"		" light blue 2
let s:col10 = "#5e81ac"		" light blue 4
let s:col11 = "#a3be8c"		" green
let s:col12 = "#b48ead"		" purple
let s:col13 = "#eccf95"		" yellow
let s:col14 = "#d18a75"		" orange
let s:col15 = "#bf6971"		" red

" --------------------------------------------------------------------------------------------- >>> -
" - originals --------------------------------------------------------------------------------- <<< -

call s:hi ("CursorLine",	"",			s:col01,	"none")
call s:hi ("Ignore",		s:col02,	s:col00,	"none")
call s:hi ("Visual",		s:col00,	s:col03,	"none")
call s:hi ("Comment",		s:col04,	s:col00,	"none")

call s:hi ("Normal",		s:col05,	s:col00,	"none")
call s:hi ("Special",		s:col06,	s:col00,	"none")

call s:hi ("Operator",		s:col07,	s:col00,	"none")
call s:hi ("Identifier",	s:col08,	s:col00,	"none")
call s:hi ("PreProc",		s:col09,	s:col00,	"none")
call s:hi ("Constant",		s:col10,	s:col00,	"none")
call s:hi ("Statement",		s:col11,	s:col00,	"none")
call s:hi ("Type",			s:col12,	s:col00,	"none")

call s:hi ("Cursor",		"",			"",			"inverse")
call s:hi ("DiffAdd",		s:col11,	s:col00,	"none")
call s:hi ("DiffChange",	s:col13,	s:col00,	"none")
call s:hi ("DiffDelete",	s:col15,	s:col00,	"none")
call s:hi ("Error",			s:col00,	s:col15,	"none")
call s:hi ("ModeMsg",		s:col06,	s:col00,	"bold")
call s:hi ("Pmenu",			s:col05,	s:col01,	"none")
call s:hi ("Search",		s:col14,	"bg",		"none")
call s:hi ("StatusLine",	s:col06,	s:col10,	"bold")
call s:hi ("StatusLineNC",	s:col00,	s:col05,	"none")
call s:hi ("Todo",			s:col14,	s:col00,	"none")
call s:hi ("Underlined",	s:col05,	s:col00,	"underline")
call s:hi ("WarningMsg",	s:col13,	s:col00,	"none")

" --------------------------------------------------------------------------------------------- >>> -
" - linked ------------------------------------------------------------------------------------ <<< -

hi! link Boolean		Constant
hi! link Character		Constant
hi! link ColorColumn	CursorColumn
hi! link Conceal		Special
hi! link Conditional	Statement
hi! link CursorColumn	CursorLine
hi! link CursorIM		Cursor
hi! link CursorLineNr	CursorLine
hi! link Debug			Special
hi! link Define			PreProc
hi! link Delimiter		Special
hi! link DiffText		Special
hi! link Directory		Type
hi! link EndOfBuffer	Ignore
hi! link ErrorMsg		Error
hi! link Exception		Statement
hi! link Float			Constant
hi! link FoldColumn		Normal
hi! link Folded			Comment
hi! link Function		Identifier
hi! link IncSearch		Search
hi! link Include		PreProc
hi! link Keyword		Statement
hi! link Label			Statement
hi! link LineNr			Ignore
hi! link Macro			PreProc
hi! link MatchParen		Search
hi! link MoreMsg		ModeMsg
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
hi! link SpellLocal		Constant
hi! link SpellRare		Special
hi! link StorageClass	Type
hi! link String			Constant
hi! link Structure		Type
hi! link TabLine		StatusLineNC
hi! link TabLineFill	StatusLineNC
hi! link TabLineSel		StatusLine
hi! link Tag			Special
hi! link Title			Statement
hi! link Typedef		Type
hi! link VertSplit		StatusLineNC
hi! link VisualNOS		Visual
hi! link WildMenu		StatusLineNC

" --------------------------------------------------------------------------------------------- >>> -
" - languages --------------------------------------------------------------------------------- <<< -

" c++
hi! link cppAccess		Type
hi! link cppStatement	Special

" html
hi! link htmlArg		Statement
hi! link htmlTag		Operator
hi! link htmlTagName	Type
hi! link htmlTitle		Type

" java
hi! link javaTypeDef	Special

" markdown
hi! link markdownH1		Type

" nerdtree
hi! link NERDTreeCWD	WarningMsg
hi! link NERDTreeExecFile	PreProc
hi! link NERDTreeLinkDir	Type
hi! link NERDTreeLinkFile	Special
hi! link NERDTreeLinkTarget	Normal

" netrw
hi! link netrwSymLink	Special

" pascal
hi! link pascalStatement	Type

" python
hi! link pythonStatement	Type

" ruby
hi! link rubyConstant	Special
hi! link rubyDefine		Type

" sh
hi! link shDerefVar		Special
hi! link shFunction		Type
hi! link shLoop			Statement
hi! link shStatement	Special

" vim
hi! link vimCommand		Statement
hi! link vimEnvVar		Special
hi! link vimFuncKey		Type
hi! link vimOption		Special
hi! link vimSyntax		Special
hi! link vimSynType		Special

" --------------------------------------------------------------------------------------------- >>> -

" vim: foldmarker=<<<,>>>
