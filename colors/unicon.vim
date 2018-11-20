" Author:   Andrey Bartashevitch <wind29121982@gmail.com>
" URL:      Что-то на github
" License:  MIT
" Last Change: 2017-06-25
" Version: 1.1
" Descrition: Uniform contrast vim light/dark color scheme for gui and
"             256 color terminals

" Initialization: {{{
" ---------------------------------------------------------------------
if !has('gui_running') && &t_Co != 256
    finish
endif

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "unicon"

" }}}

" GUI & term256 palettes: "{{{
if has("gui_running")
    let s:vmode        = "gui"
else
    let s:vmode        = "cterm"
endif

let s:none = {'gui': 'NONE', 'cterm': 'NONE'}

if &background == "light"
    let s:base1   = {'gui': '#f1f1f1', 'cterm': 255}
    let s:base2   = {'gui': '#d4d4d4', 'cterm': 188}
    let s:base3   = {'gui': '#b9b9b9', 'cterm': 250}
    let s:base4   = {'gui': '#848484', 'cterm': 102}
    let s:base5   = {'gui': '#6a6a6a', 'cterm': 242}
    let s:base6   = {'gui': '#3b3b3b', 'cterm': 237}
    let s:base7   = {'gui': '#262626', 'cterm': 235}
    let s:base8   = {'gui': '#111111', 'cterm': 233} " hue saturation lightness(lab)
    let s:red     = {'gui': '#ad2b52', 'cterm': 124} " 342 75 40
    let s:orange  = {'gui': '#944a25', 'cterm': 130} "  20 75 40
    let s:yellow  = {'gui': '#636119', 'cterm':  58} "  58 75 40
    let s:green   = {'gui': '#1b6d1b', 'cterm':  22} " 120 75 40
    let s:cyan    = {'gui': '#1a6969', 'cterm':  23} " 180 75 40
    let s:blue    = {'gui': '#3352ce', 'cterm':  62} " 228 75 40
    let s:violet  = {'gui': '#7635d6', 'cterm':  56} " 264 75 40
    let s:magenta = {'gui': '#9e289e', 'cterm': 127} " 300 75 40
" if &background == "dark"
else
    let s:base1   = {'gui': '#111111', 'cterm': 233}
    let s:base2   = {'gui': '#262626', 'cterm': 235}
    let s:base3   = {'gui': '#3b3b3b', 'cterm': 237}
    let s:base4   = {'gui': '#6a6a6a', 'cterm': 242}
    let s:base5   = {'gui': '#848484', 'cterm': 102}
    let s:base6   = {'gui': '#b9b9b9', 'cterm': 250}
    let s:base7   = {'gui': '#d4d4d4', 'cterm': 188}
    let s:base8   = {'gui': '#f1f1f1', 'cterm': 255}  " hue saturation lightness(lab)
    let s:red     = {'gui': '#db6e8e', 'cterm': 204}  " 342 50 60
    let s:orange  = {'gui': '#c28161', 'cterm': 173}  "  20 50 60
    let s:yellow  = {'gui': '#96944b', 'cterm': 143}  "  58 50 60
    let s:green   = {'gui': '#51a251', 'cterm': 71}   " 120 50 60
    let s:cyan    = {'gui': '#4e9d9d', 'cterm': 73}   " 180 50 60
    let s:blue    = {'gui': '#748be8', 'cterm': 69}   " 228 50 60
    let s:violet  = {'gui': '#a878f0', 'cterm': 140}  " 264 50 60
    let s:magenta = {'gui': '#d168d1', 'cterm': 170}  " 300 50 60
endif
"}}}

function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp
    let fg = a:fg

    if a:0 >= 1
        let bg = a:1
    else
        let bg = s:none
    endif

    if a:0 >= 2
        let format = a:2
    else
        let format = 'NONE'
    endif

    let histring = ['hi', a:group]
    call add(histring, s:vmode.'fg=' . fg[s:vmode])
    call add(histring, s:vmode.'bg=' . bg[s:vmode])
    call add(histring, s:vmode.'=' . format)
    if a:0 >= 3
        call add(histring, 'guisp=' . a:3['gui'])
    endif
    execute join(histring, ' ')
endfunction


" Basic highlighting: {{{
" ---------------------------------------------------------------------
let s:bg=&background
call s:HL('Normal', s:base6, s:base1)
let &background=s:bg  " workaround for bug https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
call s:HL('Comment', s:base4)
call s:HL('Constant', s:violet)
call s:HL('String', s:yellow)
call s:HL('Character', s:yellow)
call s:HL('Identifier', s:green)
call s:HL('Statement', s:blue)
call s:HL('PreProc', s:cyan)
call s:HL('Type', s:orange)
call s:HL('Special', s:magenta)
call s:HL('Underlined', s:violet, s:none, 'underline')
call s:HL('Error', s:red, s:none, 'bold')
call s:HL('Todo', s:magenta, s:none, 'bold')
""
""}}}
"" Extended highlighting "{{{
"" ---------------------------------------------------------------------
call s:HL('SpecialKey', s:base4, s:base2, 'bold')
call s:HL('NonText', s:base3, s:none, 'bold')
call s:HL('StatusLine', s:base6, s:base2, 'reverse')
call s:HL('StatusLineNC', s:base4, s:base2, 'reverse')
call s:HL('Visual', s:base7, s:base3)
call s:HL('VisualNOS', s:base7, s:base3, 'reverse')
call s:HL('Directory', s:green)
call s:HL('ErrorMsg', s:red, s:none, 'reverse')
call s:HL('IncSearch', s:cyan, s:none, 'reverse')
call s:HL('Search', s:yellow, s:none, 'reverse')
call s:HL('MoreMsg', s:base6, s:none, 'bold')
call s:HL('ModeMsg', s:base6, s:none, 'bold')
call s:HL('LineNr', s:base4, s:base2)
call s:HL('Question', s:orange, s:none, 'bold')
call s:HL('VertSplit', s:base4, s:base4)
call s:HL('Title', s:base7, s:none, 'bold')
call s:HL('WarningMsg', s:red, s:none, 'bold')
call s:HL('WildMenu', s:none, s:base2)
call s:HL('Folded', s:base4, s:base2)
call s:HL('FoldColumn', s:base4, s:base2)
call s:HL('DiffAdd', s:green, s:base1, 'reverse')
call s:HL('DiffChange', s:yellow, s:base1, 'reverse')
call s:HL('DiffDelete', s:red, s:base1, 'reverse')
call s:HL('DiffText', s:orange, s:base1, 'reverse')
call s:HL('SignColumn', s:base5)
call s:HL('Conceal', s:green)
call s:HL('SpellBad', s:none, s:none, 'undercurl', s:red)
call s:HL('SpellCap', s:none, s:none, 'undercurl', s:violet)
call s:HL('SpellRare', s:none, s:none, 'undercurl', s:cyan)
call s:HL('SpellLocal', s:none, s:none, 'undercurl', s:yellow)
call s:HL('Pmenu', s:base7, s:base3)
call s:HL('PmenuSel', s:base1, s:base5)
call s:HL('PmenuSbar', s:none, s:base5)
call s:HL('PmenuThumb', s:none, s:base7)
call s:HL('TabLine', s:base5, s:base2, 'underline')
call s:HL('TabLineFill', s:base5, s:base2, 'underline')
call s:HL('TabLineSel', s:base7, s:base3, 'underline')
call s:HL('CursorColumn', s:none, s:base2)
call s:HL('CursorLine', s:none, s:base2)
call s:HL('CursorLineNr', s:base7, s:base1, 'bold')
call s:HL('ColorColumn', s:none, s:base2)
call s:HL('Cursor', s:base1, s:base8)
call s:HL('lCursor', s:base1, s:magenta)
call s:HL('MatchParen', s:base7, s:base3, 'bold')

"}}}
" Reread colorscheme when vim is transferring from terminal to gui mode.
autocmd GUIEnter * if (s:vmode != "gui") | exe "colorscheme " . g:colors_name | endif

" License: "{{{
"
" Copyright (c) 2016 Andrey Bartashevitch
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
"
" vim:foldmethod=marker:foldlevel=0
"}}}
