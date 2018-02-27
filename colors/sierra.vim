"    ███████╗██╗███████╗██████╗ ██████╗  █████╗
"    ██╔════╝██║██╔════╝██╔══██╗██╔══██╗██╔══██╗
"    ███████╗██║█████╗  ██████╔╝██████╔╝███████║
"    ╚════██║██║██╔══╝  ██╔══██╗██╔══██╗██╔══██║
"    ███████║██║███████╗██║  ██║██║  ██║██║  ██║
"    ╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝

" A Vim colorscheme
" AUTHOR:       Alessandro Yorba
" SCRIPT URL:   https://github.com/AlessandroYorba/Sierra
"
" UPDATED:      Dec 6, 2017
" LATEST CHANGES: Brighter Comments for Midnight and Pitch
"
" MAINTAINER:            Alessandro Yorba       https://github.com/AlessandroYorba
" Kaolin For Emacs:      ogdenwebb              https://github.com/ogdenwebb
" Airline Theme:         Danilo Augusto         https://github.com/danilo-augusto
"
" SUPPORTED ENVIRONMENTS:
" 256 color terminals, Gui versions of vim, and Termguicolors versions of vim
"
" INSTALL INSTRUCTIONS:
" Unix users, place sierra.vim in ~/.vim/colors
" Windows users, place sierra.vim in  ~\vimfiles\colors
"
" SETUP AND CUSTOMIZATION:
" To enable Sierra as your default colorscheme add the following  to your .vimrc:
"   colorscheme sierra
"
" There are several settings for Sierra that you can enable from within your .vimrc
" Here are some descriptions and examples on how to enable them:
"
"   "Darker Grey Background
"   let g:sierra_Sunset = 1
"   colorscheme sierra
"
"   "Darkest Grey Background
"   let g:sierra_Twilight = 1
"   colorscheme sierra
"
"   "Amost Black Background
"   let g:sierra_Midnight = 1
"   colorscheme sierra
"
"   "Black Background
"   let g:sierra_Pitch = 1
"   colorscheme sierra
"
"   "Matching Parens are underlined
"   let g:sierra_Nevada = 1
"   colorscheme sierra
"
" MATCHING TERMINAL:
" Other themes for sierra: https://github.com/AlessandroYorba/Sierra
"
"-------------------------------------|-----------------------------------------
"   BASIC        HEX                  |      BASIC         HEX                 |
"-------------------------------------|-----------------------------------------
"   Foreground   #dfdfaf              |      Selection     #ffffdf             |
"   Background   #303030              |      Selected Text #dfdfaf             |
"   Bold         #ffffff              |                                        |
"   Links        #005cbb              |                                        |
"-------------------------------------|-----------------------------------------
"
"-------------------------------------|-----------------------------------------
"   CURSOR       HEX                                                           |
"-------------------------------------|-----------------------------------------
"   Cursor       #dfdfaf              |                                        |
"   Cursor Text  #303030              |                                        |
"-------------------------------------|-----------------------------------------
"
"-------------------------------------|-----------------------------------------
"   NORMAL       HEX          XTERM   |      BRIGHT       HEX          XTERM   |
"-------------------------------------|-----------------------------------------
"   Black        #303030      0       |      brBlack      #6c6c6c      8       |
"   Red          #af5f5f      1       |      brRed        #af5f5f      9       |
"   Green        #d75f5f      2       |      brGreen      #d75f5f      10      |
"   Yellow       #afd7d7      3       |      brYellow     #afd7d7      11      |
"   Blue         #af8787      4       |      brBlue       #af8787      12      |
"   Magenta      #dfaf87      5       |      brMagenta    #dfaf87      13      |
"   Cyan         #ffafaf      6       |      brCyan       #ffafaf      14      |
"   White        #dfdfaf      7       |      brWhite      #dfdfaf      15      |
"-------------------------------------|-----------------------------------------
"
"SIERRA:
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="sierra"

