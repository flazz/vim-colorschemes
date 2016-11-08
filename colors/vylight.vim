"
" Vim colour file
"
" Maintainer:  Vy-Shane Sin Fat <shane@node.mu>
" Version:     1.3
"
" This colour file is meant for GUI use.
"

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="vylight"


hi Normal        guifg=#111111  guibg=white
hi Title         guifg=black    guibg=white
hi Cursor                       guibg=#FF7311
hi LineNr        guifg=#bebebe  guibg=#f8f8f8
hi Visual                       guibg=#bbddff
hi NonText       guifg=#fafafa  guibg=#fafafa
hi StatusLine    guifg=#222222  guibg=#eeeeee  gui=none
hi StatusLineNC  guifg=#888888  guibg=#eeeeee  gui=none
hi VertSplit     guifg=#eeeeee  guibg=#eeeeee  gui=none
hi ModeMsg       guifg=black    guibg=#bbddff  gui=none
hi ErrorMsg      guifg=black    guibg=#ffbbbb  gui=none
hi Error         guifg=#bb3355  guibg=white    gui=none


" Vim 7.x specific
if version >= 700
  hi MatchParen                 guibg=#ccffdd  gui=none
  hi Pmenu       guifg=#60656f  guibg=#f0f5ff  gui=none
  hi PmenuSel    guifg=white    guibg=#3585ef  gui=bold
  hi PmenuSbar   guifg=#d0d5dd  guibg=#e0e5ee  gui=bold
  hi PmenuThumb  guifg=#e0e5ee  guibg=#c0c5dd  gui=bold
  hi Search                     guibg=#fcfcaa  gui=none
  hi IncSearch                  guibg=#ffff33  gui=bold
  hi CursorLine                 guibg=#f1faff
  hi ColorColumn                guibg=#fafafa
endif


" Syntax highlighting 
hi Comment       guifg=#777777  gui=none
hi Todo          guifg=#446644  guibg=#ddeecc  gui=italic
hi Operator      guifg=#1a1a1a  gui=none
hi Identifier    guifg=#1a1a1a  gui=none
hi Statement     guifg=#1a1a1a  gui=none
hi Type          guifg=#0050b0  gui=none
hi Constant      guifg=#204070  gui=none
hi Conditional   guifg=#006633  gui=none
hi Delimiter     guifg=#1a1a1a  gui=none
hi PreProc       guifg=#006633  gui=none
hi Special       guifg=#006633  gui=none
hi Keyword       guifg=#007050  gui=none

hi link Function        Normal
hi link Character       Constant
hi link String          Constant
hi link Boolean         Constant
hi link Number          Constant
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         Normal
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

