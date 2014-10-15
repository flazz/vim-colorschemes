" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
" by Chang Yu-Heng <mr.changyuheng@gmail.com>

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="holokai"

hi Normal           guifg=#bcbcbc   guibg=#000000
hi Comment          guifg=#808080
hi CursorLine                       guibg=#1c1c1c   gui=none
hi CursorColumn                     guibg=#1c1c1c
hi ColorColumn                      guibg=#1c1c1c
hi LineNr           guifg=#bcbcbc   guibg=#1c1c1c
hi NonText          guifg=#808080
hi SpecialKey       guifg=#808080

hi Boolean          guifg=#af87ff
hi Character        guifg=#afaf5f
hi Number           guifg=#af87ff
hi String           guifg=#afaf5f
hi Conditional      guifg=#d7d700                   gui=bold
hi Constant         guifg=#af87ff                   gui=bold
hi Cursor           guifg=#000000   guibg=#dadada
hi Debug            guifg=#ffd7ff                   gui=bold
hi Define           guifg=#5fd7ff
hi Delimiter        guifg=#626262
hi DiffAdd                          guibg=#005f87
hi DiffChange       guifg=#d7afaf   guibg=#3a3a3a
hi DiffDelete       guifg=#d70087   guibg=#5f005f
hi DiffText                         guibg=#5f0000   gui=italic,bold

hi Directory        guifg=#87d700                   gui=bold
hi Error            guifg=#ffafff   guibg=#87005f
hi ErrorMsg         guifg=#ff00af                   gui=bold
hi Exception        guifg=#87d700                   gui=bold
hi Float            guifg=#af87ff
hi FoldColumn       guifg=#5f87af   guibg=#000000
hi Folded           guifg=#5f87af   guibg=#000000
hi Function         guifg=#87d700
hi Identifier       guifg=#87d700                   gui=none
hi Ignore           guifg=#808080   guibg=#080808
hi IncSearch        guifg=#5fd7ff

hi Keyword          guifg=#d7d700                   gui=bold
hi Label            guifg=#d7d700                   gui=none
hi Macro            guifg=#5fd7ff                   gui=italic

hi MatchParen       guifg=#000000   guibg=#ff8700   gui=bold
hi ModeMsg          guifg=#d7d700
hi MoreMsg          guifg=#d7d700
hi Operator         guifg=#d7d700

" complete menu
hi Pmenu            guifg=#bcbcbc   guibg=#444444
hi PmenuSel         guifg=#bcbcbc   guibg=#000087
hi PmenuSbar                        guibg=#080808
hi PmenuThumb       guifg=#bcbcbc

hi PreCondit        guifg=#d7d700                   gui=bold
hi PreProc          guifg=#5fd7ff
hi Question         guifg=#5fd7ff
hi Repeat           guifg=#d7d700                   gui=bold
hi Search           guifg=#dadada   guibg=#5f8787

" marks column
hi SignColumn       guifg=#87d700   guibg=#262626
hi SpecialChar      guifg=#af87ff                   gui=bold
hi SpecialComment   guifg=#808080                   gui=bold
hi Special          guifg=#5fd7ff   guibg=#080808   gui=italic
if has("spell")
    hi SpellBad     guisp=#FF0000   gui=undercurl
    hi SpellCap     guisp=#7070F0   gui=undercurl
    hi SpellLocal   guisp=#70F0F0   gui=undercurl
    hi SpellRare    guisp=#FFFFFF   gui=undercurl
endif
hi Statement        guifg=#d7d700                   gui=bold
hi StatusLine       guifg=#444444   guibg=#dadada
hi StatusLineNC     guifg=#808080   guibg=#080808
hi StorageClass     guifg=#87d700                   gui=italic
hi Structure        guifg=#5fd7ff
hi Tag              guifg=#d7d700                   gui=italic
hi Title            guifg=#d75f00
hi Todo             guifg=#ffffff   guibg=#080808   gui=bold

hi Typedef          guifg=#87d700
hi Type             guifg=#87d700                   gui=none
hi Underlined       guifg=#808080                   gui=underline