if !exists("g:sierra_Sunset")
    let g:sierra_Sunset = 0
endif

if !exists("g:sierra_Twilight")
    let g:sierra_Twilight = 0
endif

if !exists("g:sierra_Midnight")
    let g:sierra_Midnight = 0
endif

if !exists("g:sierra_Pitch")
    let g:sierra_Pitch = 0
endif

if !exists("g:sierra_Nevada")
    let g:sierra_Nevada = 0
endif

"COMMON COLORS AND SETTINGS
highlight PreProc                guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight Function               guifg=#afd7d7  guibg=NONE     gui=NONE       ctermfg=152    ctermbg=NONE  cterm=NONE
highlight Identifier             guifg=#87afaf  guibg=NONE     gui=NONE       ctermfg=109    ctermbg=NONE  cterm=NONE
highlight Statement              guifg=#87afaf  guibg=NONE     gui=NONE       ctermfg=109    ctermbg=NONE  cterm=NONE
highlight Constant               guifg=#af5f5f  guibg=NONE     gui=NONE       ctermfg=131    ctermbg=NONE  cterm=NONE
highlight Type                   guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight Label                  guifg=#af5f5f  guibg=NONE     gui=NONE       ctermfg=131    ctermbg=NONE  cterm=NONE
highlight String                 guifg=#dfafaf  guibg=NONE     gui=NONE       ctermfg=181    ctermbg=NONE  cterm=NONE
highlight Special                guifg=#af8787  guibg=NONE     gui=NONE       ctermfg=138    ctermbg=NONE  cterm=NONE
highlight Operator               guifg=#b2b2b2  guibg=NONE     gui=NONE       ctermfg=249    ctermbg=NONE  cterm=NONE
highlight Title                  guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight Conditional            guifg=#5f8787  guibg=NONE     gui=NONE       ctermfg=66     ctermbg=NONE  cterm=NONE
highlight StorageClass           guifg=#af8787  guibg=NONE     gui=NONE       ctermfg=138    ctermbg=NONE  cterm=NONE
highlight htmlStatement          guifg=#afd7d7  guibg=NONE     gui=NONE       ctermfg=152    ctermbg=NONE  cterm=NONE
highlight htmlItalic             guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight htmlArg                guifg=#d78787  guibg=NONE     gui=NONE       ctermfg=174    ctermbg=NONE  cterm=NONE
highlight cssTagName             guifg=#afd7d7  guibg=NONE     gui=NONE       ctermfg=152    ctermbg=NONE  cterm=NONE
highlight cssClassName           guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight cssIdentifier          guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE

"DIFF
highlight DiffAdd                guifg=#afafd7  guibg=NONE     gui=reverse    ctermfg=146    ctermbg=NONE  cterm=reverse
highlight DiffChange             guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight DiffText               guifg=#8787af  guibg=NONE     gui=reverse    ctermfg=103    ctermbg=NONE  cterm=reverse
highlight DiffDelete             guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131    ctermbg=NONE  cterm=reverse

"SPELLING
highlight SpellBad               guifg=#ff0000  guibg=NONE     gui=undercurl  ctermfg=196    ctermbg=NONE  cterm=undercurl
highlight SpellLocal             guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65     ctermbg=NONE  cterm=undercurl
highlight SpellCap               guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111    ctermbg=NONE  cterm=undercurl
highlight SpellRare              guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208    ctermbg=NONE  cterm=undercurl

