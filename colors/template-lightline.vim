let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  let col_base     = {{col_base}}
  let col_edge     = {{col_edge}}
  let col_gradient = {{col_gradient}}
  let col_nc       = {{col_nc}}
  let col_tabfill  = {{col_tabfill}}
  let col_normal   = {{col_normal}}
  let col_error    = {{col_error}}
  let col_warning  = {{col_warning}}
  let col_insert   = {{col_insert}}
  let col_replace  = {{col_replace}}
  let col_visual   = {{col_visual}}
  let col_tabsel   = {{col_tabsel}}

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#iceberg#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
