"
" Zoom / Restore window.
"
" This function is taken from BenC's answer at on Stack Overflow
" at <https://stackoverflow.com/a/26551079/457812>.
"
function! s:ZoomToggle() abort
	if exists('t:zoomed') && t:zoomed
		execute t:zoom_winrestcmd
		let t:zoomed = 0
	else
		let t:zoom_winrestcmd = winrestcmd()
		resize
		vertical resize
		let t:zoomed = 1
	endif
endfunction

" Expose function as a ZoomToggle command.
command! ZoomToggle call s:ZoomToggle()

