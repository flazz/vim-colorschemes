" Author:   Andrey Bartashevitch <wind29121982@gmail.com>
" URL:      Что-то на github
" License:  MIT
" Last Change: ?
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
" Options: "{{{
" ---------------------------------------------------------------------
if has("gui_running")
    if !exists('g:unicon_italic')
        let g:unicon_italic=1
    endif
else
    let g:unicon_italic=0
endif

" }}}
" GUI & term256 palettes: "{{{
if &background == "light"
    if has("gui_running")
        let s:vmode        = "gui"
        let s:base1        = "#f1f1f1"
        let s:base2        = "#d4d4d4"
        let s:base3        = "#b9b9b9"
        let s:base4        = "#848484"
        let s:base5        = "#6a6a6a"
        let s:base6        = "#3b3b3b"
        let s:base7        = "#262626"
        let s:base8        = "#111111"  " hue saturation lightness(lab)
        let s:red          = "#ad2b52"  " 342 75 40
        let s:orange       = "#944a25"  "  20 75 40
        let s:yellow       = "#636119"  "  58 75 40
        let s:green        = "#1b6d1b"  " 120 75 40
        let s:cyan         = "#1a6969"  " 180 75 40
        let s:blue         = "#3352ce"  " 228 75 40
        let s:violet       = "#7635d6"  " 264 75 40
        let s:magenta      = "#9e289e"  " 300 75 40
    else
        let s:vmode        = "cterm"
        let s:base1        = "255"
        let s:base2        = "188"
        let s:base3        = "250"
        let s:base4        = "102"
        let s:base5        = "242"
        let s:base6        = "237"
        let s:base7        = "235"
        let s:base8        = "233"
        let s:red          = "124"
        let s:orange       = "130"
        let s:yellow       = "58"
        let s:green        = "22"
        let s:cyan         = "23"
        let s:blue         = "62"
        let s:violet       = "56"
        let s:magenta      = "127"
    endif
" if &background == "dark"
else
    if has("gui_running")
        let s:vmode        = "gui"
        let s:base1        = "#111111"
        let s:base2        = "#262626"
        let s:base3        = "#3b3b3b"
        let s:base4        = "#6a6a6a"
        let s:base5        = "#848484"
        let s:base6        = "#b9b9b9"
        let s:base7        = "#d4d4d4"
        let s:base8        = "#f1f1f1"  " hue saturation lightness(lab)
        let s:red          = "#db6e8e"  " 342 50 60
        let s:orange       = "#c28161"  "  20 50 60
        let s:yellow       = "#96944b"  "  58 50 60
        let s:green        = "#51a251"  " 120 50 60
        let s:cyan         = "#4e9d9d"  " 180 50 60
        let s:blue         = "#748be8"  " 228 50 60
        let s:violet       = "#a878f0"  " 264 50 60
        let s:magenta      = "#d168d1"  " 300 50 60
    else
        let s:vmode       = "cterm"
        let s:base1       = "233"
        let s:base2       = "235"
        let s:base3       = "237"
        let s:base4       = "242"
        let s:base5       = "102"
        let s:base6       = "250"
        let s:base7       = "188"
        let s:base8       = "255"
        let s:red         = "204"
        let s:orange      = "173"
        let s:yellow      = "143"
        let s:green       = "71"
        let s:cyan        = "73"
        let s:blue        = "69"
        let s:violet      = "140"
        let s:magenta     = "170"
    endif
endif
"}}}

function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp
    let fg = a:fg

    if a:0 >= 1
        let bg = a:1
    else
        let bg = 'NONE'
    endif

    if a:0 >= 2
        let format = a:2
    else
        let format = 'NONE'
    endif

    let histring = ['hi', a:group]
    call add(histring, s:vmode.'fg=' . fg)
    call add(histring, s:vmode.'bg=' . bg)
    call add(histring, s:vmode.'=' . format)
    if a:0 >= 3
        call add(histring, 'guisp=' . a:3)
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
call s:HL('Underlined', s:violet, 'NONE', 'underline')
call s:HL('Error', s:red, 'NONE', 'bold')
call s:HL('Todo', s:magenta, 'NONE', 'bold')
""
""}}}
"" Extended highlighting "{{{
"" ---------------------------------------------------------------------
call s:HL('SpecialKey', s:base4, s:base2, 'bold')
call s:HL('NonText', s:base3, 'NONE', 'bold')
call s:HL('StatusLine', s:base6, s:base2, 'reverse')
call s:HL('StatusLineNC', s:base4, s:base2, 'reverse')
call s:HL('Visual', s:base7, s:base3)
call s:HL('VisualNOS', s:base7, s:base3, 'reverse')
call s:HL('Directory', s:green)
call s:HL('ErrorMsg', s:red, 'NONE', 'reverse')
call s:HL('IncSearch', s:cyan, 'NONE', 'reverse')
call s:HL('Search', s:yellow, 'NONE', 'reverse')
call s:HL('MoreMsg', s:base6, 'NONE', 'bold')
call s:HL('ModeMsg', s:base6, 'NONE', 'bold')
call s:HL('LineNr', s:base4, s:base2)
call s:HL('Question', s:orange, 'NONE', 'bold')
call s:HL('VertSplit', s:base4, s:base4)
call s:HL('Title', s:base7, 'NONE', 'bold')
call s:HL('WarningMsg', s:red, 'NONE', 'bold')
call s:HL('WildMenu', 'NONE', s:base2)
call s:HL('Folded', s:base4, s:base2)
call s:HL('FoldColumn', s:base4, s:base2)
call s:HL('DiffAdd', s:green, s:base1, 'reverse')
call s:HL('DiffChange', s:yellow, s:base1, 'reverse')
call s:HL('DiffDelete', s:red, s:base1, 'reverse')
call s:HL('DiffText', s:orange, s:base1, 'reverse')
call s:HL('SignColumn', s:base5)
call s:HL('Conceal', s:green)
call s:HL('SpellBad', 'NONE', 'NONE', 'undercurl', s:red)
call s:HL('SpellCap', 'NONE', 'NONE', 'undercurl', s:violet)
call s:HL('SpellRare', 'NONE', 'NONE', 'undercurl', s:cyan)
call s:HL('SpellLocal', 'NONE', 'NONE', 'undercurl', s:yellow)
call s:HL('Pmenu', s:base7, s:base3)
call s:HL('PmenuSel', s:base1, s:base5)
call s:HL('PmenuSbar', 'NONE', s:base5)
call s:HL('PmenuThumb', 'NONE', s:base7)
call s:HL('TabLine', s:base5, s:base2, 'underline')
call s:HL('TabLineFill', s:base5, s:base2, 'underline')
call s:HL('TabLineSel', s:base7, s:base3, 'underline')
call s:HL('CursorColumn', 'NONE', s:base2)
call s:HL('CursorLine', 'NONE', s:base2)
call s:HL('CursorLineNr', s:base7, s:base1, 'bold')
call s:HL('ColorColumn', 'NONE', s:base2)
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
