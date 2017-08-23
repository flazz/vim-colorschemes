""""""""""""""""""""""""""""""""""""""""""
"    Copyright Alex(zchao1995@gmail.com) "
""""""""""""""""""""""""""""""""""""""""""


set background=dark

highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "magellan"

highlight Normal     ctermfg=250          ctermbg=233     guibg=#121212 guifg=#bcbcb9
highlight Comment    ctermfg=008          ctermbg=None    guifg=#37404c
highlight Statement  ctermfg=12           ctermbg=None    gui=None      guifg=#6a76fc
highlight Constant   ctermfg=31           ctermbg=None    guifg=#125f98
highlight Identifier cterm=None           ctermfg=33      ctermbg=None guifg=#1675d4
highlight Search     ctermbg=55           guibg=#512bac
highlight Folded     cterm=bold,underline ctermbg=238  ctermfg=254 gui=bold,underline guifg=#e4e4e4 guibg=#444444
highlight MatchParen ctermbg=238          ctermfg=254  guibg=#444444 guifg=#7caacf
highlight Special    ctermbg=None         ctermfg=54   guifg=#3a1412
highlight Title      cterm=bold           ctermbg=None ctermfg=12 guifg=#6a76fc

highlight CursorColumn cterm=none ctermbg=234  guibg=#1c1c1c
highlight CursorLine   cterm=none ctermbg=234  ctermfg=None guibg=#1c1c1c
highlight CursorLineNr cterm=none ctermbg=None ctermfg=008 guifg=#424242 gui=None

highlight Error   cterm=reverse ctermbg=None ctermfg=88 gui=reverse guibg=#851109
highlight TODO    cterm=bold    ctermbg=None ctermfg=54 gui=bold guifg=#5b1f5c
highlight Include ctermfg=94    ctermbg=None guifg=#865c12

highlight LineNr                  ctermfg=008   ctermbg=233 guifg=#424242 guibg=#121212
highlight NoneText                ctermfg=008   ctermbg=None guifg=#424242
highlight EndOfBuffer             ctermfg=008   ctermbg=None guifg=#424242
highlight VertSplit               cterm=reverse ctermfg=233 guifg=#121212
highlight Directory               cterm=bold    ctermfg=33 gui=bold guifg=#178afb
highlight Function                ctermfg=33    guifg=#1675d4
highlight Type ctermfg=89         ctermbg=None guifg=#7f183a gui=None
highlight PreCondit               ctermfg=94  guifg=#865c12
highlight PreProc                 ctermfg=94  guifg=#865c12
highlight MoreMsg                 ctermfg=105 guifg=#4350b0 gui=None
highlight Question                ctermfg=160 guifg=#d52116
highlight Pmenu                   ctermbg=245 guibg=#8a8a8a guifg=#000000
highlight PmenuSel                ctermbg=15 guibg=#ffffff
highlight SpecialChar             ctermfg=1 guifg=#771312

highlight link String    Constant
highlight link Number    Constant
highlight link Float     Constant
highlight link Exception Statement
highlight link Operator  Identifier
