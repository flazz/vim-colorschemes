set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


set diffexpr=MyDiff()
set ts=4
set ic
set bk nobk
set wb nowb
autocmd BufEnter * cd%:p:h
set gfn=Courier:h12:cANSI
set syn=sql
set lines =25
set co=80
set nolbr	lbr
set bg=light
set ft=sql
:set guioptions=mlrb
colorscheme koehler
set background=dark
function MyDiff()
  let opt = ''
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  silent execute '!D:\ZCYGWIN\GVIM\VIM61\diff -a ' . opt . v:fname_in . ' ' . v:fname_new . ' > ' . v:fname_out
endfunction

map <F2> aDBMS_OUTPUT.PUT_LINE('
map <F3> aDBMS_OUTPUT.PUT_LINE('1 ------------------> '\|\|DBMS_UTILITY.GET_TIME);<CR>
map <F4> aINSERT INTO TEST VALUES('1 ---> ',DBMS_UTILITY.GET_TIME);<CR>
