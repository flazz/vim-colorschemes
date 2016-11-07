"
" simplon 1.0.1
" un tema aburrido
" https://github.com/penicolas/simplon.vim
" author: penicolas
" license: MIT

let g:colors_name="simplon"
hi clear
if exists("syntax_on")
  syntax reset
endif
if has("gui_running")
  set background=light
endif


" {{{ Fondo y color de las letras
hi Normal           guifg=#000000   guibg=#ebebeb
" }}}

" {{{ Cursor
hi Cursor           guifg=#f8f8ff   guibg=#444454
hi CursorLine                       guibg=#d4d4d8
hi CursorColumn                     guibg=#e8e8ee
" }}}

" {{{ Diff
hi DiffAdd          guifg=#003300   guibg=#ddffdd   gui=none
hi DiffChange                       guibg=#ececec   gui=none
hi DiffText         guifg=#000033   guibg=#ddddff   gui=none
hi DiffDelete       guifg=#ddcccc   guibg=#ffdddd   gui=none
" }}}

" {{{ Folding / Line Numbering / Status Lines
hi Folded           guifg=#808080   guibg=#ececec   gui=bold
hi vimFold          guifg=#808080   guibg=#ececec   gui=bold
hi FoldColumn       guifg=#808080   guibg=#ececec   gui=bold
hi FoldeColumn      guifg=#808080   guibg=#ececec   gui=bold
hi SignColumn       guifg=DarkBlue  guibg=Grey
hi CursorLineNr     guifg=Brown                     gui=bold
hi LineNr           guifg=#a1a1a1   guibg=#e6e6e6
hi NonText          guifg=#808080   guibg=#ececec
hi Folded           guifg=#808080   guibg=#ececec   gui=bold
hi VertSplit        guifg=#000000   guibg=#ebebeb   gui=none
" hi StatusLine       guifg=#000000   guibg=#adc2d6   gui=inverse
hi StatusLine       guifg=#000000   guibg=#adc2d6   gui=bold
hi StatusLineNC     guifg=#404040   guibg=#d4d4d4   gui=italic
hi ColorColumn                      guibg=#f2f2f3   gui=none
" }}}

" {{{ Misc
hi ModeMsg          guifg=#990000
hi MoreMsg          guifg=#990000

hi Title            guifg=#0000ff                   gui=bold
hi WarningMsg       guifg=#ef5939
hi SpecialKey       guifg=#808080   guibg=#ececec

hi MatchParen       guifg=#000000   guibg=#00cc99
hi Underlined       guifg=#000000   gui=underline
hi Directory        guifg=#990000
" }}}

" {{{ Search, Visual, etc
hi ErrorMsg         guifg=Red       guibg=White
hi IncSearch        guifg=#000000   guibg=#ffbc58   gui=none
hi Search           guifg=#000000   guibg=#ffbc58   gui=none
hi Visual           guifg=#000000   guibg=#99c2ff   gui=none
hi VisualNOS        guifg=#ffffff   guibg=#204a87   gui=none
" }}}

" {{{ Syntax groups
hi Comment          guifg=#008a00                   gui=italic
hi Constant         guifg=#177f80                   gui=none
hi String           guifg=#9c2e9c
hi Character        guifg=#cc0052
hi Boolean          guifg=Blue
hi Number           guifg=#cc0052
hi Float            guifg=#cc0052
hi Identifier       guifg=#0000ff
hi Function         guifg=#990000                   gui=bold
hi Statement        guifg=#000000                   gui=bold
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Operator        Statement
hi link Keyword         Statement
hi link Exception       Statement
hi PreProc          guifg=#0033cc
hi link Include         Statement
hi link Define          Statement
hi link PreCondit       Statement
hi Type             guifg=#0047b2                   gui=bold
hi StorageClass     guifg=#000000                   gui=bold
hi Structure        guifg=#000000                   gui=bold
hi TypeDef          guifg=#000000                   gui=bold
hi Special          guifg=#006699                   gui=bold
hi link SpecialChar     Special
hi link Tag             Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi Underlined       guifg=#000000                   gui=underline
hi Ignore           guifg=#808080
hi Error            guifg=#ff1100   guibg=#f8f8ff   gui=undercurl
hi Todo             guifg=#ffffff   guibg=#d75f14   gui=bold
" }}}

" {{{ Completion menus
hi Pmenu            guifg=#ffffff   guibg=#808080   gui=bold
hi PmenuSbar        guifg=#444444   guibg=#000000
hi PmenuSel         guifg=#000000   guibg=#cdcdfd   gui=italic
hi PmenuThumb       guifg=#aaaaaa   guibg=#aaaaaa
hi WildMenu         guifg=#7fbdff   guibg=#425c78   gui=none
" }}}

" {{{ Spelling
hi spellBad                                                     guisp=#fcaf3e
hi spellCap                                                     guisp=#73d216
hi spellLocal                                                   guisp=#729fcf
hi spellRare                                                    guisp=#fcaf3e
" }}}

" {{{ Tabs (non-gui0)
hi TabLine          guifg=#404040   guibg=#dddddd   gui=none
hi TabLineFill      guifg=#404040   guibg=#dddddd   gui=none
hi TabLineSel       guifg=#404040                   gui=bold
" }}}