"WINDOW UI
highlight MoreMsg                guifg=#dfaf5f  guibg=NONE     gui=NONE       ctermfg=179    ctermbg=NONE  cterm=NONE
highlight SpecialComment         guifg=#87afaf  guibg=NONE     gui=reverse    ctermfg=109    ctermbg=NONE  cterm=reverse
highlight VimCommentTitle        guifg=#b2b2b2  guibg=NONE     gui=reverse    ctermfg=249    ctermbg=NONE  cterm=reverse
highlight Underlined             guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180    ctermbg=NONE  cterm=NONE
highlight FoldColumn             guifg=#afd7d7  guibg=NONE     gui=NONE       ctermfg=152    ctermbg=NONE  cterm=NONE
highlight Todo                   guifg=#eeeeee  guibg=#1c1c1c  gui=reverse    ctermfg=255    ctermbg=234   cterm=reverse
highlight Visual                 guifg=#5f8787  guibg=NONE     gui=reverse    ctermfg=66     ctermbg=NONE  cterm=reverse
highlight Question               guifg=#dfaf5f  guibg=NONE     gui=NONE       ctermfg=179    ctermbg=NONE  cterm=NONE
highlight Search                 guifg=#dfdfaf  guibg=NONE     gui=reverse    ctermfg=187    ctermbg=NONE  cterm=reverse
highlight MatchParen             guifg=#eeeeee  guibg=#875f5f  gui=NONE       ctermfg=255    ctermbg=95    cterm=NONE
highlight Error                  guifg=#d75f5f  guibg=NONE     gui=reverse    ctermfg=167    ctermbg=NONE  cterm=reverse
highlight ErrorMsg               guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight WarningMsg             guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight netrwExe               guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight Directory              guifg=#af8787  guibg=NONE     gui=NONE       ctermfg=138    ctermbg=NONE  cterm=NONE
highlight Cursor                 guifg=#000000  guibg=#ffffff  gui=NONE       ctermfg=16     ctermbg=231   cterm=NONE
highlight CursorLineNr           guifg=#c6c6c6  guibg=NONE     gui=reverse    ctermfg=251    ctermbg=NONE  cterm=reverse
highlight WildMenu               guifg=#c6c6c6  guibg=NONE     gui=reverse    ctermfg=251    ctermbg=NONE  cterm=reverse
highlight ModeMsg                guifg=#dfdfdf  guibg=NONE     gui=NONE       ctermfg=188    ctermbg=NONE  cterm=NONE
highlight SignColumn             guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108    ctermbg=NONE  cterm=NONE

"DAY:
if 1
    "COLORS
    highlight Normal            guifg=#e4e4e4  guibg=#303030  gui=NONE     ctermfg=254   ctermbg=236   cterm=NONE
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
    highlight Folded            guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
    highlight VertSplit         guifg=#444444  guibg=#303030  gui=NONE     ctermfg=238   ctermbg=236   cterm=NONE
    highlight LineNr            guifg=#4e4e4e  guibg=#262626  gui=NONE     ctermfg=239   ctermbg=235   cterm=NONE
    highlight NonText           guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE
    highlight SpecialKey        guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE
endif

"SUNSET:
if g:sierra_Sunset
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#262626  gui=NONE     ctermfg=188   ctermbg=235   cterm=NONE
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

"TWILIGHT:
if g:sierra_Twilight
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#1c1c1c  gui=NONE     ctermfg=188   ctermbg=234   cterm=NONE
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

"MIDNIGHT:
if g:sierra_Midnight
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#121212  gui=NONE     ctermfg=188   ctermbg=233   cterm=NONE
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

"PITCH:
if g:sierra_Pitch
    "COLORS
    highlight Normal            guifg=#dfdfdf  guibg=#080808  gui=NONE     ctermfg=188   ctermbg=232   cterm=NONE
    highlight Comment           guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE

    "WINDOW UI
    highlight StatusLine        guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight StatusLineNC      guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight Pmenu             guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight PmenuSel          guifg=#eeeeee  guibg=#5f8787  gui=NONE     ctermfg=255   ctermbg=66   cterm=NONE
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

"NEVADA:
if g:sierra_Nevada
    "WINDOW UI
    highlight MatchParen        guifg=#ffffff  guibg=#000000  gui=underline  ctermfg=231  ctermbg=16  cterm=underline
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
