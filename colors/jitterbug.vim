" Vim colorscheme test
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
  
let colors_name = "jitterbug"

hi Normal
  \ cterm=NONE ctermbg=235 ctermfg=250
  \ gui=NONE guibg=#1c1c1c

hi Statement
  \ cterm=None ctermfg=243
  \ guifg=#767676

hi Type
  \ cterm=bold ctermfg=245
  \ guifg=#767676

hi Identifier
  \ cterm=NONE ctermfg=138
  \ guifg=#D78787

hi Constant
  \ cterm=NONE ctermfg=109
  \ guifg=#87AfAf

hi Comment
  \ cterm=NONE ctermfg=73
  \ guisp=NONE guifg=#525252 gui=italic

hi Special
  \ cterm=NONE ctermfg=103
  \ guifg=#87AFAF

hi PreProc
  \ cterm=NONE ctermfg=96
  \ guifg=#926D92

hi Title
  \ cterm=bold ctermfg=255
  \ gui=bold guifg=#FFF2E6

hi Error
  \ cterm=NONE ctermbg=52  ctermfg=218
  \ guifg=#FFAFD7

hi Directory
  \ cterm=NONE ctermfg=67
  \ guifg=#5F87AF

hi Underlined
  \ cterm=underline ctermfg=67
  \ gui=underline

"Furniture
"
hi VertSplit
  \ cterm=NONE ctermbg=235 ctermfg=0
  \ gui=none guibg=none guifg=#383737


hi LineNr
  \ cterm=NONE ctermfg=241
  \ guifg=#626262

hi NonText
  \ cterm=NONE ctermfg=16
  \ guibg=#161616 guifg=#000000

hi Visual
  \ cterm=NONE ctermbg=238
  \ guibg=#444444

hi CursorLine
  \ cterm=NONE ctermbg=236
  \ guibg=#303030

hi CursorColumn
  \ cterm=NONE ctermbg=236
  \ guibg=#303030

hi CursorLineNr
  \ cterm=NONE ctermbg=236 ctermfg=249
  \ guibg=#303030 guifg=#B2B2B2

hi SignColumn
  \ cterm=NONE ctermbg=235
  \ guisp=NONE guibg=Normal

hi ColorColumn
  \ cterm=NONE ctermbg=236

hi ErrorMsg
  \ cterm=bold ctermbg=124 ctermfg=235

" No special treament for concealed symbols
hi Conceal none

hi link SpecialKey Ignore

" Tabs
"
hi TabLine
  \ ctermbg=233 ctermfg=242 cterm=NONE

hi TabLineSel
  \ ctermbg=235 ctermfg=248 cterm=NONE

hi TabLineFill
  \ ctermbg=233 ctermfg=246 cterm=NONE

" Search
"
hi IncSearch
  \ cterm=bold ctermbg=243 ctermfg=214

hi Search
  \ cterm=None ctermbg=237 ctermfg=NONE
  \ guibg=#333311 guifg=none

" Folding
"
hi FoldColumn
  \ cterm=NONE ctermbg=235 ctermfg=243
  \ gui=NONE guibg=#161616 guifg=#323232

hi Folded
  \ cterm=NONE ctermbg=234 ctermfg=243
  \ guisp=NONE guibg=#1C1C1C guifg=#767676

hi LineNr
  \ gui=none guibg=#161616 guifg=#404040

" Diff
"
hi DiffDelete
  \ cterm=NONE ctermbg=233 ctermfg=233
  \ guibg=#1C0909 guifg=#1C0D0D

hi DiffAdd
  \ cterm=NONE ctermbg=237
  \ guisp=NONE guibg=#222A22 guifg=202620

hi DiffText
  \ cterm=bold ctermbg=240 ctermfg=15
  \ gui=bold   guibg=#333350 guifg=none

hi DiffChange
  \ cterm=NONE ctermbg=238
  \ gui=NONE guibg=#20202E

hi DiffRemoved
  \ ctermbg=234 ctermfg=124
  \ guisp=NONE guibg=#1C1C1C guifg=#6D3C3C

hi DiffAdded
  \ ctermbg=237 ctermfg=76
  \ guisp=NONE guibg=#3A3A3A guifg=#476D47


" Matched parenthesis
hi MatchParen
  \ cterm=bold ctermbg=235 ctermfg=227


"popup menus
hi Pmenu
  \ cterm=NONE ctermbg=241 ctermfg=248
  \ guibg=#626262 guifg=#A8A8A8

hi PmenuSel
  \ cterm=NONE ctermbg=246 ctermfg=255
  \ guibg=#949494 guifg=#ffffff

hi PmenuSbar
  \ cterm=NONE ctermbg=240 ctermfg=236
  \ guibg=#585858 guifg=#303030

hi PmenuThumb
  \ cterm=NONE ctermbg=246 ctermfg=240
  \ guibg=#949494 guifg=#585858


" Spelling -- also used for ALE errors
hi SpellBad
  \ cterm=NONE ctermbg=52
  \ gui=underline guibg=#442222

hi SpellLocal
  \ cterm=NONE ctermbg=234

hi SpellCap
  \ ctermbg=235 ctermfg=4 cterm=underline

" Python
"
hi link pythonFunction Title
hi LongLines ctermbg=232
hi link pythonClass Title
hi pythonSpaceError ctermbg=234

" NeoMake errors
" Turn off the red (keep the underline)
hi NeomakeErrorDefault ctermfg=None


" Error symbols in ALE
highlight ALEErrorSign
  \ ctermfg=88
  \ guifg=#6D3C3C

highlight ALEErrorLine none
      \ guibg=#241916

highlight ALEWarningSign
  \ ctermfg=94
  \ guifg=#927749

highlight ALEWarning
  \ cterm=underline ctermfg=172

highlight ALEWarningLine none
  \ guibg=#241E0B


hi GitGutterChange
  \ gui=bold guibg=#161616 guifg=#927749

hi GitGutterDelete
  \ gui=bold guibg=#161616 guifg=#6D3C3C

hi GitGutterAdd
  \ guisp=bold guibg=#161616 guifg=#476D47

" Vim colorscheme files
" hi link vimHiKeyList Title
hi link vimHiGroup Title
