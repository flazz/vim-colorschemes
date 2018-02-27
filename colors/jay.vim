" =============================================================================
" Author: josuegaleas
" License: MIT License
" Source: https://github.com/josuegaleas/jay
" Last Edit: January 11, 2018
" =============================================================================

" Initial Setup:
hi clear

if exists("syntax_on")
	syntax reset
endif

let s:original_background = &background "FIXME
let g:colors_name = "jay"

if exists("jay_transparent")
	let s:transparent = jay_transparent
else
	let s:transparent = 0
endif

" Palette:
let s:none = ['NONE', 'NONE']
" Regular Colors
let s:red = ['#df5f5f', 167]
let s:orange = ['#dfaf5f', 179]
let s:yellow = ['#dfdf5f', 185]
let s:green = ['#5fdf5f', 77]
let s:aqua = ['#5fdfdf', 80]
let s:blue = ['#5f87df', 68]
let s:purple = ['#af5fdf', 134]
" Background Colors
let s:back0 = ['#121212', 233]
let s:back = ['#1c1c1c', 234]
let s:back2 = ['#262626', 235]
let s:back3 = ['#444444', 238]
let s:back4 = ['#606060', 241]
" Foreground Colors
let s:fore0 = ['#e4e4e4', 254]
let s:fore = ['#dadada', 253]
let s:fore2 = ['#bcbcbc', 250]
let s:fore3 = ['#9e9e9e', 247]
let s:fore4 = ['#808080', 244]
" Debugging Colors
let s:unknown = ['#ff00ff', 201]
let s:unknown2 = ['#ffff00', 226]
" Emphasis
let s:plain = 'none,'
let s:bold = 'bold,'
let s:underline = 'underline,'
let s:bold_underline = 'bold,underline,'

if &background == "light"
	" Regular Colors
	let s:red = ['#af0000', 124]
	let s:orange = ['#af8700', 136]
	let s:yellow = ['#afaf00', 142]
	let s:green = ['#00af00', 34]
	let s:aqua = ['#00afaf', 37]
	let s:blue = ['#005faf', 25]
	let s:purple = ['#8700af', 91]
	" Background Colors
	let s:back0 = ['#e4e4e4', 254]
	let s:back = ['#dadada', 253]
	let s:back2 = ['#d0d0d0', 252]
	let s:back3 = ['#b2b2b2', 249]
	let s:back4 = ['#949494', 246]
	" Foreground Colors
	let s:fore0 = ['#121212', 233]
	let s:fore = ['#1c1c1c', 234]
	let s:fore2 = ['#3a3a3a', 237]
	let s:fore3 = ['#585858', 240]
	let s:fore4 = ['#767676', 243]
endif

if &t_Co <= 16
	let s:red[1] = 1
	let s:orange[1] = 7 "Not actually orange, it's gray FIXME
	let s:yellow[1] = 3
	let s:green[1] = 2
	let s:aqua[1] = 6
	let s:blue[1] =  4
	let s:purple[1] = 5
	let s:back0[1] = 0
	let s:back[1] = 0
	let s:back2[1] = 0
	let s:back3[1] = 8
	let s:back4[1] = 8
	let s:fore0[1] = 15
	let s:fore[1] = 15
	let s:fore2[1] = 15
	let s:fore3[1] = 7
	let s:fore4[1] = 7

	if &background == "light"
		let s:red[1] = 1
		let s:orange[1] = 7 "Not actually orange, it's gray FIXME
		let s:yellow[1] = 3
		let s:green[1] = 2
		let s:aqua[1] = 6
		let s:blue[1] =  4
		let s:purple[1] = 5
		let s:back0[1] = 15
		let s:back[1] = 15
		let s:back2[1] = 15
		let s:back3[1] = 7
		let s:back4[1] = 7
		let s:fore0[1] = 0
		let s:fore[1] = 0
		let s:fore2[1] = 0
		let s:fore3[1] = 8
		let s:fore4[1] = 8
	endif
endif

" Highlighting Functions:
" Based on gruvbox's highlighting function, which can be found at:
" https://github.com/morhetz/gruvbox/blob/master/colors/gruvbox.vim#L374
function! s:HF(group, fg, bg, em)
	execute join(['hi', a:group,
				\ 'guifg=' . a:fg[0], 'ctermfg=' . a:fg[1],
				\ 'guibg=' . a:bg[0], 'ctermbg=' . a:bg[1],
				\ 'gui=' . a:em[:-2], 'cterm=' . a:em[:-2],
				\ 'term=' . a:em[:-2]], ' ')
