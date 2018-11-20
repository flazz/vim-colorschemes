" ---------------------------------------------------------
"  ______ _     _
" |  ____| |   | |
" | |__  | | __| | __ _ _ __
" |  __| | |/ _` |/ _` | '__|
" | |____| | (_| | (_| | |
" |______|_|\__,_|\__,_|_|
"
" ---------------------------------------------------------
"
" Maintainer:   Alexander Gude
" Email:        alex.public.account@gmail.com
" File:         eldar.vim
" URL:          github.com/agude/vim-eldar
" License:      MIT
"
" ---------------------------------------------------------
"
" Copyright (c) 2016 Alexander Gude
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation  files  (the “Software”), to deal in the Soft‐
" ware without restriction,  including  without  limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software,  and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice  and  this  permission  notice
" shall  be  included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND,  EXPRESS  OR  IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR  PURPOSE  AND  NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE  LIABLE  FOR  ANY  CLAIM,
" DAMAGES  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"
" ---------------------------------------------------------

" Eldar is designed for dark backgrounds
set background=dark

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'eldar'

" Define colors (Tango is the default)
" GUI colors
let s:red       = get(g:, 'eldar_red', '#EF2929')
let s:yellow    = get(g:, 'eldar_yellow', '#FCE94F')
let s:green     = get(g:, 'eldar_green', '#8AE234')
let s:cyan      = get(g:, 'eldar_cyan', '#34E2E2')
let s:blue      = get(g:, 'eldar_blue', '#729FCF')
let s:magenta   = get(g:, 'eldar_magenta', '#AD7FA8')
let s:gui_text  = get(g:, 'eldar_text', 'White')
let s:gui_bg    = get(g:, 'eldar_background', 'Black')

" Terminal colors
let s:term_text  = get(g:, 'eldar_term_text', 'NONE')
let s:term_bg    = get(g:, 'eldar_term_background', 'NONE')

" The ColourAssignment map and function to unpack it are from the bandit
" colorscheme by Al Bunden, available here:
" http://www.cgtk.co.uk/vim-scripts/bandit

let s:ColourAssignment = {}

" Unspecified colours default to NONE, EXCEPT cterm(.*) which default to matching gui(.*)
"
" In most cases, only GUIFG is therefore important unless support for Black and White
" terminals is essential

" Editor settings
" ---------------
let  s:ColourAssignment['Normal']        =  {'GUIFG':  s:gui_text,  'GUIBG':  s:gui_bg,  'CTERMBG':  s:term_bg,  'CTERMFG':  s:term_text}
let  s:ColourAssignment['Cursor']        =  {'GUI':    'Reverse'}
let  s:ColourAssignment['CursorLine']    =  {'GUI':    'NONE',      'GUIBG':  'Black'}
let  s:ColourAssignment['LineNr']        =  {'GUIFG':  'DarkGray'}
let  s:ColourAssignment['CursorLineNr']  =  {'GUIFG':  'White'}


" Number column
" -------------
let  s:ColourAssignment['CursorColumn']  =  {'GUIBG':  'DarkGrey'}
let  s:ColourAssignment['Folded']        =  {'GUIFG':  'Cyan',      'GUIBG':  'DarkGrey'}
let  s:ColourAssignment['FoldColumn']    =  {'GUIBG':  'DarkGrey'}
highlight! link SignColumn FoldColumn


" Window/Tab delimiters
" ---------------------
let  s:ColourAssignment['VertSplit']    =  {'GUIFG':  'White',     'GUIBG':  'NONE'}
let  s:ColourAssignment['ColorColumn']  =  {'GUIBG':  'DarkGray'}
let  s:ColourAssignment['TabLine']      =  {'GUIFG':  'White',     'GUIBG':  'DarkGray'}
let  s:ColourAssignment['TabLineFill']  =  {'GUIBG':  'DarkGray'}
let  s:ColourAssignment['TabLineSel']   =  {'GUIFG':  'Black',     'GUIBG':  'Gray'}


" File Navigation / Searching
" ---------------------------
let  s:ColourAssignment['Directory']  =  {'GUIFG':  s:blue,     'CTERMFG':  'Blue',    'GUI':      'Bold'}
let  s:ColourAssignment['Search']     =  {'GUIFG':  'Black',    'GUIBG':    s:yellow,  'CTERMFG':  'yellow',  'CTERMBG':  'black',  'GUI':  'Bold',  'CTERM':  'Reverse,Bold'}
let  s:ColourAssignment['IncSearch']  =  {'GUI':    'Reverse'}


