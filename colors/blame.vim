"  ________  ___       ________  _____ ______   _______
" |\   __  \|\  \     |\   __  \|\   _ \  _   \|\  ___ \
" \ \  \|\ /\ \  \    \ \  \|\  \ \  \\\__\ \  \ \   __/|
"  \ \   __  \ \  \    \ \   __  \ \  \\|__| \  \ \  \_|/__
"   \ \  \|\  \ \  \____\ \  \ \  \ \  \    \ \  \ \  \_|\ \
"    \ \_______\ \_______\ \__\ \__\ \__\    \ \__\ \_______\
"     \|_______|\|_______|\|__|\|__|\|__|     \|__|\|_______|
"
" A Vim colorscheme
" Author:       Alessandro Yorba
" Maintainer:   Hauleth <lukasz@niemier.pl>
" Script URL:   https://github.com/hauleth/blame.vim
"
" Copyright (c) 2017 Alessandro Yorba & Hauleth
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
" BASIC TERMINAL COLORS:
"=================================================================================
"     Foreground   #c1c9d4              |      Selection     #8c98a7             |
"     Background   #2b3240              |      Selected Text #2b3240             |
"     CursorColor  #ffffff              |                                        |
"     Bold         #ffffff              |
"     Links        #bc284f              |
"=================================================================================
" ANSI COLORS:
"=================================================================================
"---------------------------------------|-----------------------------------------
"     NORMAL       Hex          xterm   |      BRIGHT       Hex          xterm   |
"---------------------------------------|-----------------------------------------
"     Black        #2b3240      0       |      brBlack      #4a5265      8       |
"     Red          #bc284f      1       |      brRed        #bc284f      9       |
"     Green        #88b4ad      2       |      brGreen      #88b4ad      10      |
"     Yellow       #ffffff      3       |      brYellow     #ffffff      11      |
"     Blue         #5c8097      4       |      brBlue       #5c8097      12      |
"     Magenta      #4f426a      5       |      brMagenta    #4f426a      13      |
"     Cyan         #008097      6       |      brCyan       #008097      14      |
"     White        #8c98a7      7       |      brWhite      #c1c9d4      15      |
"---------------------------------------|-----------------------------------------

"=================================================================================
" SETUP:
"=================================================================================

set background=dark

highlight clear
if exists('syntax_on')
    syntax reset
endif

"=======================================================================================================================
"  BLAME HIGHLIGHTING:
"=======================================================================================================================

let g:colors_name = 'blame'

highlight! Normal                 guifg=#c1c9d4  guibg=#2b3240  gui=NONE       ctermfg=15    ctermbg=0     cterm=NONE
highlight! StorageClass           guifg=#c1c9d4  guibg=#2b3240  gui=NONE       ctermfg=15    ctermbg=0     cterm=NONE

highlight! LineNr                 guifg=#4a5265  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE
highlight! Folded                 guifg=#4a5265  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE

highlight! TabLineSel             guifg=#2b3240  guibg=#8c98a7  gui=NONE       ctermfg=0     ctermbg=7     cterm=NONE
highlight! ModeMsg                guifg=#2b3240  guibg=#8c98a7  gui=NONE       ctermfg=0     ctermbg=7     cterm=NONE
highlight! CursorLineNr           guifg=#2b3240  guibg=#8c98a7  gui=NONE       ctermfg=0     ctermbg=7     cterm=NONE

highlight! CursorLine             guifg=NONE     guibg=#2d3443  gui=NONE       ctermfg=NONE  ctermbg=0     cterm=NONE
highlight! ColorColumn            guifg=NONE     guibg=#2d3443  gui=NONE       ctermfg=NONE  ctermbg=0     cterm=NONE

highlight! Error                  guifg=#bc284f  guibg=NONE     gui=reverse    ctermfg=1     ctermbg=NONE  cterm=reverse
highlight! ErrorMsg               guifg=#bc284f  guibg=NONE     gui=reverse    ctermfg=1     ctermbg=NONE  cterm=reverse

highlight! StatusLine             guifg=#c1c9d4  guibg=#4a5265  gui=NONE       ctermfg=15    ctermbg=8     cterm=NONE
highlight! PmenuSel               guifg=#c1c9d4  guibg=#4a5265  gui=NONE       ctermfg=15    ctermbg=8     cterm=NONE

highlight! StatusLineNC           guifg=#2b3240  guibg=#4a5265  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE
highlight! Pmenu                  guifg=#2b3240  guibg=#4a5265  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE
highlight! TabLine                guifg=#2b3240  guibg=#4a5265  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE

highlight! Visual                 guifg=#8c98a7  guibg=NONE     gui=reverse    ctermfg=7     ctermbg=NONE  cterm=reverse
highlight! WildMenu               guifg=#8c98a7  guibg=NONE     gui=reverse    ctermfg=7     ctermbg=NONE  cterm=reverse

highlight! Question               guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE

highlight! PmenuSbar              guifg=#4a5265  guibg=#4a5265  gui=NONE       ctermfg=8     ctermbg=8     cterm=NONE
highlight! PmenuThumb             guifg=#4a5265  guibg=#4a5265  gui=NONE       ctermfg=8     ctermbg=8     cterm=NONE

highlight! PreProc                guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! Title                  guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! FoldColumn             guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE

