" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
let g:airline#themes#edocx#palette = {}

" First let's define some arrays. The s: is just a VimL thing for scoping the
" variables to the current script. Without this, these variables would be
" declared globally. Now let's declare some colors for normal mode and add it
" to the dictionary.  The array is in the format:
" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.
let s:N1   = [ '#008787' , '#eeeeee' , 030, 255 ]
let s:N2   = [ '#080808' , '#eeeeee' , 232, 255 ]
let s:N3   = [ '#080808' , '#eeeeee' , 232, 255 ]
let g:airline#themes#edocx#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#edocx#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#edocx#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#eeeeee' , 255     , 255, ''     ] ,
      \ }


let s:I1 = [ '#5f8787' , '#eeeeee' , 066, 255  ]
let s:I2 = [ '#080808' , '#eeeeee' , 232, 255  ]
let s:I3 = [ '#080808' , '#eeeeee' , 232, 255  ]
let g:airline#themes#edocx#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#edocx#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#eeeeee' , 255     , 255, ''     ] ,
      \ }
let g:airline#themes#edocx#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ }


let g:airline#themes#edocx#palette.replace = copy(g:airline#themes#edocx#palette.insert)
let g:airline#themes#edocx#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#edocx#palette.replace_modified = g:airline#themes#edocx#palette.insert_modified


let s:V1 = [ '#005f87' , '#eeeeee' , 024, 255  ]
let s:V2 = [ '#080808' , '#eeeeee' , 232, 255  ]
let s:V3 = [ '#080808' , '#eeeeee' , 232, 255  ]
let g:airline#themes#edocx#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#edocx#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#eeeeee' , 255     , 255, ''     ] ,
      \ }


let s:IA1 = [ '#bcbcbc' , '#eeeeee' , 250 , 255 , '' ]
let s:IA2 = [ '#bcbcbc' , '#eeeeee' , 250 , 255 , '' ]
let s:IA3 = [ '#bcbcbc' , '#eeeeee' , 250 , 255 , '' ]
let g:airline#themes#edocx#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#edocx#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }


" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#edocx#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#edocx#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#008787' , '#eeeeee' , 030, 255, '' ],
      \ [ '#008787' , '#eeeeee' , 030, 255, ''     ],
      \ [ '#008787' , '#eeeeee' , 030, 255, 'bold' ])

