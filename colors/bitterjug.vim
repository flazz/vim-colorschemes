" Vim colorscheme test
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "bitterjug"
hi Normal     cterm=NONE ctermbg=235 ctermfg=246 
hi Statement  cterm=NONE ctermfg=248
hi Type       cterm=NONE ctermfg=250 
hi Identifier cterm=NONE ctermfg=138
hi Constant   cterm=NONE ctermfg=242
hi Comment    cterm=NONE ctermfg=66
hi Special    cterm=NONE ctermfg=109
hi PreProc    cterm=NONE ctermfg=5 
hi Title      cterm=bold ctermfg=250 
hi Error      cterm=NONE ctermbg=52 ctermfg=218 
hi Directory  cterm=NONE ctermfg=67
hi Underlined cterm=underline ctermfg=67 

"Furniture
hi VertSplit  cterm=NONE ctermbg=235 ctermfg=0
hi LineNr     cterm=NONE ctermfg=239 
hi NonText    cterm=NONE ctermfg=16
hi Visual     cterm=NONE ctermbg=238
hi CursorLine cterm=NONE ctermbg=236 
hi CursorColumn cterm=NONE ctermbg=236 
hi CursorColumn cterm=NONE ctermbg=236 
hi CursorLineNr cterm=NONE ctermbg=236 ctermfg=249
hi SignColumn   cterm=NONE ctermbg=235
hi ColorColumn  cterm=NONE ctermbg=236
hi ErrorMsg     cterm=bold ctermbg=124 ctermfg=235

"Tabs
hi TabLine ctermbg=233 ctermfg=242 cterm=NONE
hi TabLineSel ctermbg=235 ctermfg=248 cterm=NONE
hi TabLineFill ctermbg=233 ctermfg=246 cterm=NONE

" Search
hi IncSearch  cterm=bold ctermbg=235 ctermfg=226
hi Search     cterm=bold ctermbg=235 ctermfg=3

"Folding
hi FoldColumn cterm=NONE ctermbg=235 ctermfg=243
hi Folded     cterm=NONE ctermbg=234 ctermfg=243

"Diff
hi DiffDelete cterm=NONE ctermbg=16 ctermfg=16
hi DiffAdd    cterm=NONE ctermbg=237 
hi DiffText	  cterm=bold ctermbg=240 ctermfg=15
hi DiffChange cterm=NONE ctermbg=236

hi MatchParen cterm=bold ctermbg=235 ctermfg=227

"popup menus
hi Pmenu      cterm=NONE ctermbg=241 ctermfg=248
hi PmenuSel   cterm=NONE ctermbg=246 ctermfg=255
hi PmenuSbar  cterm=NONE ctermbg=240 ctermfg=236
hi PmenuThumb cterm=NONE ctermbg=246 ctermfg=240

" Sepll errors
if has("spell")
    hi SpellBad cterm=NONE ctermbg=52  
    hi SpellLocal cterm=NONE ctermbg=234
    hi SpellCap ctermbg=235 ctermfg=4 cterm=underline
endif

" Python
hi link pythonFunction Title
hi link pythonClass Title
hi LongLines ctermbg=233
hi pythonSpaceError ctermbg=234
