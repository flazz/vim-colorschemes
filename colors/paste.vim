command! -nargs=? -range=% -bang Bpaste
      \ call s:Bpaste('<line1>', '<line2>', '<args>', '<bang>' == '!')

function! s:Bpaste(from, to, slug, open_url)
  let l:curl = join(['curl', '--silent', '--show-error', '--fail',
        \ '--netrc',
        \ '-F slug=' . a:slug,
        \ "-F body='<-'",
        \ 'https://bdd.fi/p'],
        \ ' ')
  let l:output = system(l:curl, getline(a:from, a:to))
  call s:HandleOutput(l:output, a:open_url)
endfunction

command! -range=% -bang Vpaste
      \ call s:Vpaste('<line1>', '<line2>', '<bang>' == '!')

function! s:Vpaste(from, to, open_url)
  let l:curl = join(['curl', '--silent', '--show-error', '--fail',
        \ "-F text='<-'",
        \ "'http://vpaste.net/?ft=" . &filetype . "'"],
        \ ' ')
  let l:output = system(l:curl, getline(a:from, a:to))
  call s:HandleOutput(l:output, a:open_url)
endfunction

function! s:HandleOutput(output, open_url)
  if v:shell_error
    throw a:output
  else
    " Trim leading and trailing new lines and spaces.
    let l:trimmed = substitute(a:output, '\v^[\n\t\ ]+|[\n\t\ ]+$', '', 'g')
    echomsg '[pasted] ' . l:trimmed
    if a:open_url
      call s:OpenURL(l:trimmed)
    endif
  endif
endfunction

function! s:OpenURL(url)
  " XXX: Minimum viable safety check but this is still quite dangerous.
  if !(a:url =~? '\v^https?://')
    throw printf('Unsafe looking URL: %s cannot be opened.', a:url)
  endif

  if has('macunix')
    let l:opener = 'open'
  elseif has('unix')
    let l:opener = 'xdg-open'
  else
    let l:opener = ''
  endif

  if executable(l:opener)
    " XXX: Passing 'a:url' quoted is critical.
    call system(printf("%s '%s'", l:opener, a:url))
  endif
endfunction
