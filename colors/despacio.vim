"   ________  _______   ________  ________  ________  ________  ___  ________
"  |\   ___ \|\  ___ \ |\   ____\|\   __  \|\   __  \|\   ____\|\  \|\   __  \
"  \ \  \_|\ \ \   __/|\ \  \___|\ \  \|\  \ \  \|\  \ \  \___|\ \  \ \  \|\  \
"   \ \  \ \\ \ \  \_|/_\ \_____  \ \   ____\ \   __  \ \  \    \ \  \ \  \\\  \
"    \ \  \_\\ \ \  \_|\ \|____|\  \ \  \___|\ \  \ \  \ \  \____\ \  \ \  \\\  \
"     \ \_______\ \_______\____\_\  \ \__\    \ \__\ \__\ \_______\ \__\ \_______\
"      \|_______|\|_______|\_________\|__|     \|__|\|__|\|_______|\|__|\|_______|
"                         \|_________|


" AUTHOR:       Alessandro Yorba
" SCRIPT URL:   https://github.com/AlessandroYorba/Despacio
"
" UPDATED:      Dec 16, 2017
" LATEST CHANGES: Search
"
" MAINTAINER:       Alessandro Yorba    https://github.com/AlessandroYorba
"
" SUPPORTED ENVIRONMENTS:
" 256 color terminals, Gui versions of vim, and Termguicolors versions of vim
"
" INSTALL INSTRUCTIONS:
" Unix users, place despacio.vim in ~/.vim/colors
" Windows users, place despacio.vim in  ~\vimfiles\colors
"
" SETUP AND CUSTOMIZATION:
" To enable Despacio as your default colorscheme add the following to your .vimrc:
"   colorscheme despacio
"
" The default UI for Despacio is a dark grey UI. However, depending on certain lighting conditions,
" time of day or personal preference, you might want to try some of the darker or lighter versions.
" To enable, add one of the following settings to your .vimrc
"
"   "Darker Grey
"   let g:despacio_Sunset = 1
"   colorscheme despacio
"
"   "Darkest Grey
"   let g:despacio_Twilight = 1
"   colorscheme despacio
"
"   "Amost Black
"   let g:despacio_Midnight = 1
"   colorscheme despacio
"
"   "Black
"   let g:despacio_Pitch = 1
"   colorscheme despacio
"
" MATCHING TERMINAL:
" Other themes for despacio: https://github.com/AlessandroYorba/Despacio/terminal_colors
"
"-------------------------------------|-----------------------------------------
"   BASIC         HEX                 |     BASIC         HEX                  |
"-------------------------------------|-----------------------------------------
"   Foreground    #ffffdf             |     Selection     #5f8787              |
"   Background    #303030             |     Selected Text #eeeeee              |
"   Bold          #ffffff             |                                        |
"   Links         #d75f00             |                                        |
"-------------------------------------|-----------------------------------------
"
"-------------------------------------|-----------------------------------------
"   CURSOR         HEX                |                                        |
"-------------------------------------|-----------------------------------------
"   CursorColor   #ffffff             |                                        |
"   CursorText    #000000             |                                        |
"-------------------------------------|-----------------------------------------
"
"-------------------------------------|-----------------------------------------
"   NORMAL        HEX          XTERM  |      BRIGHT        HEX          XTERM  |
"-------------------------------------|-----------------------------------------
"   Black         #303030      0      |      brBlack       #767676      8      |
"   Red           #d75f5f      1      |      brRed         #d75f5f      9      |
"   Green         #5f8787      2      |      brGreen       #5f8787      10     |
"   Yellow        #dfaf87      3      |      brYellow      #dfaf87      11     |
"   Blue          #af875f      4      |      brBlue        #af875f      12     |
"   Magenta       #875f5f      5      |      brMagenta     #875f5f      13     |
"   Cyan          #87afaf      6      |      brCyan        #87afaf      14     |
"   White         #ffffdf      7      |      brWhite       #ffffdf      15     |
"-------------------------------------|-----------------------------------------
"
" DESPACIO:
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="despacio"


