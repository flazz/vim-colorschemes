hi clear
syntax reset
let g:colors_name = "PistachioWarrior"
if &background == "dark"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi Comment gui=NONE guifg=#969696 guibg=NONE
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=NONE guifg=#707070 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLine gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
    hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
    hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
    hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
    hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#fff0f0
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#e3e3e3
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Normal gui=NONE guifg=#000000 guibg=#ffffff
    hi Number gui=NONE guifg=#707070 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
    hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
    hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
    hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#ededed
    hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Special gui=NONE guifg=#707070 guibg=NONE
    hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=NONE guifg=#4a4a4a guibg=NONE
    hi StatusLine gui=NONE guifg=#262626 guibg=#ededed
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#ededed
    hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
    hi String gui=NONE guifg=#707070 guibg=NONE
    hi TabLine gui=NONE guifg=#969696 guibg=#ededed
    hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
    hi TabLineSel gui=NONE guifg=#262626 guibg=#ededed
    hi Title gui=NONE guifg=#707070 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#e3e3e3
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
elseif &background == "dark"
    hi Boolean gui=NONE guifg=#808080 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a
    hi Comment gui=NONE guifg=#5c4c4f guibg=NONE
    hi Conceal gui=NONE guifg=#808080 guibg=NONE
    hi Conditional gui=NONE guifg=#e39663 guibg=NONE
    hi Constant gui=NONE guifg=#808080 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#1a1a1a
    hi CursorLine gui=NONE guifg=NONE guibg=#1a1a1a
    hi CursorLineNr gui=NONE guifg=#707070 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#0c220c
    hi DiffChange gui=NONE guifg=NONE guibg=#1a1a1a
    hi DiffDelete gui=NONE guifg=NONE guibg=#220c0c
    hi DiffText gui=NONE guifg=NONE guibg=#333333
    hi Directory gui=NONE guifg=#8f8f8f guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#220c0c
    hi ErrorMsg gui=NONE guifg=NONE guibg=#220c0c
    hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
    hi Folded gui=NONE guifg=#707070 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#333333
    hi LineNr gui=NONE guifg=#645355 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#333333
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#616161 guibg=NONE
    hi Normal gui=NONE guifg=#aa5a4f guibg=#281f1f
    hi Number gui=NONE guifg=#788763 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#1a1a1a
    hi PmenuSbar gui=NONE guifg=NONE guibg=#262626
    hi PmenuSel gui=NONE guifg=NONE guibg=#333333
    hi PmenuThumb gui=NONE guifg=NONE guibg=#424242
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#262626
    hi SignColumn gui=NONE guifg=#616161 guibg=NONE
    hi Special gui=NONE guifg=#6d9c96 guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#220c0c
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#0c220c
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
    hi Statement gui=NONE guifg=#7e7d62 guibg=NONE
    hi StatusLine gui=NONE guifg=#e1d8a3 guibg=#262626
    hi StatusLineNC gui=NONE guifg=#707070 guibg=#262626
    hi StorageClass gui=NONE guifg=#aabe89 guibg=NONE
    hi String gui=NONE guifg=#ede19b guibg=NONE
    hi TabLine gui=NONE guifg=#707070 guibg=#262626
    hi TabLineFill gui=NONE guifg=NONE guibg=#262626
    hi TabLineSel gui=NONE guifg=#9e9e9e guibg=#262626
    hi Title gui=NONE guifg=#808080 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#d3b992 guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#333333 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#333333
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#220c0c
    hi WildMenu gui=NONE guifg=NONE guibg=#525252
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
endif
