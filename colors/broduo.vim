" Broduo Color Scheme
" Author : Jeremy Blain <contact@broduo.com>
" Version : 1.0.0

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "broduo"

hi Normal       guifg=grey guibg=black ctermfg=grey ctermbg=black
hi NonText      guifg=grey50 guibg=grey10 ctermfg=white ctermbg=darkgrey
hi Search       guifg=black guibg=darkred ctermfg=black ctermbg=darkred
hi IncSearch    guifg=darkred guibg=black ctermfg=darkred ctermbg=black
hi StatusLine   guifg=grey guibg=darkgreen ctermfg=grey ctermbg=darkgreen
hi StatusLineNC guifg=darkred guibg=grey ctermfg=darkred ctermbg=grey
hi VertSplit    guifg=grey50 guibg=grey50 ctermfg=darkgrey ctermbg=darkgrey
hi Folded       guifg=grey guibg=darkblue ctermfg=grey ctermbg=darkblue
hi Pmenu        guifg=black guibg=grey ctermfg=black ctermbg=grey
hi PmenuSel     guifg=grey guibg=grey10 ctermfg=grey ctermbg=darkgrey
hi CursorLine   guibg=grey30 ctermbg=darkgrey
hi LineNr       guifg=grey50 guibg=grey10 ctermfg=white ctermbg=darkgrey

hi Comment    guifg=grey40 guibg=grey10 ctermfg=white ctermbg=darkgrey
hi Todo       guifg=red guibg=darkred ctermfg=red ctermbg=darkred
hi Title      guifg=white ctermfg=white
hi Underlined guifg=darkcyan ctermfg=darkcyan

hi Statement  guifg=darkyellow ctermfg=darkyellow
hi Special    guifg=yellow ctermfg=yellow
hi PreProc    guifg=deepskyblue2 ctermfg=cyan
hi Identifier guifg=firebrick3 ctermfg=red
hi String     guifg=chocolate2 ctermfg=yellow
hi Constant   guifg=deepskyblue4 ctermfg=darkcyan
hi Type       guifg=violetred ctermfg=magenta
hi Function   guifg=limegreen ctermfg=green

hi htmlTag    guifg=deepskyblue2 ctermfg=cyan
hi htmlEndTag guifg=deepskyblue2 ctermfg=cyan

hi xmlTag     guifg=deepskyblue2 ctermfg=cyan
hi xmlTagName guifg=deepskyblue2 ctermfg=cyan
hi xmlEndTag  guifg=firebrick3 ctermfg=red

