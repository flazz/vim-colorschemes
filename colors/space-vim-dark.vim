" Vim color file
"
" Author: Liu-Cheng Xu (https://github.com/liuchengxu/space-vim-dark)
"
" Note: Inspired by spacemacs-dark theme
"       Based on the Molokai vim colorscheme


hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="space-vim-dark"

hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi String          guifg=#87D7FF
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi iCursor         guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#A6E22E               gui=bold
hi Error           guifg=#E6DB74 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#000000 guibg=#FFE792
" marks
hi SignColumn      guifg=#A6E22E guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#5F87D7
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none

hi Comment guifg=#00AFAF

if &t_Co < 256
    finish
endif

hi Normal          ctermfg=67  ctermbg=234                guifg=#5F87AF guibg=#1C1C1C
hi CursorLine                  ctermbg=233   cterm=none                 guibg=#121212
hi CursorLineNr    ctermfg=134 ctermbg=235   cterm=bold   guifg=#AF5FD7 guibg=#262626 gui=bold
hi LineNr          ctermfg=239 ctermbg=235   cterm=bold   guifg=#4E4E4E guibg=#262626 gui=bold

hi Boolean         ctermfg=135 guifg=#af5fff
hi Character       ctermfg=74  guifg=#5fafd7
hi Number          ctermfg=117 guifg=#87d7ff
hi String          ctermfg=36  guifg=#00af87
hi Conditional     ctermfg=134 guifg=#af5fd7 gui=bold             cterm=bold
hi Constant        ctermfg=135 guifg=#af5fff gui=bold             cterm=bold
hi Cursor          ctermfg=253  ctermbg=16  guifg=#000000 guibg=#af5f00 gui=bold cterm=bold
hi Debug           ctermfg=225               cterm=bold
hi Define          ctermfg=81  guifg=#5fd7ff
hi Delimiter       ctermfg=241

hi DiffAdd                     ctermbg=24
hi DiffChange      ctermfg=181 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText                    ctermbg=102 cterm=bold

hi Directory       ctermfg=111 guifg=#87afff gui=bold              cterm=bold
hi Error           ctermfg=219 ctermbg=89    cterm=underline
hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
hi Exception       ctermfg=118               cterm=bold
hi Float           ctermfg=135 guifg=#af5fff
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function        ctermfg=134   guifg=#af5fd7 gui=bold            cterm=bold
hi Identifier      ctermfg=98    guifg=#875fd7 gui=bold           cterm=bold
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=83 ctermbg=16

hi keyword         ctermfg=62    guifg=#5f5fd7 gui=bold           cterm=bold
hi Label           ctermfg=104   guifg=#8787d7 gui=none           cterm=none
hi Macro           ctermfg=110  guifg=#87afd7
hi SpecialKey      ctermfg=81 guifg=#5fd7ff

hi MatchParen      ctermfg=46  ctermbg=235 cterm=bold,underline  guifg=#00FF00 guibg=#262626 gui=bold,underline
hi ModeMsg         ctermfg=229 guifg=#ffffaf
hi MoreMsg         ctermfg=229 guifg=#ffffaf
hi Operator        ctermfg=32 cterm=bold guifg=#0087d7 gui=bold

" complete menu
hi Pmenu           ctermfg=81  ctermbg=16
hi PmenuSel        ctermfg=255 ctermbg=242
hi PmenuSbar                   ctermbg=232
hi PmenuThumb      ctermfg=81

hi PreCondit       ctermfg=118 guifg=#87ff00    gui=bold         cterm=bold
hi PreProc         ctermfg=74  guifg=#5fafd7    gui=bold         cterm=bold
hi Question        ctermfg=81
hi Repeat          ctermfg=32               cterm=bold
hi Search          ctermfg=0   ctermbg=83   guifg=#000000 guibg=#5fff5f cterm=NONE

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialChar     ctermfg=161               cterm=bold
hi SpecialComment  ctermfg=245               cterm=bold
hi Special         ctermfg=81
if has("spell")
   hi SpellBad                  ctermbg=52
   hi SpellCap                  ctermbg=17
   hi SpellLocal                ctermbg=17
   hi SpellRare    ctermfg=none ctermbg=none  cterm=reverse
endif
hi Statement       ctermfg=68   guifg=#5f87d7 gui=bold            cterm=bold
hi StatusLine      ctermfg=238  ctermbg=253
hi StatusLineNC    ctermfg=244  ctermbg=232
hi StorageClass    ctermfg=208
hi Structure       ctermfg=81 guifg=#5fd7ff
hi Tag             ctermfg=161
hi Title           ctermfg=176
hi Todo            ctermfg=231  ctermbg=232   cterm=bold

hi Typedef         ctermfg=81   guifg=#5fd7ff
hi Type            ctermfg=81   guifg=#5fd7ff gui=none         cterm=none
hi Underlined      ctermfg=244  guifg=#808080 gui=underline        cterm=underline

hi VertSplit       ctermfg=244  ctermbg=235   guifg=#808080 guibg=#262626 gui=none cterm=none
hi VisualNOS                    ctermbg=238   guibg=#444444
hi Visual                       ctermbg=236   guibg=#303030
hi WarningMsg      ctermfg=231  ctermbg=238   guifg=#ffffff guibg=#444444 gui=bold cterm=bold
hi WildMenu        ctermfg=252  ctermbg=16    guifg=#d0d0d0 guibg=#000000

hi Comment         ctermfg=37   guifg=#00afaf
hi CursorColumn                 ctermbg=236                             guibg=#303030
hi ColorColumn                  ctermbg=236                             guibg=#303030
hi NonText         ctermfg=59                            guifg=#5f5f5f

hi SpecialKey      ctermfg=59                            guifg=#5f5f5f


" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
