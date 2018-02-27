"  ________  ________  ________  ________  ________  ___  ________
" |\   __  \|\   __  \|\   ____\|\   __  \|\   ___ \|\  \|\   __  \
" \ \  \|\  \ \  \|\  \ \  \___|\ \  \|\  \ \  \_|\ \ \  \ \  \|\  \
"  \ \   __  \ \   _  _\ \  \    \ \   __  \ \  \ \\ \ \  \ \   __  \
"   \ \  \ \  \ \  \\  \\ \  \____\ \  \ \  \ \  \_\\ \ \  \ \  \ \  \
"    \ \__\ \__\ \__\\ _\\ \_______\ \__\ \__\ \_______\ \__\ \__\ \__\
"     \|__|\|__|\|__|\|__|\|_______|\|__|\|__|\|_______|\|__|\|__|\|__|


" AUTHOR:       Alessandro Yorba
" SCRIPT URL:   https://github.com/AlessandroYorba/Arcadia
" UPDATED:      Jan 28, 2018
" LATEST CHANGES: MoreMsg, WarningMsg, Search
"
" MAINTAINER:       Alessandro Yorba    https://github.com/AlessandroYorba
" Terminal Theme:   Michael Reinhardt   https://github.com/mreinhardt
"
" SUPPORTED ENVIRONMENTS:
" 256 color terminals, Gui versions of vim, and Termguicolors versions of vim
"
" INSTALL INSTRUCTIONS:
" Unix users, place arcadia.vim in ~/.vim/colors
" Windows users, place arcadia.vim in  ~\vimfiles\colors
"
" SETUP AND CUSTOMIZATION:
" To enable Arcadia as your default colorscheme add the following to your .vimrc:
"   colorscheme arcadia
"
" The default UI for Arcadia is a dark grey UI. However, depending on certain lighting conditions,
" time of day or personal preference, you might want to try some of the darker or lighter versions.
" To enable, add one of the following settings to your .vimrc
"
"   "Darker Grey
"   let g:arcadia_Sunset = 1
"   colorscheme arcadia
"
"   "Darkest Grey
"   let g:arcadia_Twilight = 1
"   colorscheme arcadia
"
"   "Amost Black
"   let g:arcadia_Midnight = 1
"   colorscheme arcadia
"
"   "Black
"   let g:arcadia_Pitch = 1
"   colorscheme arcadia
"
"   "Ivory Background
"   let g:arcadia_Daybreak = 1
"   colorscheme arcadia

" MATCHING TERMINAL:
" Other themes for arcadia: https://github.com/AlessandroYorba/Arcadia/terminal_colors
"
"-------------------------------------|-----------------------------------------
"   BASIC         HEX                 |     BASIC         HEX                  |
"-------------------------------------|-----------------------------------------
"   Foreground    #e4e4e4             |     Selection     #008787              |
"   Background    #303030             |     Selected Text #1c1c1c              |
"   Bold          #ffffff             |                                        |
"   Links         #005cbb             |                                        |
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
"   Black         #303030      0      |      brBlack       #6c6c6c      8      |
"   Red           #af005f      1      |      brRed         #af5f87      9      |
"   Green         #1c5f5f      2      |      brGreen       #008787      10     |
"   Yellow        #af871c      3      |      brYellow      #dfaf00      11     |
"   Blue          #1c5f87      4      |      brBlue        #5f87af      12     |
"   Magenta       #5f1c5f      5      |      brMagenta     #875f87      13     |
"   Cyan          #005f87      6      |      brCyan        #0087af      14     |
"   White         #e4e4e4      7      |      brWhite       #ffffff      15     |
"-------------------------------------|-----------------------------------------

" ARCADIA:
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="arcadia"

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

