" File:			heman
" Maintainer:		devnul1 <d3v000@outlook.com>
" Source:		https://github.com/devnul1/heman
" Last Modified:	13 Feb 2018
" License:		MIT-License https://choosealicense.com/licenses/mit/
"

" Init: {{{

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

if !has('gui_running') && &t_Co != 256
	finish
endif

set background=dark
let g:colors_name='heman'

" }}}
" Palette: {{{

let s:heman = {}

let s:heman.orange		= ['#f95a00', 202] 	" 15
let s:heman.red			= ['#ff5e5e', 203] 	" 14
let s:heman.yellow		= ['#fccf2b', 220] 	" 13
let s:heman.salmon		= ['#cf8551', 173] 	" 12
let s:heman.purple		= ['#b767fa', 135] 	" 11
let s:heman.orchid		= ['#e79df2', 177] 	" 10
let s:heman.green		= ['#84fba2', 120] 	"  9
let s:heman.morchid		= ['#ff66ff', 207] 	"  8
let s:heman.darkestblue		= ['#1a4299', 26] 	"  7
let s:heman.turquise		= ['#56b6c2', 73] 	"  6
let s:heman.darkblue		= ['#2f5bc4', 26] 	"  5
let s:heman.lightblue		= ['#638ffa', 69] 	"  4
let s:heman.fg2			= ['#dadada', 253] 	"  3
let s:heman.fg1			= ['#575675', 60] 	"  2
let s:heman.fg0			= ['#bab6e8', 147] 	"  1
let s:heman.bg			= ['#322f42', 236] 	"  0

" }}}
" Emphasis: {{{

let s:none = ['NONE', 'NONE']

let s:bold = 'bold'
let s:italic = 'italic'
let s:underline = 'underline'
let s:reverse = 'reverse'

" }}}
" Highlight: {{{

function! s:HL(group, ...)
	" Arguments: group, guifg/ctermfg, guibg/ctermbg, gui
	" foreground
	let fg = a:1

	" background
	if a:0 >= 2
		let bg = a:2
	else
		let bg = s:none
	endif

	" emphasis
	if a:0 >= 3 && strlen(a:3)
		let emstr = a:3
	else
		let emstr = 'NONE'
	endif

	let histring = [ 'hi!', a:group,
		\ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
		\ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
		\ 'gui=' . emstr, 'cterm=' . emstr
		\ ]

	execute join(histring, ' ')
endfunction

" }}}
" General UI: {{{

" Normal text + background
call s:HL('Normal', s:heman.fg0, s:heman.bg, s:bold)
" '~' and '@' at the end of the window, charachters from 'showbreak' and other characters that do not really exist
call s:HL('NonText', s:heman.fg1)
" Meta and special keys listed with ":map", also for text used
hi! link SpecialKey NonText

" Directoy names, special names in listing
call s:HL('Directory', s:heman.lightblue)
" Error messages
call s:HL('ErrorMsg', s:heman.red, s:none, s:reverse)
" Last search pattern highlighting (see 'hlsearch')
call s:HL('Search', s:heman.yellow, s:none, s:reverse)

" More prompt: -- More --
call s:HL('MoreMsg', s:heman.green)
" Current mode message: -- INSERT --
hi! link ModeMsg MoreMsg
" Questeion yes/no
hi! link Question MoreMsg

" Warning messages
call s:HL('WarningMsg', s:heman.orange, s:none, s:reverse)

" Current match in wildmenu completion
hi! link WildMenu Search

" Titles for output from :set all, :autocmd, etc.
call s:HL('Title', s:heman.orange)
" Visual mode selection
call s:HL('Visual', s:heman.fg2, s:none, s:reverse)

" Match paired bracket under cursor
call s:HL('MatchParen', s:none,  s:heman.lightblue)
" Diff mode: added line |diff.txt|
call s:HL('DiffAdd', s:heman.bg, s:heman.lightblue)
" Diff mode: changed line
call s:HL('DiffChange', s:heman.bg, s:heman.darkblue)
" Diff mode: deleted line
call s:HL('DiffDelete', s:heman.darkestblue, s:heman.red)
" Diff mode: Changed text withing a changed line
hi! link DiffText ErrorMsg

" Word that is not recognized by the spellchecker
call s:HL('SpellBad', s:heman.red, s:none, s:underline)
" Word that should start with a capital
call s:HL('SpellCap', s:heman.darkblue, s:none, s:underline)
" Word that is recognized by the spellchecker as one that is hardly ever used
call s:HL('SpellRare', s:heman.purple, s:none, s:underline)
" Word that is recognized by the spellchecker as one that is used in a    nother region¬
call s:HL('SpellLocal', s:heman.lightblue, s:none, s:underline)

" Popup menu: normal item
call s:HL('Pmenu', s:heman.bg, s:heman.orchid)
" Popup menu: scrollbar
hi! link PmenuSbar Pmenu
" Popup menu: selected item
hi! link PmenuSel Pmenu
" Popup menu: Thumb of the scrollbar
hi! link PmenuThumb Pmenu

