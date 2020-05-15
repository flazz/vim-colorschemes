"   ________  _______   ________  ________  ________  ________  ___  ________
"  |\   ___ \|\  ___ \ |\   ____\|\   __  \|\   __  \|\   ____\|\  \|\   __  \
"  \ \  \_|\ \ \   __/|\ \  \___|\ \  \|\  \ \  \|\  \ \  \___|\ \  \ \  \|\  \
"   \ \  \ \\ \ \  \_|/_\ \_____  \ \   ____\ \   __  \ \  \    \ \  \ \  \\\  \
"    \ \  \_\\ \ \  \_|\ \|____|\  \ \  \___|\ \  \ \  \ \  \____\ \  \ \  \\\  \
"     \ \_______\ \_______\____\_\  \ \__\    \ \__\ \__\ \_______\ \__\ \_______\
"      \|_______|\|_______|\_________\|__|     \|__|\|__|\|_______|\|__|\|_______|
"                         \|_________|


" A Terminal Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Despacio

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

"=================================================================================
" BASIC COLORS:
"=================================================================================
"     Foreground   #e4e4e4              |      Selection     #5f8787             |
"     Background   #303030              |      Selected Text #eeeeee             |
"     CursorColor  #dfdfaf              |                                        |
"     Bold         #ffffff              |                                        |
"     Links        #d75f00              |                                        |
"=================================================================================
" ANSI COLORS DESPACIO:
"=================================================================================
"---------------------------------------|-----------------------------------------
"     NORMAL       Hex          xterm   |      "BRIGHT      Hex          xterm   |
"---------------------------------------|-----------------------------------------
"     Black        #303030      0       |      brBlack      #767676      8       |
"     Red          #d75f5f      1       |      brRed        #d75f5f      9       |
"     Green        #af875f      2       |      brGreen      #af875f      10      |
"     Yellow       #ffdfaf      3       |      brYellow     #ffdfaf      11      |
"     Blue         #5f8787      4       |      brBlue       #5f8787      12      |
"     Magenta      #ffffdf      5       |      brMagenta    #ffffdf      13      |
"     Cyan         #d75f00      6       |      brCyan       #d75f00      14      |
"     White        #e4e4e4      7       |      brWhite      #eeeeee      15      |
"---------------------------------------|-----------------------------------------

"=================================================================================
" SETUP:
"=================================================================================

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================

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

if !exists("g:despacio_Clear_Skies")
    let g:despacio_Clear_Skies = 0
endif

if !exists("g:despacio_Campfire")
    let g:despacio_Campfire = 0
endif

"================================================================================
" CAMPFIRE:
"================================================================================
if g:despacio_Campfire
    let despacio_Hour = strftime("%H")
    "Day: 7am - 5pm
    if 7 <= despacio_Hour && despacio_Hour < 17
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 0
    "Sunset: 5pm - 7pm
    elseif 17 <= despacio_Hour && despacio_Hour < 19
        let g:despacio_Sunset = 1
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 0
    "Twilight: 7pm - 9pm
    elseif 19 <= despacio_Hour && despacio_Hour < 21
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 1
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 0
    "Midnight: 9pm - 12am
    elseif 21 <= despacio_Hour && despacio_Hour < 24
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 1
        let g:despacio_Pitch = 0
    "Pitch: 12am - 7am
    else
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 1
    endif
endif

"================================================================================
" COMMON SETTINGS:
"================================================================================

highlight! Constant               guifg=#d75f00  guibg=NONE     gui=NONE       ctermfg=166   ctermbg=NONE  cterm=NONE
highlight! htmlArg                guifg=#d75f00  guibg=NONE     gui=NONE       ctermfg=166   ctermbg=NONE  cterm=NONE

highlight! Special                guifg=#ffaf87  guibg=NONE     gui=NONE       ctermfg=216   ctermbg=NONE  cterm=NONE
highlight! Directory              guifg=#ffaf87  guibg=NONE     gui=NONE       ctermfg=216   ctermbg=NONE  cterm=NONE

highlight! Underlined             guifg=#5f8787  guibg=NONE     gui=NONE       ctermfg=66   ctermbg=NONE  cterm=NONE
highlight! ErrorMsg               guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167   ctermbg=NONE  cterm=NONE