"COMMON COLORS AND SETTINGS
highlight PreProc             guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
highlight Function            guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight Identifier          guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight Statement           guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight Constant            guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight Type                guifg=#af5f87  guibg=NONE     gui=NONE       ctermfg=132    ctermbg=NONE  cterm=NONE
highlight Label               guifg=#5f5f87  guibg=NONE     gui=NONE       ctermfg=60     ctermbg=NONE  cterm=NONE
highlight String              guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE
highlight Special             guifg=#5f5f87  guibg=NONE     gui=NONE       ctermfg=60     ctermbg=NONE  cterm=NONE
highlight Operator            guifg=#949494  guibg=NONE     gui=NONE       ctermfg=246    ctermbg=NONE  cterm=NONE
highlight Title               guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
highlight StorageClass        guifg=#af5f87  guibg=NONE     gui=NONE       ctermfg=132    ctermbg=NONE  cterm=NONE
highlight htmlStatement       guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight htmlArg             guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight htmlItalic          guifg=#af8787  guibg=NONE     gui=NONE       ctermfg=138    ctermbg=NONE  cterm=NONE
highlight htmlSpecialTagName  guifg=#af5f87  guibg=NONE     gui=NONE       ctermfg=132    ctermbg=NONE  cterm=NONE

"DIFF
highlight DiffText            guifg=#8787af  guibg=NONE     gui=reverse    ctermfg=103    ctermbg=NONE  cterm=reverse
highlight DiffAdd             guifg=#afafd7  guibg=NONE     gui=reverse    ctermfg=146    ctermbg=NONE  cterm=reverse
highlight DiffDelete          guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131    ctermbg=NONE  cterm=reverse
highlight DiffChange          guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse

"SPELLING
highlight SpellBad            guifg=#ff0000  guibg=NONE     gui=undercurl  ctermfg=196    ctermbg=NONE  cterm=undercurl
highlight SpellLocal          guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65     ctermbg=NONE  cterm=undercurl
highlight SpellCap            guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111    ctermbg=NONE  cterm=undercurl
highlight SpellRare           guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208    ctermbg=NONE  cterm=undercurl

"WINDOW UI
highlight MoreMsg             guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight WarningMsg          guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight SpecialComment      guifg=#b2b2b2  guibg=NONE     gui=reverse    ctermfg=249    ctermbg=NONE  cterm=reverse
highlight VimCommentTitle     guifg=#b2b2b2  guibg=NONE     gui=reverse    ctermfg=249    ctermbg=NONE  cterm=reverse
highlight Underlined          guifg=#af005f  guibg=NONE     gui=underline  ctermfg=125    ctermbg=NONE  cterm=underline
highlight FoldColumn          guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
highlight Todo                guifg=#0087af  guibg=NONE     gui=reverse    ctermfg=31     ctermbg=NONE  cterm=reverse
highlight Visual              guifg=#008787  guibg=NONE     gui=reverse    ctermfg=30     ctermbg=NONE  cterm=reverse
highlight Question            guifg=#dfaf00  guibg=NONE     gui=NONE       ctermfg=178    ctermbg=NONE  cterm=NONE
highlight Search              guifg=#dfaf00  guibg=NONE     gui=reverse    ctermfg=178    ctermbg=NONE  cterm=reverse
highlight MatchParen          guifg=#008787  guibg=NONE     gui=reverse    ctermfg=30     ctermbg=NONE  cterm=reverse
highlight Error               guifg=#d75f5f  guibg=NONE     gui=reverse    ctermfg=167    ctermbg=NONE  cterm=reverse
highlight ErrorMsg            guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight netrwExe            guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE
highlight netrwList           guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight Directory           guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE
highlight Cursor              guifg=#000000  guibg=#ffffff  gui=NONE       ctermfg=16     ctermbg=231   cterm=NONE
highlight CursorLineNr        guifg=#c6c6c6  guibg=NONE     gui=reverse    ctermfg=251    ctermbg=NONE  cterm=reverse
highlight WildMenu            guifg=#c6c6c6  guibg=NONE     gui=reverse    ctermfg=251    ctermbg=NONE  cterm=reverse
highlight ModeMsg             guifg=#dfdfdf  guibg=NONE     gui=NONE       ctermfg=188    ctermbg=NONE  cterm=NONE
highlight SignColumn          guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108    ctermbg=NONE  cterm=NONE

