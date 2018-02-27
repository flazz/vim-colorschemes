" for dein.vim
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.vim')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" color scheme
syntax on
colorscheme monokai

" settings
set number
set list " 不可視文字を表示
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:¬ " 不可視文字の表示をカスタマイズする
set hlsearch " 検索結果をハイライトする
set incsearch " 検索文字を入れるたびに検索する
set ignorecase " 小文字検索と大文字検索を分けない
set incsearch " インクリメンタルサーチを行う
set shiftwidth=2
set expandtab " Tabをスペースに変換する
set tabstop=2
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅の指定
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時にインデントを自動で増減する
set noswapfile
set backup
set backupdir=/tmp
set clipboard=unnamed " clipboardを共有する
inoremap jj <Esc> 
" 入力モード中に素早くjjと入力した場合はESCとみなす