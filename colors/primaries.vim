" Maintainer:	Simon Descarpentries <simon/\d12s.fr>
" Licence: GPLv3
" Commant: Good code from mango.vim, good colors inspired by mustang.vim, in good
" readability inspired by monochrome.vim

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "primaries"

let Orange	  = "guifg=#ff9800 guibg=NONE gui=none ctermfg=203 ctermbg=none cterm=none"
let Lemon	  = "guifg=#ffd787 guibg=NONE gui=none ctermfg=220 ctermbg=none cterm=none"
let Peach	  = 'guifg=#eeeeee guibg=NONE gui=none ctermfg=224 ctermbg=none cterm=none'
let Olive	  = "guifg=#b1d631 guibg=NONE gui=italic ctermfg=71 ctermbg=none cterm=none"
let Prunus	  = "guifg=#af87ff guibg=NONE gui=none ctermfg=63 ctermbg=none cterm=none"
let Snow	  = "guifg=#ffffff guibg=NONE gui=none ctermfg=255 ctermbg=none cterm=BOLD"
let White	  = "guifg=#ffffff guibg=NONE gui=none ctermfg=255 ctermbg=none cterm=none"
let Concrete  = "guifg=#888888 guibg=NONE gui=none ctermfg=246 ctermbg=none cterm=none"
let Anthracite= "guifg=#666666 guibg=NONE gui=none ctermfg=242 ctermbg=none cterm=none"

exe "hi Boolean "         .Lemon
exe "hi Constant "        .Peach
exe "hi Character "       .Olive
exe "hi Comment "         .Anthracite
exe "hi Conditional "     .Snow
exe "hi Debug "           .Anthracite
exe "hi Define "          .Prunus
exe "hi Delimiter "       .Snow
exe "hi Exception "       .Snow
exe "hi Float "           .Orange
exe "hi Function "        .Snow
exe "hi Identifier "      .Snow
exe "hi Ignore "          .Anthracite
exe "hi Include "         .Snow
exe "hi Keyword "         .Concrete
exe "hi Label "           .Concrete
exe "hi LineNr "          .Anthracite
exe "hi Macro "           .Prunus
exe "hi Normal "          .White
exe "hi Noise "           .Lemon
exe "hi Number "          .Orange
exe "hi Operator "        .Snow
exe "hi PreCondit "       .Prunus
exe "hi PreProc "         .Snow
" ^ function names…
exe "hi Repeat "          .Snow
exe "hi Special "         .Snow
exe "hi SpecialChar "     .Lemon
exe "hi SpecialComment "  .Lemon
exe "hi Statement "       .Snow
exe "hi StorageClass "    .Snow
exe "hi String "          .Olive
exe "hi Structure "       .Snow
exe "hi Tag "             .Peach
exe "hi Type "            .Peach
exe "hi TypeDef "         .Snow

" cursorline
hi cursorline cterm=none ctermbg=236 ctermfg=none guibg=grey20 guifg=NONE
