let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let col_base     = {{col_base}}
  let col_edge     = {{col_edge}}
  let col_error    = {{col_error}}
  let col_gradient = {{col_gradient}}
  let col_nc       = {{col_nc}}
  let col_warning  = {{col_warning}}
  let col_insert   = {{col_insert}}
  let col_replace  = {{col_replace}}
  let col_visual   = {{col_visual}}
  let col_red      = {{col_red}}

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ col_nc,
        \ col_nc,
        \ col_nc)
  let p.normal = airline#themes#generate_color_map(
        \ col_edge,
        \ col_gradient,
        \ col_base)
  let p.insert = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)
  let p.replace = airline#themes#generate_color_map(
        \ col_replace,
        \ col_gradient,
        \ col_base)
  let p.visual = airline#themes#generate_color_map(
        \ col_visual,
        \ col_gradient,
        \ col_base)

  " Accents
  let p.accents = {
        \   'red': col_red,
        \ }

  " Error
  let p.inactive.airline_error = col_error
  let p.insert.airline_error = col_error
  let p.normal.airline_error = col_error
  let p.replace.airline_error = col_error
  let p.visual.airline_error = col_error

  " Warning
  let p.inactive.airline_warning = col_warning
  let p.insert.airline_warning = col_warning
  let p.normal.airline_warning = col_warning
  let p.replace.airline_warning = col_warning
  let p.visual.airline_warning = col_warning

  return p
endfunction


let g:airline#themes#iceberg#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
