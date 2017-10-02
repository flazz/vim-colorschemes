" Vim color file
" Maintainer:   Carolyn Crosby
" Last Change:  July 12, 2016
"
" horseradish256.vim - a modified version of Wasabi256 by Thomas Duerr.
" Also drawn from Apprentice by Romain Lafourcade
" The algorithm for approximating the GUI colors with the xterm palette
" is from desert256.vim by Henry So Jr.
"

set background=dark
set cursorline

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name = "horseradish256"

if !has("gui_running") && &t_Co != 88 && &t_Co != 256
	finish
endif

" functions {{{
" returns an approximate grey index for the given grey level
fun <SID>grey_number(x)
	if &t_Co == 88
		if a:x < 23
			return 0
		elseif a:x < 69
			return 1
		elseif a:x < 103
			return 2
		elseif a:x < 127
			return 3
		elseif a:x < 150
			return 4
		elseif a:x < 173
			return 5
		elseif a:x < 196
			return 6
		elseif a:x < 219
			return 7
		elseif a:x < 243
			return 8
		else
			return 9
		endif
	else
		if a:x < 14
			return 0
		else
			let l:n = (a:x - 8) / 10
			let l:m = (a:x - 8) % 10
			if l:m < 5
				return l:n
			else
				return l:n + 1
			endif
		endif
	endif
endfun

" returns the actual grey level represented by the grey index
fun <SID>grey_level(n)
	if &t_Co == 88
		if a:n == 0
			return 0
		elseif a:n == 1
			return 46
		elseif a:n == 2
			return 92
		elseif a:n == 3
			return 115
		elseif a:n == 4
			return 139
		elseif a:n == 5
			return 162
		elseif a:n == 6
			return 185
		elseif a:n == 7
			return 208
		elseif a:n == 8
			return 231
		else
			return 255
		endif
	else
		if a:n == 0
			return 0
		else
			return 8 + (a:n * 10)
		endif
	endif
endfun

" returns the palette index for the given grey index
fun <SID>grey_color(n)
	if &t_Co == 88
		if a:n == 0
			return 16
		elseif a:n == 9
			return 79
		else
			return 79 + a:n
		endif
	else
		if a:n == 0
			return 16
		elseif a:n == 25
			return 231
		else
			return 231 + a:n
		endif
	endif
endfun

" returns an approximate color index for the given color level
fun <SID>rgb_number(x)
	if &t_Co == 88
		if a:x < 69
			return 0
		elseif a:x < 172
			return 1
		elseif a:x < 230
			return 2
		else
			return 3
		endif
	else
		if a:x < 75
			return 0
		else
			let l:n = (a:x - 55) / 40
			let l:m = (a:x - 55) % 40
			if l:m < 20
				return l:n
			else
				return l:n + 1
			endif
		endif
	endif
endfun

" returns the actual color level for the given color index
fun <SID>rgb_level(n)
	if &t_Co == 88
		if a:n == 0
			return 0
		elseif a:n == 1
			return 139
		elseif a:n == 2
			return 205
		else
			return 255
		endif
	else
		if a:n == 0
			return 0
		else
			return 55 + (a:n * 40)
		endif
	endif
endfun

" returns the palette index for the given R/G/B color indices
fun <SID>rgb_color(x, y, z)
	if &t_Co == 88
		return 16 + (a:x * 16) + (a:y * 4) + a:z
	else
		return 16 + (a:x * 36) + (a:y * 6) + a:z
	endif
endfun