" Prompt/Status
" -------------
let  s:ColourAssignment['StatusLine']    =  {'GUIFG':  'White',  'GUIBG':    s:gui_bg,    'GUI':  'Bold,Reverse',  'CTERMFG':  'White',  'CTERMBG':  s:term_bg}
let  s:ColourAssignment['StatusLineNC']  =  {'GUIFG':  'White',  'GUIBG':    s:gui_bg,    'GUI':  'Reverse',       'CTERMFG':  'White',  'CTERMBG':  s:term_bg}
let  s:ColourAssignment['WildMenu']      =  {'GUIFG':  'White',  'GUIBG':    'DarkGrey',  'GUI':  'Bold'}
let  s:ColourAssignment['Question']      =  {'GUIFG':  s:blue,   'CTERMFG':  'Blue'}
let  s:ColourAssignment['Title']         =  {'GUI':    'Bold'}
let  s:ColourAssignment['ModeMsg']       =  {'GUI':    'Bold'}
let  s:ColourAssignment['MoreMsg']       =  {'GUIFG':  s:green,  'CTERMFG':  'Green'}


" Visual aid
" ----------
let  s:ColourAssignment['MatchParen']  =  {'GUIBG':  s:cyan,      'CTERMBG':  'cyan'}
let  s:ColourAssignment['Visual']      =  {'GUIBG':  'DarkGrey'}
highlight! link VisualNOS Visual
let  s:ColourAssignment['NonText']     =  {'GUIFG':  s:blue,      'CTERMFG':  'blue'}

let  s:ColourAssignment['Todo']        =  {'GUIFG':  'Black',     'GUIBG':    s:yellow,  'CTERMBG':  'yellow'}
let  s:ColourAssignment['Underlined']  =  {'GUIFG':  s:cyan,      'CTERMFG':  'cyan',    'GUI':      'Underline'}
let  s:ColourAssignment['Error']       =  {'GUIFG':  s:red,       'GUIBG':    'Black',   'CTERMFG':  'red',        'GUI':  'Reverse,Bold'}
let  s:ColourAssignment['ErrorMsg']    =  {'GUIFG':  s:red,       'GUIBG':    'White',   'CTERMFG':  'red',        'GUI':  'Reverse,Bold'}
let  s:ColourAssignment['WarningMsg']  =  {'GUIFG':  s:red,       'CTERMFG':  'red'}
let  s:ColourAssignment['Ignore']      =  {'GUIFG':  'bg',        'CTERMFG':  'Black'}
let  s:ColourAssignment['SpecialKey']  =  {'GUIFG':  s:cyan,      'CTERMFG':  'Cyan'}


" Variable types
" --------------
let  s:ColourAssignment['Constant']    =  {'GUIFG':  s:magenta,  'CTERMFG':  'magenta'}
let  s:ColourAssignment['Number']      =  {'GUIFG':  s:red,      'CTERMFG':  'red'}
highlight! link String Constant
highlight! link Boolean Constant
highlight! link Float Number

let  s:ColourAssignment['Identifier']  =  {'GUIFG':  s:green,    'CTERMFG':  'green',    'GUI':  'Bold'}
highlight! link Function Identifier


" Comments
" --------
let  s:ColourAssignment['Comment']  =  {'GUIFG':  s:cyan,  'CTERMFG':  'cyan'}
highlight! link SpecialComment Special


" Language constructs
" -------------------
let  s:ColourAssignment['Statement']  =  {'GUIFG':  s:yellow,  'CTERMFG':  'yellow',  'GUI':  'Bold'}
highlight! link Conditional Statement
highlight! link Repeat Statement
highlight! link Label Statement
highlight! link Operator Statement
highlight! link Keyword Statement
highlight! link Exception Statement

let  s:ColourAssignment['Special']    =  {'GUIFG':  s:red,     'CTERMFG':  'red'}
highlight! link SpecialChar Special
highlight! link Tag Special
highlight! link Delimiter Special
highlight! link Debug Special


" C like
" ------
let  s:ColourAssignment['PreProc']    =  {'GUIFG':  s:blue,     'CTERMFG':  'blue',     'GUI':  'Bold'}
highlight! link Include PreProc
highlight! link Define PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc

let  s:ColourAssignment['Type']       =  {'GUIFG':  s:green,    'CTERMFG':  'green',    'GUI':  'Bold'}
let  s:ColourAssignment['Structure']  =  {'GUIFG':  s:magenta,  'CTERMFG':  'magenta'}
highlight! link StorageClass Type
highlight! link Typedef Type


" Diff
" ----
let  s:ColourAssignment['DiffAdd']     =  {'GUIFG':  s:green,  'GUIBG':  'Black',  'CTERMFG':  'Green',  'GUI':  'Reverse,Bold'}
let  s:ColourAssignment['DiffChange']  =  {'GUIFG':  'NONE'}
let  s:ColourAssignment['DiffDelete']  =  {'GUIFG':  s:red,    'GUIBG':  'Black',  'CTERMFG':  'Red',    'GUI':  'Reverse,Bold'}
let  s:ColourAssignment['DiffText']    =  {'GUIFG':  s:blue,   'GUIBG':  'Black',  'CTERMFG':  'Blue',   'GUI':  'Reverse,Bold'}


