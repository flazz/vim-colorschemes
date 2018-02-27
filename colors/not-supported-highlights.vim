let s:highlights = filter(split(execute('highlight'), "\n"), {_, s -> s =~# '^\h'})
for s:hl in s:highlights
    if s:hl =~# 'guifg=\u\w*' || s:hl =~# 'guibg=\u\w*'
        echomsg s:hl
    endif
endfor