endfunction

if has("spell")
	function! s:HFS(group, sp, bg, em)
		execute join(['hi', a:group,
					\ 'guisp=' . a:sp[0],
					\ 'guifg=NONE ctermfg=' . a:sp[1],
					\ 'guibg=NONE ctermbg=' . a:bg[1],
					\ 'gui=bold,undercurl cterm=' . a:em[:-2],
					\ 'term=' . a:em[:-2]], ' ')
	endfunction
endif

" Highlighting:
call s:HF('SpecialKey', s:back3, s:none, s:plain)
call s:HF('NonText', s:back3, s:none, s:plain)
call s:HF('Directory', s:green, s:none, s:plain)
call s:HF('ErrorMsg', s:red, s:none, s:plain) "Command Error
call s:HF('IncSearch', s:fore, s:back4, s:bold)
call s:HF('Search', s:fore2, s:back3, s:plain)
call s:HF('MoreMsg', s:blue, s:none, s:plain) "Command More
call s:HF('ModeMsg', s:fore, s:none, s:plain)
call s:HF('LineNr', s:back4, s:back2, s:plain)
call s:HF('CursorLineNr', s:orange, s:none, s:plain)
call s:HF('Question', s:green, s:none, s:plain) "Command Question
call s:HF('Statusline', s:fore3, s:back2, s:plain)
call s:HF('StatuslineNC', s:back3, s:back2, s:plain)
call s:HF('VertSplit', s:back3, s:back0, s:bold)
call s:HF('Title', s:red, s:none, s:plain)
call s:HF('Visual', s:none, s:back3, s:plain)
call s:HF('VisualNOS', s:none, s:back3, s:plain)
call s:HF('WarningMsg', s:orange, s:none, s:plain) "Command Warning
call s:HF('WildMenu', s:aqua, s:back0, s:plain)
call s:HF('Folded', s:back3, s:back0, s:plain)
call s:HF('FoldColumn', s:blue, s:back0, s:plain)
call s:HF('DiffAdd', s:green, s:back2, s:plain)
call s:HF('DiffChange', s:yellow, s:back2, s:plain)
call s:HF('DiffDelete', s:red, s:back2, s:plain)
call s:HF('DiffText', s:blue, s:back2, s:bold_underline)
call s:HF('SignColumn', s:none, s:back0, s:plain)
call s:HF('Conceal', s:unknown, s:unknown2, s:bold_underline) "FIXME
if has("spell")
	call s:HFS('SpellBad', s:red, s:back0, s:bold)
	call s:HFS('SpellCap', s:orange, s:back0, s:bold)
	call s:HFS('SpellRare', s:purple, s:back0, s:bold)
	call s:HFS('SpellLocal', s:green, s:back0, s:bold)
endif
call s:HF('Pmenu', s:aqua, s:back0, s:plain)
call s:HF('PmenuSel', s:fore, s:back2, s:plain)
call s:HF('PmenuSbar', s:none, s:back2, s:plain)
call s:HF('PmenuThumb', s:none, s:back3, s:plain)
call s:HF('TabLine', s:fore2, s:back3, s:plain)
call s:HF('TabLineSel', s:back2, s:back4, s:bold)
call s:HF('TabLineFill', s:none, s:back2, s:plain)
call s:HF('CursorColumn', s:none, s:back2, s:plain)
call s:HF('CursorLine', s:none, s:back2, s:plain)
call s:HF('ColorColumn', s:none, s:back2, s:plain)
call s:HF('StatusLineTerm', s:back, s:green, s:plain)
call s:HF('StatusLineTermNC', s:green, s:back2, s:plain)
call s:HF('Cursor', s:back, s:fore, s:plain)
call s:HF('lCursor', s:back, s:fore, s:plain)
call s:HF('MatchParen', s:back, s:orange, s:bold)
call s:HF('Normal', s:fore, s:back, s:plain)
let &background = s:original_background "FIXME
call s:HF('Comment', s:back4, s:none, s:plain)
call s:HF('Constant', s:purple, s:none, s:plain)
call s:HF('Special', s:aqua, s:none, s:plain)
call s:HF('Identifier', s:orange, s:none, s:plain)
call s:HF('Statement', s:red, s:none, s:plain)
call s:HF('PreProc', s:green, s:none, s:plain)
call s:HF('Type', s:aqua, s:none, s:plain)
call s:HF('Underlined', s:blue, s:none, s:underline)
call s:HF('Ignore', s:fore3, s:none, s:plain)
call s:HF('Error', s:red, s:back0, s:bold)
call s:HF('Todo', s:fore0, s:back0, s:bold)
call s:HF('String', s:yellow, s:none, s:plain)
call s:HF('Character', s:yellow, s:none, s:plain)
call s:HF('Number', s:purple, s:none, s:plain)
call s:HF('Boolean', s:purple, s:none, s:plain)
call s:HF('Float', s:purple, s:none, s:plain)
call s:HF('Function', s:green, s:none, s:plain)
call s:HF('Conditional', s:red, s:none, s:plain)
call s:HF('Repeat', s:red, s:none, s:plain)
call s:HF('Label', s:yellow, s:none, s:plain)
call s:HF('Operator', s:red, s:none, s:plain)
call s:HF('Keyword', s:red, s:none, s:plain)
call s:HF('Exception', s:green, s:none, s:plain)
call s:HF('Define', s:orange, s:none, s:plain)
call s:HF('Macro', s:yellow, s:none, s:plain)
call s:HF('PreCondit', s:green, s:none, s:plain)
call s:HF('StorageClass', s:orange, s:none, s:plain)
call s:HF('Structure', s:orange, s:none, s:plain)
call s:HF('Typedef', s:aqua, s:none, s:plain)
call s:HF('Tag', s:red, s:none, s:plain)
call s:HF('SpecialChar', s:red, s:none, s:plain)
call s:HF('Delimiter', s:fore4, s:none, s:plain)
call s:HF('SpecialComment', s:fore3, s:none, s:plain)
call s:HF('Debug', s:unknown, s:unknown2, s:bold_underline) "FIXME

