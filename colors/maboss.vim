" Vim syntax file
" Language: MaBoSS nodes file
" By Gaelle Letort, institute Curie

if exists("b:current_syntax")
  finish
endif

syn keyword NodeKeyword Node istate node is_internal
syn keyword rateKeyword logic rate_up rate_down 
syn keyword boolKeyword TRUE FALSE true false

syn match numberMB "[0-9]+" 
syn match commandChar "[=;,]"
syn match booleanChar "[&|!?:]"
syn match separator "[{}()]"
syn match commentLight "//.*$" 
syn match atlogic "[@$]"

syn region commentBlock start="/\*\*" end="\*/" fold 
syn region oneBlock matchgroup=separator start="{" end="}" fold transparent contains=commandChar, separator, rateKeyword, booleanChar, atlogic, commentLight

hi Ignore ctermfg=242

hi link NodeKeyword Special
hi link rateKeyword Question	
hi link atlogic Question	
hi link commentLight Ignore
hi link commentBlock Comment
hi link separator Keyword
hi link commandChar Keyword
hi link booleanChar Question
hi link boolKeyword Constant

let b:current_syntax = "maboss"
