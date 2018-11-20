"
"
"  _                                    _
" | |  __ _  _ __    ___ __  __ __   __(_) _ __ ___
" | | / _` || '_ \  / _ \\ \/ / \ \ / /| || '_ ` _ \
" | || (_| || | | || (_) |>  <  _\ V / | || | | | | |
" |_| \__,_||_| |_| \___//_/\_\(_)\_/  |_||_| |_| |_|

"
" Dark vim colorscheme based on colors from Wes Anderson films
"
" File:         lanox.vim
" URL:
" Author:       Lano Puljic
" License:      MIT
"
" Copyright (c) 2015 Lano Puljic
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

highlight clear
set background=dark

if exists("syntax_on")
    syntax reset
endif

let colors_name = "lanox"

"-------------------------
"- Editor Settings       -
"-------------------------
hi Normal                    ctermfg=252           ctermbg=000      cterm=NONE       guifg=#D0D0D0  guibg=#000000  gui=NONE
hi Cursor                    ctermfg=16            ctermbg=253      cterm=NONE       guifg=#000000  guibg=#DADADA  gui=NONE
hi LineNr                    ctermfg=236           ctermbg=233      cterm=NONE       guifg=#838586  guibg=#2f2f2f  gui=NONE
hi CursorLine                ctermfg=NONE          ctermbg=236      cterm=NONE       guifg=NONE     guibg=#2f2f2f  gui=NONE

"-------------------------
"- Varible Types         -
"-------------------------
hi Constant                  ctermfg=135           ctermbg=NONE     cterm=bold       guifg=#AF5FFF  guibg=NONE     gui=NONE
hi String                    ctermfg=220           ctermbg=NONE     cterm=NONE       guifg=#f1c40f  guibg=NONE     gui=NONE
hi Character                 ctermfg=144           ctermbg=NONE     cterm=NONE       guifg=#AFAF87  guibg=NONE     gui=NONE
hi Number                    ctermfg=135           ctermbg=NONE     cterm=bold       guifg=#AF5FFF  guibg=NONE     gui=NONE
hi Boolean                   ctermfg=135           ctermbg=NONE     cterm=NONE       guifg=#6c71c4  guibg=NONE     gui=NONE
hi Float                     ctermfg=135           ctermbg=NONE     cterm=NONE       guifg=#6c71c4  guibg=NONE     gui=NONE
hi Function                  ctermfg=41            ctermbg=NONE     cterm=NONE       guifg=#2ecc71  guibg=NONE     gui=NONE
hi Identifier                ctermfg=208           ctermbg=NONE     cterm=NONE       guifg=#FF8700  guibg=NONE     gui=NONE

"-------------------------
"- Language Constructs   -
"-------------------------
hi Statement                 ctermfg=161           ctermbg=NONE     cterm=bold       guifg=#D7005F  guibg=NONE     gui=NONE
hi Conditional               ctermfg=161           ctermbg=NONE     cterm=bold       guifg=#D7005F  guibg=NONE     gui=bold
hi Repeat                    ctermfg=161           ctermbg=NONE     cterm=bold       guifg=#D7005F  guibg=NONE     gui=bold
hi Label                     ctermfg=229           ctermbg=NONE     cterm=none       guifg=#FFFFAF  guibg=NONE     gui=NONE
hi Operator                  ctermfg=167           ctermbg=NONE     cterm=bold       guifg=#D75F5F  guibg=NONE     gui=bold
hi Keyword                   ctermfg=161           ctermbg=NONE     cterm=bold       guifg=#D7005F  guibg=NONE     gui=NONE
hi Exception                 ctermfg=118           ctermbg=NONE     cterm=bold       guifg=#87FF00  guibg=NONE     gui=NONE
hi Comment                   ctermfg=247           ctermbg=NONE     cterm=NONE       guifg=#9E9E9E  guibg=NONE     gui=NONE
hi Special                   ctermfg=81            ctermbg=232      cterm=NONE       guifg=#5FD7FF  guibg=#080808  gui=NONE
hi SpecialChar               ctermfg=161           ctermbg=NONE     cterm=bold       guifg=#D7005F  guibg=NONE     gui=NONE
hi Tag                       ctermfg=161           ctermbg=NONE     cterm=NONE       guifg=#D7005F  guibg=NONE     gui=NONE
hi Delimiter                 ctermfg=220           ctermbg=NONE     cterm=NONE       guifg=#FFD700  guibg=NONE     gui=NONE
hi SpecialComment            ctermfg=247           ctermbg=NONE     cterm=bold       guifg=#9E9E9E  guibg=NONE     gui=NONE
hi Debug                     ctermfg=225           ctermbg=NONE     cterm=bold       guifg=#FFD7FF  guibg=NONE     gui=NONE

"-------------------------
"- Diff                  -
"-------------------------
hi DiffAdd                   ctermfg=231           ctermbg=64       cterm=bold       guifg=#ecf0f1  guibg=#44800a  gui=bold
hi DiffDelete                ctermfg=88            ctermbg=NONE     cterm=NONE       guifg=#880505  guibg=NONE     gui=NONE
hi DiffChange                ctermfg=231           ctermbg=23       cterm=NONE       guifg=#ecf0f1  guibg=#1d3251  gui=NONE
hi DiffText                  ctermfg=231           ctermbg=40       cterm=bold       guifg=#ecf0f1  guibg=#00df00  gui=bold

"-------------------------
"- Completion Menu       -
"-------------------------
hi Pmenu                     ctermfg=41            ctermbg=235      cterm=NONE       guifg=#2ecc71  guibg=NONE     gui=NONE
hi PmenuSel                  ctermfg=NONE          ctermbg=238      cterm=NONE       guifg=NONE     guibg=#444444  gui=NONE
hi PreCondit                 ctermfg=118           ctermbg=NONE     cterm=bold       guifg=#87FF00  guibg=NONE     gui=NONE
hi PreProc                   ctermfg=118           ctermbg=NONE     cterm=NONE       guifg=NONE     guibg=NONE     gui=NONE

"---------------------------
"- Searching               -
"---------------------------
hi Search                    ctermfg=15            ctermbg=196      cterm=bold       guifg=#f7f3ff  guibg=#e14d42  term=reverse  gui=bold
hi IncSearch                 ctermfg=16            ctermbg=39       cterm=bold       guifg=#000000  guibg=#6c71c4  term=reverse  gui=bold
hi Directory                 ctermfg=118           ctermbg=NONE     cterm=bold       guifg=NONE     guibg=NONE     term=NONE     gui=NONE

"---------------------------
"- Promopt/Status          -
"---------------------------
hi StatusLine                ctermfg=238           ctermbg=253      cterm=NONE       guifg=#444444  guibg=#DADADA  gui=NONE
hi StatusLineNC              ctermfg=244           ctermbg=232      cterm=NONE       guifg=#808080  guibg=#080808  gui=NONE
hi WildMenu                  ctermfg=81            ctermbg=16       cterm=NONE       guifg=#5FD7FF  guibg=#000000  gui=NONE
hi Question                  ctermfg=81            ctermbg=NONE     cterm=NONE       guifg=#5FD7FF  guibg=NONE     gui=NONE
hi Title                     ctermfg=166           ctermbg=NONE     cterm=NONE       guifg=#D75F00  guibg=NONE     gui=NONE
hi ModeMsg                   ctermfg=229           ctermbg=NONE     cterm=NONE       guifg=#FFFFAF  guibg=NONE     gui=NONE
hi MoreMsg                   ctermfg=229           ctermbg=NONE     cterm=NONE       guifg=#FFFFAF  guibg=NONE     gui=NONE

"---------------------------
"- Visual Aid              -
"---------------------------
hi MatchParen                ctermfg=16            ctermbg=208      cterm=bold       guifg=#000000  guibg=#FF8700  gui=NONE
hi Visual                    ctermfg=NONE          ctermbg=236      cterm=NONE       guifg=#262626  guibg=NONE     gui=NONE
hi VisualNOS                 ctermfg=238           ctermbg=NONE     cterm=NONE       guifg=#444444  guibg=NONE     gui=NONE
hi NonText                   ctermfg=240           ctermbg=233      cterm=NONE       guifg=#585858  guibg=#121212  gui=NONE
hi Todo                      ctermfg=231           ctermbg=232      cterm=underline  guifg=#FFFFFF  guibg=#080808  gui=NONE
hi Underlined                ctermfg=244           ctermbg=NONE     cterm=underline  guifg=#808080  guibg=NONE     gui=NONE
hi Error                     ctermfg=219           ctermbg=89       cterm=NONE       guifg=#FFAFFF  guibg=#87005F  gui=NONE
hi ErrorMsg                  ctermfg=199           ctermbg=16       cterm=bold       guifg=#FF00AF  guibg=#000000  gui=NONE
hi WarningMsg                ctermfg=231           ctermbg=238      cterm=bold       guifg=#FFFFFF  guibg=#444444  gui=NONE
hi Ignore                    ctermfg=244           ctermbg=232      cterm=NONE       guifg=#808080  guibg=#080808  gui=NONE
hi SpecialKey                ctermfg=245           ctermbg=NONE     cterm=NONE       guifg=NONE     guibg=NONE     gui=NONE

"---------------------------
"- Window/Tab/Delimiter    -
"---------------------------
hi VertSplit                 ctermfg=244           ctermbg=232      cterm=bold       guifg=#808080  guibg=#080808  gui=NONE
hi ColorColumn               ctermfg=NONE          ctermbg=234      cterm=NONE       guifg=NONE     guibg=NONE     gui=NONE

"---------------------------
"- Number column           -
"---------------------------
hi CursorColumn              ctermfg=NONE          ctermbg=234      cterm=NONE       guifg=NONE     guibg=#1C1C1C  gui=NONE
hi FoldColumn                ctermfg=67            ctermbg=233      cterm=NONE       guifg=#5F87AF  guibg=#121212  gui=NONE
hi SignColumn                ctermfg=118           ctermbg=235      cterm=NONE       guifg=#87FF00  guibg=#262626  gui=NONE
hi Folded                    ctermfg=67            ctermbg=233      cterm=NONE       guifg=#5F87AF  guibg=#121212  gui=NONE

"---------------------------
"- C Like                  -
"---------------------------
hi StorageClass              ctermfg=208           ctermbg=NONE     cterm=NONE       guifg=#FF8700  guibg=NONE     gui=NONE
hi Structure                 ctermfg=81            ctermbg=NONE     cterm=NONE       guifg=#5fd7ff  guibg=NONE     gui=NONE
hi Typedef                   ctermfg=81            ctermbg=NONE     cterm=NONE       guifg=#5fd7ff  guibg=NONE     gui=NONE
hi Type                      ctermfg=81            ctermbg=NONE     cterm=NONE       guifg=#5fd7ff  guibg=NONE     gui=NONE
hi Define                    ctermfg=81            ctermbg=NONE     cterm=NONE       guifg=#5fd7ff  guibg=NONE     gui=NONE
hi Macro                     ctermfg=193           ctermbg=NONE     cterm=NONE       guifg=#D7FF87  guibg=NONE     gui=NONE