"DAY:
if 1
    "COLORS
    highlight Normal            guifg=#e4e4e4  guibg=#303030  gui=NONE     ctermfg=254   ctermbg=236   cterm=NONE
    highlight Comment           guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE
    highlight StatusLineNC      guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight Pmenu             guifg=#767676  guibg=#3a3a3a  gui=NONE     ctermfg=243   ctermbg=237   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#008787  gui=NONE     ctermfg=255   ctermbg=30   cterm=NONE
    highlight PmenuSbar         guifg=#3a3a3a  guibg=#3a3a3a  gui=NONE     ctermfg=237   ctermbg=237   cterm=NONE
    highlight PmenuThumb        guifg=#3a3a3a  guibg=#3a3a3a  gui=NONE     ctermfg=237   ctermbg=237   cterm=NONE
    highlight TabLine           guifg=#5f5f87  guibg=#262626  gui=NONE     ctermfg=60    ctermbg=235   cterm=NONE
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

"SUNSET:
if g:arcadia_Sunset
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#262626  gui=NONE     ctermfg=188   ctermbg=235   cterm=NONE
    highlight Comment           guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight StatusLineNC      guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight Pmenu             guifg=#6c6c6c  guibg=#303030  gui=NONE     ctermfg=242   ctermbg=236   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#008787  gui=NONE     ctermfg=255   ctermbg=30   cterm=NONE
    highlight PmenuSbar         guifg=#303030  guibg=#303030  gui=NONE     ctermfg=236   ctermbg=236   cterm=NONE
    highlight PmenuThumb        guifg=#303030  guibg=#303030  gui=NONE     ctermfg=236   ctermbg=236   cterm=NONE
    highlight TabLine           guifg=#5f5f87  guibg=#1c1c1c  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE
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

"TWILIGHT:
if g:arcadia_Twilight
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#1c1c1c  gui=NONE     ctermfg=188   ctermbg=234   cterm=NONE
    highlight Comment           guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight StatusLineNC      guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight Pmenu             guifg=#626262  guibg=#262626  gui=NONE     ctermfg=241   ctermbg=235   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#008787  gui=NONE     ctermfg=255   ctermbg=30   cterm=NONE
    highlight PmenuSbar         guifg=#262626  guibg=#262626  gui=NONE     ctermfg=235   ctermbg=235   cterm=NONE
    highlight PmenuThumb        guifg=#262626  guibg=#262626  gui=NONE     ctermfg=235   ctermbg=235   cterm=NONE
    highlight TabLine           guifg=#5f5f87  guibg=#121212  gui=NONE     ctermfg=60    ctermbg=233   cterm=NONE
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

"MIDNIGHT:
if g:arcadia_Midnight
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#121212  gui=NONE     ctermfg=188   ctermbg=233   cterm=NONE
    highlight Comment           guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight StatusLineNC      guifg=#585858  guibg=#1c1c1c  gui=NONE     ctermfg=240   ctermbg=234   cterm=NONE
    highlight Pmenu             guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight PmenuSel          guifg=#eeeeee  guibg=#008787  gui=none     ctermfg=255   ctermbg=30   cterm=none
    highlight PmenuSbar         guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight PmenuThumb        guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight TabLine           guifg=#5f5f87  guibg=#1c1c1c  gui=NONE     ctermfg=60    ctermbg=234   cterm=NONE
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

"PITCH:
if g:arcadia_Pitch
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#080808  gui=NONE     ctermfg=188   ctermbg=232   cterm=NONE
    highlight Comment           guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight StatusLineNC      guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight Pmenu             guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#008787  gui=NONE     ctermfg=255   ctermbg=30   cterm=NONE
    highlight PmenuSbar         guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight PmenuThumb        guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight TabLine           guifg=#5f5f87  guibg=#121212  gui=NONE     ctermfg=60    ctermbg=233   cterm=NONE
    highlight TabLineSel        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight TabLineFill       guifg=NONE     guibg=NONE     gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight CursorLine        guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight CursorColumn      guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight ColorColumn       guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16    cterm=NONE
    highlight Folded            guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#1c1c1c  guibg=#080808  gui=NONE     ctermfg=234   ctermbg=232   cterm=NONE
    highlight LineNr            guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight NonText           guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE
