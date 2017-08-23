" Vim color file

set bg=light
hi clear

if exists("syntax_on")
  syntax reset
endif

hi Statement guifg=gray12
hi Number gui=bold guifg=OrangeRed3
hi String guifg=RoyalBlue2
hi Constant guifg=VioletRed3
hi Comment gui=italic guifg=SlateBlue3
hi PreProc guifg=green4
hi Type guifg=fg
hi Special gui=bold guifg=RoyalBlue2
hi Directory guifg=RoyalBlue4
hi NonText guifg=fg
hi LineNr gui=italic guifg=gray
hi Pmenu guibg=LightYellow
hi PmenuSel guibg=LightGoldenrod1
hi Todo guifg=fg guibg=PaleGreen
hi Visual guifg=bg guibg=IndianRed3
hi Cursor guibg=IndianRed3
hi Identifier guifg=RoyalBlue4
hi Search guibg=LightYellow
hi Title guifg=gray12
hi clear VertSplit
hi clear Normal

let colors_name = "xedit"
