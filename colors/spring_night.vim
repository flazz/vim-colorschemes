" vim-airline companion theme of spring-night
"
"   https://github.com/vim-airline/vim-airline
"
" Usage:
"   let g:airline_theme = 'spring_night'


" Color Table {{{
" Common colors
let s:FG = ['#334152', 233]
let s:BG = ['#435060', 235]
let s:INFO = ['#646f7c', 238]
let s:ERR = ['#fd7970', 210]
let s:WARN = ['#fb8965', 209]

" Normal mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ s:FG[0],   '#fedf81', s:FG[1], 222       ] " mode: gold
let s:N2 = [ '#fedf81', s:INFO[0], 222,     s:INFO[1] ] " info: inverted gold
let s:N3 = [ '#fffeee', s:BG[0],   230,     s:BG[1]   ] " statusline: normal
let s:N4 = [ s:FG[0],   '#a9de9c', s:FG[1], 150       ] " mode modified: green

" Insert mode
let s:I1 = [ s:FG[0],   '#a8d2eb', s:FG[1], 153       ] " skyblue
let s:I2 = [ '#a8d2eb', s:INFO[0], 153,     s:INFO[1] ]
let s:I3 = [ '#e7d5ff', s:BG[0],   189,     s:BG[1]   ] " purple

" Visual mode
let s:V1 = [ s:FG[0],   '#e996aa', s:FG[1], 175       ] " palesakura
let s:V2 = [ '#e996aa', s:INFO[0], 175,     s:INFO[1] ]
let s:V3 = [ '#ebeadb', s:BG[0],   224,     s:BG[1]   ]
let s:V4 = [ '#d9869a', 132 ] " sakura

" Replace mode
let s:R1 = [ s:FG[0],   '#fd8489', s:FG[1], 210       ] " red
let s:R2 = [ '#fd8489', s:INFO[0], 210,     s:INFO[1] ]
let s:R3 = [ '#ffbfaf', s:BG[0],   217,     s:BG[1]   ] " palered
let s:R4 = [ '#ff6f57', 203 ] " deeper red

" Paste mode
let s:PA = [ '#fb8965', 209 ] " mikan

" Info modified
let s:IM = s:INFO

" Inactive mode
let s:IA = [ '#8090a0', s:N3[1], 103, s:N3[3], '' ]

" }}}

" Placement {{{
let g:airline#themes#spring_night#palette = {}

let g:airline#themes#spring_night#palette.accents = {
      \ 'red': ['#fd8489', '', 210, '', ''],
      \ }

let g:airline#themes#spring_night#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#spring_night#palette.normal.airline_error = [
    \ s:FG[0], s:ERR[0], s:FG[1], s:ERR[1],
    \ ]
let g:airline#themes#spring_night#palette.normal.airline_warning = [
    \ s:FG[0], s:WARN[0], s:FG[1], s:WARN[1],
    \ ]
let g:airline#themes#spring_night#palette.normal_modified = {
    \ 'airline_a': [s:N1[0], s:N4[1], s:N1[2], s:N4[3], ''],
    \ 'airline_b': [s:N4[1], s:IM[0], s:N4[3], s:IM[1], ''],
    \ 'airline_c': [s:N4[1], s:N3[1], s:N4[3], s:N3[3], '']}
let g:airline#themes#spring_night#palette.normal_modified.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning

" Note:
" We don't prepare for 'modified' colors for insert mode because almost all
" time
" buffer is 'modified' while insert mode.
let g:airline#themes#spring_night#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#spring_night#palette.insert.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning


let g:airline#themes#spring_night#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#spring_night#palette.visual.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning
let g:airline#themes#spring_night#palette.visual_modified = {
    \ 'airline_a': [s:V1[0], s:V4[0], s:V1[2], s:V4[1], ''],
    \ 'airline_b': [s:V4[0], s:IM[0], s:V4[1], s:IM[1], ''],
    \ 'airline_c': [s:V4[0], s:N3[1], s:V4[1], s:N3[3], '']}
let g:airline#themes#spring_night#palette.visual_modified.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning


let g:airline#themes#spring_night#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#spring_night#palette.replace.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning
let g:airline#themes#spring_night#palette.replace_modified = {
    \ 'airline_a': [s:R1[0], s:R4[0], s:R1[2], s:R4[1], ''],
    \ 'airline_b': [s:R4[0], s:IM[0], s:R4[1], s:IM[1], ''],
    \ 'airline_c': [s:R4[0], s:N3[1], s:R4[1], s:N3[3], '']}
let g:airline#themes#spring_night#palette.replace_modified.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning


let g:airline#themes#spring_night#palette.insert_paste = {
    \ 'airline_a': [s:I1[0], s:PA[0], s:I1[2], s:PA[1], ''],
    \ 'airline_b': [s:PA[0], s:IM[0], s:PA[1], s:IM[1], ''],
    \ 'airline_c': [s:PA[0], s:N3[1], s:PA[1], s:N3[3], '']}
let g:airline#themes#spring_night#palette.insert_paste.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning


let g:airline#themes#spring_night#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#spring_night#palette.inactive.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning
let g:airline#themes#spring_night#palette.inactive_modified = {
    \ 'airline_c': [s:N4[1], '', s:N4[3], '', '']}
let g:airline#themes#spring_night#palette.inactive_modified.airline_warning =
    \ g:airline#themes#spring_night#palette.normal.airline_warning
" }}}