if !exists("g:despacio_Sunset")
    let g:despacio_Sunset = 0
endif

if !exists("g:despacio_Twilight")
    let g:despacio_Twilight = 0
endif

if !exists("g:despacio_Midnight")
    let g:despacio_Midnight = 0
endif

if !exists("g:despacio_Pitch")
    let g:despacio_Pitch = 0
endif


"COMMON DESPACIO SETTINGS
highlight PreProc               guifg=#d7875f  guibg=NONE     gui=NONE       ctermfg=173   ctermbg=NONE  cterm=NONE
highlight Function              guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE
highlight Identifier            guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE
highlight Statement             guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight Constant              guifg=#d78700  guibg=NONE     gui=NONE       ctermfg=172   ctermbg=NONE  cterm=NONE
highlight Type                  guifg=#d78700  guibg=NONE     gui=NONE       ctermfg=172   ctermbg=NONE  cterm=NONE
highlight String                guifg=#5f8787  guibg=NONE     gui=NONE       ctermfg=66    ctermbg=NONE  cterm=NONE
highlight Special               guifg=#875f5f  guibg=NONE     gui=NONE       ctermfg=95    ctermbg=NONE  cterm=NONE
highlight Conditional           guifg=#875f5f  guibg=NONE     gui=NONE       ctermfg=95    ctermbg=NONE  cterm=NONE
highlight Operator              guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE
highlight Title                 guifg=#d7875f  guibg=NONE     gui=NONE       ctermfg=173   ctermbg=NONE  cterm=NONE
highlight StorageClass          guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE
highlight htmlItalic            guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight htmlEndTag            guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE
highlight cssTagName            guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight cssClassName          guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight cssIdentifier         guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE

"DIFF
highlight DiffAdd               guifg=#008787  guibg=NONE     gui=reverse    ctermfg=30   ctermbg=NONE  cterm=reverse
highlight DiffText              guifg=#008787  guibg=NONE     gui=reverse    ctermfg=30   ctermbg=NONE  cterm=reverse
highlight DiffChange            guifg=#005f5f  guibg=NONE     gui=reverse    ctermfg=23   ctermbg=NONE  cterm=reverse
highlight DiffDelete            guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131   ctermbg=NONE  cterm=reverse

"SPELLING
highlight SpellBad              guifg=#d75f5f  guibg=NONE     gui=undercurl  ctermfg=167   ctermbg=NONE  cterm=undercurl
highlight SpellLocal            guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65    ctermbg=NONE  cterm=undercurl
highlight SpellCap              guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111   ctermbg=NONE  cterm=undercurl
highlight SpellRare             guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208   ctermbg=NONE  cterm=undercurl

