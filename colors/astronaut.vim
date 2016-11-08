
" astronaut.vim: a colorscheme
"    Maintainer: Charles E. Campbell, Jr. <charles.e.campbell.1@gsfc.nasa.gov>
"          Date: Sep 01, 2004
"       Version: 6	NOT RELEASED
"
"  Usage:
"  Put into your <.vimrc> file:
"    color astronaut
"
"  Optional Modifiers:
"  let g:astronaut_bold=1      : term, cterm, and gui receive bold modifier
"  let g:astronaut_dark=1      : dark colors used (otherwise some terminals
"                                make everything bold, which can be all one
"                                color)
"  let g:astronaut_underline=1 : assume that underlining works on your terminal
"  let g:astronaut_italic=1    : allows italic to be used in gui
"  Examples:
"   iris       : let astronaut_dark=1
"   Linux xterm: no modifiers needed
"
" GetLatestVimScripts: 122 1 :AutoInstall: astronaut.vim

set background=dark
hi clear
if exists( "syntax_on" )
    syntax reset
endif
let g:colors_name      = "astronaut"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light
let g:loaded_astronaut = "v6"

" ---------------------------------------------------------------------
" Default option values
if !exists("g:astronaut_bold")
 " on some machines, notably SGIs, a bold qualifier means everything is
 " one color (SGIs: yellow)
 let g:astronaut_bold= 0
endif
if !exists("g:astronaut_dark")
 " this option, if true, means darkcolor (ex. darkred, darkmagenta, etc)
 " is understood and wanted
 let g:astronaut_dark= 0
endif
if !exists("g:astronaut_underline")
 let g:astronaut_underline= 1
endif
if !exists("g:astronaut_italic")
 let g:astronaut_italic= 0
endif

" ---------------------------------------------------------------------
"  Settings based on options
if g:astronaut_bold != 0
 let s:usebold=",bold"
else
 let s:usebold=""
endif

if g:astronaut_italic != 0
 " only affects Alt* in gvim
 let s:useitalic= ",italic"
else
 let s:useitalic= ""
endif

if g:astronaut_dark != 0
 let s:black   = "black"
 let s:red     = "darkred"
 let s:green   = "darkgreen"
 let s:yellow  = "darkyellow"
 let s:blue    = "darkblue"
 let s:magenta = "darkmagenta"
 let s:cyan    = "darkcyan"
 let s:white   = "white"
else
 let s:black   = "black"
 let s:red     = "red"
 let s:green   = "green"
 let s:yellow  = "yellow"
 let s:blue    = "blue"
 let s:magenta = "magenta"
 let s:cyan    = "cyan"
 let s:white   = "white"
endif

if g:astronaut_underline != 0
 let s:underline= ",underline"
 let s:ulbg     = ""
else
 let s:underline= "none"
 if exists("g:astronaut_dark")
  let s:ulbg     = "ctermbg=darkmagenta guibg=magenta4"
 else
  let s:ulbg     = "ctermbg=magenta guibg=magenta"
 endif
endif

