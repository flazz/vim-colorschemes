if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=2		" allow backspacing over everything in insert mode

" fix funny backspace in insert mode and cmd line for some linux
" the ^? was entered in insert mode by typing CTRL-V and a BACKSPACE
map!  <C-H>

"set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

if has("cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Set the variable that can be used to choose a background scheme
" if the crt.vim colorscheme is used. (user-defined var: not required)
let T_CO = 256 "282 "256 "281 "256

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set nohlsearch
  colorscheme crt 
endif

if &term=~"xterm" && !(v:progname =~? "gvim")
  " Wheelmouse can scroll, select, paste
  set mouse=a
  " No, I don't want highlighting thanks.
  set nohlsearch

  " Overcome xterm keycodes <Esc>OA and <Esc>OB for correct operation
  " of <UP> and <DOWN> in insert mode and commandline history
  " Method 1 (works great):
  "set term=linux	" this lets history work
  " Method 2 (works great): -- see Help - find> xterm-cursor-keys
  set notimeout		" don't timeout on mappings
  set ttimeout		" do timeout on terminal key codes
  set timeoutlen=100	" timeout after 100 msec
  " Method 3 (works great): -- see Help |builtin-terms|
  "set term=builtin_xterm

  syntax off

  
  " Try colorschemes -- see /usr/share/vim/vim64/colors
  if &term=~"xterm-256color" && !(v:progname =~? "gvim")
    syntax on
    colorscheme crt
    "set bg=dark
  endif

endif

"if &term=="xterm"
"     set t_Co=8
"     set t_Sb=[4%dm
"     set t_Sf=[3%dm
"endif
