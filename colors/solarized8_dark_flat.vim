let s:dir = expand('<sfile>:p:h').(!exists("+shellslash") || &shellslash ? '/' : '\')
set background=dark
execute "source" s:dir."solarized8_flat.vim"
unlet s:dir
