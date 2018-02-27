func! s:InitPatterns()
	" JSON
	AddTabularPattern! json-kv /\(: \)\@<=["{\d\-]/l1c0
endfunc

augroup NTabPatterns
au!
au VimEnter * call <SID>InitPatterns()
augroup END

