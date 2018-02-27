" vim: ts=8 sw=8 noet:
" stripws.vim
" Noel Cower
"
" Plugin to strip whitespace before saving. Can be disabled globally by setting
" g:strip_trailing_ws to 0 or by setting a buffer's
" b:strip_trailing_ws to 0 (or 1). The buffer variable always overrides
" the value of the global by virtue of being more specific.

if !exists('g:strip_trailing_ws')
        let g:strip_trailing_ws = 1
endif

function! s:StripTrailingWS()
	let l:pos = getpos('.')
        %s/\s\+$//e
        call cursor(l:pos[1], l:pos[2], l:pos[3])
endfunction

function! s:InvokeStripTrailingWS(bang)
	if a:bang == '!'
		if exists('b:strip_trailing_ws')
			let l:temp_strip = b:strip_trailing_ws
			let b:strip_trailing_ws = 1
			call s:StripTrailingWS()
			let b:strip_trailing_ws = l:temp_strip
		else
			let b:strip_trailing_ws = 1
			call s:StripTrailingWS()
			unlet b:strip_trailing_ws
		endif
		return
	endif

        let l:should_strip = g:strip_trailing_ws
        if exists('b:strip_trailing_ws')
                let l:should_strip = b:strip_trailing_ws
        end

        if !l:should_strip
                return
        end

	call s:StripTrailingWS()
endfunction

augroup grpStripTrailingWS
autocmd!
autocmd BufWritePre * :StripWhitespace
augroup END

" Command to force stripping of whitespace
command! -bang StripWhitespace :call <SID>InvokeStripTrailingWS("<bang>")
