"===============================================================================
"                      ____  ____ ______ __  __   ___   __
"                     ||    ||    | || | ||  ||  // \\  ||
"                     ||==  ||==    ||   ||==|| ((   )) ||
"                     ||    ||___   ||   ||  ||  \\_//  ||
"
" URL: https://github.com/theJian/vim-fethoi
" Author: theJian <thejianmail@gmail.com>
" License: GPL
"===============================================================================

set background=dark
highlight clear
if (exists('syntax_on'))
    syntax reset
endif
let g:colors_name = 'fethoi'

" Utility functions ============================================================

function! s:Highlight(args)
    exec 'highlight ' . join(a:args, ' ')
endfunction

function! s:Clear(group)
    exec 'highlight clear ' . a:group
endfunction

function! s:AddGroundValues(accumulator, ground, color)
    let lst = a:accumulator
    for [where, value] in items(a:color)
        call add(lst, where . a:ground . '=' . value)
    endfor
    return lst
endfunction

function! s:h(group, fg, ...)
    " optional `bg`, `attr`
    let params = [a:group]

    if a:fg !=# ''
        let params = s:AddGroundValues(params, 'fg', s:colors[a:fg])
    endif

    if a:0 > 0 && a:1 !=# ''
        let params = s:AddGroundValues(params, 'bg', s:colors[a:1])
    endif

    if a:0 > 1 && a:2 !=# ''
        let params = params + ['term=' . a:2, 'cterm=' . a:2, 'gui=' . a:2]
    endif

    call s:Clear(a:group)
    call s:Highlight(params)
endfunction

" Colors =======================================================================

let s:colors = {}
let s:colors.bg = { 'gui': '#58879c' }
let s:colors.fg = { 'gui': '#254661' }
let s:colors.hover = { 'gui': '#5b8ca2' }

" black
let s:colors.color0  = { 'gui': '#1d1d1d', 'cterm': 0 }
let s:colors.color8  = { 'gui': '#3e606d', 'cterm': 8 }

" red
let s:colors.color1  = { 'gui': '#7c0615', 'cterm': 1 }
let s:colors.color9  = { 'gui': '#ffb4be', 'cterm': 9 }

" green
let s:colors.color2  = { 'gui': '#145003', 'cterm': 2 }
let s:colors.color10 = { 'gui': '#79e388', 'cterm': 10 }

" yellow
let s:colors.color3  = { 'gui': '#8b4301', 'cterm': 3 }
let s:colors.color11 = { 'gui': '#d8aa06', 'cterm': 11 }

" blue
let s:colors.color4  = { 'gui': '#074f73', 'cterm': 4 }
let s:colors.color12 = { 'gui': '#47b5e1', 'cterm': 12 }

" magenta
let s:colors.color5  = { 'gui': '#543480', 'cterm': 5 }
let s:colors.color13 = { 'gui': '#bf9efa', 'cterm': 13 }

" cyan
let s:colors.color6  = { 'gui': '#056564', 'cterm': 6 }
let s:colors.color14 = { 'gui': '#0ad5c9', 'cterm': 14 }

" white
let s:colors.color7  = { 'gui': '#6faac4', 'cterm': 7 }
let s:colors.color15 = { 'gui': '#d3e2e7', 'cterm': 15 }

" neovim terminal
let g:terminal_color_0  = get(s:colors.color0, 'gui')
let g:terminal_color_8  = get(s:colors.color8, 'gui')
let g:terminal_color_1  = get(s:colors.color1, 'gui')
let g:terminal_color_9  = get(s:colors.color9, 'gui')
let g:terminal_color_2  = get(s:colors.color2, 'gui')
let g:terminal_color_10 = get(s:colors.color10, 'gui')
let g:terminal_color_3  = get(s:colors.color3, 'gui')
let g:terminal_color_11 = get(s:colors.color11, 'gui')
let g:terminal_color_4  = get(s:colors.color4, 'gui')
let g:terminal_color_12 = get(s:colors.color12, 'gui')
let g:terminal_color_5  = get(s:colors.color5, 'gui')
let g:terminal_color_13 = get(s:colors.color13, 'gui')
let g:terminal_color_6  = get(s:colors.color6, 'gui')
let g:terminal_color_14 = get(s:colors.color14, 'gui')
let g:terminal_color_7  = get(s:colors.color7, 'gui')
let g:terminal_color_15 = get(s:colors.color15, 'gui')

