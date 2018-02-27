" auto-vim-comment.vim
" Noel Cower
"
" A quick plugin to insert a vim settings line comment as the last line of
" a buffer if none is found.
"
" Although it would be possible to insert the settings line comment at the top
" of the buffer, certain languages reserve the first line for special purposes
" (e.g., a hashbang). As such, this plugin does not attempt to do that.
"
"
" -- Globals --
"
" g:preserve_vim_comment
"       Whether to automatically preserve vim comments at the end of a buffer.
"       If 0, vim settings comments won't be added to a buffer on write when
"       not found. You can write a vim settings comment by executing
"       :PreserveVimComment<CR>.
"
"       May be set per-buffer using b:preserve_vim_comment.
"
"       Defaults to 0.
"
" g:vim_settings_line_expr
"       An expr to eval() when generating the settings line. This should yield
"       something like 'set ts=8'.
"
"       Defaults to 'VimSettingsLine()', a function that returns a settings
"       line containing filetype, tabstop, shiftwidth, textwidth, softtabstop,
"       formatoptions, expandtab, and smarttab. You can override this globally
"       or per-buffer to preserve different options as needed.
"
"
" -- Buffer Variables --
"
" b:preserve_vim_comment
"       See g:preserve_vim_comment.
"
" b:vim_settings_line_expr
"       See g:vim_settings_line_expr.
"
" b:prefix_comment
" b:suffix_comment
"       The prefix and suffix comment variables should be set per-filetype,
"       indicating the start and end of a comment respectively. prefix_comment
"       is required while suffix_comment is optional and only necessary for
"       inserting block comments (in which case, prefix_comment should begin
"       a block comment).
"
"       Prefix comments are defined for a handful of the languages I use, but
"       this isn't by any means comprehensive and would need to be adjusted in
"       your own ftplugin vim scripts.
"
" -- Functions --
"
" VimSettingsLine()
"       Returns the vim settings line that will be preserved.
"
"
" -- Commands --
"
" :PreserveVimComment[!]
"       Inserts a vim settings comment as the last line of a buffer if no
"       settings comment is found.
"
"       If a bang is used, this inserts a comment regardless of whether the
"       settings comment exists.
"

if !exists('g:preserve_vim_comment')
	let g:preserve_vim_comment = 0
endif

if !exists('g:nl_before_vim_comment')
	let g:nl_before_vim_comment = 1
endif

if !exists('g:vim_settings_line_expr')
	let g:vim_settings_line_expr = 'VimSettingsLine()'
endif

function! s:setno(optname, opt)
	return a:opt ? a:optname : 'no'.a:optname
endfunction

function! VimSettingsLine()
	return 'set'
	\       . ' ts=' . &ts
	\       . ' sw=' . &sw
	\       . ' tw=' . &tw
	\       . ' sts=' . &sts
	\       . ' fo=' . &fo
	\       . ' ' . s:setno('et', &et)
	\       . ' ' . s:setno('sta', &sta)
endfunction

function! s:PreserveVimComment(prefix, suffix, bang) abort
	if strlen(a:prefix) ==# 0
		echom 'No prefix comment given'
		return
	end

	let l:suffix = exists('b:suffix_comment') ? b:suffix_comment : ''

	let l:force = a:bang ==# '!'
	let l:loc = search('\svim:\s\+.*:', 'cnw')
	if l:loc && !l:force
		echom 'Vim comment already detected'
		return
	elseif l:force && l:loc
		echom 'Inserting vim settings comment, but there already is one at line '.l:loc
	endif

	let l:nl_before = g:nl_before_vim_comment
	if exists('b:nl_before_vim_comment')
		let l:nl_before = b:nl_before_vim_comment
	endif

	let l:expr = g:vim_settings_line_expr
	if exists('b:vim_settings_line_expr')
		let l:expr = b:vim_settings_line_expr
	endif

	if strlen(l:expr) == 0 || type(l:expr) != 1
		echom 'Settings line expression is empty'
		return
	endif
	let l:settings = eval(l:expr)
	if strlen(l:settings) == 0
		echom 'Settings line is empty'
		return
	endif

	let l:pos = getpos('.')
	let l:tfo = &fo
	set fo=

	try
		normal! G
		if strlen(getline(line('.'))) > 0 && l:nl_before
			normal! o
			normal! |D
		endif
		normal! o
		normal! |D
		execute 'normal! I'
			\ . a:prefix . ' vim: '
			\ . l:settings
			\ . ' :' . (strlen(a:suffix) > 0 ? ' '.a:suffix : '')
	finally
		let &fo = l:tfo
		call cursor(l:pos[1], l:pos[2], l:pos[3])
	endtry
endfunction

function! s:AutoWriteVimComment()
	let l:preserve = exists('g:preserve_vim_comment') && g:preserve_vim_comment
	if exists('b:preserve_vim_comment')
		let l:preserve = b:preserve_vim_comment
	endif
	if !l:preserve
		return
	endif
	silent PreserveVimComment
endfunction

command! -bang PreserveVimComment call <SID>PreserveVimComment(
			\ exists('b:prefix_comment') ? b:prefix_comment : '',
			\ exists('b:suffix_comment') ? b:suffix_comment : '',
			\ "<bang>",
			\ )

augroup AutoVimComment
au!

" Line comments for various files.
au FileType c,cpp,java,scala,go,asciidoc,d,javascript,objc,objcpp,rust,php
\                                               let b:prefix_comment = '//'
au FileType vim                                 let b:prefix_comment = '"'
au FileType blitzmax                            let b:prefix_comment = "'"
au FileType lua                                 let b:prefix_comment = '--'
au FileType scheme,lisp,clojure                 let b:prefix_comment = ';'
au FileType python,ruby,bash,zsh,sh,yaml        let b:prefix_comment = '#'
au FileType xml,sgml,html,markdown              let b:prefix_comment = '<!--'
au FileType xml,sgml,html,markdown              let b:suffix_comment = '-->'

au BufWritePre * call <SID>AutoWriteVimComment()
augroup END

" vim: set ft=vim ts=8 sw=8 tw=79 sts=8 fo=n1jcroql noet sta :