highlight! String                 guifg=#ffffdf  guibg=NONE     gui=NONE       ctermfg=230   ctermbg=NONE  cterm=NONE
highlight! ModeMsg                guifg=#ffffdf  guibg=NONE     gui=NONE       ctermfg=230   ctermbg=NONE  cterm=NONE

highlight! PreProc                guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight! htmlItalic             guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight! WarningMsg             guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight! Title                  guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight! Type                   guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight! cssClassName           guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight! cssIdentifier          guifg=#ff875f  guibg=NONE     gui=NONE       ctermfg=209   ctermbg=NONE  cterm=NONE
highlight! Todo                   guifg=#ff875f  guibg=NONE     gui=reverse    ctermfg=209   ctermbg=NONE  cterm=reverse

highlight! Statement              guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight! MoreMsg                guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight! Question               guifg=#af875f  guibg=NONE     gui=NONE       ctermfg=137   ctermbg=NONE  cterm=NONE
highlight! SpecialComment         guifg=#af875f  guibg=NONE     gui=reverse    ctermfg=137   ctermbg=NONE  cterm=reverse

highlight! Function               guifg=#ffdfaf  guibg=NONE     gui=NONE       ctermfg=223   ctermbg=NONE  cterm=NONE
highlight! htmlStatement          guifg=#ffdfaf  guibg=NONE     gui=NONE       ctermfg=223   ctermbg=NONE  cterm=NONE
highlight! Identifier             guifg=#ffdfaf  guibg=NONE     gui=NONE       ctermfg=223   ctermbg=NONE  cterm=NONE
highlight! cssTagName             guifg=#ffdfaf  guibg=NONE     gui=NONE       ctermfg=223   ctermbg=NONE  cterm=NONE

highlight! Label                  guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE
highlight! Operator               guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE
highlight! StorageClass           guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180   ctermbg=NONE  cterm=NONE

highlight! Visual                 guifg=#eeeeee  guibg=#5f8787  gui=NONE       ctermfg=255   ctermbg=66    cterm=NONE
highlight! MatchParen             guifg=#eeeeee  guibg=#5f8787  gui=NONE       ctermfg=255   ctermbg=66    cterm=NONE
highlight! WildMenu               guifg=#eeeeee  guibg=#5f8787  gui=NONE       ctermfg=255   ctermbg=66    cterm=NONE

highlight! CursorLineNr           guifg=#af875f  guibg=NONE     gui=reverse    ctermfg=137   ctermbg=NONE  cterm=reverse
highlight! VimCommentTitle        guifg=#af875f  guibg=NONE     gui=reverse    ctermfg=137   ctermbg=NONE  cterm=reverse

highlight! Error                  guifg=#d75f5f  guibg=#121212  gui=reverse    ctermfg=167   ctermbg=233   cterm=reverse
highlight! FoldColumn             guifg=#87afaf  guibg=NONE     gui=NONE       ctermfg=109   ctermbg=NONE  cterm=NONE
highlight! SignColumn             guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108   ctermbg=NONE  cterm=NONE
highlight! Folded                 guifg=#dfdfaf  guibg=NONE     gui=NONE       ctermfg=187   ctermbg=NONE  cterm=NONE
highlight! Search                 guifg=#eeeeee  guibg=#af5f00  gui=NONE       ctermfg=255   ctermbg=130   cterm=NONE

highlight! SpellBad               guifg=#d75f5f  guibg=NONE     gui=undercurl  ctermfg=167   ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65    ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111   ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208   ctermbg=NONE  cterm=undercurl

highlight! DiffAdd                guifg=#ffdfaf  guibg=NONE     gui=reverse    ctermfg=223   ctermbg=NONE  cterm=reverse
highlight! DiffText               guifg=#dfaf87  guibg=NONE     gui=reverse    ctermfg=180   ctermbg=NONE  cterm=reverse
highlight! DiffChange             guifg=#af875f  guibg=NONE     gui=reverse    ctermfg=137   ctermbg=NONE  cterm=reverse
highlight! DiffDelete             guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131   ctermbg=NONE  cterm=reverse

