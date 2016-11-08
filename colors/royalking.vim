" ------------------------------------------------------------------------
" Royal King - VIM Colorscheme
" ------------------------------------------------------------------------
" Maintainer: Christoph Mueller
" Last Change: 2011/01/24 00:00
" URL: unknown
" ------------------------------------------------------------------------

let g:colors_name = "royalruby"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

" ------------------------------------------------------------------------
" General attributes
" ------------------------------------------------------------------------

hi Normal guifg=white guibg=grey10
hi NonText guifg=lightgoldenrod1
hi Cursor guifg=bg guibg=indianred3
hi CursorLine guibg=grey15
hi StatusLine guibg=grey20 guifg=white gui=bold
hi StatusLineNC guibg=grey20 guifg=white gui=none
hi LineNr guifg=grey70
hi ModeMsg guifg=lightgoldenrod1 gui=bold
hi MoreMsg guifg=lightgoldenrod1 gui=none
hi Error guifg=red guibg=bg gui=bold
hi ErrorMsg     guifg=red guibg=bg gui=bold
hi MatchParen	  guifg=gold1 guibg=bg gui=bold
hi Folded	      guifg=white guibg=grey93
hi FoldColumn	  guifg=white guibg=grey93
hi Visual		    guifg=black guibg=lightgoldenrod1
hi VertSplit    guibg=white guifg=bg gui=reverse

hi Comment guifg=lightgreen
hi Keyword guifg=lightgoldenrod1 gui=bold
hi Statement guifg=lightgoldenrod1 gui=bold
hi Operator guifg=Springgreen1 
hi PreProc guifg=lightcoral gui=bold
hi Special guifg=tan3
hi Identifier guifg=slategray2

hi String guifg=navajowhite1
hi Number guifg=lightsteelblue2
hi Boolean guifg=slategray2
hi Todo guifg=springgreen1 guibg=bg gui=bold

hi! link Type Keyword
hi! link Float Number


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
hi link Delimiter Special
hi! link SpecialComment Special
hi link Debug Special

hi Pmenu        guifg=black guibg=#F3E8B3 gui=NONE
hi PmenuSel     guibg=black guifg=white gui=bold
hi PmenuSbar  guibg=#C3C6CC gui=NONE
hi PmenuThumb   guibg=#002A5C gui=reverse

hi rubyRegexp           guifg=mediumpurple
hi rubyRegexpDelimiter  guifg=mediumpurple
hi rubyRegexpSpecial    guifg=mediumpurple gui=bold
hi rubyConstant         guifg=khaki gui=none
hi rubyBlockArgument    guifg=lightsalmon

hi link rubyClass   Keyword
hi link rubyDefine  Keyword
hi link rubyModule  Keyword
hi link rubyControl Keyword
hi link rubyOperator Operator
hi link rubyStringDelimiter String
hi link rubyIdentifier Identifier
hi link rubyInstanceVariable Identifier
hi link rubyGlobalVariable Identifier
hi link rubyClassVariable Identifier
hi link rubyConstant Type
hi link rubyEscape SpecialChar
hi link rubyStringEscape SpecialChar
hi link rubySymbol Boolean
hi link rubyBeginEnd Keyword
