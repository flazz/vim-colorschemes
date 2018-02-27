"    ____             __   __  _
"   / __/_____ ______/ /  / /_(_)__ _   /  Vim color file
"  / _// __/ // / __/ _ \/ __/ / _ `/  /  Based on "summerfruit[256]" by Armin Ronacher [Martin Bäuml]
" /_/ /_/  \_,_/\__/_//_/\__/_/\_, /  /  <schickele|you~know~what|web.de>
"                             /___/  /  2016--2018
set background=light
hi clear | syntax reset
let g:colors_name="fruchtig"

hi Cursor       guifg=#FFFFFF guibg=#001217 gui=NONE    " ----------------
hi MatchParen   guifg=#001217 guibg=#B1FF00 gui=NONE    "
hi NonText      guifg=#438EC3 guibg=NONE    gui=NONE    "  Default
hi Normal       guifg=#001217 guibg=#FFFFFF gui=NONE    "  colors
hi IncSearch    guifg=NONE    guibg=NONE    gui=INVERSE "
hi Visual       guifg=#FFFFFF guibg=#3399FF gui=NONE    " ----------------
hi Comment      guifg=#22A21F guibg=NONE    gui=NONE    "
hi Constant     guifg=#0086D2 guibg=NONE    gui=NONE    "
hi Error        guifg=#FFFFFF guibg=#D40000 gui=NONE    "
hi Function     guifg=#FF0086 guibg=NONE    gui=NONE    "  Syntax
hi Number       guifg=#0086F7 guibg=NONE    gui=NONE    "  elements
hi PreProc      guifg=#FF0007 guibg=NONE    gui=NONE    "
hi Special      guifg=#FD8900 guibg=NONE    gui=NONE    "
hi Statement    guifg=#FB660A guibg=NONE    gui=NONE    "
hi Type         guifg=#70796B guibg=NONE    gui=NONE    " ----------------
hi DiffAdd      guifg=NONE    guibg=#CCE7FD gui=NONE    "
hi DiffChange   guifg=NONE    guibg=#FFCCE7 gui=NONE    "
hi DiffDelete   guifg=#0086F7 guibg=#CCE7FD gui=NONE    "
hi ColorColumn  guifg=NONE    guibg=#F0F0F0 gui=NONE    "
hi Folded       guifg=#3C78A2 guibg=#C3DAEA gui=NONE    "
hi LineNr       guifg=#438EC3 guibg=#FFFFFF gui=NONE    "  Window
hi Pmenu        guifg=#FFFFFF guibg=#CB2F27 gui=NONE    "  elements
hi PmenuThumb   guifg=NONE    guibg=#0086D2 gui=NONE    "
hi SignColumn   guifg=NONE    guibg=NONE    gui=NONE    "
hi StatusLine   guifg=#FFFFFF guibg=#43C464 gui=NONE    "
hi StatusLineNC guifg=#9BD4A9 guibg=#51B069 gui=NONE    "
hi VertSplit    guifg=#3687A2 guibg=#3687A2 gui=NONE    "
hi WildMenu     guifg=#FFFFFF guibg=#FD8900 gui=NONE    " ----------------
hi ErrorMsg     guifg=#FFFFFF guibg=#FF0007 gui=NONE    "  Messages
hi ModeMsg      guifg=#FFFFFF guibg=#1B5C8A gui=NONE    " ----------------

hi SpellBad     guifg=#FF0007 guibg=NONE    gui=UNDERCURL, guisp=#FF0007

hi! link lilySlur         Comment
hi! link vimCommentString Comment
hi! link vimCommentTitle  Comment
hi! link String           Constant
hi! link lCursor          Cursor
hi! link WarningMsg       ErrorMsg
hi! link FoldColumn       Folded
hi! link Identifier       Function
hi! link Label            Function
hi! link Directory        Identifier
hi! link CursorLineNr     LineNr
hi! link TabLine          LineNr
hi! link TabLineFill      LineNr
hi! link Search           WildMenu
hi! link MoreMsg          ModeMsg
hi! link Question         ModeMsg
hi! link SpecialKey       NonText
hi! link Title            Normal
hi! link PmenuSbar        PmenuSel
hi! link Todo             PreProc
hi! link schemeError      PreProc
hi! link TabLineSel       StatusLine
hi! link PmenuSel         WildMenu
