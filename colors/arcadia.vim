"  ________  ________  ________  ________  ________  ___  ________
" |\   __  \|\   __  \|\   ____\|\   __  \|\   ___ \|\  \|\   __  \
" \ \  \|\  \ \  \|\  \ \  \___|\ \  \|\  \ \  \_|\ \ \  \ \  \|\  \
"  \ \   __  \ \   _  _\ \  \    \ \   __  \ \  \ \\ \ \  \ \   __  \
"   \ \  \ \  \ \  \\  \\ \  \____\ \  \ \  \ \  \_\\ \ \  \ \  \ \  \
"    \ \__\ \__\ \__\\ _\\ \_______\ \__\ \__\ \_______\ \__\ \__\ \__\
"     \|__|\|__|\|__|\|__|\|_______|\|__|\|__|\|_______|\|__|\|__|\|__|


" AUTHOR:       Alessandro Yorba
" SCRIPT URL:   https://github.com/AlessandroYorba/Arcadia
" UPDATED:      August 08, 2017


" MAINTAINER:       Alessandro Yorba    https://github.com/AlessandroYorba
" Terminal Theme:   Michael Reinhardt   https://github.com/mreinhardt


" SUPPORTED ENVIRONMENTS:
" 256 color terminals, Gui versions of vim, and Termguicolors versions of vim


" INSTALL INSTRUCTIONS:
" Unix users, place arcadia.vim in ~/.vim/colors
" Windows users, place arcadia.vim in  ~\vimfiles\colors


" SETUP AND CUSTOMIZATION:
" To enable Arcadia as your default colorscheme add the following  to your .vimrc:
"   colorscheme arcadia

" The default UI for Arcadia is a dark grey UI. However, depending on certain lighting conditions, 
" time of day or personal preference, you might want to try some of the darker or lighter versions.
" To enable, add one of the following settings to your .vimrc

"   "Darker Grey
"   let g:arcadia_Sunset = 1
"   colorscheme arcadia

"   "Darkest Grey
"   let g:arcadia_Twilight = 1
"   colorscheme arcadia

"   "Amost Black
"   let g:arcadia_Midnight = 1
"   colorscheme arcadia

"   "Black
"   let g:arcadia_Pitch = 1
"   colorscheme arcadia

"   "Ivory Background
"   let g:arcadia_Daybreak = 1
"   colorscheme arcadia

"   "Automatically cycles thru modes depending on time of night
"   let g:arcadia_Campfire = 1
"   colorscheme arcadia


" MATCHING TERMINAL:
"-------------------------------------|-----------------------------------------
"   BASIC         HEX                 |     BASIC         HEX                  |
"-------------------------------------|-----------------------------------------
"   Foreground    #e4e4e4             |     Selection     #008787              |
"   Background    #303030             |     Selected Text #1c1c1c              |
"   Bold          #ffffff             |                                        |
"   Links         #005cbb             |                                        |
"-------------------------------------|-----------------------------------------

"-------------------------------------|-----------------------------------------
"   CURSOR         HEX                |                                        |
"-------------------------------------|-----------------------------------------
"   CursorColor   #dfdfdf             |                                        |
"   CursorText    #303030             |                                        |
"-------------------------------------|-----------------------------------------

"-------------------------------------|-----------------------------------------
"   NORMAL        HEX          XTERM  |      BRIGHT        HEX          XTERM  |
"-------------------------------------|-----------------------------------------
"   Black         #303030      0      |      brBlack       #6c6c6c      8      |
"   Red           #870f1c      1      |      brRed         #af1c5f      9      |
"   Green         #1c5f5f      2      |      brGreen       #008787      10     |
"   Yellow        #af871c      3      |      brYellow      #dfaf00      11     |
"   Blue          #1c5f87      4      |      brBlue        #5f87af      12     |
"   Magenta       #5f1c5f      5      |      brMagenta     #875f87      13     |
"   Cyan          #005f87      6      |      brCyan        #0087af      14     |
"   White         #afafaf      7      |      brWhite       #e4e4e4      15     |
"-------------------------------------|-----------------------------------------


set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="arcadia"

if !exists("g:arcadia_Campfire")
    let g:arcadia_Campfire = 0
endif

if !exists("g:arcadia_Sunset")
    let g:arcadia_Sunset = 0
endif

if !exists("g:arcadia_Twilight")
    let g:arcadia_Twilight = 0
endif

if !exists("g:arcadia_Midnight")
    let g:arcadia_Midnight = 0
endif

if !exists("g:arcadia_Pitch")
    let g:arcadia_Pitch = 0
endif

if !exists("g:arcadia_Daybreak")
    let g:arcadia_Daybreak = 0
endif


" CAMPFIRE:
if g:arcadia_Campfire
    let arcadia_Hour = strftime("%H")
    "7am - 5pm: Activate Daybreak HL
    if 7 <= arcadia_Hour && arcadia_Hour < 17
        let g:arcadia_Daybreak = 1
    "5pm - 7am: Activate Day HL
    else
        let g:arcadia_Daybreak = 0
    endif
endif

