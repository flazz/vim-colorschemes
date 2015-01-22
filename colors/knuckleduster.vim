" Notes: To check the meaning of the highlight groups, :help 'highlight'

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="knuckleduster"

" Syntax group     | Foreground   | Background   | Style  |

hi Normal          ctermfg=252    ctermbg=233    cterm=NONE 
hi Cursor          ctermfg=16     ctermbg=253    cterm=NONE 
hi CursorLine      ctermfg=NONE   ctermbg=234    cterm=NONE 
hi LineNr          ctermfg=250    ctermbg=234    cterm=NONE 
hi CursorLineNr    ctermfg=208    ctermbg=NONE   cterm=NONE 

hi CursorColumn    ctermfg=NONE   ctermbg=234    cterm=NONE 
hi FoldColumn      ctermfg=67     ctermbg=16     cterm=NONE 
hi SignColumn      ctermfg=118    ctermbg=235    cterm=NONE 
hi Folded          ctermfg=67     ctermbg=16     cterm=NONE 

hi VertSplit       ctermfg=244    ctermbg=232    cterm=bold 
hi ColorColumn     ctermfg=NONE   ctermbg=234    cterm=NONE 
hi TabLine         ctermfg=NONE   ctermbg=NONE   cterm=NONE 
hi TabLineFill     ctermfg=NONE   ctermbg=NONE   cterm=NONE 
hi TabLineSel      ctermfg=NONE   ctermbg=NONE   cterm=NONE 

hi Directory       ctermfg=118    ctermbg=NONE   cterm=NONE         
hi Search          ctermfg=NONE   ctermbg=NONE   cterm=bold,underline 
hi IncSearch       ctermfg=NONE   ctermbg=NONE   cterm=bold,underline 

hi StatusLine      ctermfg=238    ctermbg=253    cterm=NONE 
hi StatusLineNC    ctermfg=244    ctermbg=232    cterm=NONE 
hi WildMenu        ctermfg=81     ctermbg=16     cterm=NONE 
hi Question        ctermfg=81     ctermbg=NONE   cterm=NONE 
hi Title           ctermfg=166    ctermbg=NONE   cterm=NONE 
hi ModeMsg         ctermfg=229    ctermbg=NONE   cterm=NONE 
hi MoreMsg         ctermfg=229    ctermbg=NONE   cterm=NONE 

hi MatchParen      ctermfg=208    ctermbg=16     cterm=bold 
hi Visual          ctermfg=NONE   ctermbg=238    cterm=NONE 
hi VisualNOS       ctermfg=NONE   ctermbg=238    cterm=NONE 
hi NonText         ctermfg=59     ctermbg=NONE   cterm=NONE 
hi Todo            ctermfg=231    ctermbg=232    cterm=bold 
hi Underlined      ctermfg=244    ctermbg=NONE   cterm=underline
hi Error           ctermfg=219    ctermbg=89     cterm=NONE 
hi ErrorMsg        ctermfg=199    ctermbg=16     cterm=bold 
hi WarningMsg      ctermfg=231    ctermbg=238    cterm=bold 
hi Ignore          ctermfg=244    ctermbg=232    cterm=NONE 
hi SpecialKey      ctermfg=81     ctermbg=NONE   cterm=NONE 

hi Constant        ctermfg=135    ctermbg=NONE   cterm=NONE 
hi String          ctermfg=144    ctermbg=NONE   cterm=NONE 
hi StringDelimiter ctermfg=NONE   ctermbg=NONE   cterm=NONE 
hi Character       ctermfg=144    ctermbg=NONE   cterm=NONE 
hi Number          ctermfg=135    ctermbg=NONE   cterm=NONE 
hi Boolean         ctermfg=135    ctermbg=NONE   cterm=NONE 
hi Float           ctermfg=135    ctermbg=NONE   cterm=NONE 
hi Identifier      ctermfg=208    ctermbg=NONE   cterm=NONE 
hi Function        ctermfg=118    ctermbg=NONE   cterm=NONE 

hi Statement       ctermfg=161    ctermbg=NONE   cterm=NONE 
hi Conditional     ctermfg=161    ctermbg=NONE   cterm=NONE 
hi Repeat          ctermfg=161    ctermbg=NONE   cterm=NONE 
hi Label           ctermfg=229    ctermbg=NONE   cterm=NONE 
hi Operator        ctermfg=161    ctermbg=NONE   cterm=NONE 
hi Keyword         ctermfg=161    ctermbg=NONE   cterm=NONE 
hi Exception       ctermfg=118    ctermbg=NONE   cterm=NONE 
hi Comment         ctermfg=59     ctermbg=NONE   cterm=NONE 
hi Special         ctermfg=81     ctermbg=NONE   cterm=NONE 
hi SpecialChar     ctermfg=161    ctermbg=NONE   cterm=NONE 
hi Tag             ctermfg=161    ctermbg=NONE   cterm=NONE 
hi Delimiter       ctermfg=241    ctermbg=NONE   cterm=NONE 
hi SpecialComment  ctermfg=245    ctermbg=NONE   cterm=NONE 
hi Debug           ctermfg=225    ctermbg=NONE   cterm=NONE 

hi PreProc         ctermfg=118    ctermbg=NONE   cterm=NONE 
hi Include         ctermfg=81     ctermbg=NONE   cterm=NONE 
hi Define          ctermfg=81     ctermbg=NONE   cterm=NONE 
hi Macro           ctermfg=193    ctermbg=NONE   cterm=NONE 
hi PreCondit       ctermfg=118    ctermbg=NONE   cterm=NONE 
hi Type            ctermfg=81     ctermbg=NONE   cterm=NONE 
hi StorageClass    ctermfg=208    ctermbg=NONE   cterm=NONE 
hi Structure       ctermfg=81     ctermbg=NONE   cterm=NONE 
hi Typedef         ctermfg=81     ctermbg=NONE   cterm=NONE 

hi DiffAdd         ctermfg=NONE   ctermbg=24     cterm=NONE 
hi DiffChange      ctermfg=181    ctermbg=239    cterm=NONE 
hi DiffDelete      ctermfg=162    ctermbg=53     cterm=NONE 
hi DiffText        ctermfg=NONE   ctermbg=102    cterm=bold 

hi Pmenu           ctermfg=81    ctermbg=16      cterm=NONE 
hi PmenuSel        ctermfg=81    ctermbg=244     cterm=NONE 
hi PmenuSbar       ctermfg=NONE  ctermbg=232     cterm=NONE 
hi PmenuThumb      ctermfg=81    ctermbg=NONE    cterm=NONE 

hi SpellBad        ctermfg=196    ctermbg=NONE   cterm=underline
hi SpellCap        ctermfg=93     ctermbg=NONE   cterm=underline
hi SpellLocal      ctermfg=93     ctermbg=NONE   cterm=underline
hi SpellRare       ctermfg=93     ctermbg=NONE   cterm=underline

hi SneakPluginTarget ctermfg=196  ctermbg=NONE cterm=NONE     
hi SneakStreakTarget ctermfg=81   ctermbg=16   cterm=underline
hi SneakStreakMask   ctermfg=16   ctermbg=16   cterm=underline
