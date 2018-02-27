" NOTE: this is not the original file! converted for use with xterm-256
" Vim color file
" Maintainer:	Glenn T. Norton <gtnorton@adaryn.com>
" Last Change:	2003-04-11

" adaryn - A color scheme named after my daughter, Adaryn. (A-da-rin)
" I like deep, sharp colors and this scheme is inspired by 
" Bohdan Vlasyuk's darkblue.
" The cterm background is black since the dark blue was just too light.
" Also the cterm colors are very close to an old Borland C++ color setup.

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "256_adaryn"

hi Normal   ctermfg=15	 ctermbg=17	  
hi ErrorMsg ctermfg=15	 ctermbg=33		 
hi Visual   ctermfg=105	 cterm=reverse   

hi VisualNOS ctermfg=105	 cterm=reverse,underline   

hi Todo ctermfg=166	 ctermbg=26	 

hi Search ctermfg=123	 ctermbg=26		   

hi IncSearch    ctermfg=159	 ctermbg=26	  

hi SpecialKey   ctermfg=14	 
hi Directory    ctermfg=14	 
hi Title	ctermfg=150	 cterm=none  
hi WarningMsg	ctermfg=9	 
hi WildMenu	ctermfg=11	 ctermbg=0	    
hi ModeMsg	ctermfg=44	 
hi Question	ctermfg=10	 cterm=none  
hi NonText	ctermfg=27	 

hi StatusLine   ctermfg=21	 ctermbg=248	 cterm=none    

hi StatusLineNC ctermfg=0	 ctermbg=248	 cterm=none    

hi VertSplit ctermfg=0	 ctermbg=248	 cterm=none    

hi Folded   ctermfg=244	 ctermbg=17		   

hi FoldColumn   ctermfg=244	 ctermbg=17	    

hi LineNr   ctermfg=118	    

hi DiffAdd  ctermbg=18	   
hi DiffChange   ctermbg=90	  
hi DiffDelete	  cterm=bold ctermfg=21	 ctermbg=30	
hi DiffText	  cterm=bold ctermbg=9	

hi Cursor	ctermfg=233	 ctermbg=215	  
hi lCursor	ctermfg=15	 ctermbg=0	  


hi Comment	ctermfg=11	 
hi Constant	 ctermfg=10	 
hi Special	 ctermfg=15	  cterm=none
hi Identifier	 ctermfg=150	 
hi Statement	  ctermfg=142	 cterm=none
hi PreProc	 ctermfg=15	 cterm=none 
hi type		 ctermfg=152	 cterm=none 