" COMMON ARCADIA HIGHLIGHTING:
highlight! PreProc                guifg=#8787d7  guibg=NONE     gui=NONE       ctermfg=104    ctermbg=NONE  cterm=NONE
highlight! Title                  guifg=#8787d7  guibg=NONE     gui=NONE       ctermfg=104    ctermbg=NONE  cterm=NONE

highlight! Identifier             guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
highlight! FoldColumn             guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE

highlight! Statement              guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE
highlight! ModeMsg                guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE
highlight! Directory              guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE

highlight! Operator               guifg=#5f5faf  guibg=NONE     gui=NONE       ctermfg=61     ctermbg=NONE  cterm=NONE
highlight! Constant               guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE

highlight! String                 guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE
highlight! netrwExe               guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE
highlight! Visual                 guifg=#008787  guibg=NONE     gui=reverse    ctermfg=30     ctermbg=NONE  cterm=reverse

highlight! Function               guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight! htmlArg                guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight! netrwList              guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE

highlight! WildMenu               guifg=#dfaf00  guibg=#1c1c1c  gui=reverse    ctermfg=178    ctermbg=234   cterm=reverse

highlight! WarningMsg             guifg=#dfaf00  guibg=NONE     gui=NONE       ctermfg=178    ctermbg=NONE  cterm=NONE
highlight! Question               guifg=#dfaf00  guibg=NONE     gui=NONE       ctermfg=178    ctermbg=NONE  cterm=NONE
highlight! MoreMsg                guifg=#dfaf00  guibg=NONE     gui=NONE       ctermfg=178    ctermbg=NONE  cterm=NONE

highlight! Type                   guifg=#af005f  guibg=NONE     gui=NONE       ctermfg=125    ctermbg=NONE  cterm=NONE
highlight! ErrorMsg               guifg=#af005f  guibg=NONE     gui=NONE       ctermfg=125    ctermbg=NONE  cterm=NONE
highlight! Underlined             guifg=#af005f  guibg=NONE     gui=underline  ctermfg=125    ctermbg=NONE  cterm=underline
highlight! Error                  guifg=#af005f  guibg=#e4e4e4  gui=reverse    ctermfg=125    ctermbg=254   cterm=reverse

highlight! htmlItalic             guifg=#af8787  guibg=NONE     gui=NONE       ctermfg=138    ctermbg=NONE  cterm=NONE
highlight! Label                  guifg=#005f87  guibg=NONE     gui=NONE       ctermfg=24     ctermbg=NONE  cterm=NONE
highlight! MatchParen             guifg=#008787  guibg=NONE     gui=reverse    ctermfg=30     ctermbg=NONE  cterm=reverse
highlight! SignColumn             guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108    ctermbg=NONE  cterm=NONE
highlight! Todo                   guifg=#8787d7  guibg=#1c1c1c  gui=reverse    ctermfg=104    ctermbg=234   cterm=reverse

highlight! htmlSpecialTagName     guifg=#af5f87  guibg=NONE     gui=NONE       ctermfg=132    ctermbg=NONE  cterm=NONE
highlight! TabLineSel             guifg=#eeeeee  guibg=#5f5f87  gui=NONE       ctermfg=255    ctermbg=60    cterm=NONE
highlight! Search                 guifg=NONE     guibg=NONE     gui=reverse    ctermfg=NONE   ctermbg=NONE  cterm=reverse
highlight! Special                guifg=#5f5f87  guibg=NONE     gui=NONE       ctermfg=60     ctermbg=NONE  cterm=NONE
highlight! CursorLineNr           guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight! SpecialComment         guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight! VimCommentTitle        guifg=#005f5f  guibg=NONE     gui=reverse    ctermfg=23     ctermbg=NONE  cterm=reverse

highlight! PmenuSel               guifg=#eeeeee  guibg=#5f5f87  gui=NONE       ctermfg=255    ctermbg=60    cterm=NONE
highlight! Pmenu                  guifg=#8787af  guibg=#5f5f87  gui=NONE       ctermfg=103    ctermbg=60    cterm=NONE
highlight! PmenuSbar              guifg=#5f5f87  guibg=#5f5f87  gui=NONE       ctermfg=60     ctermbg=60    cterm=NONE
highlight! PmenuThumb             guifg=#5f5f87  guibg=#5f5f87  gui=NONE       ctermfg=60     ctermbg=60    cterm=NONE

"FIXME:
highlight! DiffText               guifg=#8787af  guibg=NONE     gui=reverse    ctermfg=103    ctermbg=NONE  cterm=reverse
highlight! DiffAdd                guifg=#afafd7  guibg=NONE     gui=reverse    ctermfg=146    ctermbg=NONE  cterm=reverse
highlight! DiffDelete             guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131    ctermbg=NONE  cterm=reverse
highlight! DiffChange             guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse

"TODO:
highlight! SpellBad               guifg=#ff0000  guibg=NONE     gui=undercurl  ctermfg=196    ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65     ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111    ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208    ctermbg=NONE  cterm=undercurl


