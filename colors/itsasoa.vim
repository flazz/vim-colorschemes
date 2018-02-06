 "======================================================================
 " Itsasoa
 " ======================================================================
 " A vim theme. Dark background and blue tones.
 " 2018 - Gaelle Letort.
 " ======================================================================

 set background=dark
 hi clear
 syntax reset

 " Colors for the User Interface.

 hi Cursor      guibg=#cc4455  guifg=white     ctermbg=4 ctermfg=15
 hi link CursorIM Cursor
 hi Normal      guibg=#0b0c0d  guifg=#FFFFFF    gui=none ctermbg=0 ctermfg=15
 hi NonText     guibg=bg  guifg=#FFFFFF   ctermbg=bg ctermfg=23
 hi Visual      guibg=#557799  guifg=white    gui=none ctermbg=9 ctermfg=15

 hi Linenr      guibg=bg       guifg=#aaaaaa  gui=none ctermbg=bg ctermfg=236

 hi Directory   guibg=bg       guifg=#337700  gui=none ctermbg=bg ctermfg=29

 hi Search   guibg=#0066cc  guifg=white    gui=none ctermbg=242 ctermfg=230
hi link IncSearch Search

 hi SpecialKey  guibg=bg guifg=fg       gui=none ctermbg=bg ctermfg=fg
 hi Titled      guibg=bg guifg=fg       gui=none ctermbg=bg ctermfg=fg

 hi ErrorMsg    guibg=bg guifg=#ff0000   ctermbg=bg ctermfg=1
 hi ModeMsg     guibg=bg guifg=#ffeecc  gui=none ctermbg=bg ctermfg=31
 hi link  MoreMsg     ModeMsg
 hi Question    guibg=bg guifg=#d8e778   ctermbg=bg ctermfg=52
 hi link  WarningMsg  ErrorMsg

 hi StatusLine     guibg=#ffeecc  guifg=black     ctermbg=254 ctermfg=240
 hi StatusLineNC   guibg=#cc4455  guifg=white    gui=none ctermbg=254 ctermfg=240
 hi VertSplit      guibg=#cc4455  guifg=white    gui=none ctermbg=254 ctermfg=240

 hi DiffAdd     guibg=#446688  guifg=fg    gui=none ctermbg=1 ctermfg=fg
 hi DiffChange  guibg=#558855  guifg=fg    gui=none ctermbg=2 ctermfg=fg
 hi DiffDelete  guibg=#884444  guifg=fg    gui=none ctermbg=4 ctermfg=fg
 hi DiffText    guibg=#884444  guifg=fg     ctermbg=4 ctermfg=fg

 " Colors for Syntax Highlighting.

 hi Folded guibg=bg  guifg=#4F5A63  gui=none    ctermbg=234   ctermfg=240
 hi CursorLineNr guibg=bg  guifg=#4F5A63  gui=none    ctermbg=bg   ctermfg=94


 hi Comment  guibg=bg  guifg=#4F5A63  gui=none    ctermbg=0   ctermfg=244

 hi Constant    guibg=bg    guifg=white        ctermbg=0   ctermfg=29
 hi String      guibg=bg    guifg=#FAFFDB    ctermbg=bg  ctermfg=99
 hi Character   guibg=bg    guifg=#6a9ec5      ctermbg=bg  ctermfg=72
 hi Number      guibg=bg    guifg=#C7AF3F      ctermbg=0   ctermfg=29
 hi Boolean     guibg=bg    guifg=#C7AF3F  gui=none    ctermbg=0   ctermfg=29
 hi Float       guibg=bg    guifg=#C7AF3F      ctermbg=0   ctermfg=29

 hi Identifier  guibg=bg    guifg=#FFFFFF      ctermbg=bg  ctermfg=12
 hi Function    guibg=bg    guifg=#6a9ec5      ctermbg=bg  ctermfg=12
 hi Statement   guibg=bg    guifg=#6a9ec5      ctermbg=bg  ctermfg=72

 hi Conditional guibg=bg    guifg=#689dc5      ctermbg=bg  ctermfg=12
 hi Repeat      guibg=bg    guifg=#689dc5      ctermbg=bg   ctermfg=31
 hi Label       guibg=bg    guifg=#ffccff      ctermbg=bg   ctermfg=13
 hi Operator    guibg=bg    guifg=#689dc5      ctermbg=bg   ctermfg=245
 hi Keyword     guibg=bg    guifg=#689dc5      ctermbg=bg  ctermfg=53
 hi Exception   guibg=bg    guifg=#6a9ec5      ctermbg=bg  ctermfg=55

 hi PreProc    guibg=bg   guifg=#ffcc99   ctermbg=bg  ctermfg=31
 hi Include    guibg=bg   guifg=#d8e778   ctermbg=bg ctermfg=33
 hi link Define    Include
 hi link Macro     Include
 hi link PreCondit Include

 hi Type       guibg=bg   guifg=#d8e778      ctermbg=bg  ctermfg=12
 hi StorageClass   guibg=bg   guifg=#6a9ec5      ctermbg=bg  ctermfg=130
 hi Structure      guibg=bg   guifg=#FFFFFF      ctermbg=bg  ctermfg=130
 hi Typedef    guibg=bg   guifg=#d8e778    ctermbg=bg  ctermfg=130

 hi Special    guibg=bg   guifg=#bbddff      ctermbg=1   ctermfg=15
 hi SpecialChar    guibg=bg   guifg=#bbddff      ctermbg=1   ctermfg=15
 hi Tag        guibg=bg   guifg=#bbddff      ctermbg=0   ctermfg=72
 hi Delimiter      guibg=bg   guifg=fg       ctermbg=1   ctermfg=fg
 hi SpecialComment guibg=#334455  guifg=#80919f    ctermbg=1   ctermfg=15
 hi Debug      guibg=bg   guifg=#ff9999  gui=none    ctermbg=8   ctermfg=12

 hi Underlined guibg=bg guifg=#99ccff gui=underline ctermbg=bg ctermfg=9 cterm=underline

 hi Title    guibg=bg  guifg=#FFFFFF        ctermbg=1   ctermfg=15
 hi Ignore   guibg=bg       guifg=#cccccc    ctermbg=bg  ctermfg=8
 hi Error    guibg=#ff0000  guifg=white        ctermbg=12  ctermfg=15
 hi Todo     guibg=#556677  guifg=#ff0000      ctermbg=1   ctermfg=12

" Save color scheme name
 let g:colors_name = "itsasoa"
 let colors_name   = "itsasoa"