"WINDOW UI
highlight MoreMsg               guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight SpecialComment        guifg=#b2b2b2  guibg=NONE     gui=reverse    ctermfg=249   ctermbg=NONE  cterm=reverse
highlight VimCommentTitle       guifg=#b2b2b2  guibg=NONE     gui=reverse    ctermfg=249   ctermbg=NONE  cterm=reverse
highlight Underlined            guifg=#87afaf  guibg=NONE     gui=NONE       ctermfg=109    ctermbg=NONE  cterm=NONE
highlight FoldColumn            guifg=#87afaf  guibg=NONE     gui=NONE       ctermfg=109   ctermbg=NONE  cterm=NONE
highlight Todo                  guifg=#d78700  guibg=NONE     gui=reverse    ctermfg=172   ctermbg=NONE  cterm=reverse
highlight Visual                guifg=#87afaf  guibg=NONE     gui=reverse    ctermfg=109   ctermbg=NONE  cterm=reverse
highlight Question              guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight Search                guifg=#dfaf00  guibg=NONE     gui=reverse    ctermfg=178   ctermbg=NONE  cterm=reverse
highlight MatchParen            guifg=#87afaf  guibg=NONE     gui=reverse    ctermfg=109   ctermbg=NONE  cterm=reverse
highlight Error                 guifg=#d75f5f  guibg=#121212  gui=reverse    ctermfg=167   ctermbg=233   cterm=reverse
highlight ErrorMsg              guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167   ctermbg=NONE  cterm=NONE
highlight WarningMsg            guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight netrwExe              guifg=#5f8787  guibg=NONE     gui=NONE       ctermfg=66    ctermbg=NONE  cterm=NONE
highlight netrwlist             guifg=#875f5f  guibg=NONE     gui=NONE       ctermfg=95    ctermbg=NONE  cterm=NONE
highlight Directory             guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight Cursor                guifg=#000000  guibg=#ffffff  gui=NONE       ctermfg=16    ctermbg=231   cterm=NONE
highlight CursorLineNr          guifg=#c6c6c6  guibg=NONE     gui=reverse    ctermfg=251   ctermbg=NONE  cterm=reverse
highlight WildMenu              guifg=#c6c6c6  guibg=NONE     gui=reverse    ctermfg=251   ctermbg=NONE  cterm=reverse
highlight ModeMsg               guifg=#dfdfdf  guibg=NONE     gui=NONE       ctermfg=188   ctermbg=NONE  cterm=NONE
highlight SignColumn            guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108   ctermbg=NONE  cterm=NONE

" DAY:
if 1
    "COLORS
    highlight Normal            guifg=#ffffdf  guibg=#303030  gui=NONE     ctermfg=230   ctermbg=236   cterm=NONE
    highlight Comment           guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE
    highlight StatusLineNC      guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight Pmenu             guifg=#767676  guibg=#3a3a3a  gui=NONE     ctermfg=243   ctermbg=237   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#5f8787  gui=NONE     ctermfg=255   ctermbg=66   cterm=NONE
    highlight PmenuSbar         guifg=#3a3a3a  guibg=#3a3a3a  gui=NONE     ctermfg=237   ctermbg=237   cterm=NONE
    highlight PmenuThumb        guifg=#3a3a3a  guibg=#3a3a3a  gui=NONE     ctermfg=237   ctermbg=237   cterm=NONE
    highlight TabLine           guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight TabLineSel        guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE
    highlight TabLineFill       guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight CursorLine        guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight CursorColumn      guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight ColorColumn       guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight Folded            guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#444444  guibg=#303030  gui=NONE     ctermfg=238   ctermbg=236   cterm=NONE
    highlight LineNr            guifg=#4e4e4e  guibg=#262626  gui=NONE     ctermfg=239   ctermbg=235   cterm=NONE
    highlight NonText           guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE
endif


" SUNSET:
if g:despacio_Sunset
    "COLORS
    highlight Normal            guifg=#ffffdf  guibg=#262626  gui=NONE     ctermfg=230   ctermbg=235   cterm=NONE
    highlight Comment           guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight StatusLineNC      guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight Pmenu             guifg=#6c6c6c  guibg=#303030  gui=NONE     ctermfg=242   ctermbg=236   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#5f8787  gui=NONE     ctermfg=255   ctermbg=66   cterm=NONE
    highlight PmenuSbar         guifg=#303030  guibg=#303030  gui=NONE     ctermfg=236   ctermbg=236   cterm=NONE
    highlight PmenuThumb        guifg=#303030  guibg=#303030  gui=NONE     ctermfg=236   ctermbg=236   cterm=NONE
    highlight TabLine           guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight TabLineSel        guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight TabLineFill       guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE
    highlight CursorLine        guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight CursorColumn      guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight ColorColumn       guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight Folded            guifg=#6c6c6c  guibg=NONE     gui=NONE     ctermfg=242   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#3a3a3a  guibg=#262626  gui=NONE     ctermfg=237   ctermbg=235   cterm=NONE
    highlight LineNr            guifg=#4e4e4e  guibg=#1c1c1c  gui=NONE     ctermfg=239   ctermbg=234   cterm=NONE
    highlight NonText           guifg=#3a3a3a  guibg=NONE     gui=NONE     ctermfg=237   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#3a3a3a  guibg=NONE     gui=NONE     ctermfg=237   ctermbg=NONE  cterm=NONE
