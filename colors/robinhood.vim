" vim: set tw=0 sw=4 sts=4 et:

" Vim color file
" Maintainer: Datila Carvalho <datila@saci.homeip.net>
" Last Change: November, 3, 2003
" Version: 0.1

" This is a VIM's version of the emacs color theme
" _Robin Hood_ created by Alex Schroede.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "robinhood"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light


""" Colors

" GUI colors
hi Cursor               guifg=fg guibg=gray
hi CursorIM             guifg=NONE guibg=gray
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
hi ErrorMsg             gui=bold guifg=White guibg=Red
"hi VertSplit
"hi Folded
"hi FoldColumn
"hi IncSearch
"hi LineNr
"hi ModeMsg
"hi MoreMsg
"hi NonText
hi Normal               guibg=#304020 guifg=navajowhite
"hi Question
hi Search               gui=bold guifg=Black guibg=gray
"hi SpecialKey
hi StatusLine           guifg=palegreen
hi StatusLineNC         guifg=yellowgreen
"hi Title
hi Visual               guifg=darkslategrey guibg=fg
hi VisualNOS            gui=bold guifg=Black guibg=fg
hi WarningMsg           guifg=White guibg=Tomato
"hi WildMenu

" Colors for syntax highlighting
hi Comment              guifg=lightblue

hi Constant             gui=bold guifg=lightcyan
    hi String           guifg=lightsalmon
    hi Character        guifg=lightsalmon
    hi Number           gui=bold guifg=lightcyan
    hi Boolean          gui=bold guifg=lightcyan
    hi Float            gui=bold guifg=lightcyan

hi Identifier           gui=bold guifg=palegreen
    hi Function         guifg=yellowgreen

hi Statement            gui=bold guifg=salmon
    hi Conditional      gui=bold guifg=salmon
    hi Repeat           gui=bold guifg=salmon
    hi Label            guifg=salmon
    hi Operator         guifg=salmon
    "hi Keyword
    "hi Exception

hi PreProc              guifg=palegreen
    hi Include          gui=bold guifg=palegreen
    hi Define           guifg=palegreen
    hi Macro            guifg=aquamarine
    hi PreCondit        guifg=palegreen

hi Type                 gui=bold guifg=palegreen
    hi StorageClass     gui=bold guifg=aquamarine
    hi Structure        gui=bold guifg=aquamarine
    hi Typedef          gui=bold guifg=aquamarine

"hi Special
    ""Underline Character
    "hi SpecialChar      gui=underline
    "hi Tag              gui=bold,underline
    ""Statement
    "hi Delimiter        gui=bold
    ""Bold comment (in Java at least)
    "hi SpecialComment   gui=bold
    "hi Debug            gui=bold

hi Underlined           gui=underline

hi Ignore               guifg=bg

hi Error                gui=bold guifg=White guibg=Red

"hi Todo
