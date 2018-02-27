" runbuf.vim
" Noel Cower
"
" Provides a :CB cmd [args] command that pipes the result of executing the
" given command arguments into a buffer.

function! s:BufWithCmdStr(cmd, str)
	let l:temp = @z
	let @z = a:str
	new +normal!\ J"zP
	set buftype=nofile bufhidden=wipe nobuflisted noswapfile
	let @z = a:cmd
	normal! ggO"zP
	normal! yypVr-j
	let @z = l:temp
endfunction

function! s:CommandToBuffer(cmd)
	redir => l:buf
	silent execute a:cmd
	redir END
	call s:BufWithCmdStr(a:cmd, l:buf)
endfunction

function! s:ExecMake(cmd)
	let l:cmd = a:cmd
	if len(l:cmd) > 0
		let l:cmd = " ".l:cmd
	endif

	echom "Executing make".l:cmd
	call s:BufWithCmdStr("make".l:cmd, system("make".l:cmd))
endfunction

command! -nargs=+ -complete=command CB :call <SID>CommandToBuffer("<args>")
command! -nargs=* -complete=file Make :call <SID>ExecMake("<args>")
command! -nargs=* -complete=file Sys :call <SID>BufWithCmdStr("<args>", system("<args>"))

" vim: set ft=vim ts=8 sw=8 tw=79 sts=0 fo=n1jcroql noet sta :
