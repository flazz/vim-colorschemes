" Dark colorscheme for vim
" Author: Martin Lundberg
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name="darth"

" Default colors {{{1
hi Normal guifg=#CCCCCC guibg=black gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE

" Syntax groups {{{1
hi Comment ctermfg=darkgray ctermbg=NONE cterm=italic
hi Constant ctermfg=150 ctermbg=NONE cterm=italic
  hi Number ctermfg=175 ctermbg=NONE cterm=NONE
  hi Boolean ctermfg=175 ctermbg=NONE cterm=NONE
hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE
hi Statement ctermfg=153 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=140 ctermbg=NONE cterm=NONE
hi Type ctermfg=175 ctermbg=NONE cterm=NONE
hi Special ctermfg=221 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi Ignore ctermfg=darkgray ctermbg=NONE cterm=NONE
hi Error ctermfg=white ctermbg=darkred cterm=NONE
hi Todo ctermfg=221 ctermbg=NONE cterm=NONE

" Sub groups

" UI {{{1
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
hi ErrorMsg guifg=#FFFFFF guibg=#FF0000 gui=NONE ctermfg=white ctermbg=darkred cterm=NONE
hi VertSplit guifg=#666666 guibg=#666666 gui=NONE ctermfg=darkgray ctermbg=darkgray cterm=NONE
hi Folded guifg=#000000 guibg=#666666 gui=NONE ctermfg=240 ctermbg=234 cterm=NONE
hi FoldColumn guifg=#222222 guibg=#666666 gui=NONE ctermfg=16 ctermbg=darkgray cterm=NONE
hi SignColumn guifg=#222222 guibg=#666666 gui=NONE ctermfg=16 ctermbg=234 cterm=NONE
hi IncSearch guifg=#111111 guibg=#FFFFAF gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
hi LineNr guifg=#333333 guibg=#BBBBBB gui=NONE ctermfg=243 ctermbg=234 cterm=NONE
hi MatchParen guifg=#FFFFAF guibg=NONE gui=NONE ctermfg=220 ctermbg=16 cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi MoreMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi NonText guifg=#555555 guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi Pmenu guifg=#111111 guibg=#999999 gui=NONE ctermfg=16 ctermbg=gray cterm=NONE
hi PmenuSel guifg=#111111 guibg=#FFFFAF gui=NONE ctermfg=16 ctermbg=220 cterm=NONE
hi PmenuSbar guifg=#cccccc guibg=#cccccc gui=NONE ctermfg=lightgray ctermbg=lightgray cterm=NONE
hi PmenuThumb guifg=#777777 guibg=#777777 gui=NONE ctermfg=gray ctermbg=gray cterm=NONE
hi Question guifg=#BCBCBC guibg=#262626 gui=NONE ctermfg=lightgray ctermbg=NONE cterm=NONE
hi Search guifg=#262626 guibg=#FFFFB6 gui=NONE ctermfg=16 ctermbg=220 cterm=NONE
hi SpecialKey guifg=#555555 guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi SpellBad guifg=#FF0000 guibg=NONE gui=underline ctermfg=darkred ctermbg=NONE cterm=NONE
hi SpellCap guifg=#FF0000 guibg=NONE gui=NONE ctermfg=darkred ctermbg=NONE cterm=NONE
hi SpellLocal guifg=#FCB1FF guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
hi SpellRare guifg=#FCB1FF guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
hi StatusLine guifg=#FFFFFF guibg=#268bd2 gui=NONE ctermfg=255 ctermbg=darkblue cterm=NONE
hi StatusLineNC guifg=#222222 guibg=#666666 gui=NONE ctermfg=234 ctermbg=244 cterm=NONE
hi TabLine guifg=#555555 guibg=#AAAAAA gui=NONE ctermfg=NONE ctermbg=NONE cterm=reverse
hi TabLineFill guifg=#555555 guibg=#AAAAAA gui=NONE ctermfg=NONE ctermbg=NONE cterm=reverse
hi TabLineSel guifg=#111111 guibg=#DDDDDD gui=bold ctermfg=NONE ctermbg=NONE cterm=NONE
hi Title guifg=#C6C5FE guibg=NONE gui=NONE ctermfg=darkcyan guibg=NONE gui=NONE
hi Visual guifg=#555555 guibg=#EEEEEE gui=NONE ctermfg=lightgray guibg=darkgray gui=NONE
hi WarningMsg guifg=#FFFFFF guibg=#8B0000 gui=NONE ctermfg=16 ctermbg=214 cterm=NONE
hi WildMenu guifg=#FFFFB6 guibg=NONE gui=NONE ctermfg=16 ctermbg=220 cterm=NONE

" Vim {{{1
hi diffRemoved guifg=#FF0000 guibg=NONE gui=NONE ctermfg=darkred ctermbg=NONE cterm=NONE
hi diffAdded guifg=#008000 guibg=NONE gui=NONE ctermfg=darkgreen ctermbg=NONE cterm=NONE
hi link qfFileName Statement

" Vimscript {{{1
hi link vimGroupName Type
hi link vimFuncName PreProc
hi link vimParenSep Normal
hi link vimHiGuiFgBg Normal

" Help {{{1
hi link helpHyperTextJump Type

" CSS {{{1
hi link cssClassName Normal
hi link cssIdentifier Normal
hi link cssTagName Normal
hi link cssVendor Statement

" HTML {{{1
hi link htmlEndTag Normal
hi link htmlH1 Normal
hi link htmlItalic Special
hi link javaScript Normal
hi link htmlSpecialTagName Normal
hi link htmlTagName Normal

" JavaScript {{{1
hi link EcmaScriptTemplateStrings Statement
hi link javaScriptAsyncAwaitKeyword Statement
hi link javaScriptFunction Statement
hi link javaScriptGlobal Special
hi link javaScriptIdentifier Statement
hi link javaScriptMember Normal
hi link javaScriptNodeKeyword Statement
hi link javaScriptNull Number
hi link javaScriptPlaceholder Special
hi link jsFunction Statement
hi link jsGlobalNodeObjects Special
hi link jsGlobalObjects Special
" highlight jsGlobalNodeObjects ctermfg=221 ctermbg=NONE cterm=none
" highlight jsGlobalObjects ctermfg=221 ctermbg=NONE cterm=none
" highlight jsThis ctermfg=221 ctermbg=NONE cterm=none
hi link jsStorageClass Statement
hi link jsTernaryIfOperator Normal
hi link jsArrowFunction Normal
hi link jsOperator Normal
hi link jsImport Special
hi link jsFrom Special
hi link jsThis Special

" Mail {{{1
hi link mailUrl Statement

" Markdown {{{1
hi markdownHeadingDelimiter ctermfg=NONE ctermbg=none cterm=none
" hi markdownH1 ctermfg=150 ctermbg=none cterm=bold,
hi link markdownH1 Constant
hi link markdownH2 Statement
hi link markdownH3 PreProc
hi link markdownListMarker Special
hi link markdownItalic Special
hi markdownItalic ctermfg=none ctermbg=none cterm=italic

" Netrw {{{1
hi link NetrwDir Statement

" PHP {{{1
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
hi link phpClasses Type

" Plugins {{{1
highlight ExtraWhitespace guibg=#ff0000 ctermbg=red
highlight NifflerCursorLine guifg=#000000 guibg=#FFD700 ctermfg=16 ctermbg=220

" SH {{{1
hi link shQuote Constant
hi link shStatement Normal
hi link shCommandSub Normal

" vim: fdm=marker
