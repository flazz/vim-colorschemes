let g:airline#themes#deep_space#palette = {}

" Normal
let s:N1 = ['#232936', '#709d6c', 235, 65]
let s:N2 = ['#9aa7bd', '#323c4d', 248, 238]
let s:N3 = ['#51617d', '#232a36', 243, 236]
let g:airline#themes#deep_space#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#deep_space#palette.normal_modified = {
      \ 'airline_c': ['#b3785d', '', 137, '', ''],
      \ }

" Insert
let s:I1 = ['#232936', '#608cc3', 235, 67]
let g:airline#themes#deep_space#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
let g:airline#themes#deep_space#palette.insert_modified =
        \ copy(g:airline#themes#deep_space#palette.normal_modified)

" Replace
let s:R1 = ['#232936', '#b15e7c', 235, 132]
let g:airline#themes#deep_space#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
let g:airline#themes#deep_space#palette.replace_modified =
        \ copy(g:airline#themes#deep_space#palette.normal_modified)

" Visual
let s:V1 = ['#232936', '#b5a262' , 235, 143]
let g:airline#themes#deep_space#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
let g:airline#themes#deep_space#palette.visual_modified =
        \ copy(g:airline#themes#deep_space#palette.normal_modified)

" Inactive
let s:IA = ['#51617d', '#232936', 237, 235, '']
let g:airline#themes#deep_space#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#deep_space#palette.inactive_modified =
        \ copy(g:airline#themes#deep_space#palette.normal_modified)

" Readonly status
let g:airline#themes#deep_space#palette.accents = {
      \ 'red': ['#b15e7c', '', 132, '']
      \ }

" Ctrlp
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#deep_space#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ ['#9aa7bd', '#323c4d', 248, 237, ''],
      \ ['#b3785d', '#232936', 137, 235, ''],
      \ ['#232936', '#b3785d', 235, 137, 'bold'])
