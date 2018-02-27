func! s:SplitKey(key)
	let l:count = v:count
	if l:count == 0
		let l:count = 5
	endif
	exec "normal! ".l:count."\<C-w>".a:key
endfunc

com! -nargs=1 -count=5 SplitKey call <SID>SplitKey("<args>")

nnoremap <silent> - :SplitKey <lt><CR>
nnoremap <silent> = :SplitKey ><CR>
nnoremap <silent> + :SplitKey +<CR>
nnoremap <silent> _ :SplitKey -<CR>
