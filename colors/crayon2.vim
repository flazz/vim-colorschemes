" crayon2 Airline
let g:airline#themes#crayon2#palette = {}

" Normal mode
let s:N1 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]
let s:N2 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]
let s:N3 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]

" Insert mode
let s:I1 = [ '#99AE63' , 'NONE' ,  7 ,  0 ]
let s:I2 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]
let s:I3 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]

" Visual mode
let s:V1 = [ '#C48D62' , 'NONE' ,  7 ,  0 ]
let s:V2 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]
let s:V3 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]

" Replace mode
let s:R1 = [ '#B59CD8' , 'NONE' ,  7 ,  0 ]
let s:R2 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]
let s:R3 = [ '#BCC5D1' , 'NONE' ,  7 ,  0 ]

let g:airline#themes#crayon2#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#crayon2#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#crayon2#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#crayon2#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let g:airline#themes#crayon2#palette.accents = {
      \ 'red': [ '#BCC5D1' , 'NONE' , 7 , 0 , '' ]
      \ }

" Inactive mode
let s:IN1 = [ '#BCC5D1' , 'NONE' , 7 , 0 ]
let s:IN2 = [ '#BCC5D1' , 'NONE' , 7 , 0 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#crayon2#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Warnings
let s:WI = [ '#BCC5D1', 'NONE', 7, 0, 'bold' ]
let g:airline#themes#crayon2#palette.normal.airline_warning = s:WI
let g:airline#themes#crayon2#palette.insert.airline_warning = s:WI
let g:airline#themes#crayon2#palette.visual.airline_warning = s:WI
let g:airline#themes#crayon2#palette.replace.airline_warning = s:WI

" Tabline
let g:airline#themes#crayon2#palette.tabline = {
      \ 'airline_tab':     [ '#BCC5D1' , 'NONE'    , 7, 0 , 'NONE' ],
      \ 'airline_tabsel':  [ '#D8D8D8' , '#101113' , 7, 0 , 'bold' ],
      \ 'airline_tabtype': [ '#BCC5D1' , 'NONE'    , 7, 0 , 'NONE' ],
      \ 'airline_tabfill': [ '#BCC5D1' , 'NONE'    , 7, 0 , 'NONE' ],
      \ 'airline_tabmod':  [ '#99AE63' , 'NONE'    , 7, 0 , 'bold' ]
\ }
