" Quantum - A Vim color scheme inspired by Material Design
" Author: Brandon Siders
" License: MIT
" Version: 0.3-pre

highlight clear
syntax reset

set background=dark
let g:colors_name = 'quantum'

if !exists('g:quantum_italics')
    let g:quantum_italics = 0
endif

if !exists('g:quantum_black')
    let g:quantum_black = 0
endif

if g:quantum_black
    let s:gray1 = ['#212121', 233]
    let s:gray2 = ['#2b2b2b', 235]
    let s:gray3 = ['#444444', 239]
    let s:gray4 = ['#616161', 241]
    let s:gray5 = ['#aaaaaa', 249]
else
    let s:gray1 = ['#263238', 235]
    let s:gray2 = ['#2e3c44', 236]
    let s:gray3 = ['#445864', 238]
    let s:gray4 = ['#658595', 243]
    let s:gray5 = ['#aabbc4', 249]
endif

let s:red       = ['#e16881', 204]
let s:green     = ['#84b97c', 114]
let s:yellow    = ['#e1be68', 221]
let s:blue      = ['#77a8ef', 75]
let s:purple    = ['#b888e2', 140]
let s:cyan      = ['#5dc4d1', 44]
let s:orange    = ['#e18268', 209]
let s:navy      = ['#7685d4', 61]

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if g:quantum_italics == 0 && l:attr ==? 'italic'
        let l:attr = 'none'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
    endif

    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
    endif

    if l:attr != ''
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Vim Editor
call s:HL('ColorColumn',                    '',         s:gray3,    '')
call s:HL('Cursor',                         s:gray2,    s:gray5,    '')
call s:HL('CursorColumn',                   '',         s:gray2,    '')
call s:HL('CursorLine',                     '',         s:gray2,    'none')
call s:HL('CursorLineNr',                   s:cyan,     s:gray2,    'none')
call s:HL('Directory',                      s:blue,     '',         '')
call s:HL('DiffAdd',                        s:green,    s:gray2,    'none')
call s:HL('DiffChange',                     s:yellow,   s:gray2,    'none')
call s:HL('DiffDelete',                     s:red,      s:gray2,    'none')
call s:HL('DiffText',                       s:blue,     s:gray2,    'none')
call s:HL('ErrorMsg',                       s:red,      s:gray1,    'bold')
call s:HL('FoldColumn',                     s:gray4,    s:gray1,    '')
call s:HL('Folded',                         s:gray3,    s:gray1,    '')
call s:HL('IncSearch',                      s:yellow,   '',         '')
call s:HL('LineNr',                         s:gray3,    '',         '')
call s:HL('MatchParen',                     s:gray2,    s:cyan,     'bold')
call s:HL('ModeMsg',                        s:green,    '',         '')
call s:HL('MoreMsg',                        s:green,    '',         '')
call s:HL('NonText',                        s:gray4,    '',         'none')
call s:HL('Normal',                         s:gray5,    s:gray1,    'none')
call s:HL('Pmenu',                          '',         s:gray3,    '')
call s:HL('PmenuSbar',                      '',         s:gray2,    '')
call s:HL('PmenuSel',                       s:gray2,    s:cyan,     '')
call s:HL('PmenuThumb',                     '',         s:gray4,    '')
call s:HL('Question',                       s:blue,     '',         'none')
call s:HL('Search',                         s:gray1,    s:yellow,   '')
call s:HL('SignColumn',                     s:gray5,    s:gray1,    '')
call s:HL('SpecialKey',                     s:gray4,    '',         '')
call s:HL('StatusLine',                     s:gray5,    s:gray3,    'none')
call s:HL('StatusLineNC',                   s:gray2,    s:gray4,    '')
call s:HL('TabLine',                        s:gray4,    s:gray2,    'none')
call s:HL('TabLineFill',                    s:gray4,    s:gray2,    'none')
call s:HL('TabLineSel',                     s:yellow,   s:gray3,    'none')
call s:HL('Title',                          s:green,    '',         'none')
call s:HL('VertSplit',                      s:gray4,    s:gray1,    'none')
call s:HL('Visual',                         s:gray5,    s:gray3,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:gray2,    s:cyan,	    '')

" Standard Syntax
call s:HL('Comment',                        s:gray4,    '',         'italic')
call s:HL('Constant',                       s:orange,   '',         '')
call s:HL('String',                         s:green,    '',         '')
call s:HL('Character',                      s:green,    '',         '')
call s:HL('Identifier',                     s:red,      '',         'none')
call s:HL('Function',                       s:blue,     '',         '')
call s:HL('Statement',                      s:purple,   '',         'none')
call s:HL('Operator',                       s:cyan,     '',         '')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('Include',                        s:blue,     '',         '')
call s:HL('Define',                         s:purple,   '',         'none')
call s:HL('Macro',                          s:purple,   '',         '')
call s:HL('Type',                           s:yellow,   '',         'none')
call s:HL('Structure',                      s:cyan,     '',         '')
call s:HL('Special',                        s:navy,     '',         '')
call s:HL('Underlined',                     s:blue,     '',         'none')
call s:HL('Error',                          s:red,      s:gray1,    'bold')
call s:HL('Todo',                           s:orange,   s:gray1,    'bold')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
call s:HL('GitGutterAdd',                   s:green,    '',         '')
call s:HL('GitGutterChange',                s:yellow,   '',         '')
call s:HL('GitGutterDelete',                s:red,      '',         '')
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete
