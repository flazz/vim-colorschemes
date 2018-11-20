" Name: Nocturne colorscheme
" Author: Andy Russell (euclio)
" URL: http://github.com/euclio/vim-nocturne
"
" ==============================================================================
" Initialization
" ==============================================================================
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="nocturne"

" ==============================================================================
" Syntax
" ==============================================================================
" Text
hi Normal       guifg=#f5f5f5 guibg=#121212 gui=NONE
hi Comment      guifg=#4e4e4e guibg=NONE    gui=italic
hi Todo         guifg=#121212 guibg=#ff0000 gui=bold

" Literals
hi Constant     guifg=#008787 guibg=NONE    gui=NONE
hi String       guifg=#5f87d7 guibg=NONE    gui=NONE
hi Character    guifg=#ff875f guibg=NONE    gui=NONE

" Variable names
hi Identifier   guifg=#ffd700 guibg=NONE    gui=NONE
hi Function     guifg=#ff8700 guibg=NONE    gui=bold

" Keywords and operators
hi Statement    guifg=#ffff00 guibg=NONE    gui=bold

" Preprocessor directives
hi PreProc      guifg=#ff0000 guibg=NONE    gui=NONE
hi Include      guifg=#875fd7 guibg=NONE    gui=NONE

" Types
hi Type         guifg=#00ff00 guibg=NONE    gui=NONE

" Special characters
hi Special      guifg=#ffd700 guibg=NONE    gui=NONE

" Underlined (HTML links, etc.)
hi Underlined   guifg=#f5f5f5 guibg=NONE    gui=underline

" ==============================================================================
" User Interface
" ==============================================================================
" Cursor
hi Cursor       guifg=NONE     guibg=NONE   gui=reverse

" Matching parenthesis and brackets
hi MatchParen   guifg=#f5f5f5 guibg=#ff8700 gui=NONE

" Search
hi IncSearch    guifg=#ffff00 guibg=#4e4e4e gui=NONE
hi Search       guifg=#4e4e4e guibg=#ffff00 gui=NONE

" Boundaries
hi VertSplit    guifg=#4e4e4e guibg=#1c1c1c gui=reverse
hi Wildmenu     guifg=#000000 guibg=#ffff00 gui=bold
hi ColorColumn  guifg=NONE    guibg=#1c1c1c gui=NONE
hi LineNr       guifg=#303030 guibg=NONE    gui=NONE
hi CursorLineNr guifg=#4e4e4e guibg=NONE    gui=NONE
hi! link        CursorColumn  ColorColumn
hi! link        CursorLine    ColorColumn

" Tabs
hi TabLine      guifg=#585858 guibg=#1c1c1c gui=underline
hi TabLineSel   guifg=#f5f5f5 guibg=#4e4e4e gui=bold
hi TabLineFill  guifg=#585858 guibg=#1c1c1c gui=underline

" Non-display characters
hi NonText      guifg=#0000ff guibg=NONE    gui=bold
hi SpecialKey   guifg=#ffffff guibg=NONE    gui=bold

" Popup Menu
hi Pmenu        guifg=#d0d0d0 guibg=#303030 gui=NONE
hi PmenuSel     guifg=#000000 guibg=#d0d0d0 gui=NONE
hi PmenuSbar    guifg=NONE    guibg=#444444 gui=NONE
hi PmenuThumb   guifg=NONE    guibg=#767676 gui=NONE

" Visual Mode
hi Visual       guifg=NONE    guibg=#303030 gui=NONE

" Warnings and  errors
hi WarningMsg   guifg=#ff8700 guibg=NONE    gui=NONE
hi ErrorMsg     guifg=#ff0000 guibg=NONE    gui=NONE
hi! link        Error         ErrorMsg

" Statusline
hi StatusLine   guifg=#f5f5f5 guibg=#262626 gui=NONE
hi StatusLineNC guifg=#585858 guibg=#1c1c1c gui=NONE
hi MoreMsg      guifg=#00ff00 guibg=NONE    gui=NONE
hi! link        ModeMsg       MoreMsg
hi Title        guifg=#f5f5f5 guibg=NONE    gui=bold

" Folds
hi Folded       guifg=#d0d0d0 guibg=#303030 gui=NONE
hi FoldColumn   guifg=#d0d0d0 guibg=NONE    gui=NONE

" Signs
hi SignColumn   guifg=#d0d0d0 guibg=#1c1c1c gui=NONE

" Vimdiff
hi DiffAdd      guifg=#f5f5f5 guibg=#005f00 gui=NONE
hi DiffChange   guifg=NONE    guibg=#303030 gui=NONE
hi DiffDelete   guifg=#ff0000 guibg=#5f0000 gui=NONE
hi DiffText     guifg=NONE    guibg=#767676 gui=NONE

" For diffs in git commits
hi! link        diffRemoved   DiffDelete
hi! link        diffAdded     DiffAdd

" Directories
hi Directory    guifg=#00d7d7 guibg=NONE    gui=NONE

" ==============================================================================
" Additional Highlighting
" ==============================================================================
