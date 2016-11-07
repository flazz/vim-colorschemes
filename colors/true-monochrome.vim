"" thanks to greygrey from themebow for a running start!
"" http://themebow.com/theme/313
"" find me online at:
"" https://github.com/ryanpcmcquen/true-monochrome_vim

"" clear out any previous highlighting
hi clear
"" if vim is v5.8 or greater, reset syntax
if version > 580
  if exists("syntax_on")
    syntax reset
  endif
endif

"" give it a name and set the background
let colors_name="true-monochrome"
set background=dark

""
"" now, on to the good stuff!
""

"" black fg w/white bg
hi Cursor          guifg=#000000    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi IncSearch       guifg=#000000    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=NONE
hi Search          guifg=#000000    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=NONE
hi Visual          guifg=#000000    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=NONE
hi VisualNOS       guifg=#000000    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=NONE

"" grey fg w/white bg
hi CursorColumn    guifg=#A0A0A0    guibg=#FFFFFF    ctermfg=grey     ctermbg=white    gui=NONE         cterm=NONE
hi CursorLine      guifg=#A0A0A0    guibg=#FFFFFF    ctermfg=grey     ctermbg=white    gui=NONE         cterm=NONE

"" grey fg w/black bg
hi Comment         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE
hi DiffChange      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi DiffDelete      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi DiffText        guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Directory       guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Error           guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Folded          guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Function        guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi Identifier      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Ignore          guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Label           guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi LineNr          guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi MatchParen      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi ModeMsg         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi MoreMsg         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi NonText         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Normal          guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi PmenuSbar       guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi PmenuSel        guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE
hi PmenuThumb      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi PreProc         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi Special         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi SpecialKey      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE
hi Statement       guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi StatusLine      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi StatusLineNC    guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE
hi StorageClass    guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi Structure       guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi TabLine         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi TabLineFill     guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi TabLineSel      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi Title           guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Todo            guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi Todo            guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=UNDERLINE    cterm=UNDERLINE
hi Type            guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi TypeDef         guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi Underlined      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=UNDERLINE    cterm=UNDERLINE
hi VertSplit       guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi WarningMsg      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi WildMenu        guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi cucumberTags    guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi htmlTagN        guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=BOLD         cterm=BOLD
hi rubySymbol      guifg=#A0A0A0    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE

"" white fg w/black bg
hi Constant        guifg=#FFFFFF    guibg=#000000    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi DiffAdd         guifg=#FFFFFF    guibg=#000000    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi Number          guifg=#FFFFFF    guibg=#000000    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi Pmenu           guifg=#FFFFFF    guibg=#000000    ctermfg=white    ctermbg=black    gui=BOLD         cterm=BOLD
hi String          guifg=#FFFFFF    guibg=#000000    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE

