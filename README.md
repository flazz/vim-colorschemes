**me:** Hi everyone, my name is Franco and I'm addicted to colorschemes

**everyone else:** *Hi Franco*

Vim colorschemes
================

one stop shop for vim colorschemes.

this was [originally] harvested from vim.org. only colorschemes downloaded in a single `.vim`
file are included.

for hacking on vim.org harvesting see the branch [prep](https://github.com/flazz/vim-colorschemes/tree/prep).

Policy
------
- honor system is in effect!
- new schemes are welcome!
- upstream updates are accepted!
- non-upstream updates are accepted as derivitive schemes: pick a new filename; cite the original!
- housekeeping updates are accepted too!

Installation
------------

Basic install - very simple (*nix or cygwin install)

    mkdir ~/.vim
    git clone https://github.com/flazz/vim-colorschemes.git ~/.vim

if you [use vim + pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

    git submodule add https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/colorschemes

if you [use vim + vundle](https://github.com/gmarik/vundle)

    " add to .vimrc
    Plugin 'flazz/vim-colorschemes'
    :PluginInstall

if you aren't so clever just get all the files in `colors/*.vim` into
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
    
Inside Vim, you use:
    
    :colorscheme molokai

Previewing colorschemes
-----------------------
There are quite a few colorschemes in this. To preview them on your live code inside of Vim, checkout [this page from the vim wikia](http://vim.wikia.com/wiki/Switch_color_schemes) and [this repo for easy installation](https://github.com/felixhummel/setcolors.vim).

Colorscheme Options
----------------------

#### 0x7A69_dark

![0x7A69_dark_demo](/img/0x7A69_dark_demo.png)

#### 1989 

![1989_demo](/img/1989_demo.png)

#### 256-grayvim

![56-grayvim_demo](/img/56-grayvim_demo.png)

#### 256-jungle

![256_jungle_demo](/img/256-jungle_demo.png)

#### 256_noir

![256_noir_demo](/img/256_noir_demo.png)

#### 3dglasses

![3dglasses_demo](/img/3dglasses_demo.png)

#### Atelier_CaveDark 

![Atelier_CaveDark_demo](/img/Atelier_CaveDark_demo.png)

#### Atelier_CaveLight

![Atelier_CaveLight_demo](/img/Atelier_CaveLight_demo.png)

#### Atelier_DuneDark

![Atelier_DuneDark_demo](/img/Atelier_DuneDark_demo.png)

#### Atelier_DuneLightk

![Atelier_DuneLightk_demo](/img/Atelier_DuneLight_demo.png)

#### Atelier_EstuaryDark

![Atelier_EstuaryDark_demo](/img/Atelier_EstuaryDark_demo.png)

#### Atelier_EstuaryLight

![Atelier_EstuaryLight_demo](/img/Atelier_EstuaryLight_demo.png)

#### Atelier_ForestDark

![Atelier_ForestDark_demo](/img/Atelier_ForestDark_demo.png)

#### Atelier_ForestLight

![Atelier_ForestLight_demo](/img/Atelier_ForestLight_demo.png)

#### Atelier_HeathDark

![Atelier_HeathDark_demo](/img/Atelier_HeathDark_demo.png)

#### Atelier_HeathLight

![Atelier_HeathLight_demo](/img/Atelier_HeathLight_demo.png)

#### Atelier_LakesideDark

![Atelier_LakesideDark_demo](/img/Atelier_LakesideDark_demo.png)

#### Atelier_LakesideLight

![Atelier_LakesideLight_demo](/img/Atelier_LakesideLight_demo.png)

#### Atelier_PlateauDark

![Atelier_PlateauDark_demo](/img/Atelier_PlateauDark_demo.png)

#### Atelier_PlateauLight

![Atelier_PlateauLight_demo](/img/Atelier_PlateauLight_demo.png)

#### Atelier_SavannaDark

![Atelier_SavannaDark_demo](/img/Atelier_SavannaDark_demo.png)

#### Atelier_SavannaLight

![Atelier_SavannaLight_demo](/img/Atelier_SavannaLight_demo.png)

#### Atelier_SeasideDark

![Atelier_SeasideDark_demo](/img/Atelier_SeasideDark_demo.png)

#### Atelier_SeasideLight

![Atelier_SeasideLight_demo](/img/Atelier_SeasideLight_demo.png)

#### Atelier_SulphurpoolDark

![Atelier_SulphurpoolDark_demo](/img/Atelier_SulphurpoolDark_demo.png)

#### Atelier_SulphurpoolLight

![Atelier_SulphurpoolLight_demo](/img/Atelier_SulphurpoolLight_demo/png)

Something missing? Fork!
------------------------

fork [this repo](http://github.com/flazz/vim-colorschemes); send a
pull request!; I'll take it!

- - -

I'm a slave to aesthetics. If you are too, I hope this helps.

[email](mailto:flazzarino@gmail.com)
