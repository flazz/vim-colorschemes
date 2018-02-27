" NOTE: this is not the original file! converted for use with xterm-256
" Vim color file (automation.vim)                                            
" Maintainer:	Ken McConnell <nacer@yahoo.com>                                
" Last Change:	2004 Jan 15                                                  
"                                                                            
" This color scheme uses a light grey background.  It was created to simulate
" the look of an IDE.  It is named after the MFP Automation Team at HP Boise.
"                                                                            

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "automation"

hi Normal   ctermfg=0	 ctermbg=15	

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg 		term=standout 	  ctermbg=9	 ctermfg=15	
hi IncSearch		term=reverse 		cterm=bold cterm=bold
hi ModeMsg 			term=bold 			cterm=bold cterm=bold
hi StatusLine 	term=bold 			cterm=bold cterm=bold
hi StatusLineNC term=bold 			cterm=bold cterm=bold
hi VertSplit 		term=bold 			cterm=bold cterm=bold
hi Visual 			term=bold 			cterm=bold cterm=bold ctermfg=250	 
hi VisualNOS 		term=underline,bold cterm=underline,bold cterm=underline,bold
hi DiffText 		term=reverse cterm=bold  cterm=bold ctermbg=9	
hi Cursor 			ctermbg=0	 ctermfg=0	
hi lCursor 			ctermbg=14	 ctermfg=0	
hi Directory 		term=bold  ctermfg=18	
hi LineNr 			term=underline  ctermfg=248	 ctermbg=252	
hi MoreMsg 			term=bold  cterm=bold ctermfg=29	
hi NonText 			term=bold  cterm=bold ctermfg=22	 ctermbg=252	
hi Question 		term=standout  cterm=bold ctermfg=10	
hi Search 			term=reverse   ctermbg=11	 ctermfg=0	
hi SpecialKey 	term=bold  ctermfg=18	
hi Title 				term=bold  cterm=bold ctermfg=18	
hi WarningMsg 	term=standout  ctermfg=9	
hi WildMenu			term=standout   ctermbg=11	 ctermfg=0	
hi Folded 			term=standout   ctermbg=252	 ctermfg=18	
hi FoldColumn 	term=standout   ctermbg=250	 ctermfg=18	
hi DiffAdd 			term=bold  ctermbg=18	
hi DiffChange 	term=bold  ctermbg=90	
hi DiffDelete 	term=bold   cterm=bold ctermfg=21	 ctermbg=30	
hi Comment			ctermfg=21	 ctermbg=7	 
hi String				ctermfg=22	 
hi Statement		ctermfg=18	 
hi Label 				cterm=bold ctermfg=18	
" Groups for syntax highlighting
hi Constant 		term=underline  ctermfg=18	 ctermbg=15	
hi Special 			term=bold  ctermfg=18	 ctermbg=15	
if &t_Co > 8
  hi Statement 	term=bold cterm=bold  ctermfg=18	 
endif
hi Ignore 			 ctermfg=7	

" vim: sw=2
