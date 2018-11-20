" Name : winterd
" Version : 0.4
" Maintainer : https://www.github.com/smurfd
" License : The MIT License (MIT)
"
" A Colorscheme for VIM highly based on 'vylight' by Vy-Shane Sin Fat 
" https://github.com/vim-scripts/vylight
"
" Works best for GUI right now
"                                  

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="winterd"

if &background == "light"
hi Normal        guifg=#3f3f3f  guibg=#f3f3f3     ctermfg=gray                       gui=none                   
hi Title         guifg=black    guibg=white       ctermfg=black                      gui=none
hi Cursor        guifg=white    guibg=#aaaaaa     ctermfg=white     ctermbg=gray     gui=none

hi LineNr        guifg=#c1c1c1  guibg=#f0f0f0     ctermfg=lightblue ctermbg=lightgray gui=none
hi Visual        guifg=#888888  guibg=#bbddff     ctermfg=darkgray  ctermbg=lightblue gui=none
hi NonText       guifg=#fafafa  guibg=#fafafa     ctermfg=lightgray ctermbg=lightgray gui=none
hi StatusLine    guifg=#222222  guibg=#eeeeee     ctermfg=black     ctermbg=white     gui=none
hi StatusLineNC  guifg=#888888  guibg=#eeeeee     ctermfg=gray      ctermbg=white     gui=none
hi VertSplit     guifg=#eeeeee  guibg=#eeeeee     ctermfg=white     ctermbg=white     gui=none
hi ModeMsg       guifg=black    guibg=#bbddff     ctermfg=black     ctermbg=lightblue gui=none
hi ErrorMsg      guifg=black    guibg=#ffbbbb     ctermfg=black     ctermbg=lightred  gui=none
hi Error         guifg=#333333  guibg=white       ctermfg=darkgray  ctermbg=white     gui=none
hi Folded        guifg=#999999  guibg=#fafafa     ctermfg=gray                        gui=none
else
hi Normal        guifg=#f3f3f3  guibg=#3f3f3f     ctermfg=gray                        gui=none
hi Title         guifg=black    guibg=white       ctermfg=black                       gui=none
hi Cursor        guifg=white    guibg=#aaaaaa     ctermfg=white     ctermbg=gray      gui=none

hi LineNr        guifg=#c1c1c1  guibg=#f0f0f0     ctermfg=lightblue ctermbg=lightgray gui=none
hi Visual        guifg=#888888  guibg=#bbddff     ctermfg=darkgray  ctermbg=lightblue gui=none
hi NonText       guifg=#fafafa  guibg=#fafafa     ctermfg=lightgray ctermbg=lightgray gui=none
hi StatusLine    guifg=#222222  guibg=#eeeeee     ctermfg=black     ctermbg=white     gui=none
hi StatusLineNC  guifg=#888888  guibg=#eeeeee     ctermfg=gray      ctermbg=white     gui=none
hi VertSplit     guifg=#eeeeee  guibg=#eeeeee     ctermfg=white     ctermbg=white     gui=none
hi ModeMsg       guifg=black    guibg=#bbddff     ctermfg=black     ctermbg=lightblue gui=none
hi ErrorMsg      guifg=black    guibg=#ffbbbb     ctermfg=black     ctermbg=lightred  gui=none
hi Error         guifg=#333333  guibg=white       ctermfg=darkgray  ctermbg=white     gui=none
hi Folded        guifg=#999999  guibg=#fafafa     ctermfg=gray                        gui=none
endif

"
" Vim +7.x specific
"

if version >= 700
  hi MatchParen   guifg=#888888  guibg=#bbddff  
  hi Pmenu        guifg=#60656f  guibg=#f0f5ff  
  hi PmenuSel     guifg=white    guibg=#3585ef                                       gui=bold
  hi PmenuSbar    guifg=#d0d5dd  guibg=#e0e5ee                                       gui=bold
  hi PmenuThumb   guifg=#e0e5ee  guibg=#c0c5dd                                       gui=bold
  hi Search                      guibg=#fcfcaa  
  hi IncSearch                   guibg=#ff3300                                       gui=bold
  hi CursorLine   guifg=#aaaaaa  guibg=#f0f0f0                     ctermbg=lightblue
  hi CursorColumn guifg=#999999  guibg=#f0f0f0   ctermfg=blue      ctermbg=white
  hi CursorLineNr guifg=#bbddff  guibg=#f0f0f0   ctermfg=blue      ctermbg=white
endif
 

"  
" Syntax highlighting 
"

hi Comment       guifg=#cccccc                                                       gui=italic   
hi Todo          guifg=#bbddff       guibg=#f3f3f3                                   gui=italic    
hi Operator      guifg=#1a1a1a                                                       gui=none 
hi Identifier    guifg=#1a1a1a                                                       gui=none
hi Statement     guifg=#1a1a1a                                                       gui=none
hi Type          guifg=#509be8                                                       gui=none
hi Constant      guifg=#204070                                                       gui=none
hi Conditional   guifg=#bbddff  
hi Delimiter     guifg=#509be8  
hi PreProc       guifg=#bbddff  
hi Special       guifg=#bbddff  
hi Keyword       guifg=#509be8  

hi link Function        Normal
hi link Character       Constant
hi link String          Constant
hi link Boolean         Constant
hi link Number          Constant
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         Normal
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special




