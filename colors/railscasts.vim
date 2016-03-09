" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Nick Moffitt <nick@zork.net>
" Last Change:  01 Mar 2008
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.1
"
" This theme is based on Josh O'Rourke's Vim clone of the railscast
" textmate theme.  The key thing I have done here is supply 256-color
" terminal equivalents for as many of the colors as possible, and fixed
" up some of the funny behaviors for editing e-mails and such.
"
" To use for gvim:
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: put "colorscheme railscasts" in your .gvimrc
"
" If you are using Ubuntu, you can get the benefit of this in your
" terminals using ordinary vim by taking the following steps:
"
" 1: sudo apt-get install ncurses-term
" 2: put the following in your .vimrc
"     if $COLORTERM == 'gnome-terminal'
"         set term=gnome-256color
"         colorscheme railscasts
"     else
"         colorscheme default
"     endif
" 3: if you wish to use this with screen, add the following to your .screenrc:
"     attrcolor b ".I"
"     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
"     defbce "on"
"     term screen-256color-bce

if has("gui_running")
  set background=dark
endif
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "railscasts"

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi Normal                    guifg=#E6E1DC guibg=#141414 ctermfg=254 ctermbg=NONE
hi Cursor                    guifg=#000000 ctermfg=0     guibg=#FFFFFF ctermbg=15
hi CursorLine                cterm=none ctermbg=234 guibg=#333333 guifg=NONE
hi CursorColumn              cterm=none ctermbg=234 guibg=#333333 guifg=NONE
hi StatusLine                guifg=#444444 guibg=#cccccc gui=bold ctermbg=233 cterm=bold
hi StatusLineNC              guifg=#444444 guibg=#aaaaaa gui=none ctermbg=233 cterm=none
hi VertSplit                 guifg=Black   guibg=#aabbee gui=bold ctermfg=237   ctermbg=237 cterm=none

hi Comment                   guifg=#BC9458 ctermfg=180 gui=italic
hi Constant                  guifg=#6D9CBE ctermfg=73
hi link Identifier rubyConstant
hi Define                    guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
hi Statement                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
hi Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
hi Function                  guifg=#FFC66D ctermfg=221 gui=NONE cterm=NONE
hi Keyword                   guifg=#CC7833 ctermfg=173 cterm=NONE
hi link Include              Statement
hi link PreCondit            Statement
hi Todo                      ctermbg=NONE ctermfg=160 guifg=#d70000 guibg=NONE gui=bold

hi LineNr                    guifg=#555555 ctermfg=236
hi String                    guifg=#A5C261 ctermfg=107
hi link Number String
hi PreProc                   guifg=#E6E1DC ctermfg=103
hi Search                    guifg=NONE    ctermfg=NONE guibg=#444444 ctermbg=235
hi IncSearch                 guifg=White   guibg=Black ctermfg=White ctermbg=Black
hi link Search IncSearch
hi Title                     guifg=#FFFFFF ctermfg=15
hi Type                      guifg=#DA4939 ctermfg=167 gui=NONE cterm=NONE
hi Visual                    guibg=#5A647E ctermbg=60

hi link diffAdded            String
hi link diffRemoved          Type
hi link diffLine             PreProc
hi link diffSubname          Comment

hi DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=59
hi DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
hi Special                   guifg=#DA4939 ctermfg=167

hi pythonBuiltin             guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
hi rubyBlockParameter        guifg=#FFFFFF ctermfg=15
hi link rubyConstant           Type
hi link rubyCapitalizedMethod  rubyConstant
hi link rubyPredefinedConstant Type
hi rubyInstanceVariable      guifg=#D0D0FF ctermfg=189
hi rubyInterpolation         guifg=#519F50 ctermfg=107
hi rubyLocalVariableOrMethod guifg=#D0D0FF ctermfg=189
hi rubyPseudoVariable        guifg=#FFC66D ctermfg=221
hi link rubyStringDelimiter  String

hi NonText                   guifg=#404040 ctermfg=8
hi SpecialKey                guifg=#404040 ctermfg=8

hi xmlTag                    guifg=#E8BF6A ctermfg=179
hi xmlTagName                guifg=#E8BF6A ctermfg=179
hi xmlEndTag                 guifg=#E8BF6A ctermfg=179

hi mailSubject               guifg=#A5C261 ctermfg=107
hi mailHeaderKey             guifg=#FFC66D ctermfg=221
hi mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

hi SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
hi SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParen                guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23

hi Ignore                    ctermfg=Black
hi WildMenu                  guifg=Black   guibg=#ffff00 gui=bold cterm=bold
hi Directory                 none
hi link Directory            Identifier

hi Folded                    guifg=#585858 guibg=#1c1c1c gui=NONE ctermbg=234 ctermfg=240 cterm=NONE
hi FoldColumn                none
hi link FoldColumn           Folded

hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE ctermbg=238 ctermfg=White cterm=NONE
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE ctermbg=150 ctermfg=Black
hi PMenuSbar                 guibg=#5A647E gui=NONE ctermbg=66  cterm=NONE
hi PMenuThumb                guibg=#AAAAAA gui=NONE ctermbg=248 cterm=NONE

" Vim 7.3+
hi ColorColumn               guibg=#444444 ctermbg=235
