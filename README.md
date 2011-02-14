this branch is meant for preparing releases of this

there are a few files:

* `harvest.rb`: downloads all colorschemes from vim.org; caches the links in a file called `links`
* `crosscheck.rb`: used to extract data from the links file, i'm using for a file called `not.vim`

just hack away, the rest of this README.md is the normal one

---

**me:** Hi everyone, my name is Franco and I'm addicted to colorschemes

**everyone else:** *Hi Franco*

Vim colorschemes
================

one stop shop for vim colorschemes.

initially this is my collection, ultimately i want to automatically harvest new
themes from vim.org (but they are having technical issues right now).

Installation
------------

if you [use vim + pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

    cd ~/.vim
    git submodule add git@github.com:flazz/vim-colorschemes.git bundle/colorschemes

if you aren't so clever just get all the files in `colors/*.vim` into
  `~/.vim/colors`

    # after downloading; unpacking; cd'ing
    cp colors/* ~/.vim/colors

Something missing? Fork!
------------------------

fork [this repo](http://github.com/flazz/vim-colorschemes); send a
pull request!; I'll take it!

Current colorschemes
--------------------

* bog
* busierbee
* busybee
* colorful
* fine_blue
* fruit
* fruity
* gentooish
* gobo
* herald
* ingretu
* inkpot
* ir_black
* jelleybeans
* jellyx
* kruby
* lettuce
* liquidcarbon
* lucius
* moria
* mustang
* nazca
* nicotine
* obsidian
* oceanlight
* phd
* proton
* pyte
* python
* rainbow_fine_blue
* rainbow_fruit
* shobogenzo
* simpleandfriendly
* softbluev2
* softlight
* southwest-fog
* summerfruit
* symfony
* synic
* taqua
* twilight
* underwater
* vividchalk
* vylight
* wombat
* wombat256
* xoria256
* zenburn
* zenesque

- - -

I'm a slave to aesthetics. If you are too, I hope this helps.

[email](mailto:flazzarino@gmail.com)