highlight! Special                guifg=#ffffff  guibg=NONE     gui=NONE       ctermfg=3     ctermbg=NONE  cterm=NONE
highlight! Todo                   guifg=#ffffff  guibg=NONE     gui=reverse    ctermfg=3     ctermbg=NONE  cterm=reverse
highlight! MatchParen             guifg=#ffffff  guibg=#4a5265  gui=NONE       ctermfg=3     ctermbg=8     cterm=NONE

highlight! String                 guifg=#5c8097  guibg=NONE     gui=NONE       ctermfg=4     ctermbg=NONE  cterm=NONE
highlight! Directory              guifg=#5c8097  guibg=NONE     gui=NONE       ctermfg=4     ctermbg=NONE  cterm=NONE

highlight! Number                 guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! WarningMsg             guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! MoreMsg                guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! SignColumn             guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! Underlined             guifg=#008097  guibg=NONE     gui=underline  ctermfg=6     ctermbg=NONE  cterm=underline

highlight! Comment                guifg=#4a5265  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE
highlight! NonText                guifg=#4a5265  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE
highlight! SpecialKey             guifg=#4a5265  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE

highlight! Function               guifg=#8c98a7  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Identifier             guifg=#8c98a7  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Statement              guifg=#8c98a7  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Constant               guifg=#8c98a7  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Operator               guifg=#8c98a7  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Type                   guifg=#8c98a7  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE

highlight! SpecialComment         guifg=#4a5265  guibg=NONE     gui=reverse    ctermfg=8     ctermbg=NONE  cterm=reverse
highlight! VimCommentTitle        guifg=#4a5265  guibg=NONE     gui=reverse    ctermfg=8     ctermbg=NONE  cterm=reverse
highlight! TabLine                guifg=#2b3240  guibg=#4a5265  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE
highlight! TabLineFill            guifg=#4a5265  guibg=NONE     gui=underline  ctermfg=8     ctermbg=NONE  cterm=underline
highlight! Search                 guifg=#008097  guibg=NONE     gui=reverse    ctermfg=6     ctermbg=NONE  cterm=reverse
highlight! CursorColumn           guifg=NONE     guibg=#2b3240  gui=NONE       ctermfg=NONE  ctermbg=0     cterm=NONE
highlight! VertSplit              guifg=#4a5265  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=0     cterm=NONE

highlight! SpellBad               guifg=#bc284f  guibg=NONE     gui=undercurl  ctermfg=1     ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#4a5265  guibg=NONE     gui=undercurl  ctermfg=8     ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#4a5265  guibg=NONE     gui=undercurl  ctermfg=8     ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#5c8097  guibg=NONE     gui=undercurl  ctermfg=4     ctermbg=NONE  cterm=undercurl

highlight! DiffAdd                guifg=#c1c9d4  guibg=NONE     gui=reverse    ctermfg=15    ctermbg=NONE  cterm=reverse
highlight! DiffText               guifg=#c1c9d4  guibg=NONE     gui=reverse    ctermfg=15    ctermbg=NONE  cterm=reverse
highlight! DiffChange             guifg=#4f426a  guibg=NONE     gui=reverse    ctermfg=5     ctermbg=NONE  cterm=reverse
highlight! DiffDelete             guifg=#bc284f  guibg=NONE     gui=reverse    ctermfg=1     ctermbg=NONE  cterm=reverse

let g:terminal_color_foreground = '#c1c9d4'
let g:terminal_color_background = '#2b3240'
let g:terminal_color_0          = '#2b3240'
let g:terminal_color_1          = '#bc284f'
let g:terminal_color_2          = '#88b4ad'
let g:terminal_color_3          = '#ffffff'
let g:terminal_color_4          = '#5c8097'
let g:terminal_color_5          = '#4f426a'
let g:terminal_color_6          = '#008097'
let g:terminal_color_7          = '#8c98a7'
let g:terminal_color_8          = '#4a5265'
let g:terminal_color_9          = '#bc284f'
let g:terminal_color_10         = '#88b4ad'
let g:terminal_color_11         = '#ffffff'
let g:terminal_color_12         = '#5c8097'
let g:terminal_color_13         = '#4f426a'
let g:terminal_color_14         = '#008097'
let g:terminal_color_15         = '#c1c9d4'

"=======================================================================================================================
"  BLAME STYLEFIXES:
"=======================================================================================================================

" Elixir
highlight link elixirDefine                 Keyword
highlight link elixirPrivateDefine          Keyword
highlight link elixirModuleDefine           Keyword
highlight link elixirProtocolDefine         Keyword
highlight link elixirImplDefine             Keyword
highlight link elixirRecordDefine           Keyword
highlight link elixirPrivateRecordDefine    Keyword
highlight link elixirMacroDefine            Keyword
highlight link elixirPrivateMacroDefine     Keyword
highlight link elixirDelegateDefine         Keyword
highlight link elixirOverridableDefine      Keyword
highlight link elixirExceptionDefine        Keyword
highlight link elixirCallbackDefine         Keyword
highlight link elixirStructDefine           Keyword
highlight link elixirExUnitMacro            Keyword

highlight link elixirAtom                   String
highlight link elixirBoolean                Define

highlight link elixirFunctionDeclaration    Define

" Javascript
highlight link jsStorageClass Keyword

" Markdown
highlight link markdownLinkText String
highlight link markdownUrl Question

" PHP
highlight link phpVarSelector PreProc

" CSS
highlight link cssIdentifier PreProc
highlight link cssClassName  PreProc
