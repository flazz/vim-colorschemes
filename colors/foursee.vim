" Maintainer: Victor Farazdagi <simple.square@gmail.com>
" Last Change: May 12, 2011
" Base Theme: wombat

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "foursee"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine     guibg=#2d2d2d
  hi CursorColumn   guibg=#2d2d2d
  hi MatchParen     guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu          guifg=#f6f3e8 guibg=#444444
  hi PmenuSel       guifg=#000000 guibg=#cae682
  hi ColorColumn    guibg=#2d2d2d
endif

" Tabs/ViewPorts
hi TabLineSel   guibg=#252525 guifg=#C8C77E gui=none
hi TabLine      guibg=#444444 guifg=#868686 gui=none
hi TabLineFill  guibg=#444444 guifg=#868686 gui=bold

" General colors
hi Cursor           guifg=NONE    guibg=#aaaa00 gui=none
hi Normal           guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText          guifg=#808080 guibg=#303030 gui=none
hi LineNr           guifg=#857b6f guibg=#000000 gui=none
hi SignColumn       guifg=#857b6f guibg=#262526 gui=none
hi StatusLine       guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC     guifg=#857b6f guibg=#444444 gui=none
hi VertSplit        guifg=#444444 guibg=#444444 gui=none
hi Folded           guifg=#99968b guibg=#242424 gui=italic gui=none
hi Title            guifg=#f6f3e8 guibg=NONE    gui=bold
hi Visual           guifg=#f6f3e8 guibg=#444400 gui=none
hi SpecialKey       guifg=#808080 guibg=#343434 gui=none
hi Search           guifg=#444444 guibg=#ddff88
hi IncSearch        guibg=#444444 guifg=#ddff88

" Syntax highlighting
hi Comment      guifg=#99968b gui=italic
hi Todo         guifg=#f4a460 guibg=NONE gui=italic
hi Constant     guifg=#e5786d gui=none
hi String       guifg=#95e454 gui=italic
hi Identifier   guifg=#cae682 gui=none
hi Function     guifg=#cae682 gui=none
hi Type         guifg=#cae682 gui=none
hi Statement    guifg=#8ac6f2 gui=none
hi Keyword      guifg=#8ac6f2 gui=none
hi PreProc      guifg=#e5786d gui=none
hi Number       guifg=#e5786d gui=none
hi Special      guifg=#e7f6da gui=none

" Diff highlighting
hi DiffDelete guibg=#444444 guifg=#99968b
hi DiffAdd    guibg=#2A5447
hi DiffChange guibg=#53868B
hi DiffText   guibg=#990909 gui=none

" Git Syntax Highlighting
hi gitcommitSummary     guifg=#8ac6f2 gui=none
hi gitcommitOnBranch    guifg=#99968b gui=italic
hi gitcommitBranch      guifg=#FFCC66 gui=none

hi gitcommitHeader          guifg=#C4C4C4 gui=none

hi gitcommitDiscardedType   guifg=#99968b gui=none
hi gitcommitSelectedType    guifg=#99968b gui=none
hi gitcommitUnmergedType    guifg=#99968b gui=none

hi gitcommitUntrackedFile   guifg=#FF6347 gui=none
hi gitcommitSelectedFile    guifg=#CCFF66 gui=none
hi gitcommitUnmergedFile    guifg=#FF6666 gui=none
hi gitcommitDiscardedFile   guifg=#FF6347 gui=none

