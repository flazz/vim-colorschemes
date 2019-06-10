**Me:** Hi everyone, my name is Franco and I'm addicted to colorschemes

**Everyone else:** *Hi Franco*

Vim colorschemes
================

One stop shop for Vim colorschemes.

This was [originally] harvested from vim.org. only colorschemes downloaded in a single `.vim`
file are included.

For hacking on vim.org harvesting see the branch [prep](https://github.com/flazz/vim-colorschemes/tree/prep).

Policy
------
- Honor system is in effect!
- New schemes are welcome!
- Upstream updates are accepted!
- Non-upstream updates are accepted as derivative schemes: pick a new filename; cite the original!
- Housekeeping updates are accepted too!

Installation
------------

Basic install - very simple (*nix or cygwin install):

    mkdir ~/.vim
    git clone https://github.com/flazz/vim-colorschemes.git ~/.vim

If you [use vim + pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/):

    git submodule add https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/colorschemes

If you [use vim + vundle](https://github.com/gmarik/vundle):

    " add to .vimrc
    Plugin 'flazz/vim-colorschemes'
    :PluginInstall

If you aren't so clever just get all the files in `colors/*.vim` into
  `~/.vim/colors`

    # after downloading; unpacking; cd'ing
    cp colors/* ~/.vim/colors
    
Using
-----

To change the colorscheme of Vim, add to your `.vimrc`:

    colorscheme nameofcolorscheme
    
For example, to change the color scheme to wombat:
    
    colorscheme wombat
    
To change to Molokai:

    colorscheme molokai
    
Inside Vim, you can use:
    
    :colorscheme molokai

Previewing colorschemes
-----------------------
There are quite a few colorschemes in this. To preview them on your live code inside of Vim, checkout [this page from the Vim wikia](http://vim.wikia.com/wiki/Switch_color_schemes) and [this repo for easy installation](https://github.com/felixhummel/setcolors.vim).


Something missing? Fork!
------------------------

Fork [this repo](http://github.com/flazz/vim-colorschemes); send a
pull request!; I'll take it!

- - -

I'm a slave to aesthetics. If you are too, I hope this helps.

[Email](mailto:flazzarino@gmail.com)
