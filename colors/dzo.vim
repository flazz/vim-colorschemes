" File:           dzo.vim
" Maintainer:     Henry Blevins (blevs)
" Url:            https://github.com/blevs/vim-dzo
" License:        MIT

" Description:
" A dark colorscheme based on a custom color pallete. Vim terminal users, must
" add the following colors to your ~/.Xresources or terminal specific
" settings.
"
" ! vim-dzo colors
" *background: #1A1A1A
" *foreground: #EEEEEF
" ! black
" *color0: #1A1A1A
" *color8: #373B41
" ! red
" *color1: #A54242
" *color9: #CC6666
" ! green
" *color2: #99cf50
" *color10: #8bb664
" ! yellow
" *color3: #FDAF87
" *color11: #DDA790
" ! blue
" *color4: #5F819D
" *color12: #81A2BE
" ! magenta
" *color5: #85678F
" *color13: #B294BB
" ! cyan
" *color6: #005577
" *color14: #89BDFF
" ! white
" *color7: #707880
" *color15: #C5C8C6
"
" The above also serves as a color key. I chose not to go with a vimscript
" heavy configuration to make it easier to fiddle with small changes. Large
" scale modifications become more tedious, but are still very handleable with
" regexes. Additionally, I do not want  force you to fight through whatever
" custom system I hacked together.

"" Initialization
""------------------------------------------------------------------------------------------------------------------------
hi clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "dzo"

"" Syntax highlighting
""------------------------------------------------------------------------------------------------------------------------
hi   ColorColumn      ctermfg=NONE  guifg=NONE     ctermbg=0      guibg=#1A1A1A  term=NONE       cterm=NONE       gui=NONE
"    Conceal
"    Cursor
"    CursorIM
hi   CursorColumn     ctermfg=NONE  guifg=NONE     ctermbg=0      guibg=#1A1A1A  term=NONE       cterm=NONE       gui=NONE
hi   CursorLine       ctermfg=NONE  guifg=NONE     ctermbg=0      guibg=#1A1A1A  term=NONE       cterm=NONE       gui=NONE
hi   Directory        ctermfg=12    guifg=#81A2BE  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   ErrorMsg         ctermfg=0     guifg=#1A1A1A  ctermbg=9      guibg=#CC6666  term=standout   cterm=standout   gui=standout
hi   VertSplit        ctermfg=8     guifg=#373B41  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Folded           ctermfg=7     guifg=#707880  ctermbg=8      guibg=#373B41  term=NONE       cterm=NONE       gui=NONE
hi   FoldColumn       ctermfg=NONE  guifg=NONE     ctermbg=8      guibg=#373B41  term=NONE       cterm=NONE       gui=NONE
hi   SignColumn       ctermfg=NONE  guifg=NONE     ctermbg=8      guibg=#373B41  term=NONE       cterm=NONE       gui=NONE
"    Incsearch
hi   LineNr           ctermfg=8     guifg=#373B41  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   CursorLineNr     ctermfg=11    guifg=#DDA790  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   MatchParen       ctermfg=0     guifg=#1A1A1A  ctermbg=11     guibg=#DDA790  term=NONE       cterm=NONE       gui=NONE
hi   ModeMsg          ctermfg=10    guifg=#8BB664  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   MoreMsg          ctermfg=10    guifg=#8BB664  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   NonText          ctermfg=8     guifg=#373B41  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Pmenu            ctermfg=15    guifg=#C5C8C6  ctermbg=8      guibg=#373B41  term=NONE       cterm=NONE       gui=NONE
hi   PmenuSel         ctermfg=15    guifg=#C5C8C6  ctermbg=8      guibg=#373B41  term=reverse    cterm=reverse    gui=reverse
"    PmenuSbar
"    PmenuThumb
hi   Question         ctermfg=10    guifg=#8BB664  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Search           ctermfg=NONE  guifg=NONE     ctermbg=NONE   guibg=NONE     term=underline  cterm=underline  gui=underline
hi   SpecialKey       ctermfg=8     guifg=#373B41  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   SpellCap         ctermfg=0     guifg=#1A1A1A  ctermbg=11     guibg=#DDA790  term=underline  cterm=underline  gui=underline
hi   SpellLocal       ctermfg=0     guifg=#1A1A1A  ctermbg=9      guibg=#CC6666  term=underline  cterm=underline  gui=underline
hi   SpellBad         ctermfg=0     guifg=#1A1A1A  ctermbg=1      guibg=#A54242  term=underline  cterm=underline  gui=underline
hi   SpellRare        ctermfg=0     guifg=#1A1A1A  ctermbg=5      guibg=#85678F  term=underline  cterm=underline  gui=underline
hi   StatusLine       ctermfg=7     guifg=#707880  ctermbg=0      guibg=#1A1A1A  term=reverse    cterm=reverse    gui=reverse
hi   StatusLineNC     ctermfg=8     guifg=#373B41  ctermbg=7      guibg=#707880  term=reverse    cterm=reverse    gui=reverse
hi   TabLine          ctermfg=15    guifg=#C5C8C6  ctermbg=8      guibg=#373B41  term=reverse    cterm=reverse    gui=reverse
"    TabLineFill
"    TabLineSel
hi   Title            ctermfg=11    guifg=#DDA790  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Visual           ctermfg=NONE  guifg=NONE     ctermbg=8      guibg=#373B41  term=NONE       cterm=NONE       gui=NONE
"    VisualNos
hi   WarningMsg       ctermfg=9     guifg=#CC6666  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   LongLineWarning  guifg=NONE    guibg=#371F1C  gui=underline  ctermfg=NONE   ctermbg=NONE    cterm=underline
"    WildMenu
hi   Normal           ctermfg=15    guifg=#C5C8C6  ctermbg=0      guibg=#1A1A1A  term=NONE       cterm=NONE       gui=NONE