" Line number of cursorline
call s:HL('CursorLineNr', s:heman.fg0, s:none, s:reverse)
" Screen line that the cursor is in (:set cursorline/nocursorline)
"call s:HL('CursorLine', '')

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:heman.fg1)

" Column where |signs| are displayed
call s:HL('SignColumn', s:heman.morchid)

" Line used for closed folds
call s:HL('Folded', s:heman.fg2, s:heman.lightblue)
" Column where folds are displayed
call s:HL('FoldColumn', s:heman.fg2, s:heman.darkblue)

" }}}
" Cursor: {{{

" Character under cursor
" call s:HL('Cursor', ...)
" Visual mode cursor, selection
" call s:HL('vCursor', ...)
" Input mode cursor
" call s:HL('iCursor', ...)
" Language mapping cursor
" call s:HL('lCursor', ...)

" }}}
" Syntax Highlighting: {{{

" |v:false|, |v:true|, |v:none| and |v:null|
call s:HL('Special', s:heman.morchid) " was darkblue!
" Comments: //, /* ... */ etc.
hi! link Comment LineNr
" TODO FIXME XXX keywords
hi! link Todo Search
" Errors
hi! link Error ErrorMsg

" Generic Statement
call s:HL('Statement', s:heman.yellow)
" if, else, endif, then, switch, etc.
call s:HL('Conditional', s:heman.fg2)
" for, do, while, etc.
hi! link Repeat Conditional
" case, default, etc.
call s:HL('Label', s:heman.salmon)
" try, catch, throw
" call s:HL('Exception', ...)

" sizeof, "+", "*", etc.
hi! link Operator MoreMsg

call s:HL('Delimiter', s:heman.morchid)
" Variable name
hi! link Identifier Label
" Function name
call s:HL('Function', s:heman.turquise)

" Generic preprocessor
call s:HL('PreProc', s:heman.orange)
" Preprocessor Include
hi! link Include PreProc
" Preprocessor Define
hi! link Define PreProc
" Same as Define
hi! link Macro PreProc
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit PreProc

" Generic Constant
call s:HL('Constant', s:heman.lightblue)
" Character constant: 'a', 'n'
call s:HL('Character', s:heman.morchid)
" Boolean constant: true, false
hi! link Boolean Character
" Float constant: 0.23, 7.7
hi! link Float Character

" String constant: "this is a string"
call s:HL('String', s:heman.purple)

call s:HL('EndOfBuffer', s:heman.fg1, s:heman.bg)

" Generic Type
call s:HL('Type', s:heman.orchid)
" Underlined text (make it have NO UNDERLINE AT ALL)
call s:HL('Underlined', s:heman.purple)

" }}}
" Vim: {{{

hi! link vimLet cDelimiter
hi! link vimUserFunc Character
hi! link vimCommand Conditional
hi! link vimIsCommand Conditional
hi! link vimNotFunc Conditional
hi! link vimParenSep Type
hi! link vimVar Character
hi! link vimHighlight Statement
hi! link vimHiBang PreProc

" }}}
" C: {{{

hi! link cBraces Conditional
hi! link cStructure Identifier
call s:HL('cDelimiter', s:heman.darkblue)

" https://github.com/justinmk/vim-syntax-extra
hi! link cAnsiFunction Constant

" }}}
" Perl: {{{

hi! link perlStatementInclude PreProc

" }}}
" Php: {{{

hi! link phpRegion Constant
hi! link phpParent cDelimiter

" }}}
" CSS: {{{

hi! link cssBraces Conditional
hi! link cssPseudoClassFn MoreMsg
hi! link cssAttrRegion MoreMsg
hi! link cssDimensionProp String
hi! link cssUnitDecorators Special
hi! link cssPositioningProp String
hi! link cssFunctionComma MoreMsg
"hi! link cssTagName Identifier

" }}}
" javascript: {{{

hi! link javaScriptIdentifier PreProc
hi! link javaScriptBraces Conditional
hi! link javaScriptNumber Constant
hi! link javaScriptRegexpString MoreMsg

" https://github.com/pangloss/vim-javascript
hi! link jsImport Constant
hi! link jsFrom Constant
hi! link jsClassDefinition Constant
hi! link jsClassKeyword Include
hi! link jsSuper MoreMsg
hi! link jsOperator MoreMsg
hi! link jsThis Include
hi! link jsFuncCall Constant
hi! link jsBrackets MoreMsg
hi! link jsParen String
hi! link jsNumber Identifier
hi! link jsClassFuncName Constant
hi! link jsFuncBraces Conditional

call s:HL('jsNoise', s:heman.morchid)

" }}}
" ruby: {{{

hi! link rubySharpBang Statement
hi! link rubyStringDelimiter MoreMsg

" }}}
" html: {{{

hi! link htmlTag Conditional
hi! link htmlEndTag htmlTag
hi! link htmlTagName Constant

" }}}
" help {{{

hi! link helpStar MoreMsg
hi! link helpBar helpStar
hi! link helpExample Constant
hi! link helpVim Statement
hi! link helpIgnore Conditional

" }}}