" Completion menu
" ---------------
let  s:ColourAssignment['Pmenu']       =  {'GUIFG':  'Black',     'GUIBG':  'Grey'}
let  s:ColourAssignment['PmenuSel']    =  {'GUIFG':  s:yellow,    'GUIBG':  'DarkGrey',  'GUI':  'Bold',  'CTERMFG':  'yellow'}
let  s:ColourAssignment['PmenuThumb']  =  {'GUIBG':  'DarkGrey'}
highlight! link PmenuSbar Pmenu


" Spelling
" --------
let  s:ColourAssignment['SpellBad']    =  {'GUIFG':  'NONE',  'GUISP':  s:red,     'CTERMFG':  'red',     'GUI':  'undercurl'}
let  s:ColourAssignment['SpellCap']    =  {'GUIFG':  'NONE',  'GUISP':  s:blue,    'CTERMFG':  'blue',    'GUI':  'undercurl'}
let  s:ColourAssignment['SpellLocal']  =  {'GUIFG':  'NONE',  'GUISP':  s:yellow,  'CTERMFG':  'yellow',  'GUI':  'undercurl'}
let  s:ColourAssignment['SpellRare']   =  {'GUIFG':  'NONE',  'GUISP':  s:green,   'CTERMFG':  'green',   'GUI':  'undercurl'}


" Text Formatting
" ---------------
let  s:ColourAssignment['Italic']      =  {'GUIFG':  'White',  'GUI':  'Italic'}
let  s:ColourAssignment['Bold']        =  {'GUIFG':  'White',  'GUI':  'Bold'}
let  s:ColourAssignment['BoldItalic']  =  {'GUIFG':  'White',  'GUI':  'Italic,Bold'}
highlight! link htmlItalic Italic
highlight! link htmlBold Bold
highlight! link htmlBoldItalic BoldItalic


" Function to translate the ColourAssignments to highlight lines
let s:colours = {}
let s:valid_cterm_colours =
        \ [
        \  'Black',      'DarkBlue',     'DarkGreen',  'DarkCyan',
        \  'DarkRed',    'DarkMagenta',  'Brown',      'DarkYellow',
        \  'LightGray',  'LightGrey',    'Gray',       'Grey',
        \  'DarkGray',   'DarkGrey',     'Blue',       'LightBlue',
        \  'Green',      'LightGreen',   'Cyan',       'LightCyan',
        \  'Red',        'LightRed',     'Magenta',    'LightMagenta',
        \  'Yellow',     'LightYellow',  'White',
        \ ]

for s:key in keys(s:ColourAssignment)
    let s:colours = s:ColourAssignment[s:key]
    if has_key(s:colours, 'TERM')
        let s:term = s:colours['TERM']
    else
        let s:term = 'NONE'
    endif
    if has_key(s:colours, 'GUI')
        let s:gui = s:colours['GUI']
    else
        let s:gui = 'NONE'
    endif
    if has_key(s:colours, 'GUIFG')
        let s:guifg = s:colours['GUIFG']
    else
        let s:guifg = 'NONE'
    endif
    if has_key(s:colours, 'GUIBG')
        let s:guibg = s:colours['GUIBG']
    else
        let s:guibg = 'NONE'
    endif
    if has_key(s:colours, 'CTERM')
        let s:cterm = s:colours['CTERM']
    else
        let s:cterm = s:gui
    endif
    if has_key(s:colours, 'CTERMFG')
        let s:ctermfg = s:colours['CTERMFG']
    else
        if index(s:valid_cterm_colours, s:guifg) != -1
            let s:ctermfg = s:guifg
        else
            let s:ctermfg = 'NONE'
        endif
    endif
    if has_key(s:colours, 'CTERMBG')
        let s:ctermbg = s:colours['CTERMBG']
    else
        if index(s:valid_cterm_colours, s:guibg) != -1
            let s:ctermbg = s:guibg
        else
            let s:ctermbg = 'NONE'
        endif
    endif
    if has_key(s:colours, 'GUISP')
        let s:guisp = s:colours['GUISP']
    else
        let s:guisp = 'NONE'
    endif

    if s:key =~# '^\k*$'
        execute 'highlight '.s:key.' term='.s:term.' cterm='.s:cterm.' gui='.s:gui.' ctermfg='.s:ctermfg.' guifg='.s:guifg.' ctermbg='.s:ctermbg.' guibg='.s:guibg.' guisp='.s:guisp
    endif
endfor
