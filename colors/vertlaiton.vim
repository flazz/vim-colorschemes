" Vim color file
" Original Maintainer:  Zaal Tonia (drzaal@gmail.com)
" Last Change:  2016-04-10
"
" Terminal colors for my Mac

set background=dark

if version > 500
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "vertLaiton"


" General colors
hi Normal			ctermfg=220		ctermbg=022		cterm=none				
hi Cursor			ctermfg=226		ctermbg=028		cterm=none				
hi Visual			ctermfg=226		ctermbg=028		cterm=none				
hi VisualNOS		ctermfg=220		ctermbg=034		cterm=none				
hi Search			ctermfg=226		ctermbg=028		cterm=none				
hi Folded			ctermfg=226		ctermbg=022		cterm=none				
hi Title			ctermfg=220		ctermbg=022		cterm=none							
hi TabLine			ctermfg=022		ctermbg=178		cterm=underline
hi StatusLine		ctermfg=226		ctermbg=022		cterm=none				
hi VertSplit		ctermfg=226		ctermbg=022		cterm=none				
hi StatusLineNC		ctermfg=214		ctermbg=022		cterm=none				
hi LineNr			ctermfg=100				
hi SpecialKey		ctermfg=227		ctermbg=022		cterm=bold				
hi WarningMsg	  	ctermfg=022		ctermbg=220		
hi ErrorMsg			ctermfg=202		ctermbg=022				
hi CursorColumn		ctermfg=220		ctermbg=034		cterm=none
hi CursorLine		ctermfg=226		ctermbg=028		cterm=none				

" Diff highlighting
"hi DiffAdd							
"hi DiffDelete				
"hi DiffText								
"hi DiffChange						

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
hi Keyword		ctermfg=112											
hi Statement	ctermfg=190							
hi Constant		ctermfg=172		cterm=bold			
hi Number		ctermfg=214											
hi PreProc		ctermfg=148											
hi Function		ctermfg=228											
hi Identifier	ctermfg=192											
hi Type			ctermfg=208		cterm=bold							
hi Special		ctermfg=228											
hi String		ctermfg=214											
hi Comment		ctermfg=106							
hi Todo			ctermfg=192		ctermbg=022		cterm=bold							


" Links
hi! link FoldColumn		Folded
hi! link NonText		LineNr

