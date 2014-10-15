" vim: set expandtab:
"
" Vim color file
"
" A dark theme.
"
" Author: Martin Lundberg
"
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name="darth"

" Default colors
hi Normal guifg=#999999 guibg=black gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE

" Top groups
hi Comment guifg=#7C7C7C guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi Constant guifg=#99CC99 guibg=NONE gui=NONE ctermfg=green ctermbg=NONE cterm=NONE
hi Identifier guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Statement guifg=#A5D6FB guibg=NONE gui=NONE ctermfg=darkblue ctermbg=NONE cterm=NONE
hi PreProc guifg=#A5D6FB guibg=NONE gui=NONE ctermfg=darkblue ctermbg=NONE cterm=NONE
hi Type guifg=#C6C5FE guibg=NONE gui=NONE ctermfg=darkcyan ctermbg=NONE cterm=NONE
hi Special guifg=#FFFFB6 guibg=NONE gui=NONE ctermfg=yellow ctermbg=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi Error guifg=#FFFFFF guibg=#FF0000 gui=NONE ctermfg=white ctermbg=darkred cterm=NONE
hi Todo guifg=#FFFFB6 guibg=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE

" Sub groups
hi Boolean guifg=#FCB1FF guibg=NONE gui=NONE ctermfg=magenta ctermbg=NONE cterm=NONE
hi Number guifg=#FCB1FF guibg=NONE gui=NONE ctermfg=magenta ctermbg=NONE cterm=NONE

" UI
hi ColorColumn guifg=NONE guibg=#222222 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#555555 guibg=#EEEEEE gui=NONE ctermfg=black ctermbg=white cterm=standout
hi CursorColumn guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=black cterm=NONE
hi CursorLine guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=black cterm=NONE
hi CursorLineNr guifg=NONE guibg=#121212 gui=NONE ctermfg=234 ctermbg=243 cterm=NONE
hi Directory guifg=#A5D6FB guibg=NONE gui=NONE ctermfg=darkblue ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#000000 guibg=#99FF99 gui=NONE ctermfg=black ctermbg=green cterm=NONE
hi DiffChange guifg=#000000 guibg=#99FF99 gui=NONE ctermfg=black ctermbg=green cterm=NONE
hi DiffDelete guifg=#000000 guibg=#FF8888 gui=NONE ctermfg=black ctermbg=darkred cterm=NONE
hi DiffText guifg=#000000 guibg=#DDF8CC gui=NONE ctermfg=black ctermbg=darkgreen cterm=NONE
hi ErrorMsg guifg=#FFFFFF guibg=#FF0000 gui=NONE ctermfg=black ctermbg=red cterm=NONE
hi VertSplit guifg=#666666 guibg=#666666 gui=NONE ctermfg=darkgray ctermbg=darkgray cterm=NONE
hi Folded guifg=#000000 guibg=#666666 gui=NONE ctermfg=240 ctermbg=234 cterm=NONE
hi FoldColumn guifg=#222222 guibg=#666666 gui=NONE ctermfg=16 ctermbg=darkgray cterm=NONE
hi SignColumn guifg=#222222 guibg=#666666 gui=NONE ctermfg=16 ctermbg=gray cterm=NONE
hi IncSearch guifg=#111111 guibg=#FFFFAF gui=NONE ctermfg=16 ctermbg=222 cterm=NONE
hi LineNr guifg=#333333 guibg=#BBBBBB gui=NONE ctermfg=243 ctermbg=234 cterm=NONE
hi MatchParen guifg=#111111 guibg=#FFFFAF gui=NONE ctermfg=16 ctermbg=220 cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi MoreMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi NonText guifg=#555555 guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi Pmenu guifg=#111111 guibg=#999999 gui=NONE ctermfg=16 ctermbg=gray cterm=NONE
hi PmenuSel guifg=#111111 guibg=#FFFFAF gui=NONE ctermfg=16 ctermbg=220 cterm=NONE
hi PmenuSbar guifg=#cccccc guibg=#cccccc gui=NONE ctermfg=lightgray ctermbg=lightgray cterm=NONE
hi PmenuThumb guifg=#777777 guibg=#777777 gui=NONE ctermfg=gray ctermbg=gray cterm=NONE
hi Question guifg=#BCBCBC guibg=#262626 gui=NONE ctermfg=lightgray ctermbg=NONE cterm=NONE
hi Search guifg=#262626 guibg=#FFFFB6 gui=NONE ctermfg=16 ctermbg=214 cterm=NONE
hi SpecialKey guifg=#555555 guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi SpellBad guifg=#FF0000 guibg=NONE gui=underline ctermfg=darkred ctermbg=NONE cterm=NONE
hi SpellCap guifg=#FF0000 guibg=NONE gui=NONE ctermfg=darkred ctermbg=NONE cterm=NONE
hi SpellLocal guifg=#FCB1FF guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
hi SpellRare guifg=#FCB1FF guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
hi StatusLine guifg=#FFFFFF guibg=#268bd2 gui=NONE ctermfg=255 ctermbg=26 cterm=NONE
hi StatusLineNC guifg=#222222 guibg=#666666 gui=NONE ctermfg=234 ctermbg=244 cterm=NONE
hi TabLine guifg=#555555 guibg=#AAAAAA gui=NONE ctermfg=NONE ctermbg=NONE cterm=reverse
hi TabLineFill guifg=#555555 guibg=#AAAAAA gui=NONE ctermfg=NONE ctermbg=NONE cterm=reverse
hi TabLineSel guifg=#111111 guibg=#DDDDDD gui=bold ctermfg=NONE ctermbg=NONE cterm=NONE
hi Title guifg=#C6C5FE guibg=NONE gui=NONE ctermfg=darkcyan guibg=NONE gui=NONE
hi Visual guifg=#555555 guibg=#EEEEEE gui=NONE ctermfg=lightgray guibg=darkgray gui=NONE
hi WarningMsg guifg=#FFFFFF guibg=#8B0000 gui=NONE ctermfg=16 ctermbg=214 cterm=NONE
hi WildMenu guifg=#FFFFB6 guibg=NONE gui=NONE ctermfg=yellow ctermbg=NONE cterm=NONE