" DAY:
if 1
    highlight! Normal               guifg=#e4e4e4  guibg=#303030  gui=NONE     ctermfg=254   ctermbg=236   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE

    highlight! StatusLineNC         guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! VertSplit            guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! TabLine              guifg=#5f5f87  guibg=#262626  gui=NONE     ctermfg=60    ctermbg=235   cterm=NONE
    highlight! LineNr               guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE

    highlight! NonText              guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE

endif


" SUNSET:
if g:arcadia_Sunset
    highlight! Normal               guifg=#dfdfdf  guibg=#262626  gui=NONE     ctermfg=188   ctermbg=235   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE

    highlight! StatusLineNC         guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! VertSplit            guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! TabLine              guifg=#5f5f87  guibg=#1c1c1c  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE
    highlight! LineNr               guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE

    highlight! NonText              guifg=#3a3a3a  guibg=NONE     gui=NONE     ctermfg=237   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#3a3a3a  guibg=NONE     gui=NONE     ctermfg=237   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#6c6c6c  guibg=NONE     gui=NONE     ctermfg=242   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#6c6c6c  guibg=NONE     gui=NONE     ctermfg=242   ctermbg=NONE  cterm=NONE
endif

" TWILIGHT:
if g:arcadia_Twilight
    highlight! Normal               guifg=#dfdfdf  guibg=#1c1c1c  gui=NONE     ctermfg=188   ctermbg=234   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#121212  gui=NONE     ctermfg=NONE  ctermbg=233   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE

    highlight! StatusLineNC         guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! VertSplit            guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! TabLine              guifg=#5f5f87  guibg=#121212  gui=NONE     ctermfg=60   ctermbg=233   cterm=NONE
    highlight! LineNr               guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE

    highlight! NonText              guifg=#303030  guibg=NONE     gui=NONE     ctermfg=236   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#303030  guibg=NONE     gui=NONE     ctermfg=236   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
endif


" MIDNIGHT:
if g:arcadia_Midnight
    highlight! Normal               guifg=#dfdfdf  guibg=#121212  gui=NONE     ctermfg=188   ctermbg=233   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none

    highlight! StatusLineNC         guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! VertSplit            guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! TabLine              guifg=#5f5f87  guibg=#1c1c1c  gui=none     ctermfg=60    ctermbg=234   cterm=none
    highlight! LineNr               guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none

    highlight! NonText              guifg=#262626  guibg=NONE     gui=NONE     ctermfg=235   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#262626  guibg=NONE     gui=NONE     ctermfg=235   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE
endif


" PITCH:
if g:arcadia_Pitch
    highlight! Normal               guifg=#dfdfdf  guibg=#080808  gui=NONE     ctermfg=188   ctermbg=232   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=NONE     gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE

    highlight! StatusLineNC         guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! VertSplit            guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! TabLine              guifg=#5f5f87  guibg=#121212  gui=NONE     ctermfg=60   ctermbg=233   cterm=NONE
    highlight! LineNr               guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE

    highlight! NonText              guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
endif


" DAYBREAK:
if g:arcadia_Daybreak
    highlight! Normal               guifg=#6c6c6c  guibg=#e4e4e4  gui=NONE      ctermfg=242   ctermbg=254   cterm=NONE
    highlight! TabLineFill          guifg=#005f87  guibg=#dadada  gui=NONE      ctermfg=24    ctermbg=253   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#5f5f87  gui=NONE      ctermfg=255   ctermbg=60    cterm=NONE

    highlight! StatusLineNC         guifg=#5f87af  guibg=#dadada  gui=NONE      ctermfg=67    ctermbg=253   cterm=NONE
    highlight! VertSplit            guifg=#bcbcbc  guibg=#dadada  gui=NONE      ctermfg=250   ctermbg=253  cterm=NONE
    highlight! TabLine              guifg=#5f5f87  guibg=#dadada  gui=NONE      ctermfg=60   ctermbg=253   cterm=NONE
    highlight! LineNr               guifg=#bcbcbc  guibg=#eeeeee  gui=NONE      ctermfg=250   ctermbg=255   cterm=NONE

    highlight! NonText              guifg=#bcbcbc  guibg=NONE     gui=NONE      ctermfg=250   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#bcbcbc  guibg=NONE     gui=NONE      ctermfg=250   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#b2b2b2  guibg=NONE     gui=NONE      ctermfg=249   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#767676  guibg=NONE     gui=NONE      ctermfg=243   ctermbg=NONE  cterm=NONE

    "FIXME: add/change to COMMON ARCADIA HIGHLIGHTING for consistancy
    highlight! WildMenu             guifg=#eeeeee  guibg=#5f5f87  gui=reverse    ctermfg=255  ctermbg=60    cterm=reverse
    highlight! MoreMsg              guifg=#005f87  guibg=NONE     gui=NONE       ctermfg=24   ctermbg=NONE  cterm=NONE
    highlight! Question             guifg=#005f87  guibg=NONE     gui=NONE       ctermfg=24   ctermbg=NONE  cterm=NONE
endif

" LICENSE:

" Copyright (c) 2017 Alessandro Yorba
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
