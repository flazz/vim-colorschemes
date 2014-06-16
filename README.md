**me:** Hi everyone, my name is Franco and I'm addicted to colorschemes

**everyone else:** *Hi Franco*

Vim colorschemes
================

one stop shop for vim colorschemes.

this is harvested from vim.org. only colorschemes downloaded in a single `.vim`
file are included.

for hacking on vim.org harvesting see the branch [prep](https://github.com/flazz/vim-colorschemes/tree/prep).

Installation
------------

Basic install - very simple (*nix or cygwin install)

    mkdir ~/.vim
    git clone git@github.com:dgvigil/vim-colorschemes.git ~/.vim

if you [use vim + pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

    cd ~/.vim
    git submodule add git@github.com:flazz/vim-colorschemes.git bundle/colorschemes

if you [use vim + vundle](https://github.com/gmarik/vundle)

    " add to .vimrc
    Plugin 'flazz/vim-colorschemes'
    :PluginInstall

if you aren't so clever just get all the files in `colors/*.vim` into
  `~/.vim/colors`

    # after downloading; unpacking; cd'ing
    cp colors/* ~/.vim/colors

Something missing? Fork!
------------------------

fork [this repo](http://github.com/flazz/vim-colorschemes); send a
pull request!; I'll take it!

- - -

I'm a slave to aesthetics. If you are too, I hope this helps.

[email](mailto:flazzarino@gmail.com)