" Statusline
hi link User1 Error

" Sub groups
hi link StorageClass Keyword
hi link StringSpecial Special

" PHP
hi link phpBackslashSequences Number
hi link phpComparison Normal
hi link phpMemberSelector Normal
hi link phpOperator Normal
hi link phpParent Normal
hi link phpRelation Normal
hi link phpSpecialChar StringSpecial
hi link phpStorageClass Statement
hi link phpStructure Statement
hi link phpVarSelector Normal
hi link phpFunctions Type
hi link phpInclude phpFunctions
hi link phpSpecialFunction Type
hi link PhpLocalVarCheckError Comment
hi phpClasses guifg=#6c71c4 guibg=NONE gui=NONE ctermfg=36 ctermbg=NONE cterm=NONE

" JavaScript
hi link javaScriptFunction Statement
hi link javaScriptNumber Number
hi link javaScriptIdentifier Statement
hi link javaScriptNull Type
hi link javaScriptExceptions Type
hi link javaScriptSpecial StringSpecial
hi link javaScriptLabel StringSpecial

" COFFEE
"hi link coffeeDotAccess Normal
"hi link coffeeAssignOp Normal
"hi link coffeeExtendedOp Normal
hi link coffeeObjAssign Special
hi link coffeeConstant Normal
hi link coffeeParen Normal
hi link coffeeBracket Normal
hi link coffeeKeyword Keyword
hi link coffeeInterpDelim Special
hi coffeeSpecialVar guifg=#DDDDDD guibg=NONE

" CSS
hi link cssClassName Normal
hi link cssIdentifier Normal
hi link cssTagName Normal
hi link cssVendor Statement

" Sass
hi link sassClass Type
hi link sassClassChar Type

" Python
hi link pythonEscape StringSpecial
hi link pythonValues Type

" Vim
hi link vimGroupName Type
hi link vimFuncName Type
hi link vimParenSep Normal

" Help
hi link helpHyperTextJump Statement

" HTML
hi link htmlEndTag Normal
hi link htmlH1 Normal
hi link htmlItalic Special
hi link javaScript Normal
hi link htmlSpecialTagName Normal
hi link htmlTagName Normal

" Todo
hi link TodoItemAdditionalText Normal
hi link TodoItemDone Comment
hi link TodoItem Constant
hi link TodoTitle Statement

" Diff
hi diffRemoved guifg=#FF0000 guibg=NONE gui=NONE ctermfg=darkred ctermbg=NONE cterm=NONE
hi diffAdded guifg=#008000 guibg=NONE gui=NONE ctermfg=darkgreen ctermbg=NONE cterm=NONE

" Jinja
hi link jinjaTagBlock Normal

" Smarty
hi link smartyTagName Normal

" VimWiki
hi link VimwikiHeader1 Constant
hi link VimwikiHeader2 Type
hi link VimwikiHeader3 Number
hi VimwikiDelText guifg=#FF0000 guibg=NONE gui=NONE ctermfg=160 ctermbg=none cterm=NONE
hi link VimwikiItalic Special
hi link VimwikiBold Type
hi link VimwikiLink Keyword
hi link VimwikiLinkRest Special
hi link VimwikiCode Constant
