
" Vim color file
" Maintainer:   Vladimir Vrzic <random@bsd.org.yu>
" Last Change:  28. june 2003.
" URL:          http://galeb.etf.bg.ac.yu/~random/pub/vim/ 

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="vc"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light

hi Comment		gui=NONE		guifg=SeaGreen		guibg=NONE
hi Constant		gui=NONE		guifg=#004488 		guibg=NONE
"hi Identifier	gui=NONE		guifg=Blue			guibg=NONE
hi Statement 	gui=NONE		guifg=Blue			guibg=NONE
hi PreProc		gui=NONE		guifg=Blue			guibg=NONE	
hi Type			gui=NONE		guifg=Blue			guibg=NONE
hi Special		gui=NONE		guifg=SteelBlue	guibg=NONE
"hi Underlined	
"hi Ignore		
"hi Error		
"hi Todo		

