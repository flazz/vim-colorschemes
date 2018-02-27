" load my color scheme
if has("win32")
" settings for conemu on Windows
       set term=xterm
       set t_Co=256
       let &t_AB="\e[48;5;%dm"
       let &t_AF="\e[38;5;%dm"
       colorscheme stonewashed-256
elseif has("gui_running")
  colorscheme stonewashed-dark-gui
else
  set t_Co=256
  colorscheme stonewashed-dark-256
endif

" turn on syntax highlighting
syntax on

" highlight search results 
set hlsearch

" Improve tab completion in command bar
set wildmode=list:longest,full

" line numbers
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set relativenumber

" cursor lines
set cursorline
set cursorcolumn
set colorcolumn=120

" make cursorlines brighter in insert mode
autocmd InsertEnter * hi CursorLine ctermbg=230 guibg=#ffffdf
autocmd InsertLeave * hi CursorLine ctermbg=231 guibg=#ffffff
