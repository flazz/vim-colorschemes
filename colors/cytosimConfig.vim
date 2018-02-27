" Vim syntax file
" Language: Cytosim configuration file
" By Gaelle Letort, institute Curie

if exists("b:current_syntax")
  finish
endif

syn keyword actionKeyword set new run change read import delete export report mark cut repeat for end call 
syn keyword objectKeyword hand couple single fiber solid aster space simul field nucleus sphere bead bundle fake event 

syn match commandChar "[=;,]"
syn match separator "[{}()]"
syn match commentLight "%.*$"
syn match commentStrong "%%.*$"

syn match aString "\".*\""
syn match aNum "[0-9]"

syn region commentBlock start="/\*\*" end="\*/" fold 
syn region templateBlock start="\[\[" end="\]\]" 
syn region dispBlock start="display\s*=\s" end="$" contains=commandChar, separator, templateBlock, commentLight, commentStrong, aString, aNum contained
syn region oneBlock matchgroup=separator start="{" end="}" fold transparent contains=commandChar, separator, templateBlock, commentLight, commentStrong, aString, dispBlock, aNum

set background=dark
hi CursorLineNr ctermbg=0 ctermfg=94

hi actionKeyword ctermbg=0 ctermfg=12
hi objectKeyword ctermbg=0 ctermfg=72	
hi commentLight ctermfg=242
hi link commentStrong LineNr
hi Comment ctermbg=0 ctermfg=244
hi link commentBlock Comment
hi Operator ctermbg=bg ctermfg=245
hi link separator Operator
hi link commandChar Operator
hi Repeat ctermbg=bg ctermfg=31
hi link templateBlock Repeat
hi Number ctermbg=0 ctermfg=29
hi link aString Number
hi link aNum Number

let b:current_syntax = "cytosimConfig"
