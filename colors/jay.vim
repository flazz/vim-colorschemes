" =============================================================================
" Author: josuegaleas
" License: MIT License
" Source: https://github.com/josuegaleas/jay
" Last Edit: November 3rd, 2016
" Description: Yet another colorscheme for Vim.
" =============================================================================

" Initial Setup:
set background=dark
hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="jay"

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
" TODO, Debugging Colors
let s:unknown = ['#0000ff', 12]
let s:unknown2 = ['#ffff00', 11]

" 16 color terminal support
if &t_Co == 16
	let s:red[1] = 1
	let s:orange[1] = 7
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
endif

" Emphasis:
let s:bold = 'bold,'
let s:underline = 'underline,'
let s:bold_underline = 'bold,underline,'

" Highlighting Function:
" Heavily based on gruvbox's highlighting function,
" which can be found at: https://github.com/morhetz/gruvbox/blob/master/colors/gruvbox.vim#L346
function! s:HF(group, fg, ...)
	" Foreground
	let fg = a:fg

	" Background
	if a:0 >= 1
		let bg = a:1
	else
		let bg = s:none
	endif

	" Emphasis
	if a:0 >= 2
		let emstr = a:2
	else
		let emstr = 'none,'
	endif

	" Highlight
	execute join(['hi', a:group,
		\ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
		\ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
		\ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2],
		\ 'term=' . emstr[:-2]], ' ')
endfunction

" Highlighting:
call s:HF('Normal', s:fore, s:back)
call s:HF('CursorLine', s:none, s:back2)
call s:HF('CursorLineNr', s:orange)

call s:HF('Boolean', s:purple)
call s:HF('Character', s:yellow)
call s:HF('Number', s:purple)
call s:HF('String', s:yellow)
call s:HF('Conditional', s:red)
call s:HF('Constant', s:purple)
call s:HF('Cursor', s:back, s:fore) "TODO, is this only in GUI?
call s:HF('lCursor', s:back, s:fore) "TODO, is this only in GUI?
call s:HF('Debug', s:unknown, s:unknown2, s:bold_underline) "FIXME
call s:HF('Define', s:aqua)
call s:HF('Delimiter', s:fore4)

call s:HF('DiffAdd', s:green, s:back2)
call s:HF('DiffChange', s:yellow, s:back2)
call s:HF('DiffDelete', s:red, s:back2)
call s:HF('DiffText', s:blue, s:back2, s:bold_underline)

call s:HF('Directory', s:green)
call s:HF('Error', s:red, s:back0, s:bold)
call s:HF('ErrorMsg', s:red) "Command Error
call s:HF('Exception', s:green)
call s:HF('Float', s:purple)
call s:HF('FoldColumn', s:blue, s:back0)
call s:HF('Folded', s:back3, s:back0)
call s:HF('Function', s:green)
call s:HF('Identifier', s:orange)
call s:HF('Ignore', s:fore3)
call s:HF('IncSearch', s:fore, s:back4, s:bold)

call s:HF('Keyword', s:red)
call s:HF('Label', s:yellow)
call s:HF('Macro', s:yellow)

call s:HF('MatchParen', s:back, s:orange, s:bold)
call s:HF('ModeMsg', s:fore)
call s:HF('MoreMsg', s:blue) "Command 'more'
call s:HF('Operator', s:red)

call s:HF('Pmenu', s:aqua, s:back0)
call s:HF('PmenuSel', s:fore, s:back2)
call s:HF('PmenuSbar', s:none, s:back2)
call s:HF('PmenuThumb', s:none, s:back3)

call s:HF('PreCondit', s:green)
call s:HF('PreProc', s:green)
call s:HF('Question', s:green) "Command Question
call s:HF('Repeat', s:red)
call s:HF('Search', s:fore2, s:back3, s:bold_underline)

call s:HF('SignColumn', s:none, s:back0)
call s:HF('SpecialChar', s:red)
call s:HF('SpecialComment', s:fore3)
call s:HF('Special', s:aqua)

if has("spell")
	" Highlighting Function For Spelling:
	" Based on gruvbox's highlighting function,
	" which can be found at: https://github.com/morhetz/gruvbox/blob/master/colors/gruvbox.vim#L346
	function! s:HFFS(group, sp)
		execute join(['hi', a:group,
			\ 'guisp=' . a:sp[0],
			\ 'guifg=NONE ctermfg=' . a:sp[1],
			\ 'guibg=NONE ctermbg=' . s:back3[1],
			\ 'gui=bold,undercurl cterm=bold,undercurl',
			\ 'term=bold,undercurl '])
	endfunction

	call s:HFFS('SpellBad', s:red)
	call s:HFFS('SpellCap', s:orange)
	call s:HFFS('SpellRare', s:purple)
	call s:HFFS('SpellLocal', s:green)
endif

call s:HF('Statement', s:red)
call s:HF('Statusline', s:fore3, s:back2)
call s:HF('StatuslineNC', s:back3, s:back2)
call s:HF('StorageClass', s:orange)
call s:HF('Structure', s:orange)
call s:HF('Tag', s:red)
call s:HF('Title', s:red)
call s:HF('Todo', s:fore0, s:back0, s:bold)

call s:HF('Typedef', s:aqua)
call s:HF('Type', s:aqua)
call s:HF('Underlined', s:blue, s:none, s:underline)

call s:HF('VertSplit', s:back3, s:back0, s:bold)
call s:HF('Visual', s:none, s:back3)
call s:HF('VisualNOS', s:none, s:back3)
call s:HF('WarningMsg', s:orange) "Command Warning
call s:HF('WildMenu', s:aqua, s:back0)

call s:HF('TabLine', s:fore2, s:back3)
call s:HF('TabLineFill', s:none, s:back2)
call s:HF('TabLineSel', s:back2, s:back4, s:bold)

call s:HF('Comment', s:back4)
call s:HF('CursorColumn', s:none, s:back2)
call s:HF('ColorColumn', s:none, s:back2)
call s:HF('LineNr', s:back4, s:back2)
call s:HF('NonText', s:back3)
call s:HF('SpecialKey', s:back3)