"" Generic Synatx Highlighting
""------------------------------------------------------------------------------------------------------------------------
hi   Comment          ctermfg=7     guifg=#707880  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Constant         ctermfg=12    guifg=#81A2BE  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   String           ctermfg=10    guifg=#8BB664  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    Character
"    Number
"    Boolean
"    Float
hi   Identifier       ctermfg=2     guifg=#99CF50  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Function         ctermfg=14    guifg=#89BDFF  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Statement        ctermfg=11    guifg=#DDA790  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    Conditional
"    Repeat
"    Label
hi   Operator         ctermfg=14    guifg=#89BDFF  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    Keyword
"    Exception
hi   PreProc          ctermfg=14    guifg=#89BDFF  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    Include
"    Define
"    Macro
"    PreCondit
hi   Type             ctermfg=12    guifg=#81A2BE  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    StorageClass
hi   Structure        ctermfg=12    guifg=#81A2BE  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    Typedef
hi   Special          ctermfg=NONE  guifg=NONE     ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    SpecialChar
"    Tag
"    Delimiter
"    SpecialComment
"    Debug
hi   Underlined       ctermfg=12    guifg=#81A2BE  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Ignore           ctermfg=NONE  guifg=NONE     ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
hi   Error            ctermfg=0     guifg=#1A1A1A  ctermbg=1      guibg=#A54242  term=underline  cterm=underline  gui=underline
hi   Todo             ctermfg=2     guifg=#99CF50  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE

"" Quickfix window highlighting
""------------------------------------------------------------------------------------------------------------------------
hi   qfLineNr         ctermfg=11    guifg=#DDA790  ctermbg=NONE   guibg=NONE     term=NONE       cterm=NONE       gui=NONE
"    qfFileName
"    qfLineNr
"    qfError

"" Diff syntax highlighting
""------------------------------------------------------------------------------------------------------------------------
hi   DiffAdd          ctermfg=0     guifg=#1A1A1A  ctermbg=10     guibg=#8BB664  term=NONE       cterm=NONE       gui=NONE
hi   DiffChange       ctermfg=0     guifg=#1A1A1A  ctermbg=11     guibg=#FDAF87  term=NONE       cterm=NONE       gui=NONE
hi   DiffDelete       ctermfg=0     guifg=#1A1A1A  ctermbg=9      guibg=#CC6666  term=NONE       cterm=NONE       gui=NONE
hi   DiffText         ctermfg=0     guifg=#1A1A1A  ctermbg=3      guibg=#FDAF87  term=NONE       cterm=NONE       gui=NONE
"    diffOldFile
"    diffNewFile
"    diffFile
"    diffOnly
"    diffIdentical
"    diffDiffer
"    diffBDiffer
"    diffIsA
"    diffNoEOL
"    diffCommon
hi   link           diffRemoved  Constant
"    diffChanged
hi   link           diffAdded    Special
"    diffLine
"    diffSubname
"    diffComment

" Copyright:
" Copyright (c) 2016 Henry Blevins
" Copyright (c) 2012 w0ng
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
