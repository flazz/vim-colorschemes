" --------------------------------------------------------------------------------
" Royal Tango - GVIM Colorscheme
" --------------------------------------------------------------------------------
" Maintainer: Christoph Mueller
" Last Change: 2011/01/04 00:00
" URL: unknown
" --------------------------------------------------------------------------------

let g:colors_name = "royaltango"

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif

" --------------------------------------------------------------------------------
" Generell attributes
" --------------------------------------------------------------------------------

hi Normal       guifg=black guibg=grey99
hi Cursor       guifg=bg guibg=green
hi CursorLine   guibg=grey95
hi StatusLine   guibg=#445588 guifg=white gui=bold
hi StatusLineNC guibg=grey99 guifg=#445588
hi ModeMsg      guifg=#445588 gui=bold
hi MoreMsg      guifg=SlateBlue gui=none
hi LineNr       guifg=grey40
hi ErrorMsg     guifg=white guibg=red gui=bold
hi MatchParen	  guifg=#445588 guibg=bg gui=bold
hi Folded	      guifg=black guibg=grey93
hi FoldColumn	  guifg=black guibg=grey93
hi Visual		    gui=reverse
hi VertSplit    guibg=#445588 guifg=bg gui=reverse

hi Pmenu        guibg=#F3E8B3 gui=NONE
hi PmenuSel     guibg=black guifg=white gui=bold
hi PmenuSbar    guibg=#C3C6CC gui=NONE
hi PmenuThumb   guibg=#002A5C gui=reverse


" --------------------------------------------------------------------------------
" Languages attributes
" --------------------------------------------------------------------------------

hi Comment      guifg=#999988
hi Keyword      guifg=#445588 gui=bold
hi Statement    guifg=#204070 gui=bold
hi PreProc      guifg=firebrick3 gui=bold
hi Identifier   guifg=SlateGrey
hi Special      guifg=DarkViolet
hi SpecialChar  guifg=goldenrod1 gui=bold
hi Operator     guifg=black gui=bold
hi Exception    guifg=black gui=bold

hi String       guifg=sienna2
hi Number       guifg=SpringGreen3
hi Constant     guifg=DarkViolet
hi Boolean      guifg=SpringGreen3 gui=bold
hi Label        guifg=SlateGrey gui=bold

hi! link Type   Keyword
hi! link Float  Number

hi link IncSearch		Visual
hi link Function        Identifier
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link Conditional		Statement
hi link Repeat			Statement
hi link Keyword			Statement
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link Delimiter		Special
hi! link SpecialComment	Special
hi link Debug			Special

" --------------------------------------------------------------------------------
" Ruby attributes
" --------------------------------------------------------------------------------
hi rubyRegexp           guifg=DarkViolet
hi rubyRegexpDelimiter  guifg=DarkViolet
hi rubyRegexpSpecial    guifg=DarkViolet gui=bold
hi rubyControl          guifg=black gui=bold
hi rubyStringDelimiter  guifg=sienna2   
hi rubyConstant         guifg=black gui=none
hi rubyBlockArgument    guifg=Slategrey

hi link rubyClass   Keyword
hi link rubyDefine  Keyword
hi link rubyModule  Keyword
hi link rubyOperator Operator
hi link rubyIdentifier Identifier
hi link rubyInstanceVariable Identifier
hi link rubyGlobalVariable Identifier
hi link rubyClassVariable Identifier
hi link rubyConstant Type
hi link rubyEscape SpecialChar
hi link rubyStringEscape SpecialChar
hi link rubySymbol Boolean
hi link rubyBeginEnd Keyword
