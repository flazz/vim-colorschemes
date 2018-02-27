let g:lightline = {
\	'enable': {
\		'tabline': 0,
\	},
\	'active': {
\		'left': [
\			['column-padded'],
\			['paste', 'readonly', 'fancy-path', 'filetype'],
\			['tagbar-tag'],
\		],
\		'right': [
\			[],
\			['git-branch'],
\			['bufnum'],
\		],
\	},
\	'inactive': {
\		'left': [
\			['readonly', 'fancy-path', 'filetype'],
\		],
\		'right': [
\			[],
\			['git-branch'],
\			['bufnum'],
\		],
\	},
\	'component': {
\		'lineinfo': ' %3l:%-2v',
\		'filebuf': '%f (%n)',
\	},
\	'component_function': {
\               'column-padded': 'PaddedColumn',
\		'tagbar-tag': 'ShowTagBarTag',
\		'fancy-path': 'ShowFancyPath',
\		'readonly': 'ShowReadOnly',
\		'git-branch': 'ShowGitBranch',
\	},
\	'separator': {
\		'left': '|',
\		'right': '|',
\	},
\	'subseparator': {
\		'left': ' ≣',
\		'right': '≣ ',
\	},
\	'colorscheme': 'triplejelly',
\}

function! PaddedColumn()
	return printf('%3d', col('.'))
endfunction

function! ShowTagBarTag()
	return tagbar#currenttag('%s', '', 'fs')
endfunction

function! ShowReadOnly()
	return &readonly ? '⭤' : ''
endfunction

function! ShowGitBranch()
	if !exists('*fugitive#head')
		return ''
	endif

	let l:branch = fugitive#head()
	return strlen(l:branch) ? ''.l:branch : ''
endfunction

function! ShowFancyPath()
	" Comment out relpath usage for now since I haven't put that in a repo
	" on GitHub yet.
	"let l:path = system('relpath -nl=false -relative -base '.shellescape(getcwd()).' '.shellescape(expand('%p')).'')
	let l:path = fnamemodify(expand('%:p'), ':~:.')
	"let l:buf = bufnr(expand('%'))
	"return l:path.' ('.l:buf.')'
	let l:modifier = ''
	if &modifiable && &modified
		let l:modifier = '⦿ '
	elseif &modifiable
		let l:modifier = '  '
	endif
	return l:modifier.l:path
endfunction

if exists('g:loaded_lightline')
	try
		call lightline#init()
		call lightline#update()
	catch
	endtry
endif

" vim: set ft=vim ts=8 sw=8 tw=79 sts=0 fo=n1jcroql noet sta :
