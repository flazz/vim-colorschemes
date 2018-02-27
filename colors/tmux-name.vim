function! s:SetTmuxName()
	if !exists('$TMUX')
		return
	endif
	call system('tmux rename-window ' . shellescape('[vim] '.ShowFancyPath()))
endfunction

augroup TmuxName
au!
au VimEnter,WinEnter,BufEnter * call <SID>SetTmuxName()
augroup END

" vim: set ft=vim ts=8 sw=8 tw=79 sts=0 fo=n1jcroql noet sta :
