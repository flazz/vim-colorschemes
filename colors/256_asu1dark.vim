" NOTE: this is not the original file! converted for use with xterm-256
" Vim color file
" Maintainer:   A. Sinan Unur
" Last Change:  2001/10/04

" Dark color scheme

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="256_asu1dark"

" GUI Color Scheme
hi Normal       cterm=NONE     ctermfg=15	   ctermbg=233	
hi NonText      cterm=NONE     ctermfg=210	 ctermbg=238	
hi Function     cterm=NONE     ctermfg=105	 ctermbg=233	
hi Statement    cterm=BOLD     ctermfg=11	  ctermbg=233	
hi Special      cterm=NONE     ctermfg=14	    ctermbg=233	
hi Constant     cterm=NONE     ctermfg=208	 ctermbg=233	
hi Comment      cterm=NONE     ctermfg=114	 ctermbg=233	
hi Preproc      cterm=NONE     ctermfg=83	 ctermbg=233	
hi Type         cterm=NONE     ctermfg=204	 ctermbg=233	
hi Identifier   cterm=NONE     ctermfg=14	    ctermbg=233	
hi StatusLine   cterm=BOLD     ctermfg=15	   ctermbg=58	
hi StatusLineNC cterm=NONE     ctermfg=0	   ctermbg=252	
hi Visual       cterm=NONE     ctermfg=15	   ctermbg=35	
hi Search       cterm=BOLD     ctermbg=11	  ctermfg=19	
hi VertSplit    cterm=NONE     ctermfg=15	   ctermbg=241	
hi Directory    cterm=NONE     ctermfg=10	   ctermbg=233	
hi WarningMsg   cterm=STANDOUT ctermfg=20	 ctermbg=11	
hi Error        cterm=NONE     ctermfg=15	   ctermbg=9	
hi Cursor                    ctermfg=15	   ctermbg=47	
hi LineNr       cterm=NONE     ctermfg=252	 ctermbg=237	
hi ModeMsg      cterm=NONE     ctermfg=21	    ctermbg=15	
hi Question     cterm=NONE     ctermfg=84	 ctermbg=233	
