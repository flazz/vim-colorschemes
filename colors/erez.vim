color erez

"-- Vim Options
filetype on
filetype plugin on

set nocompatible

set hidden  "unsaved buffers
" Scrolloff; Set lines of space from margin when moving vertically..
set so=3
" smart :e file completion
set wildmode=list:longest:full
set wildmenu
" Ignore case when searching, unless search includes upper case
set ignorecase
set smartcase
set incsearch
set gdefault    " substitute all by default
set hlsearch

set magic "Set magic on, for regular expressions

"no sound on errors
set noerrorbells
set novisualbell
set visualbell t_vb=

set ts:8
set sw:4
set expandtab
set sts:4
set autoindent
set smarttab
"set textwidth=79
:syntax on

set backupdir=$VIM/temp,.
set directory=$VIM/temp,.

set lbr "nicer wrapping
set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines
set lazyredraw                      " Don't redraw screen when executing macros etc.
set showmode                        " Show the current mode you are working in.
set virtualedit=all
set synmaxcol=2048
set cursorline
set guioptions-=T   " Without toolbar 

set nobackup
set nowritebackup
set noswapfile

set iskeyword+=-    " in CSS, a-b is a keyword

"nmap >c mzI#<ESC>`zl
"vmap >c :normal >c<CR>
"i<ESC> is like 'h', only no error if can't move
"nmap <c mz^lF#x`zh
"vmap <c :normal <c<CR>

"imap <C-S>l <ESC>V
"imap <C-X>l <ESC>Vxi
"imap <C-C>l <ESC>Vy<ESC>i

"imap <C-V> <ESC>pi

"imap <C-F> <ESC>/
"imap <C-UP> <ESC>Ni
"imap <C-DOWN> <ESC>lni

"autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" reselect visual block after in/dedent
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv
nnoremap <leader>c mz0i#<ESC>`zl
vnoremap <leader>c :normal <leader>c<CR>

nnoremap <leader>C mz0lF#x`zh
vnoremap <leader>C :normal <leader>C<CR>
"vnoremap <leader>c :normal \C<CR>gv

" SCRIPTS
"let vim_script_dir = expand('<sfile>:p:h')


let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
au FileType python :python import ropevim

" enable/disable spell
nnoremap <silent> <C-F11> :setlocal spell spelllang=en_us<CR>
nnoremap <silent> <C-F12> :setlocal nospell<CR>

"quick edit in same directory
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

"run line through python
nmap <leader>p :.!python<CR>
vmap <leader>p :!python<CR>

"Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"misc
map <silent> <leader><cr> :noh<cr>
iab DATE <c-r>=strftime("%d/%m/%y")<cr>
"imap <C-F><C-F> <ESC>*i
imap <C-Space> <C-x><C-o>
map <C-F10> :TaskList<CR>
map <C-F9> :TlistToggle<CR>
map <C-F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"Arrow selections (insert)
imap <S-left> <esc>v
imap <S-C-left> <esc>v<right><S-C-left>

imap <S-right> <esc><right>v
imap <S-C-right> <esc><right>v<S-C-right>

imap <S-up> <esc><right>v<up>
imap <S-down> <esc><right>v<down>

"Arrow selections (normal + visual)
nmap <S-left> v<left>
nmap <S-C-left> v<S-C-left>
vmap <S-left> <left>

nmap <S-Up> V<Up>
vmap <S-Up> <Up>

nmap <S-Down> V<Down>
vmap <S-Down> <Down>

nmap <S-Right> v<Right>
nmap <S-C-Right> v<S-C-Right>
vmap <S-Right> <Right>

"Clipboard copy+paste
vmap <C-x> "+d
vmap <S-del> "+d
vmap <C-c> "+y
vmap <C-insert> "+y
nmap <C-v> "+P
nmap <S-insert> "+P
imap <C-v> <C-r>+
imap <S-insert> <C-r>+


set t_Co=256


" make Y like C/D
nnoremap Y y$

" more intuitive j/k
nnoremap j gj
nnoremap k gk


" Alt-Space is System menu
if has("gui")
  noremap <M-Space> :simalt ~<CR>
  inoremap <M-Space> <C-O>:simalt ~<CR>
  cnoremap <M-Space> <C-C>:simalt ~<CR>
endif

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" backspace in Visual mode deletes selection
vnoremap <BS> d

" The C-g u sets an undo point, so this has the effect of letting me type for a while and have undo just revert one sentence at a time, instead of everything I've typed since entering insert mode.
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u
inoremap : :<C-g>u

set enc=utf-8
"set guifont=DejaVu_Sans_Mono:h10:b:cANSI
set guifont="DejaVu Sans Mono 10"

"call pymode#Default("g:pymode_folding", 0)  " overwrite pymode defaults
let g:pymode_folding = 0
let g:pymode_lint_checkers = ['pylint']
let g:pymode_lint_ignore = "C0103,C0111,E1101,R0901,R0902,R0903,R0904,R0913,R0915,W0141,W0142,W0221,W0232,W0401,W0613,W0631,C0301,F0401,W0622,R0201,C0326,W0632"

noremap L :PymodeLint<CR>

let g:used_javascript_libs = 'jquery'
let g:jedi#use_tabs_not_buffers = 0

cmap w!! %!sudo tee > /dev/null %