" returns the palette index to approximate the given R/G/B color levels
fun <SID>color(r, g, b)
	" get the closest grey
	let l:gx = <SID>grey_number(a:r)
	let l:gy = <SID>grey_number(a:g)
	let l:gz = <SID>grey_number(a:b)

	" get the closest color
	let l:x = <SID>rgb_number(a:r)
	let l:y = <SID>rgb_number(a:g)
	let l:z = <SID>rgb_number(a:b)

	if l:gx == l:gy && l:gy == l:gz
		" there are two possibilities
		let l:dgr = <SID>grey_level(l:gx) - a:r
		let l:dgg = <SID>grey_level(l:gy) - a:g
		let l:dgb = <SID>grey_level(l:gz) - a:b
		let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
		let l:dr = <SID>rgb_level(l:gx) - a:r
		let l:dg = <SID>rgb_level(l:gy) - a:g
		let l:db = <SID>rgb_level(l:gz) - a:b
		let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
		if l:dgrey < l:drgb
			" use the grey
			return <SID>grey_color(l:gx)
		else
			" use the color
			return <SID>rgb_color(l:x, l:y, l:z)
		endif
	else
		" only one possibility
		return <SID>rgb_color(l:x, l:y, l:z)
	endif
endfun

" returns the palette index to approximate the 'rrggbb' hex string
fun <SID>rgb(rgb)
	let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
	let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
	let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0
	return <SID>color(l:r, l:g, l:b)
endfun

" sets the highlighting for the given group
fun <SID>X(group, fg, bg, attr)
	if a:fg != ""
		exec "hi ".a:group." guifg=#".a:fg." ctermfg=".<SID>rgb(a:fg)
	endif
	if a:bg != ""
		exec "hi ".a:group." guibg=#".a:bg." ctermbg=".<SID>rgb(a:bg)
	endif
	if a:attr != ""
		if a:attr == 'italic'
			exec "hi ".a:group." gui=".a:attr." cterm=none"
		else
			exec "hi ".a:group." gui=".a:attr." cterm=".a:attr
		endif
	endif
endfun
" }}}

call <SID>X("Normal"       , "bcbcbc" , "262626" , "none")   " normal text
call <SID>X("Cursor"       , "222222" , "b4f6f1" , "none")   " the character under the cursor
call <SID>X("CursorLine"   , ""       , "303030" , "none")   " the screen line that the cursor is in when 'cursorline' is set
call <SID>X("ColorColumn"  , ""       , "af5f5f" , "none")   " the screen line that the cursor is in when 'cursorline' is set
call <SID>X("CursorColumn" , ""       , "303030" , "")       " the screen column that the cursor is in when 'cursorcolumn' is set
call <SID>X("IncSearch"    , "f4b5b5" , "444444" , "")       " 'incsearch' highlighting; also used for the text replaced with :s///c replaced
call <SID>X("Search"       , "111111" , "8fafd7" , "")       " Last search pattern highlighting
call <SID>X("MatchParen"   , "bfb5f4" , "1c1c1c" , "bold")   " The character under the cursor or just before it - if it is a paired bracket - and its match.
call <SID>X("SpecialKey"   , "bfb5f4" , "282203" , "none")   " Meta and special keys listed with ':map'. Generally: text that is displayed differently from what it really is
call <SID>X("Visual"       , "282203" , "4ed893" , "none")   " visual mode selection
call <SID>X("LineNr"       , "6c6c6c" , "1c1c1c" , "none")   " Line numbers
call <SID>X("CursorLineNr" , "b4f6f1" , "1c1c1c" , "none")   " Cursor Line number
call <SID>X("Folded"       , "6c6c6c" , "1c1c1c" , "none")   " line used for closed folds
call <SID>X("Title"        , "ffffff" , ""       , "none")   " titles for output from ':set all'; ':autocmd' etc.
call <SID>X("VertSplit"    , "444444" , "444444" , "none")   " the column separating vertically split windows.
call <SID>X("StatusLine"   , "1c1c1c" , "c0ea44" , "none") " status line of current window.
call <SID>X("StatusLineNC" , "1c1c1c" , "444444" , "none")   " status lines of not-current windows.
call <SID>X("WildMenu"     , "262626" , "8fafd7" , "none")   " current match in 'wildmenu' completion
call <SID>X("Pmenu"        , "bcbcbc" , "444444" , "none")   " Popup menu: normal item.
call <SID>X("PmenuSel"     , "262626" , "b4f6f1" , "none")   " Popup menu: selected item.
call <SID>X("WarningMsg"   , "af5f5f" , ""       , "bold")       " warning messages
call <SID>X("ErrorMsg"     , "ffffff" , "ff0000" , "")       " error messages on the command line
call <SID>X("DiffAdd"      , "1c1c1c" , "c0ea44" , "")       " error messages on the command line
call <SID>X("DiffChange"   , "1c1c1c" , "81c6e8" , "")       " error messages on the command line
call <SID>X("DiffDelete"   , "1c1c1c" , "f4b5b5" , "")       " error messages on the command line
call <SID>X("DiffText"     , "1c1c1c" , "5ab58f" , "")       " error messages on the command line
			"Scrollbar
			"Tooltip
			"Menu
			"Question
			"ModeMsg
			"MoreMsg
			"Directory