" Highlight =====================================================================

" Syntax group
call s:h('Normal', 'fg', 'bg')
call s:h('Comment', 'color7')
call s:h('Constant', 'color0')
call s:h("String", 'color0')
call s:h('Number', 'color0')
call s:h('Identifier', 'color5')
call s:h('Statement', 'color4')
call s:h('PreProc', 'color6')
call s:h('Type', 'color5')
call s:h('Special', 'color3')
call s:h('Tag', 'color3')
call s:h('Delimiter', 'color3')
call s:h('Underlined', 'color1', '', 'underline')
call s:h('Todo', 'color7', 'color15', 'bold') " anything that needs extra attention; mostly the keywords TODO FIXME and XXX

" Directories
call s:h('Directory', 'color4')

" Diffing
call s:h('DiffAdd', 'color10', 'color2')
call s:h('DiffChange', 'color11', 'color3')
call s:h('DiffDelete', 'color9', 'color1')
call s:h('DiffText', 'color15', 'fg')
call s:h('DiffAdded', 'color2')
call s:h('DiffChanged', 'color3')
call s:h('DiffRemoved', 'color1')
call s:h('DiffSubname', 'color4')

" Command line
call s:h('ErrorMsg', 'color1')
call s:h('Error', 'color1')
call s:h('ModeMsg', 'color15')
call s:h('WarningMsg', 'color9')
call s:h('MoreMsg', 'fg')

" Cursor
call s:h('CursorLine', '', 'hover')
call s:h('CursorColumn', '', 'hover')

" Sign column, line numbers
call s:h('LineNr', 'bg', 'color8')
call s:h('CursorLineNr', 'color8', 'color7')
call s:h('SignColumn', '', 'color8')
call s:h('ColorColumn', '', 'color8')

" Visual selection.
call s:h('Visual', '', 'color15')

" The column separating vertical splits
call s:h('VertSplit', 'color0', 'color8')

" Status line
call s:h('StatusLine', 'color7', 'color4')
call s:h('StatusLineNC', 'bg', 'color8')

" Folds
call s:h('Folded', 'color8')
call s:h('FoldColumn', 'color8')

" Searching
call s:h('Search', 'color3', 'color11')

" Match parenthesis
call s:h('MatchParen', '', 'color12')

" Non text
call s:h('NonText', 'color8')

" Popup menu
call s:h('Pmenu', 'color7', 'color4')
call s:h('PmenuSel', 'color4', 'color7')
call s:h('PmenuSbar', '', 'color4')
call s:h('PmenuThumb', '', 'color4')

" Hit-enter prompt and yes/no questions
call s:h('Question', 'color11')

" Special keys
call s:h('SpecialKey', 'color8')

" Tab line.
call s:h('TabLineSel', 'color15', 'color4')
call s:h('TabLine', 'color4', 'color15')
call s:h('TabLineFill', '', 'color15')

" Title
call s:h('Title', 'color15', '', 'bold')

" Wild menu
call s:h('WildMenu', 'color4', 'color7')

" Python
call s:h('pythonStatement', 'color4')

" JavaScript
call s:h('javaScriptFunction', 'color4')
call s:h('javaScriptBraces', 'color8')
call s:h('javaScriptParens', 'color8')
call s:h('javaScriptIdentifier', 'color5')
call s:h('javaScriptReserved', 'color5')

" Clean up =====================================================================

unlet s:colors
