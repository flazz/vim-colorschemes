set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "monoacc"


set t_ZH=[3m
set t_ZR=[23m

hi Normal ctermfg=252 ctermbg=235 cterm=NONE
hi link pythonDoctest   Normal

" Python specific

hi pythonComment ctermfg=240 ctermbg=NONE cterm=italic

hi pythonStatement ctermfg=252 ctermbg=NONE cterm=bold
hi link pythonInclude     pythonStatement
hi link pythonBuiltin     pythonStatement
hi link pythonConditional pythonStatement
hi link pythonOperator    pythonStatement
hi link pythonException   pythonStatement
hi link pythonExceptions  pythonStatement
hi link pythonRepeat      pythonStatement
hi link pythonDecorator   pythonStatement

hi pythonTodo ctermfg=105 ctermbg=None cterm=bold

hi pythonFunction ctermfg=105 ctermbg=NONE cterm=NONE
hi link pythonTodo      pythonFunction
hi link pythonEscape    pythonFunction
hi link pythonNumber    pythonFunction

hi pythonSpaceError ctermfg=105 ctermbg=NONE cterm=NONE

hi pythonString ctermfg=248 ctermbg=NONE cterm=italic
hi link pythonRawString pythonString

" Syntastic

hi SyntasticError ctermfg=NONE ctermbg=NONE cterm=underline
hi SyntasticWarning ctermfg=NONE ctermbg=NONE cterm=underline
hi SyntasticErrorSign ctermfg=226 ctermbg=NONE cterm=NONE
hi SyntasticWarningSign ctermfg=240 ctermbg=NONE cterm=NONE

" Vim

hi ColorColumn ctermfg=None ctermbg=236 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
hi Folded ctermfg=248 ctermbg=237 cterm=italic
hi SpecialKey ctermfg=237 ctermbg=NONE cterm=NONE
hi NonText ctermfg=237 ctermbg=NONE cterm=NONE
hi VertSplit ctermfg=234 ctermbg=234 cterm=NONE
hi SignColumn ctermfg=234 ctermbg=235 cterm=NONE
hi MatchParen ctermfg=NONE ctermbg=105 cterm=NONE
hi Search ctermfg=226 ctermbg=NONE cterm=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE cterm=underline
hi Visual ctermfg=NONE ctermbg=233 cterm=NONE
hi LineNr ctermfg=240 ctermbg=NONE cterm=italic
hi CursorLineNR ctermfg=240 ctermbg=236 cterm=italic
hi Pmenu ctermfg=NONE ctermbg=234 cterm=NONE
hi PmenuSel ctermfg=234 ctermbg=105 cterm=NONE
