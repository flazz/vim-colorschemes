" underword.vim
" Noel Cower
"
" Highlights the current word under the cursor (if it's of a certain group).
" Not foolproof, but mostly good enough.
"
" Based mostly on "too much php"'s answer on Stack Overflow:
" http://stackoverflow.com/a/1552193/457812

if !exists('g:highlight_underword')
	let g:highlight_underword = 0
endif

let g:underword_highlight = 'UnderWord'

let g:underword_groups = [
\           'Variable',
\           'Function',
\           'FunctionName',
\           'Class',
\           'Identifier',
\           'Type',
\           'Normal',
\]

function! s:HighlightUnderWord()
	if !g:highlight_underword
		return
	endif

	if !exists('g:underword_groups')
		HighlightUnderWord
		return
	endif

	let l:line = line('.')
	let l:col = col('.')

	" translucent
	let l:id = synID(l:line, l:col, 1)
	let l:name = synIDattr(l:id, 'name')
	if index(g:underword_groups, l:name) >= 0
		HighlightUnderWord
		return
	endif

	" not translucent
	let l:id = synID(l:line, l:col, 0)
	let l:name = synIDattr(l:id, 'name')
	if index(g:underword_groups, l:name) >= 0
		HighlightUnderWord
		return
	endif

	" translated
	let l:id = synIDtrans(synID(l:line, l:col, 1))
	let l:name = synIDattr(l:id, 'name')
	if index(g:underword_groups, l:name) >= 0
		HighlightUnderWord
		return
	endif

	match
endfunction

function! s:RefreshUnderWord()
	augroup UnderWordHL
	au!
	if !g:highlight_underword
		match
	else
		au CursorMoved * call <SID>HighlightUnderWord()
		"au CursorMoved * ShowSyntaxGroups
		call s:HighlightUnderWord()
	endif
	augroup END
endfunction

function! s:ToggleUnderWord()
	let g:highlight_underword = !g:highlight_underword
	call s:RefreshUnderWord()
endfunction

function! s:SynNames(list)
	let l:res = []
	for l:id in a:list
		let l:name = synIDattr(l:id, 'name')
		let l:trans = synIDattr(synIDtrans(l:id), 'name')
		if l:name ==# l:trans
			call add(l:res, l:name)
		else
			call add(l:res, printf("%s(%s)", l:name, l:trans))
		endif
	endfor
	return l:res
endfunction

call s:RefreshUnderWord()

command! HighlightUnderWord exe printf('match %s /\V\<%s\>/', g:underword_highlight, escape(expand('<cword>'), '/\'))
command! ToggleUnderWord call <SID>ToggleUnderWord()
command! ShowSyntaxGroups echo join(<SID>SynNames(synstack(line('.'), col('.'))), ' ')

" vim: set ft=vim ts=8 sw=8 tw=79 sts=0 fo=n1jcroql noet sta :
