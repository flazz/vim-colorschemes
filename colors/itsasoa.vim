 "======================================================================
 " Itsasoa
 " ======================================================================
 " A vim theme. Dark background and blue tones.
 " 2018 - Gaelle Letort.
 " ======================================================================

 set background=dark
 hi clear
 syntax reset


 hi Normal      guibg=#000000  guifg=white    gui=none ctermbg=0 ctermfg=15
 hi NonText     guibg=bg  guifg=#005f5f   ctermbg=bg ctermfg=23
 hi Visual      guibg=#005faf  guifg=white    gui=none ctermbg=25 ctermfg=15


 " Cursor and lines
 hi Cursor      guibg=#000080  guifg=white     ctermbg=4 ctermfg=15
 hi link CursorIM Cursor
 hi Linenr      guibg=bg       guifg=#303030  gui=none ctermbg=bg ctermfg=236
 hi CursorLineNr guibg=bg  guifg=#875f00  gui=none    ctermbg=bg   ctermfg=94
 hi link ColorColumn SignColumn

 " Search, status..
 hi Directory   guibg=bg       guifg=#00875f  gui=none ctermbg=bg ctermfg=29
 hi Search   guibg=#6c6c6c  guifg=#ffffff    gui=none ctermbg=242 ctermfg=231
 hi link IncSearch Search
 hi StatusLine     guibg=#e4e4e4  guifg=#585858     ctermbg=254 ctermfg=240
 hi link StatusLineNC  StatusLine 
 hi link VertSplit  StatusLine

 " Special
 hi SpecialKey  guibg=bg guifg=fg       gui=none ctermbg=bg ctermfg=fg
 hi Titled      guibg=bg guifg=fg       gui=none ctermbg=bg ctermfg=fg

 " Errors and warnings
 hi ErrorMsg    guibg=bg guifg=#800000   ctermbg=bg ctermfg=1
 hi ModeMsg     guibg=bg guifg=#0087af  gui=none ctermbg=bg ctermfg=31
 hi link  MoreMsg     ModeMsg
 hi Question    guibg=bg guifg=#5f005f   ctermbg=bg ctermfg=53
 hi link  WarningMsg  ErrorMsg

 " Diff ones
 hi DiffAdd     guibg=#446688  guifg=fg    gui=none ctermbg=1 ctermfg=fg
 hi DiffChange  guibg=#558855  guifg=fg    gui=none ctermbg=2 ctermfg=fg
 hi DiffDelete  guibg=#884444  guifg=fg    gui=none ctermbg=4 ctermfg=fg
 hi DiffText    guibg=#884444  guifg=fg     ctermbg=4 ctermfg=fg

 " Colors for languages syntax highlighting.

 hi Folded guibg=#1c1c1c  guifg=#585858  gui=none    ctermbg=234   ctermfg=240

 hi Comment  guibg=bg  guifg=#808080  gui=none    ctermbg=bg   ctermfg=244

 hi Constant    guibg=bg    guifg=#00875f        ctermbg=bg   ctermfg=29
 hi String      guibg=bg    guifg=#875fff    ctermbg=bg  ctermfg=99
 hi Character   guibg=bg    guifg=#5faf87      ctermbg=bg  ctermfg=72
 hi Number      guibg=bg    guifg=#00875f      ctermbg=bg  ctermfg=29
 hi Boolean     guibg=bg    guifg=#00875f  gui=none    ctermbg=bg   ctermfg=29
 hi Float       guibg=bg    guifg=#00875f      ctermbg=bg   ctermfg=29

 hi Identifier  guibg=bg    guifg=#0000ff      ctermbg=bg  ctermfg=12
 hi Function    guibg=bg    guifg=#0000ff      ctermbg=bg  ctermfg=12
 hi Statement   guibg=bg    guifg=#5faf87      ctermbg=bg  ctermfg=72

 hi Conditional guibg=bg    guifg=#0000ff      ctermbg=bg  ctermfg=12
 hi Repeat      guibg=bg    guifg=#0087af      ctermbg=bg   ctermfg=31
 hi Label       guibg=bg    guifg=#ff00ff      ctermbg=bg   ctermfg=13
 hi Operator    guibg=bg    guifg=#8a8a8a      ctermbg=bg   ctermfg=245
 hi Keyword     guibg=bg    guifg=#5f005f      ctermbg=bg  ctermfg=53
 hi Exception   guibg=bg    guifg=#5f00af      ctermbg=bg  ctermfg=55

 hi PreProc    guibg=bg   guifg=#0087af  ctermbg=bg  ctermfg=31
 hi Include    guibg=bg   guifg=#0087ff   ctermbg=bg ctermfg=33
 hi link Define    Include
 hi link Macro     Include
 hi link PreCondit Include

 hi Type       guibg=bg   guifg=#0000ff      ctermbg=bg  ctermfg=12
 hi StorageClass   guibg=bg   guifg=#af5f00      ctermbg=bg  ctermfg=130
 hi Structure      guibg=bg   guifg=#af5f00      ctermbg=bg  ctermfg=130
 hi link Typedef	Structure  

 hi Special    guibg=#8787ff   guifg=#000000      ctermbg=105   ctermfg=0
 hi SpecialChar    guibg=#8787ff   guifg=#000000     ctermbg=105   ctermfg=0
 hi Tag        guibg=bg   guifg=#5faf87      ctermbg=bg   ctermfg=72
 hi Delimiter      guibg=#008787   guifg=fg       ctermbg=30   ctermfg=fg
 hi SpecialComment guibg=#5f5f5f  guifg=fg    ctermbg=59   ctermfg=fg
 hi Debug      guibg=#875f5f   guifg=bg  gui=none    ctermbg=95   ctermfg=bg
 hi WildMenu      guibg=#87d7af   guifg=bg  gui=none    ctermbg=115   ctermfg=bg

 hi CursorLineNr guibg=bg  guifg=#875f00  gui=none    ctermbg=bg   ctermfg=94
 hi Underlined guibg=bg guifg=fg gui=underline ctermbg=bg ctermfg=fg cterm=underline

 hi Title    guibg=bg  guifg=#5fd7d7        ctermbg=bg   ctermfg=80
 hi Ignore   guibg=bg       guifg=#cccccc    ctermbg=bg  ctermfg=8
 hi Error    guibg=#5f87af  guifg=bg      ctermbg=67  ctermfg=bg
 hi Todo     guibg=#5f875f  guifg=white      ctermbg=65   ctermfg=15

" Save color scheme name
 let g:colors_name = "itsasoa"
 let colors_name   = "itsasoa"