" spell
" -------
call <SID>X("SpellBad"    , "" , ""       , "undercurl")
call <SID>X("SpellRare"   , "" , ""       , "undercurl")
call <SID>X("SpellLocal"  , "" , ""       , "undercurl")
call <SID>X("SpellCap"    , "" , ""       , "undercurl")

" tabline
" -------
call <SID>X("TabLine"     , "c0ea44" , "444444"       , "none")    " other tabs
call <SID>X("TabLineSel"  , "262626" , "c0ea44"       , "none")    " selected tab
call <SID>X("TabLineFill" , "c0ea44" , "444444"       , "none")    " tabline

" syntax highlighting
" -------------------
call <SID>X("Comment"    , "585858" , ""       , "italic")  " any comment
call <SID>X("Constant"   , "f4b5b5" , ""       , "none")    " any constant
call <SID>X("String"     , "64dc4c" , ""       , "italic")  " a string constant: 'this is a string'
call <SID>X("Character"  , "64dc4c" , ""       , "italic")  " a character constant: 'c'; '\n'
call <SID>X("Number"     , "f4b5b5" , ""       , "none")    " a number constant: 234; 0xff
call <SID>X("Boolean"    , "f4b5b5" , ""       , "none")    " a boolean constant: TRUE; false
call <SID>X("Float"      , "f4b5b5" , ""       , "none")    " a floating point constant: 2.3e10
call <SID>X("Identifier" , "c0ea44" , ""       , "none")    " any variable name
call <SID>X("Function"   , "c0ea44" , ""       , "none")    " function name (also: methods for classes)
call <SID>X("Statement"  , "81c6e8" , ""       , "none")    " any statement
call <SID>X("Keyword"    , "81c6e8" , ""       , "none")    " any other keyword
call <SID>X("PreProc"    , "f4b5b5" , ""       , "none")    " generic Preprocessor
call <SID>X("Type"       , "c0ea44" , ""       , "none")    " int; long; char; etc.
call <SID>X("Special"    , "5ab58f" , ""       , "none")    " any special symbol
call <SID>X("Todo"       , "1c1c1c" , "e88181" , "italic")  " anything that needs extra attention; mostly the keywords TODO FIXME and XXX
            "Exception                                      " try; catch; throw
            "Conditional                                    " ifr; then; else; endif; switch; etc.
            "Repeat                                         " for; do; while; etc.
            "Label                                          " case; default; etc.
            "Operator                                       " 'sizeof'; '+'; '*'; etc.
call <SID>X("Underlined","bfb5f4","","none")                " text that stands out; HTML links
call <SID>X("JSHintError","","990000","")                   " any erroneous construct
			"Error                                          " any erroneous construct
			"Ignore                                         " left blank, hidden

hi! link VisualNOS	Visual
hi! link NonText	LineNr
hi! link FoldColumn	Folded

" delete functions {{{
delf <SID>X
delf <SID>rgb
delf <SID>color
delf <SID>rgb_color
delf <SID>rgb_level
delf <SID>rgb_number
delf <SID>grey_color
delf <SID>grey_level
delf <SID>grey_number
" }}}

" vim:set ts=4 sw=4 noet fdm=marker:
