" 'apprentice.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)
" Essentially a streamlining and conversion to xterm colors of
" 'sorcerer' by Jeet Sukumaran (jeetsukumaran@gmailcom)

" MADE-UP NAME    HEX        XTERM  ANSI
" ==================================================
" almost black    #1c1c1c    234    0
" darker grey     #262626    235    background color
" dark grey       #303030    236    8
" grey            #444444    238    8
" medium grey     #585858    240    8
" light grey      #6c6c6c    242    7
" lighter grey    #bcbcbc    250    foreground color
" white           #ffffff    231    15
" purple          #5f5f87    60     5
" light purple    #8787af    103    13
" green           #5f875f    65     2
" light green     #87af87    108    10
" aqua            #5f8787    66     6
" light aqua      #5fafaf    73     14
" blue            #5f87af    67     4
" light blue      #8fafd7    110    12
" red             #af5f5f    131    1
" orange          #ff8700    208    9
" ocre            #87875f    101    3
" yellow          #ffffaf    229    11

hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

let colors_name = 'apprentice'

if &t_Co >= 256 || has('gui_running')
  hi Normal           ctermbg=235  ctermfg=250  guibg=#262626 guifg=#bcbcbc cterm=NONE           gui=NONE

  set background=dark

  hi Comment          ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
  hi Constant         ctermbg=NONE ctermfg=208  guibg=NONE    guifg=#ff8700 cterm=NONE           gui=NONE
  hi Error            ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#af5f5f cterm=reverse        gui=reverse
  hi Identifier       ctermbg=NONE ctermfg=67   guibg=NONE    guifg=#5f87af cterm=NONE           gui=NONE
  hi Ignore           ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
  hi PreProc          ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=NONE           gui=NONE
  hi Special          ctermbg=NONE ctermfg=65   guibg=NONE    guifg=#5f875f cterm=NONE           gui=NONE
  hi Statement        ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#8fafd7 cterm=NONE           gui=NONE
  hi String           ctermbg=NONE ctermfg=108  guibg=NONE    guifg=#87af87 cterm=NONE           gui=NONE
  hi Todo             ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=reverse        gui=reverse
  hi Type             ctermbg=NONE ctermfg=103  guibg=NONE    guifg=#8787af cterm=NONE           gui=NONE
  hi Underlined       ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=underline      gui=underline

  hi LineNr           ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
  hi NonText          ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE

  hi Pmenu            ctermbg=238  ctermfg=250  guibg=#444444 guifg=#bcbcbc cterm=NONE           gui=NONE
  hi PmenuSbar        ctermbg=240  ctermfg=NONE guibg=#585858 guifg=NONE    cterm=NONE           gui=NONE
  hi PmenuSel         ctermbg=66   ctermfg=235  guibg=#5f8787 guifg=#262626 cterm=NONE           gui=NONE
  hi PmenuThumb       ctermbg=66   ctermfg=66   guibg=#5f8787 guifg=#5f8787 cterm=NONE           gui=NONE

  hi ErrorMsg         ctermbg=131  ctermfg=235  guibg=#af5f5f guifg=#262626 cterm=NONE           gui=NONE
  hi ModeMsg          ctermbg=108  ctermfg=235  guibg=#87af87 guifg=#262626 cterm=NONE           gui=NONE
  hi MoreMsg          ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=NONE           gui=NONE
  hi Question         ctermbg=NONE ctermfg=108  guibg=NONE    guifg=#87af87 cterm=NONE           gui=NONE
  hi WarningMsg       ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#af5f5f cterm=NONE           gui=NONE

  hi TabLine          ctermbg=238  ctermfg=101  guibg=#444444 guifg=#87875f cterm=NONE           gui=NONE
  hi TabLineFill      ctermbg=238  ctermfg=238  guibg=#444444 guifg=#444444 cterm=NONE           gui=NONE
  hi TabLineSel       ctermbg=101  ctermfg=235  guibg=#87875f guifg=#262626 cterm=NONE           gui=NONE

  hi Cursor           ctermbg=242  ctermfg=NONE guibg=#6c6c6c guifg=NONE    cterm=NONE           gui=NONE
  hi CursorColumn     ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
  hi CursorLine       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
  hi CursorLineNr     ctermbg=236  ctermfg=73   guibg=#303030 guifg=#5fafaf cterm=NONE           gui=NONE

  hi helpLeadBlank    ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
  hi helpNormal       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

  hi StatusLine       ctermbg=101  ctermfg=235  guibg=#87875f guifg=#262626 cterm=NONE           gui=NONE
  hi StatusLineNC     ctermbg=238  ctermfg=101  guibg=#444444 guifg=#87875f cterm=NONE           gui=italic

  hi Visual           ctermbg=110  ctermfg=235  guibg=#8fafd7 guifg=#262626 cterm=NONE           gui=NONE
  hi VisualNOS        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=underline      gui=underline

  hi FoldColumn       ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
  hi Folded           ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE

  hi VertSplit        ctermbg=238  ctermfg=238  guibg=#444444 guifg=#444444 cterm=NONE           gui=NONE
  hi WildMenu         ctermbg=110  ctermfg=235  guibg=#8fafd7 guifg=#262626 cterm=NONE           gui=NONE

  hi Function         ctermbg=NONE ctermfg=229  guibg=NONE    guifg=#ffffaf cterm=NONE           gui=NONE
  hi SpecialKey       ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
  hi Title            ctermbg=NONE ctermfg=231  guibg=NONE    guifg=#ffffff cterm=NONE           gui=NONE

  hi DiffAdd          ctermbg=108  ctermfg=235  guibg=#87af87 guifg=#262626 cterm=NONE           gui=NONE
  hi DiffChange       ctermbg=60   ctermfg=235  guibg=#5f5f87 guifg=#262626 cterm=NONE           gui=NONE
  hi DiffDelete       ctermbg=131  ctermfg=235  guibg=#af5f5f guifg=#262626 cterm=NONE           gui=NONE
  hi DiffText         ctermbg=103  ctermfg=235  guibg=#8787af guifg=#262626 cterm=NONE           gui=NONE

  hi IncSearch        ctermbg=131  ctermfg=235  guibg=#af5f5f guifg=#262626 cterm=NONE           gui=NONE
  hi Search           ctermbg=229  ctermfg=235  guibg=#ffffaf guifg=#262626 cterm=NONE           gui=NONE

  hi Directory        ctermbg=NONE ctermfg=73   guibg=NONE    guifg=#5fafaf cterm=NONE           gui=NONE
  hi MatchParen       ctermbg=234  ctermfg=229  guibg=#1c1c1c guifg=#ffffaf cterm=NONE           gui=NONE

  hi SpellBad         ctermbg=NONE ctermfg=131  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#af5f5f
  hi SpellCap         ctermbg=NONE ctermfg=73   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#5fafaf
  hi SpellLocal       ctermbg=NONE ctermfg=65   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#5f875f
  hi SpellRare        ctermbg=NONE ctermfg=208  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#ff8700

  hi ColorColumn      ctermbg=131  ctermfg=NONE guibg=#af5f5f guifg=NONE    cterm=NONE           gui=NONE
  hi signColumn       ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal           ctermbg=NONE        ctermfg=15          cterm=NONE

  set background=dark

  hi Comment          ctermbg=NONE        ctermfg=8           cterm=NONE
  hi Constant         ctermbg=NONE        ctermfg=9           cterm=NONE
  hi Function         ctermbg=NONE        ctermfg=11          cterm=NONE
  hi Identifier       ctermbg=NONE        ctermfg=4           cterm=NONE
  hi PreProc          ctermbg=NONE        ctermfg=6           cterm=NONE
  hi Special          ctermbg=NONE        ctermfg=2           cterm=NONE
  hi Statement        ctermbg=NONE        ctermfg=12          cterm=NONE
  hi String           ctermbg=NONE        ctermfg=10          cterm=NONE
  hi Todo             ctermbg=NONE        ctermfg=NONE        cterm=reverse
  hi Type             ctermbg=NONE        ctermfg=13          cterm=NONE

  hi Error            ctermbg=NONE        ctermfg=1           cterm=reverse
  hi Ignore           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi Underlined       ctermbg=NONE        ctermfg=6           cterm=underline

  hi LineNr           ctermbg=0           ctermfg=7           cterm=NONE
  hi NonText          ctermbg=NONE        ctermfg=8           cterm=NONE

  hi Pmenu            ctermbg=8           ctermfg=15          cterm=NONE
  hi PmenuSbar        ctermbg=7           ctermfg=NONE        cterm=NONE
  hi PmenuSel         ctermbg=6           ctermfg=0           cterm=NONE
  hi PmenuThumb       ctermbg=6           ctermfg=NONE        cterm=NONE

  hi ErrorMsg         ctermbg=1           ctermfg=0           cterm=NONE
  hi ModeMsg          ctermbg=2           ctermfg=0           cterm=NONE
  hi MoreMsg          ctermbg=NONE        ctermfg=6           cterm=NONE
  hi Question         ctermbg=NONE        ctermfg=10          cterm=NONE
  hi WarningMsg       ctermbg=NONE        ctermfg=1           cterm=NONE

  hi TabLine          ctermbg=8           ctermfg=3           cterm=NONE
  hi TabLineFill      ctermbg=8           ctermfg=0           cterm=NONE
  hi TabLineSel       ctermbg=3           ctermfg=0           cterm=NONE

  hi Cursor           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi CursorColumn     ctermbg=8           ctermfg=NONE        cterm=NONE
  hi CursorLine       ctermbg=NONE        ctermfg=NONE        cterm=underline
  hi CursorLineNr     ctermbg=0           ctermfg=14          cterm=NONE

  hi helpLeadBlank    ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi helpNormal       ctermbg=NONE        ctermfg=NONE        cterm=NONE

  hi StatusLine       ctermbg=3           ctermfg=0           cterm=NONE
  hi StatusLineNC     ctermbg=8           ctermfg=0           cterm=NONE

  hi Visual           ctermbg=12          ctermfg=0           cterm=NONE
  hi VisualNOS        ctermbg=NONE        ctermfg=NONE        cterm=underline

  hi FoldColumn       ctermbg=0           ctermfg=8           cterm=NONE
  hi Folded           ctermbg=0           ctermfg=8           cterm=NONE

  hi VertSplit        ctermbg=8           ctermfg=8           cterm=NONE
  hi WildMenu         ctermbg=12          ctermfg=0           cterm=NONE

  hi SpecialKey       ctermbg=NONE        ctermfg=8           cterm=NONE
  hi Title            ctermbg=NONE        ctermfg=15          cterm=NONE

  hi DiffAdd          ctermbg=2           ctermfg=0           cterm=NONE
  hi DiffChange       ctermbg=6           ctermfg=0           cterm=NONE
  hi DiffDelete       ctermbg=1           ctermfg=0           cterm=NONE
  hi DiffText         ctermbg=11          ctermfg=0           cterm=NONE

  hi IncSearch        ctermbg=1           ctermfg=0           cterm=NONE
  hi Search           ctermbg=11          ctermfg=0           cterm=NONE

  hi Directory        ctermbg=NONE        ctermfg=14          cterm=NONE
  hi MatchParen       ctermbg=0           ctermfg=11          cterm=NONE

  hi SpellBad         ctermbg=NONE        ctermfg=1           cterm=undercurl
  hi SpellCap         ctermbg=NONE        ctermfg=3           cterm=undercurl
  hi SpellLocal       ctermbg=NONE        ctermfg=2           cterm=undercurl
  hi SpellRare        ctermbg=NONE        ctermfg=5           cterm=undercurl

  hi ColorColumn      ctermbg=1           ctermfg=NONE        cterm=NONE
  hi SignColumn       ctermbg=0           ctermfg=8           cterm=NONE
endif

hi link Boolean            Constant
hi link Character          Constant
hi link Conceal            Normal
hi link Conditional        Statement
hi link Debug              Special
hi link Define             PreProc
hi link Delimiter          Special
hi link Exception          Statement
hi link Float              Number
hi link HelpCommand        Statement
hi link HelpExample        Statement
hi link Include            PreProc
hi link Keyword            Statement
hi link Label              Statement
hi link Macro              PreProc
hi link Number             Constant
hi link Operator           Statement
hi link PreCondit          PreProc
hi link Repeat             Statement
hi link SpecialChar        Special
hi link SpecialComment     Special
hi link StorageClass       Type
hi link Structure          Type
hi link Tag                Special
hi link Typedef            Type

hi link htmlEndTag         htmlTagName
hi link htmlLink           Function
hi link htmlSpecialTagName htmlTagName
hi link htmlTag            htmlTagName
hi link xmlTag             Statement
hi link xmlTagName         Statement
hi link xmlEndTag          Statement

hi link diffBDiffer        WarningMsg
hi link diffCommon         WarningMsg
hi link diffDiffer         WarningMsg
hi link diffIdentical      WarningMsg
hi link diffIsA            WarningMsg
hi link diffNoEOL          WarningMsg
hi link diffOnly           WarningMsg
hi link diffRemoved        WarningMsg
hi link diffAdded          String
