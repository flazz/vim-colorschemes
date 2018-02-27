" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
  set smartindent
  set tabstop=4
  set shiftwidth=4
  set expandtab
  autocmd Filetype javascript setlocal ts=2 sw=2 sts=0
  autocmd Filetype css setlocal ts=2 sw=2 sts=0
  autocmd Filetype scss setlocal ts=2 sw=2 sts=0
  autocmd Filetype html setlocal ts=2 sw=2 sts=0
endif


" Set the color scheme
colorscheme mohammad
" autocmd BufRead,BufNewFile   *.py colorscheme mohammad
" autocmd BufRead,BufNewFile   *.go colorscheme mohammad
" autocmd BufRead,BufNewFile   *.js colorscheme default
" autocmd BufRead,BufNewFile   *.sh colorscheme default
" autocmd BufRead,BufNewFile   *.html colorscheme default
" autocmd BufRead,BufNewFile   *.json colorscheme default

" Fix the difficult-to-read default setting for diff text highlighting.  The
" " bang (!) is required since we are overwriting the DiffText setting. The highlighting
" " for "Todo" also looks nice (yellow) if you don't like the "MatchParen" colors.
highlight! link DiffText MatchParen


" Custom mappings for Django.
map ,m :vsplit %:p:h/models.py<CR>
map ,v :vsplit %:p:h/views.py<CR>
map ,u :vsplit %:p:h/urls.py<CR>
map ,f :vsplit %:p:h/forms.py<CR>
map ,s :vsplit %:p:h/tests.py<CR>

map ,tm :tabedit %:p:h/models.py<CR>
map ,tv :tabedit %:p:h/views.py<CR>
map ,tu :tabedit %:p:h/urls.py<CR>
map ,tf :tabedit %:p:h/forms.py<CR>
map ,ts :tabedit %:p:h/tests.py<CR>

:iabbr #T # TODO(mohammad.mohtasham@openx.com):