endif

" TWILIGHT:
if g:despacio_Twilight
    "COLORS
    highlight Normal            guifg=#ffffdf  guibg=#1c1c1c  gui=NONE     ctermfg=230   ctermbg=234   cterm=NONE
    highlight Comment           guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight StatusLineNC      guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight Pmenu             guifg=#626262  guibg=#262626  gui=NONE     ctermfg=241   ctermbg=235   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#5f8787  gui=NONE     ctermfg=255   ctermbg=66   cterm=NONE
    highlight PmenuSbar         guifg=#262626  guibg=#262626  gui=NONE     ctermfg=235   ctermbg=235   cterm=NONE
    highlight PmenuThumb        guifg=#262626  guibg=#262626  gui=NONE     ctermfg=235   ctermbg=235   cterm=NONE
    highlight TabLine           guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight TabLineSel        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight TabLineFill       guifg=NONE     guibg=#121212  gui=NONE     ctermfg=NONE  ctermbg=233   cterm=NONE
    highlight CursorLine        guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight CursorColumn      guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight ColorColumn       guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight Folded            guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#303030  guibg=#1c1c1c  gui=NONE     ctermfg=236   ctermbg=234   cterm=NONE
    highlight LineNr            guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight NonText           guifg=#303030  guibg=NONE     gui=NONE     ctermfg=236   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#303030  guibg=NONE     gui=NONE     ctermfg=236   ctermbg=NONE  cterm=NONE
endif


" MIDNIGHT:
if g:despacio_Midnight
    "COLORS
    highlight Normal            guifg=#ffffdf  guibg=#121212  gui=NONE     ctermfg=230   ctermbg=233   cterm=NONE
    highlight Comment           guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none
    highlight StatusLineNC      guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight Pmenu             guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight PmenuSel          guifg=#eeeeee  guibg=#5f8787  gui=none     ctermfg=255   ctermbg=66   cterm=none
    highlight PmenuSbar         guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight PmenuThumb        guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight TabLine           guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight TabLineSel        guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none
    highlight TabLineFill       guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE
    highlight CursorLine        guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight CursorColumn      guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight ColorColumn       guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight Folded            guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#262626  guibg=#121212  gui=NONE     ctermfg=235   ctermbg=233   cterm=NONE
    highlight LineNr            guifg=#4e4e4e  guibg=#1c1c1c  gui=none     ctermfg=239   ctermbg=234   cterm=none
    highlight NonText           guifg=#262626  guibg=NONE     gui=NONE     ctermfg=235   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#262626  guibg=NONE     gui=NONE     ctermfg=235   ctermbg=NONE  cterm=NONE
endif


" PITCH:
if g:despacio_Pitch
    "COLORS
    highlight Normal            guifg=#ffffdf  guibg=#080808  gui=NONE     ctermfg=230   ctermbg=232   cterm=NONE
    highlight Comment           guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight StatusLineNC      guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight Pmenu             guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#5f8787  gui=none     ctermfg=255   ctermbg=66   cterm=none
    highlight PmenuSbar         guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight PmenuThumb        guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight TabLine           guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight TabLineSel        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight TabLineFill       guifg=NONE     guibg=#121212  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight CursorLine        guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight CursorColumn      guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight ColorColumn       guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight Folded            guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#1c1c1c  guibg=#080808  gui=NONE     ctermfg=234   ctermbg=232   cterm=NONE
    highlight LineNr            guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight NonText           guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE
endif

" LICENSE:
" Copyright (c) 2018 Alessandro Yorba
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
