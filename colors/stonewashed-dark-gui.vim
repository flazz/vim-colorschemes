""" VIM STONEWASHED 
" A low-rent color-scheme for Vim
"
set background=dark
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif
let g:colors_name = "stonewashed-dark-gui"
hi ColorColumn guibg=#121212
hi Comment  guifg=#949494
hi Conditional guifg=#a88f53 gui=underline
hi Constant guifg=#bb8888
hi CursorColumn guibg=#121212
hi cursorline guibg=#111111 gui=none
hi CursorLineNr guifg=#bb8888
hi Delimiter guifg=#bb8888
hi Define guifg=#a88f53 gui=underline
hi Error guifg=#af0000 guibg=#f7f7f7 gui=bold,undercurl
hi Exception guifg=#a88f53 gui=none
hi Float guifg=#a88f53
hi Function guifg=#5f5fd7
hi Identifier guifg=#7e74dd gui=none
hi Include guifg=#a88f53 gui=underline
hi LineNr guifg=#585858 guibg=#ccc0b7 
hi Macro guifg=#a88f53 gui=underline
hi MatchParen guibg=#dfdf5f
hi MoreMsg guifg=#7fca95
hi NonText guifg=#B0B0B0 guibg=#000000
hi Normal guifg=#dddddd guibg=#000000
hi Number guifg=#5b9898 
hi Pmenu guibg=#5f99ff guifg=#eaeaea gui=reverse 
hi PmenuSel guifg=#5f99ff guibg=#fafafa gui=reverse
hi PreConduit guifg=#a88f53
hi PreProc guifg=#bb8888
hi Repeat guifg=#5f5fa7
hi Search guibg=#ffafaf gui=bold
hi Special guifg=#7e74dd
" hi SpecialChar guifg=#ff0000
hi SpecialKey guibg=#e4e4e4 guifg=#a8a8a8
hi Statement guifg=#bb8888
hi StatusLine guifg=#ccc0b7 guibg=#af87d7
hi StatusLineNC guibg=#ccc0b7 guifg=#ccc0b7
hi StorageClass guifg=#5f00af 
hi String guifg=#7BA27B 
hi Structure guifg=#5f8700 gui=underline
hi Title guifg=#bb8888
hi Todo guibg=#ffff00 guifg=#444444 gui=bold
hi Type guifg=#788eab
hi Typedef guifg=#5f8700 gui=underline
hi Underlined guifg=#7BA27B gui=underline
hi VertSplit guifg=#dfffff guibg=#dfffff
hi Visual  guibg=#ffa8a8 gui=bold  
hi Wildmenu guibg=#87ffaf gui=underline

""" REFERENCE
" Color Chart http://i.stack.imgur.com/UQVe5.png
" Vim Color Names http://vim.wikia.com/wiki/Xterm#ffffff_color_names_for_console_Vim
" Syntax higlighting http://vimdoc.sourceforge.net/htmldoc/syntax.html#:highlight
" Make Vim Pretty http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
" List all syntax groups: :so $VIMRUNTIME/syntax/hitest.vim 
