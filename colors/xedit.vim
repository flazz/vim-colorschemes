" Vim color file

hi clear
if exists("syntax_on")
  syntax reset
endif

set background=light

let g:colors_name="xedit"

hi clear Normal
hi clear VertSplit
hi Statement	gui=bold,italic	guifg=gray12
hi Number	gui=bold	guifg=OrangeRed3
hi String	gui=italic	guifg=RoyalBlue2
hi Constant	gui=italic	guifg=VioletRed3
hi Comment	gui=italic	guifg=SlateBlue3
hi PreProc			guifg=green4
hi Type				guifg=fg
hi Special	gui=bold,italic	guifg=RoyalBlue2
hi Directory			guifg=RoyalBlue4
hi NonText			guifg=fg
hi LineNr	gui=italic	guifg=gray
hi Pmenu						guibg=LightYellow
hi PmenuSel						guibg=LightGoldenrod1
hi Todo				guifg=fg		guibg=PaleGreen
hi Visual			guifg=bg		guibg=IndianRed3
hi Cursor						guibg=IndianRed3
hi Identifier			guifg=RoyalBlue4
hi Search						guibg=LightYellow
hi Title			guifg=gray12
hi StatusLine			guifg=RoyalBlue4
hi StatusLineNC			guifg=gray40
