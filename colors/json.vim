function! s:JSONIndent()
  if executable('python')
    execute '%!python -m json.tool'
  endif
endfunction

command! -buffer Indent call s:JSONIndent()