" ---------------------------------------------------------------------
exe "hi Blue           start=[m[34m      stop=[m[32m   ctermfg=".s:blue."                              guifg=blue        guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Comment        start=[m[37m      stop=[m[32m   ctermfg=".s:white."                             guifg=white                           term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Conceal                                                ctermfg=".s:blue."      ctermbg=".s:black."     guifg=Blue        guibg=Black         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Constant       start=[m[33m      stop=[m[32m   ctermfg=".s:yellow."                            guifg=yellow      guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Cursor                                                                                                 guifg=blue        guibg=green         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Cyan           start=[m[36m      stop=[m[32m   ctermfg=".s:cyan."                              guifg=cyan        guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Debug          start=[m[31m      stop=[m[32m   ctermfg=".s:red."                               guifg=magenta     guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Delimiter      start=[m[37m      stop=[m[32m   ctermfg=".s:white."                             guifg=white       guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi DiffAdd                                                ctermfg=".s:white."     ctermbg=".s:magenta."   guifg=White       guibg=Magenta       term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi DiffChange                                             ctermfg=".s:black."     ctermbg=".s:green."     guifg=Black       guibg=Green         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi DiffDelete                                             ctermfg=".s:white."     ctermbg=".s:blue."      guifg=White       guibg=Blue          term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi DiffText                                               ctermfg=".s:white."     ctermbg=".s:red."       guifg=White       guibg=Red           term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Directory      start=[m[37m      stop=[m[32m   ctermfg=".s:white."                             guifg=white                           term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Error          start=[m[37;41m   stop=[m[32m   ctermfg=".s:white."     ctermbg=".s:red."       guifg=white       guibg=red           term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi ErrorMsg                                               ctermfg=".s:white."     ctermbg=".s:red."       guifg=White       guibg=Red           term=standout".s:usebold."         cterm=none".s:usebold."              gui=none".s:usebold
exe "hi FoldColumn     start=[m[36;40m   stop=[m[32m   ctermfg=".s:cyan."      ctermbg=".s:black."     guifg=Cyan        guibg=Brown         term=standout".s:usebold."         cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Folded         start=[m[35;40m   stop=[m[32m   ctermfg=".s:magenta."   ctermbg=".s:black."     guifg=magenta     guibg=black         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Function       start=[m[36m      stop=[m[32m   ctermfg=".s:cyan."                              guifg=cyan        guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Green          start=[m[32m      stop=[m[32m   ctermfg=".s:green."                             guifg=green       guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Identifier     start=[m[45m      stop=[m[32m   ctermfg=".s:magenta."                           guifg=magenta     guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Ignore                                                 ctermfg=".s:black  ."                           guifg=bg                              term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi IncSearch      start=[m[30;42m   stop=[m[32m   ctermfg=".s:black  ."   ctermbg=".s:green."     guifg=black       guibg=green         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi LineNr                                                 ctermfg=".s:yellow." ".s:ulbg."                 guifg=Yellow                          term=none".s:underline.s:usebold." cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Magenta        start=[m[35m      stop=[m[32m   ctermfg=".s:magenta."                           guifg=magenta     guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Menu                                                                                                   guifg=black       guibg=gray75        term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi ModeMsg                                                ctermfg=".s:green."                             guifg=SeaGreen                        term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi MoreMsg                                                ctermfg=".s:green."                             guifg=SeaGreen                        term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi NonText                                                ctermfg=".s:blue."                              guifg=Blue                            term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Normal         start=[m[32m      stop=[m[32m   ctermfg=".s:green."                             guifg=green       guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi PreProc        start=[m[37;44m   stop=[m[32m   ctermfg=".s:white."     ctermbg=".s:blue."      guifg=white       guibg=blue3         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Question       start=[m[33m      stop=[m[32m   ctermfg=".s:yellow."                            guifg=yellow                          term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Red            start=[m[31m      stop=[m[32m   ctermfg=".s:red."                               guifg=red         guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Scrollbar                                                                                              guifg=gray80      guibg=gray70        term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Search         start=[m[33;44m   stop=[m[32m   ctermfg=".s:yellow."    ctermbg=".s:blue."      guifg=yellow      guibg=blue          term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Special        start=[m[32;44m   stop=[m[32m   ctermfg=".s:green."     ctermbg=".s:blue."      guifg=green       guibg=blue          term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi SpecialKey     start=[m[30;45m   stop=[m[32m   ctermfg=".s:black."     ctermbg=".s:magenta."   guifg=black       guibg=magenta       term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Statement      start=[m[36m      stop=[m[32m   ctermfg=".s:cyan."                              guifg=cyan        guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi StatusLine     start=[m[30;46m   stop=[m[32m   ctermfg=".s:black."     ctermbg=".s:cyan."      guifg=black       guibg=cyan          term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi StatusLineNC   start=[m[30;42m   stop=[m[32m   ctermfg=".s:black."     ctermbg=".s:green."     guifg=black       guibg=green         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi String         start=[m[33m      stop=[m[32m   ctermfg=".s:yellow."                            guifg=yellow      guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Subtitle       start=[m[35m      stop=[m[32m   ctermfg=".s:magenta."                           guifg=magenta     guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Tags           start=[m[33;44m   stop=[m[32m   ctermfg=".s:yellow."    ctermbg=".s:blue."      guifg=yellow      guibg=blue3         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Title          start=[m[37m      stop=[m[32m   ctermfg=".s:white."                             guifg=white                           term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Todo           start=[m[37;45m   stop=[m[32m   ctermfg=".s:white."     ctermbg=".s:magenta."   guifg=white       guibg=magenta       term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Type           start=[m[4;32m    stop=[m[32m   ctermfg=".s:green."    ".s:ulbg."               guifg=seagreen1                       term=none".s:underline.s:usebold." cterm=none".s:usebold.s:underline."  gui=none".s:usebold.s:underline
exe "hi Underlined                                             ctermfg=".s:green."     ".s:ulbg."              guifg=green                           term=none".s:underline.s:usebold." cterm=none".s:usebold.s:underline."  gui=none".s:usebold.s:underline
exe "hi Unique         start=[m[34;47m   stop=[m[32m   ctermfg=".s:blue."      ctermbg=".s:white."     guifg=blue3       guibg=white         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi AltUnique      start=[m[35;47m   stop=[m[32m   ctermfg=".s:magenta."   ctermbg=".s:white."     guifg=magenta     guibg=white         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi AltAltUnique   start=[m[30;47m   stop=[m[32m   ctermfg=".s:black."     ctermbg=".s:white."     guifg=black       guibg=white         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi VertSplit      start=[m[30;42m   stop=[m[32m   ctermfg=".s:black."     ctermbg=".s:green."     guifg=black       guibg=green         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Visual         start=[m[40;32m   stop=[m[32m   ctermfg=black           ctermbg=green           guifg=Grey        guibg=fg            term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi VisualNOS                                                                      ".s:ulbg."                                                    term=none".s:underline.s:usebold." cterm=none".s:usebold.s:underline."  gui=none".s:usebold.s:underline
exe "hi WarningMsg     start=[m[30;43m   stop=[m[32m   ctermfg=".s:black."     ctermbg=".s:yellow."    guifg=black       guibg=yellow        term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi White          start=[m[37m      stop=[m[32m   ctermfg=".s:white."                             guifg=white       guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi WildMenu                                               ctermfg=".s:black."     ctermbg=".s:yellow."    guifg=Black       guibg=Yellow        term=standout".s:usebold."         cterm=none".s:usebold."              gui=none".s:usebold
exe "hi Yellow         start=[m[33m      stop=[m[32m   ctermfg=".s:yellow."                            guifg=yellow      guibg=navyblue      term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi lCursor                                                                                                guifg=bg          guibg=fg            term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold
exe "hi AltConstant    start=[m[33;40m   stop=[m[32m   ctermfg=".s:yellow."    ctermbg=".s:black."     guifg=yellow      guibg=black         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold.s:useitalic
exe "hi AltFunction    start=[m[32;40m   stop=[m[32m   ctermfg=".s:green."     ctermbg=".s:black."     guifg=green       guibg=black         term=none".s:usebold."             cterm=none".s:usebold."              gui=none".s:usebold.s:useitalic
exe "hi AltType        start=[m[4;32;40m stop=[m[32m   ctermfg=".s:green."     ctermbg=".s:black."     guifg=seagreen1   guibg=black         term=none".s:underline.s:usebold." cterm=none".s:usebold.s:underline."  gui=none".s:usebold.s:underline.s:useitalic
exe "hi User1                                                  ctermfg=".s:white."     ctermbg=".s:blue."      guifg=white       guibg=blue"
exe "hi User2                                                  ctermfg=".s:yellow."    ctermbg=".s:blue."      guifg=yellow      guibg=blue"
" vim: nowrap