" Transparency:
if s:transparent == 1
	call s:HF('IncSearch', s:fore, s:none, s:bold)
	call s:HF('Search', s:fore2, s:none, s:underline)
	call s:HF('LineNr', s:back4, s:none, s:plain)
	call s:HF('Statusline', s:fore3, s:none, s:plain)
	call s:HF('StatuslineNC', s:back3, s:none, s:plain)
	call s:HF('VertSplit', s:back3, s:none, s:bold)
	call s:HF('Visual', s:none, s:none, s:bold_underline)
	call s:HF('VisualNOS', s:none, s:none, s:bold_underline)
	call s:HF('WildMenu', s:aqua, s:none, s:plain)
	call s:HF('Folded', s:back3, s:none, s:plain)
	call s:HF('FoldColumn', s:blue, s:none, s:plain)
	call s:HF('DiffAdd', s:green, s:none, s:bold)
	call s:HF('DiffChange', s:yellow, s:none, s:bold)
	call s:HF('DiffDelete', s:red, s:none, s:bold)
	call s:HF('DiffText', s:blue, s:none, s:bold_underline)
	call s:HF('SignColumn', s:none, s:none, s:plain)
	if has("spell")
		call s:HFS('SpellBad', s:red, s:none, s:bold_underline)
		call s:HFS('SpellCap', s:orange, s:none, s:bold_underline)
		call s:HFS('SpellRare', s:purple, s:none, s:bold_underline)
		call s:HFS('SpellLocal', s:green, s:none, s:bold_underline)
	endif
	call s:HF('Pmenu', s:aqua, s:none, s:plain)
	call s:HF('PmenuSel', s:fore, s:none, s:plain)
	call s:HF('PmenuSbar', s:none, s:none, s:plain)
	call s:HF('PmenuThumb', s:none, s:none, s:plain)
	call s:HF('TabLine', s:fore2, s:none, s:plain)
	call s:HF('TabLineSel', s:back4, s:none, s:bold)
	call s:HF('TabLineFill', s:none, s:none, s:plain)
	call s:HF('CursorColumn', s:none, s:none, s:underline)
	call s:HF('CursorLine', s:none, s:none, s:underline)
	call s:HF('ColorColumn', s:none, s:none, s:underline)
	call s:HF('StatusLineTerm', s:green, s:none, s:plain)
	call s:HF('StatusLineTermNC', s:back3, s:none, s:plain)
	call s:HF('Cursor', s:none, s:fore, s:plain)
	call s:HF('lCursor', s:none, s:fore, s:plain)
	call s:HF('MatchParen', s:orange, s:none, s:bold)
	call s:HF('Normal', s:fore, s:none, s:plain)
	let &background = s:original_background "FIXME
	call s:HF('Error', s:red, s:none, s:bold)
	call s:HF('Todo', s:fore0, s:none, s:bold)
endif
