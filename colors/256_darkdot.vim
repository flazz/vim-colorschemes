" NOTE: this is not the original file! converted for use with xterm-256
" Vim color file
" Maintainer:	David Lazar <david#c7.campus.utcluj.ro>
" Last Change:	Thu May 20 16:27:13 EEST 2004
" Version:	2.2
" URL:		http://www.c7obs.net/~david/stuff/darkdot.vim
" 
" This colorscheme script was created using Hans Fugal's colorscheme template

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="256_darkdot"

hi Normal	
hi Cursor	
hi link CursorIM Cursor
hi Directory								ctermfg=12	
hi DiffAdd					ctermbg=18		ctermfg=11	
hi DiffDelete				ctermbg=0		ctermfg=238	
hi DiffChange						ctermbg=0		ctermfg=15	
hi DiffText					ctermbg=0		ctermfg=124	
hi ErrorMsg					ctermbg=88		ctermfg=15	
hi Folded				ctermbg=0		ctermfg=18	
hi link FoldColumn Folded
hi IncSearch					ctermbg=0		ctermfg=251	
hi LineNr						ctermbg=238		ctermfg=11	
hi ModeMsg								ctermfg=15	cterm=bold
hi MoreMsg								ctermfg=83	
hi NonText								ctermfg=12	
hi Question								ctermfg=11	
hi Search					ctermfg=10	
hi SpecialKey								ctermfg=12	
hi StatusLine	 		cterm=none	ctermbg=37		ctermfg=15	
hi StatusLineNC	 			cterm=none	ctermbg=250		ctermfg=0	
hi link VertSplit StatusLineNC			
hi Title								ctermfg=15	
hi Visual	 			cterm=none	ctermbg=250		ctermfg=0	
hi link VisualNOS Visual
hi WarningMsg								ctermfg=11	
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment				ctermfg=12	
hi Constant			ctermfg=37	
hi Identifier 				ctermfg=15	
hi Statement 				ctermfg=87	
hi PreProc			ctermfg=37	
hi Type					ctermfg=15	cterm=bold
hi Underlined				ctermfg=12	
hi Ignore			ctermfg=238	
hi Error						ctermbg=0		ctermfg=124	
hi Todo							ctermbg=124		ctermfg=11	

hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Conditional	Statement
hi link Label		Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Repeat		Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special
hi link FoldColumn	Folded