endif

" DAYBREAK:
if g:arcadia_Daybreak
    "COLORS
    highlight Normal            guifg=#767676  guibg=#e4e4e4  gui=NONE      ctermfg=243   ctermbg=254   cterm=NONE
    highlight Comment           guifg=#b2b2b2  guibg=NONE     gui=NONE      ctermfg=249   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#6c6c6c  guibg=#eeeeee  gui=NONE      ctermfg=242   ctermbg=255   cterm=NONE
    highlight StatusLineNC      guifg=#a8a8a8  guibg=#eeeeee  gui=NONE      ctermfg=248   ctermbg=255   cterm=NONE
    highlight Pmenu             guifg=#a8a8a8  guibg=#eeeeee  gui=NONE      ctermfg=248   ctermbg=255   cterm=NONE
    highlight PmenuSel          guifg=#ffffff  guibg=#8a8a8a  gui=reverse   ctermfg=231   ctermbg=245   cterm=reverse
    highlight PmenuSbar         guifg=#eeeeee  guibg=#eeeeee  gui=NONE      ctermfg=255   ctermbg=255   cterm=NONE
    highlight PmenuThumb        guifg=#eeeeee  guibg=#eeeeee  gui=NONE      ctermfg=255   ctermbg=255   cterm=NONE
    highlight TabLine           guifg=#a8a8a8  guibg=#eeeeee  gui=NONE      ctermfg=248   ctermbg=255   cterm=NONE
    highlight TabLineSel        guifg=#6c6c6c  guibg=#e4e4e4  gui=NONE      ctermfg=242   ctermbg=254   cterm=NONE
    highlight TabLineFill       guifg=#a8a8a8  guibg=#eeeeee  gui=NONE      ctermfg=248   ctermbg=255   cterm=NONE
    highlight Cursor            guifg=#ffffff  guibg=#000000  gui=NONE      ctermfg=231   ctermbg=16    cterm=NONE
    highlight CursorLine        guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE
    highlight CursorLineNr      guifg=#ffffff  guibg=#8a8a8a  gui=reverse   ctermfg=231   ctermbg=245   cterm=reverse
    highlight CursorColumn      guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE
    highlight ColorColumn       guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE
    highlight Folded            guifg=#767676  guibg=NONE     gui=NONE      ctermfg=243   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#bcbcbc  guibg=#e4e4e4  gui=NONE      ctermfg=250   ctermbg=254   cterm=NONE
    highlight LineNr            guifg=#bcbcbc  guibg=#eeeeee  gui=NONE      ctermfg=250   ctermbg=255   cterm=NONE
    highlight NonText           guifg=#bcbcbc  guibg=NONE     gui=NONE      ctermfg=250   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#bcbcbc  guibg=NONE     gui=NONE      ctermfg=250   ctermbg=NONE  cterm=NONE
    highlight Question          guifg=#005f87  guibg=NONE     gui=NONE      ctermfg=24    ctermbg=NONE  cterm=NONE
    highlight Operator          guifg=#767676  guibg=NONE     gui=NONE      ctermfg=243   ctermbg=NONE  cterm=NONE
    highlight WildMenu          guifg=#ffffff  guibg=#8a8a8a  gui=reverse   ctermfg=231   ctermbg=245   cterm=reverse
    highlight MoreMsg           guifg=#dfaf00  guibg=NONE     gui=NONE      ctermfg=178   ctermbg=NONE  cterm=NONE
    highlight ModeMsg           guifg=#767676  guibg=NONE     gui=NONE      ctermfg=243   ctermbg=NONE  cterm=NONE
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
