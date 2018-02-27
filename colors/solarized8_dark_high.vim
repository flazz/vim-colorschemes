let s:dir = expand('<sfile>:p:h').(!exists("+shellslash") || &shellslash ? '/' : '\')
set background=dark
execute "source" s:dir."solarized8_high.vim"
unlet s:dir
