" Maintainer:   Michael Brailsford <brailsmt@yahoo.com>
" Date:			$Date: 2002/04/11 03:29:51 $ 
" Version: 		$Revision: 1.4 $

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark	
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="midnight"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light

hi Normal guifg=lightsteelblue guibg=#00006f ctermfg=14

"Toggle semicolon matching at the end of lines
nmap <silent> <leader>; :call ToggleSemicolonHighlighting()<cr>
"{{{
function! ToggleSemicolonHighlighting()
	if exists("b:semicolon")
		unlet b:semicolon
		hi semicolon guifg=NONE gui=NONE ctermfg=NONE
	else
		syn match semicolon #;$#
		hi semicolon guifg=red gui=bold ctermfg=1
		let b:semicolon = 1
	endif
endfunction
"}}}

hi Cursor guifg=bg guibg=fg ctermfg=0 ctermbg=11
"hi CursorIM	
hi Directory gui=bold

hi DiffAdd guifg=yellow guibg=darkgreen ctermbg=0
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
hi ErrorMsg	guibg=red ctermfg=1
"hi VertSplit	
hi Folded guibg=#000047 ctermbg=4 guifg=yellow ctermfg=11 gui=bold
hi FoldColumn guibg=steelblue3 ctermbg=14 guifg=darkblue ctermfg=11 gui=bold
"hi IncSearch	
hi LineNr guifg=yellow ctermfg=11
hi ModeMsg guifg=yellow gui=bold
"hi MoreMsg		
"hi NonText		
"hi Question	
hi Search guibg=yellow guifg=bg
"hi SpecialKey	
hi StatusLine guifg=steelblue1
hi StatusLineNC guifg=steelblue3
"hi Title		
hi Visual guifg=fg guibg=bg
"hi VisualNOS	
"hi WarningMsg	
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment guifg=green ctermfg=10
hi Constant	guifg=lightmagenta gui=bold ctermfg=13
hi String guifg=indianred1 ctermfg=5
hi Character guifg=violet ctermfg=5
hi Number guifg=turquoise1 ctermfg=5
"hi Identifier	
hi Statement guifg=khaki1 gui=bold ctermfg=15 cterm=underline
hi PreProc guifg=firebrick1 gui=italic ctermfg=9
hi Type	guifg=gold gui=bold ctermfg=3
"hi Special	
"hi Underlined	
"hi Ignore		
"hi Error		
hi Todo guifg=yellow guibg=blue gui=bold