hi VertSplit        guifg=#808080   guibg=#080808   gui=bold
hi VisualNOS                        guibg=#444444
hi Visual                           guibg=#000087
hi WarningMsg       guifg=#ffffff   guibg=#444444   gui=bold
hi WildMenu         guifg=#5fd7ff

"
" Support for 256-color terminal
"
if &t_Co > 255
    hi Normal           ctermfg=250
    hi CursorLine                   ctermbg=234 cterm=none
    hi Boolean          ctermfg=141
    hi Character        ctermfg=143
    hi Number           ctermfg=141
    hi String           ctermfg=143
    hi Conditional      ctermfg=184             cterm=bold
    hi Constant         ctermfg=141             cterm=bold
    hi Cursor           ctermfg=16  ctermbg=253
    hi Debug            ctermfg=225             cterm=bold
    hi Define           ctermfg=81
    hi Delimiter        ctermfg=241

    hi DiffAdd                      ctermbg=24
    hi DiffChange       ctermfg=181 ctermbg=237
    hi DiffDelete       ctermfg=162 ctermbg=53
    hi DiffText                     ctermbg=52  cterm=bold

    hi Directory        ctermfg=112             cterm=bold
    hi Error            ctermfg=219 ctermbg=89
    hi ErrorMsg         ctermfg=199             cterm=bold
    hi Exception        ctermfg=112             cterm=bold
    hi Float            ctermfg=141
    hi FoldColumn       ctermfg=67  ctermbg=16
    hi Folded           ctermfg=67  ctermbg=16
    hi Function         ctermfg=112
    hi Identifier       ctermfg=112             cterm=none
    hi Ignore           ctermfg=244 ctermbg=232
    hi IncSearch        ctermfg=81

    hi Keyword          ctermfg=184             cterm=bold
    hi Label            ctermfg=184             cterm=none
    hi Macro            ctermfg=81

    hi MatchParen       ctermfg=16  ctermbg=208 cterm=bold
    hi ModeMsg          ctermfg=184
    hi MoreMsg          ctermfg=184
    hi Operator         ctermfg=184

    " complete menu
    hi Pmenu            ctermfg=250 ctermbg=238
    hi PmenuSel         ctermfg=250 ctermbg=18
    hi PmenuSbar                    ctermbg=232
    hi PmenuThumb       ctermfg=250

    hi PreCondit        ctermfg=184             cterm=bold
    hi PreProc          ctermfg=81
    hi Question         ctermfg=81
    hi Repeat           ctermfg=184             cterm=bold
    hi Search           ctermfg=253 ctermbg=66

    " marks column
    hi SignColumn       ctermfg=112 ctermbg=235
    hi SpecialChar      ctermfg=141
    hi SpecialComment   ctermfg=244             cterm=bold
    hi Special          ctermfg=81  ctermbg=232

    hi Statement        ctermfg=184             cterm=bold
    hi StatusLine       ctermfg=238 ctermbg=253
    hi StatusLineNC     ctermfg=244 ctermbg=232
    hi StorageClass     ctermfg=112
    hi Structure        ctermfg=81
    hi Tag              ctermfg=184
    hi Title            ctermfg=166
    hi Todo             ctermfg=231 ctermbg=232 cterm=bold

    hi Typedef          ctermfg=112
    hi Type             ctermfg=112             cterm=none
    hi Underlined       ctermfg=244             cterm=underline

    hi VertSplit        ctermfg=244 ctermbg=232 cterm=bold
    hi VisualNOS                    ctermbg=238
    hi Visual                       ctermbg=18
    hi WarningMsg       ctermfg=231 ctermbg=238 cterm=bold
    hi WildMenu         ctermfg=81

    hi Comment          ctermfg=244
    hi CursorColumn                 ctermbg=234
    hi ColorColumn                  ctermbg=234
    hi LineNr           ctermfg=250 ctermbg=234
    hi NonText          ctermfg=244
    hi SpecialKey       ctermfg=244
end
