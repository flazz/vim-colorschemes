
" Note: Cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="soyokaze"

hi Bold gui=bold
" hi Debug
" hi Directory
" hi ErrorMsg
" hi Exception
" hi FoldColumn
" hi Folded
" hi IncSearch
" hi Italic
" hi Macro
" hi MatchParen
" hi ModeMsg
" hi MoreMsg
" hi Question
" hi Search
" hi SpecialKey
" hi TooLong
" hi Underlined
" hi Visual
" hi VisualNOS
" hi WarningMsg
" hi WildMenu
" hi Title
hi Conceal guifg=#202020
hi Cursor guifg=#ffffff gui=bold
hi NonText guifg=#666666 guibg=#333333
hi Normal guifg=#b4b4b4 guibg=#202020
hi LineNr guifg=#b4b4b4
hi SignColumn guibg=#202020
" hi SpecialKey
" hi StatusLine
" hi StatusLineNC
hi VertSplit guifg=#b4b4b4
hi ColorColumn guibg=#444444
hi CursorColumn guibg=#333333
hi CursorLine guibg=#333333
hi CursorLineNr guifg=#ffffff
hi PMenu guifg=#ffffff guibg=#444444
hi PMenuSel guifg=#ffffff guibg=#666666
" hi TabLine
" hi TabLineFill
" hi TabLineSel
" 
" " Standard syntax highlighting
hi Boolean guifg=#ff3264
" hi Character
hi Comment guifg=#666666
" hi Conditional
hi Constant guifg=#ffffff gui=bold
hi Define guifg=#ffffff
hi Delimiter guifg=#ffffff
" hi Float
hi Function guifg=#49ff89
hi Identifier guifg=#ffffff gui=bold
" hi Include
hi Keyword guifg=#49ff89
" hi Label
hi Number guifg=#ff3264
" hi Operator
hi PreProc guifg=#ffffff
" hi Repeat
hi Special guifg=#ffffff gui=bold
" hi SpecialChar
hi Statement guifg=#49ff89
" hi StorageClass
" hi String
" hi Structure
" hi Tag
" hi Todo
hi Type guifg=#49ff89
hi Typedef guifg=#49ff89
" 
" " Spelling highlighting
" hi SpellBad
" hi SpellLocal
" hi SpellCap
" hi SpellRare


"vim: sw=4
