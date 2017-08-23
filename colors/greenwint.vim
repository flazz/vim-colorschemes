"
" Name: greenwint
" Version: 0.3.1
" Maintainer: https://www.github.com/preocanin
" Licence: The MIT Licence (MIT)
" 
" Description:
"   Vim colorscheme with a nice green touch.
"
"   Based on: https://github.com/smurfd/winterd
"

set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "greenwint"

" --- Normal --- "
hi Normal  guibg=#424242 guifg=#F3F3F3 ctermbg=238 ctermfg=255
hi NonText guibg=#191919 guifg=#CCCCCC ctermbg=234 ctermfg=252
hi Visual  guibg=#BBFFDD guifg=#3F3F3F ctermbg=158 ctermfg=59
hi LineNr  guibg=#262626 guifg=#616161 ctermbg=235 ctermfg=59

hi Conceal guibg=#F3F3F3 guifg=#50E89C ctermbg=255 ctermfg=79 gui=none cterm=none

hi Cursor      guibg=#50E89C guifg=#3F3F3F ctermbg=79 ctermfg=59
hi ColorColumn guibg=#BBFFBB guifg=#3F3F3F ctermbg=157 ctermfg=59 gui=bold cterm=bold 
hi SignColumn  guibg=#262626 guifg=#F3F3F3 ctermbg=235 ctermfg=255

hi StatusLine guibg=#207050 guifg=#D8D8D8 ctermbg=29 ctermfg=188 gui=italic cterm=italic
hi TabLineSel guibg=#207050 guifg=#D8D8D8 ctermbg=29 ctermfg=188 

hi VertSplit    guibg=#D8D8D8 guifg=#207050 ctermbg=188 ctermfg=23
hi StatusLineNC guibg=#191919 guifg=#6F6F6F ctermbg=234 ctermfg=59

hi WildMenu    guibg=#BBFFDD guifg=#0C0C0C ctermbg=158 ctermfg=16

hi TabLine     guibg=#191919 guifg=#6F6F6F ctermbg=234 ctermfg=59 gui=none cterm=none
hi TabLineFill guifg=#191919 ctermfg=234

hi DiffDelete guibg=#FFCCBB guifg=#3F3F3F ctermbg=223 ctermfg=59
hi DiffAdd    guibg=#BBFFBB guifg=#3F3F3F ctermbg=157 ctermfg=59

hi SpellBad   guibg=#FFCCBB guifg=#3F3F3F ctermbg=223 ctermfg=59 gui=italic cterm=italic 
hi SpellLocal guibg=#BBFFBB guifg=#3F3F3F ctermbg=157 ctermfg=59 gui=italic cterm=italic 

hi link WarningMsg DiffDelete
hi ErrorMsg guibg=#FF5B4C guifg=#F2F2F2 ctermbg=203 ctermfg=231

hi link Error ErrorMsg 

hi Title guifg=#BBFFBB ctermfg=157
hi link Folded Title

hi ModeMsg   guifg=#BBFFDD ctermfg=158 gui=none cterm=none
hi Directory guifg=#6BEE6B ctermfg=83 gui=none cterm=none

if version >= 700
    hi Pmenu        guibg=#BBFFDD guifg=#3F3F3F ctermbg=158 ctermfg=59
    hi PmenuSel     guibg=#35EF9F guifg=#0C0C0C ctermbg=85 ctermfg=232
    hi PmenuSbar    guibg=#141414               ctermbg=233
    hi PmenuThumb   guibg=#2D2D2D               ctermbg=236
    hi Search       guibg=#BBFFDD guifg=#000000 ctermbg=158 ctermfg=16 gui=bold cterm=bold
    hi IncSearch    guibg=#000000 guifg=#BBFFDD ctermbg=16 ctermfg=158 gui=bold cterm=bold
    hi CursorLine   guibg=#303030               ctermbg=236 gui=none cterm=none
    hi CursorLineNr guibg=#121212 guifg=#50E89C ctermbg=233 ctermfg=79 gui=bold cterm=bold
    hi CursorColumn guibg=#2B2B2B ctermbg=236
endif

hi Operator      guifg=#F3F3F3               ctermfg=255 gui=none cterm=none
hi Identifier    guifg=#F3F3F3               ctermfg=255 gui=bold cterm=bold
hi Comment       guifg=#7F7F7F               ctermfg=244 gui=italic cterm=italic 
hi Todo          guifg=#207050 guibg=#F3F3F3 ctermfg=23 ctermbg=255 gui=bold cterm=bold
hi Statement     guifg=#0C0C0C               ctermfg=232 gui=none
hi Type          guifg=#50E89C               ctermfg=79 gui=none cterm=none
hi Constant      guifg=#50E89C               ctermfg=79 gui=italic cterm=italic
hi Conditional   guifg=#0C0C0C               ctermfg=232 gui=bold cterm=bold
hi Number        guifg=#6BEE6B               ctermfg=83 gui=none cterm=none
hi String        guifg=#6BEE6B               ctermfg=83 gui=italic cterm=italic 
hi Delimiter     guifg=#BBFFDD               ctermfg=158 gui=bold cterm=bold
hi PreProc       guifg=#BBFFDD               ctermfg=158 gui=italic cterm=italic
hi Special       guifg=#0C0C0C               ctermfg=232 gui=none cterm=none
hi Keyword       guifg=#F3F3F3               ctermfg=255 gui=bold cterm=bold

hi link Function        Normal
hi link Character       Constant
hi link Boolean         Constant 
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         Normal
hi link Define          Include 
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special 
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" --- Haskell --- 
hi link hsVarSym Type 
hi hsImport      guifg=#BBFFDD ctermfg=158 
hi link hsImportMod hsImport
hi ConId         guifg=#F3F3F3 ctermfg=255 gui=bold cterm=bold
hi link hsVarSym Type 
hi hsDelimiter   guifg=#BBFFDD ctermfg=158
hi hsConSym      guifg=#0C0C0C ctermfg=232 gui=bold cterm=bold
hi haskellLambda guifg=#50E89C ctermfg=79  gui=bold cterm=bold

" --- Python ---
hi pythonInclude guifg=#BBFFDD ctermfg=158

" --- Verilog ---
hi link verilogOperator Type
hi link verilogConstant PreProc
