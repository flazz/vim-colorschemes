" Name: xcodedefault
" Purpose: xcode default colorscheme to cterm
" Maintainer: Christian Ohlin Jansson (john.christian.ohlin@gmail.com)
" 
" @version: 1.0.0

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xcode default"
  
" Vim >= 7.0 specific colours
if version >= 700
  hi CursorLine   cterm=NONE ctermfg=NONE ctermbg=NONE
  hi CursorColumn ctermbg=236
  hi MatchParen   cterm=NONE  ctermfg=016 ctermbg=226
  hi Pmenu        ctermfg=016 ctermbg=255
  hi PmenuSel     ctermfg=020 ctermbg=253
endif

" General colours
hi Cursor       ctermfg=016 ctermbg=016
hi Normal       ctermfg=016 ctermbg=231
hi NonText      ctermfg=231 ctermbg=231
hi LineNr       ctermfg=241 ctermbg=NONE
hi StatusLine   ctermfg=249 ctermbg=238 
hi StatusLineNC ctermfg=241 ctermbg=249
hi VertSplit    ctermfg=255 ctermbg=255       " Vertical Split Line
hi Folded       ctermbg=238 ctermfg=248
hi FoldColumn   cterm=NONE ctermbg=NONE
hi Title        ctermfg=016 
hi Visual       ctermbg=187
hi SpecialKey   ctermfg=126 ctermbg=153
hi Error        ctermfg=231 ctermbg=124

" Syntax highlighting
hi Comment      ctermfg=28
hi Todo         ctermfg=9 
hi Constant     ctermfg=126
hi String       ctermfg=160
hi Identifier   ctermfg=126
hi Function     ctermfg=016
hi Type         ctermfg=055
hi Statement    ctermfg=126
hi Keyword      ctermfg=126
hi PreProc      ctermfg=030
hi Number       ctermfg=20
hi Special      ctermfg=126
hi Search       cterm=underline ctermbg=228 ctermfg=236
hi Delimiter    ctermfg=126
hi parens       ctermfg=016

" Python
hi pythonBuiltin            ctermfg=126
hi pythonBuiltinFunc        ctermfg=126
hi pythonBuiltinObj         ctermfg=030
hi pythonCustomFunc         ctermfg=126
hi pythonDecorator          ctermfg=055
hi pythonInclude            ctermfg=126  " Python imports, etc
hi pythonInstances          ctermfg=126  
hi pythonStatement          ctermfg=126
hi pythonConditional        ctermfg=126
hi pythonRepeat	            ctermfg=126
hi pythonOperator           ctermfg=126
hi pythonException          ctermfg=126
hi pythonBuiltinConstant    ctermfg=126
hi pythonBoolean            ctermfg=126
hi pythonAttribute          ctermfg=130
hi pythonString             ctermfg=021
hi pythonQuotes             ctermfg=021
hi docstring                ctermfg=160


autocmd Filetype python call SetColors()
function SetColors()
    syn keyword pythonBoolean     True False
    syn keyword pythonStatement   as nonlocal None
    syn keyword pythonInstances   self cls
    syn match pythonStatement /,/
    syn match docstring /"""\_.\{-}"""/
endfunction

" Javascript
hi javaScriptReserved ctermfg=126
hi javaScriptNumber ctermfg=020
hi javaScriptFuncArg ctermfg=055
hi javascriptBlock ctermfg=030
hi javascriptIdentifier ctermfg=126
hi javascriptBOMHistoryProp ctermfg=016
hi javascriptObjectLabel ctermfg=016


" HTML
hi htmlArg ctermfg=030
hi htmlString ctermfg=020
hi htmlComment ctermfg=28
hi link htmlCommentPart htmlComment
hi htmlTag ctermfg=244
hi link htmlTagN htmlTag
hi link htmlEndTag htmlTag

" NerdTree
hi NerdTreeDirSlash cterm=NONE ctermfg=231 ctermbg=231
hi NerdTreeCWD cterm=NONE ctermfg=241 ctermbg=NONE

