" HOW TO BUILD: vim -u source.vim

set nocompatible

let s:output = []

function! s:print(text)
	call add(s:output, a:text)
endfunction

function! s:writefile(file)
	call writefile(s:output, a:file)
endfunction

" constants
let s:base = '_base_'
" highlighting properties
let s:props = {}

" functions for highlighting " {{{
function! s:hi(group, ...) " fg, bg, attr, term_fg, term_bg, term_attr
	let s:props[a:group] = a:000
endfunction

function! s:copy(group, orig_group)
	let orig = a:orig_group
	call s:hi(a:group, orig, orig, orig, orig, orig, orig)
endfunction


function! s:highlight(bg)
	if a:bg == 'light'
		call s:set_light_colors()
	else
		call s:set_dark_colors()
	endif
	call s:set_common_colors()
	call s:do_highlight()
	let &background = a:bg
endfunction


function! s:do_highlight()
	" Normal first
	" see :help :hi-normal-cterm
	for group in sort(keys(s:props), function('s:normal_first'))
		call s:set_highlight(group)
	endfor
endfunction


function! s:normal_first(g1, g2)
	if a:g1 == 'Normal'
		return -1
	endif
	if a:g2 == 'Normal'
		return 1
	endif
	return a:g1 >= a:g2 ? 1 : -1
endfunction


function! s:set_highlight(group)
	let args = s:props[a:group]

	let fg = s:get(args, 0, '')
	let bg = s:get(args, 1, '')
	let attr = s:get(args, 2, '')

	let term_fg = s:get(args, 3, '')
	let term_bg = s:get(args, 4, '')
	let term_attr = s:get(args, 5, '')

	let cmd_args = [
	\	s:maybe(' guifg=#', fg),
	\	s:maybe(' guibg=#', bg),
	\	s:maybe(' gui=', attr),
	\	s:maybe(' ctermfg=', s:or(term_fg, s:tco(fg))),
	\	s:maybe(' ctermbg=', s:or(term_bg, s:tco(bg))),
	\	s:maybe(' cterm=', term_attr),
	\]

	if attr == 'undercurl'
		call add(cmd_args, s:maybe(' guisp=#', fg))
		call add(cmd_args, s:maybe(' cterm=', s:or(term_attr, 'underline')))
	endif

	call s:print("\thi " . a:group . join(cmd_args, ''))
endfunction


function! s:maybe(key_eq, val)
	if empty(a:val)
		return ''
	endif
	return a:key_eq . a:val
endfunction


function! s:or(val, def_val)
	if !empty(a:val)
		return a:val
	endif
	return a:def_val
endfunction


function! s:get(args, index, default, ...)
	let val = s:get_val(a:args, a:index, a:default)
	if val == ''
		return val
	endif
	" rgb color
	if val =~ '^#[a-fA-F0-9]\{6\}'
		return strpart(val, 1)
	endif
	" Starting with '@' means a syntax group reference
	if val =~ '^@'
		let val = strpart(val, 1)
		let props = (a:0 > 0) ? a:1 : copy(s:props)
		let new_args = get(props, val, [])
		if empty(new_args)
			return ''
		endif
		call remove(props, val)
		return s:get(new_args, a:index, a:default, props)
	endif
	" attribute
	return val
endfunction


function! s:get_val(args, index, default)
	let val = get(a:args, a:index, a:default)
	if val == s:base
		return get(s:base_args, a:index, '')
	endif
	if val != ''
		return val
	endif
	return a:default
endfunction


" Terminal COlor
function! s:tco(rgb)
	if empty(a:rgb)
		return ''
	endif
	let r = ('0x' . strpart(a:rgb, 0, 2)) + 0
	let g = ('0x' . strpart(a:rgb, 2, 2)) + 0
	let b = ('0x' . strpart(a:rgb, 4, 2)) + 0
	let c = s:rgb2tco(r, g, b)
	return c
endfunction


function! s:rgb2tco(r, g, b)
	if s:rgb_is_gray(a:r, a:g, a:b)
		return s:rgb2gray(a:r, a:g, a:b)
	else
		return s:rgb2color(a:r, a:g, a:b)
	endif
endfunction


function! s:rgb2color(r, g, b)
	let r = float2nr(5.0 * a:r / 255.0 - 0.45)
	let g = float2nr(5.0 * a:g / 255.0 - 0.45)
	let b = float2nr(5.0 * a:b / 255.0 - 0.45)
	let r = (r < 0) ? 0 : r
	let g = (g < 0) ? 0 : g
	let b = (b < 0) ? 0 : b
	let c = 16 + (r * 36) + (g * 6) + (b)
	return c
endfunction


function! s:rgb2gray(r, g, b)
	let gray = float2nr(23.0 * (a:r + a:g + a:b) / 3.0 / 255.0 - 0.45)
	let gray = (gray < 0) ? 0 : gray
	let gray += 232
	return gray
endfunction


function! s:rgb_is_gray(r, g, b)
	let r = a:r * a:r
	let g = a:g * a:g
	let b = a:b * a:b
	let a = (r + g + b) / 3.0 " average
	let t = 1500.0 " threshold
	if (abs(a -r) < t && abs(a - g) < t && abs(a - b) < t)
		return 1
	endif
	return 0
endfunction
" }}}


" highlights " {{{
function! s:set_light_colors() " {{{
	let _ = ''
	let b = s:base
	let frame = '#4a4642'

	let s:base_args = ['#2e2e2e', '#f0f0e5', 'none', 234, 255, 'none']

	let darkred = '#ffe3e5'

	call s:hi('CursorLine', _, '#cce0ef', 'none', _, 153, 'none')
	call s:hi('Directory', '#1177dd')
	call s:hi('Folded', '#04530d', '#d0ead0')
	call s:hi('LineNr', '#567686', '#e2e2d0', _, 236)
	call s:hi('ModeMsg', '#337ca3')
	call s:hi('MoreMsg', '#1e7b3d')
	call s:hi('WarningMsg', '#ea6042')
	call s:hi('NonText', '#7878ba', _, b)
	call s:hi('Question', '#008080')
	call s:hi('IncSearch', b, '#f4b3c2', b, b, 218)
	call s:hi('Search', b, '#e9e7ac')
	call s:hi('SpecialKey', '#aabbcc')
	call s:hi('StatusLine', '#dcdcdc', frame, 'none')
	call s:hi('StatusLineNC', '@StatusLine', '#7a7672', 'italic', _, _, b)
	call s:hi('VertSplit', frame, frame, 'none')
	call s:hi('Visual', _, '#cce0ef', _, _, 153)
	call s:hi('TabLineSel', frame, _, b)
	call s:hi('Pmenu', b, '#f6e4e7', _, _, 231)
	call s:hi('Comment', '#878965', _)
	call s:hi('ColorColumn', _, '#dfd6d1')

	call s:hi('Constant', '#00695c')
	call s:hi('Identifier', '#546e7a')
	call s:hi('Statement', '#0c6cc0', _, b)
	call s:hi('Special', '#1041a8')
	call s:hi('PreProc', '#6b118a')
	call s:hi('Type', '@Constant', _, b)
	call s:hi('Function', '#cb1265')
	call s:hi('MatchParen', '#0e8ed3', '#dbf2ff')
	call s:hi('Ignore', '#666666')
	call s:hi('Todo', '#4d4214', '#fdfec9', _, _, 229)
	call s:hi('Error', '#d1160b', darkred, _, _, 223)
	call s:hi('Tag', '#a25a09')
	call s:hi('SpellBad', '@Error', '@Error', 'undercurl', _, '@Error')
	call s:hi('SpellCap', '@String', '@MatchParen', 'undercurl')
	call s:hi('SpellRare', '@Folded', '@Folded', 'undercurl')
	call s:hi('SpellLocal', '@Todo', '@Todo', 'undercurl', _, '@Todo')
	call s:hi('DiffAdd', _, '@SpellRare')
	call s:hi('DiffDelete', darkred, darkred, _, 174, 174)
	call s:hi('DiffChange', _, '@SpellLocal', _, _, '@Todo')
	call s:hi('DiffText', _, '#fed910')
endfunction " }}}


function! s:set_dark_colors() " {{{
	let _ = ''
	let x = '#121713'
	let b = s:base
	let frame = '#292c2f'

	let s:base_args = ['#dadad5', x, 'none', 255, 234, 'none']

	call s:hi('CursorLine', _, '#23343d', 'none', _, 24, 'none')
	call s:hi('Directory', '#6aaaea')
	call s:hi('Folded', '#a0cab0', '#303a3b')
	call s:hi('LineNr', '#7c8884', '#132423')
	call s:hi('ModeMsg', '#6badd1')
	call s:hi('MoreMsg', '#add581')
	call s:hi('WarningMsg', '#e0b088')
	call s:hi('NonText', '#7878ba', _, b)
	call s:hi('Question', '#00a0a0')
	call s:hi('IncSearch', b, '#d51487', b, _, 162)
	call s:hi('Search', x, '#c9c73c')
	call s:hi('SpecialKey', '#3a4857', _, _, 59)
	call s:hi('StatusLine', '#b2b5b2', frame, 'none', _, 237)
	call s:hi('StatusLineNC', '#727572', '#020508', 'italic', 235, 232, b)
	call s:hi('VertSplit', frame, frame, 'none', 237, 237)
	call s:hi('Visual', _, '#23343d', _, _, 24)
	call s:hi('TabLineSel', '@Function', _, b)
	call s:hi('Pmenu', b, '@StatusLine', _, _, 237)
	call s:hi('Comment', '#707073', _)
	call s:hi('ColorColumn', _, '#262f21')

	call s:hi('Constant', '#70a395')
	call s:hi('Identifier', '#91a8a5')
	call s:hi('Statement', '#91b5d4', _, b)
	call s:hi('PreProc', '#8d89c7')
	call s:hi('Special', '#a7a053')
	call s:hi('Type', '#5f94ca', _, b)
	call s:hi('Function', '#d789c8', _, _, 168)
	call s:hi('MatchParen', b, '#088b8c')
	call s:hi('Ignore', '#666666')
	call s:hi('Todo', '#fdfec9', '#4d4214', _, _, b)
	call s:hi('Error', '#ff8485', b, _, _, b)
	call s:hi('Tag', '#d38d6b')
	call s:hi('SpellBad', '@Error', b, 'undercurl', '@Error')
	call s:hi('SpellCap', '@String', b, 'undercurl')
	call s:hi('SpellRare', '@Folded', b, 'undercurl')
	call s:hi('SpellLocal', '@Todo', b, 'undercurl', '@Todo')
	call s:hi('DiffAdd', _, '#013a06', b, 71, 16)
	call s:hi('DiffDelete', '#491008', '#491008', _, 237, 237)
	call s:hi('DiffChange', _, '#4a4707', _, 178, 235)
	call s:hi('DiffText', '#fefd03', '#7b7b00', _, 226)
endfunction " }}}


function! s:set_common_colors() " {{{
	let _ = ''
	let b = s:base

	call s:hi('Normal', b, b, b, b, b, b)

	call s:hi('Cursor', _, '#f39812')
	call s:hi('CursorIM', _, '#4a9f68')
	call s:hi('CursorColumn', _, '@CursorLine')
	call s:copy('FoldColumn', '@Folded')
	call s:hi('CursorLineNr', '@LineNr', '@CursorLine', 'none')
	call s:copy('ErrorMsg', '@Error')
	call s:copy('TabLine', '@StatusLine')
	call s:copy('TabLineFill', '@StatusLine')
	call s:hi('Title', '@Special', _, b)
	call s:copy('PmenuSel', '@IncSearch')
	call s:copy('PmenuSbar', '@Pmenu')
	call s:copy('PmenuThumb', '@PmenuSel')
	call s:copy('SignColumn', '@LineNr')

	call s:hi('String', '@Special')
	call s:hi('Operator', '@PreProc')
	call s:hi('Underlined', '@Statement')
	call s:copy('WildMenu', '@Normal')
	call s:hi('Conceal', '@Statement', b, b)
endfunction " }}}
" }}}


" Make colorscheme file {{{
call s:print('" This file is built by ../source.vim.')
call s:print('" Do not modify this file directly.')
call s:print('highlight clear')
call s:print("if exists('syntax_on')")
call s:print("\tsyntax reset")
call s:print('endif')
call s:print('')
call s:print("let g:colors_name = 'scheakur'")
call s:print('')
call s:print("if &background == 'light'")
call s:highlight('light')
call s:print('else')
" reset highlighting properties
let s:props = {}
call s:highlight('dark')
call s:print('endif')

call s:writefile('colors/scheakur.vim')
" }}}


" cleanup {{{
" TODO need ?
delfunction s:do_highlight
delfunction s:hi
delfunction s:get
delfunction s:get_val
delfunction s:tco
delfunction s:rgb2tco
delfunction s:rgb_is_gray
delfunction s:rgb2gray
delfunction s:rgb2color
delfunction s:highlight
delfunction s:set_light_colors
delfunction s:set_dark_colors
delfunction s:set_common_colors
unlet s:base_args
unlet s:base
unlet s:props
unlet s:output
" }}}

" vim: set noexpandtab foldmethod=marker :