"================================================================================
" DAY:
"================================================================================
if 1
    highlight! Normal               guifg=#e4e4e4  guibg=#303030  gui=NONE     ctermfg=254   ctermbg=236   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE
    highlight! TabLineSel           guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE
    highlight! PmenuSel             guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE

    highlight! StatusLineNC         guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! VertSplit            guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! TabLine              guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! Pmenu                guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! LineNr               guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE

    highlight! NonText              guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE

    highlight! PmenuSbar            guifg=#262626  guibg=#262626  gui=NONE     ctermfg=235   ctermbg=235   cterm=NONE
    highlight! PmenuThumb           guifg=#262626  guibg=#262626  gui=NONE     ctermfg=235   ctermbg=235   cterm=NONE

    highlight! Comment              guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE
endif

"================================================================================
" SUNSET:
"================================================================================
if g:despacio_Sunset
    highlight! Normal               guifg=#dfdfdf  guibg=#262626  gui=NONE     ctermfg=188   ctermbg=235   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight! TabLineSel           guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight! PmenuSel             guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE

    highlight! StatusLineNC         guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! VertSplit            guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! TabLine              guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! Pmenu                guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! LineNr               guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE

    highlight! PmenuSbar            guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight! PmenuThumb           guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE

    highlight! NonText              guifg=#3a3a3a  guibg=NONE     gui=NONE     ctermfg=237   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#3a3a3a  guibg=NONE     gui=NONE     ctermfg=237   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#6c6c6c  guibg=NONE     gui=NONE     ctermfg=242   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#6c6c6c  guibg=NONE     gui=NONE     ctermfg=242   ctermbg=NONE  cterm=NONE
endif

"================================================================================
" TWILIGHT:
"================================================================================
if g:despacio_Twilight
    highlight! Normal               guifg=#dfdfdf  guibg=#1c1c1c  gui=NONE     ctermfg=188   ctermbg=234   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#121212  gui=NONE     ctermfg=NONE  ctermbg=233   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! TabLineSel           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! PmenuSel             guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE

    highlight! StatusLineNC         guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! VertSplit            guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! TabLine              guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! Pmenu                guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! LineNr               guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE

    highlight! PmenuSbar            guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight! PmenuThumb           guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE

    highlight! NonText              guifg=#303030  guibg=NONE     gui=NONE     ctermfg=236   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#303030  guibg=NONE     gui=NONE     ctermfg=236   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
endif

"================================================================================
" MIDNIGHT:
"================================================================================
if g:despacio_Midnight
    highlight! Normal               guifg=#dfdfdf  guibg=#121212  gui=NONE     ctermfg=188   ctermbg=233   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none
    highlight! TabLineSel           guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none
    highlight! PmenuSel             guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none

    highlight! StatusLineNC         guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! VertSplit            guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! TabLine              guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! Pmenu                guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! LineNr               guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none

    highlight! PmenuSbar            guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight! PmenuThumb           guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE

    highlight! NonText              guifg=#262626  guibg=NONE     gui=NONE     ctermfg=235   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#262626  guibg=NONE     gui=NONE     ctermfg=235   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE
endif

"================================================================================
" PITCH:
"================================================================================
if g:despacio_Pitch
    highlight! Normal               guifg=#dfdfdf  guibg=#080808  gui=NONE     ctermfg=188   ctermbg=232   cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=NONE     gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! CursorLine           guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! TabLineSel           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! PmenuSel             guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE

    highlight! StatusLineNC         guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! VertSplit            guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! TabLine              guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! Pmenu                guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! LineNr               guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE

    highlight! PmenuSbar            guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight! PmenuThumb           guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE

    highlight! NonText              guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
endif

"================================================================================
" CLEAR SKIES:
"================================================================================
if g:despacio_Clear_Skies
    highlight! CursorLine          guifg=NONE  guibg=NONE  gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
    highlight! CursorColumn        guifg=NONE  guibg=NONE  gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
endif
