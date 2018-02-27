if exists("g:loaded_neodark")
  finish
endif
let g:loaded_neodark = 1

let s:save_cpo = &cpo
set cpo&vim

function neodark#get_color(hlgroup, fg_or_bg)
  let gui = synIDattr(synIDtrans(hlID(a:hlgroup)), a:fg_or_bg, 'gui')
  let cterm = synIDattr(synIDtrans(hlID(a:hlgroup)), a:fg_or_bg, 'cterm')
  if cterm == ''
    let cterm = 'none'
  endif
  return [l:gui, l:cterm]
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
