" vim: tw=0 ts=4 sw=4
" Vim color file

hi clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "simple_dark"

highlight Boolean       ctermfg=161     ctermbg=NONE    cterm=NONE
highlight Comment       ctermfg=243     ctermbg=NONE    cterm=NONE
highlight Constant      ctermfg=197     ctermbg=NONE    cterm=NONE
highlight CursorColumn  ctermfg=NONE    ctermbg=233     cterm=NONE
highlight CursorLine    ctermfg=NONE    ctermbg=233     cterm=NONE
highlight CursorLineNr  ctermfg=208     ctermbg=NONE    cterm=NONE
highlight Directory     ctermfg=112     ctermbg=NONE    cterm=NONE
highlight DiffAdd       ctermfg=NONE    ctermbg=22      cterm=NONE
highlight DiffChange    ctermfg=NONE    ctermbg=237     cterm=NONE
highlight DiffDelete    ctermfg=NONE    ctermbg=124     cterm=NONE
highlight DiffText      ctermfg=NONE    ctermbg=53      cterm=NONE
highlight Error         ctermfg=255     ctermbg=9       cterm=NONE
highlight Folded        ctermfg=NONE    ctermbg=235     cterm=NONE
highlight Identifier    ctermfg=228     ctermbg=NONE    cterm=NONE
highlight lineNr        ctermfg=255     ctermbg=NONE    cterm=NONE
highlight MatchParen    ctermfg=197     ctermbg=208     cterm=NONE
highlight NonText       ctermfg=26      ctermbg=NONE    cterm=NONE
highlight Normal        ctermfg=255     ctermbg=232     cterm=NONE
highlight PreProc       ctermfg=161     ctermbg=NONE    cterm=NONE
highlight Pmenu         ctermfg=208     ctermbg=232     cterm=NONE
highlight PmenuSbar     ctermfg=208     ctermbg=235     cterm=NONE
highlight PmenuSel      ctermfg=112     ctermbg=235     cterm=NONE
highlight PmenuThumb    ctermfg=208     ctermbg=232     cterm=NONE
highlight Search        ctermfg=255     ctermbg=208     cterm=NONE
highlight Special       ctermfg=26      ctermbg=NONE    cterm=NONE
highlight SpecialKey    ctermfg=51      ctermbg=NONE    cterm=NONE
highlight SpellBad      ctermfg=NONE    ctermbg=NONE    cterm=underline
highlight SpellCap      ctermfg=NONE    ctermbg=NONE    cterm=underline
highlight SpellLocal    ctermfg=NONE    ctermbg=NONE    cterm=underline
highlight SpellRare     ctermfg=NONE    ctermbg=NONE    cterm=underline
highlight Statement     ctermfg=208     ctermbg=NONE    cterm=NONE
highlight StatusLine    ctermfg=112     ctermbg=235     cterm=NONE
highlight StatusLineNC  ctermfg=255     ctermbg=235     cterm=NONE
highlight String        ctermfg=229     ctermbg=NONE    cterm=NONE
highlight TabLineFill   ctermfg=255     ctermbg=235     cterm=NONE
highlight TabLineSel    ctermfg=255     ctermbg=16      cterm=NONE
highlight TabLine       ctermfg=255     ctermbg=242     cterm=NONE
highlight Todo          ctermfg=197     ctermbg=208     cterm=bold
highlight Type          ctermfg=112     ctermbg=NONE    cterm=NONE
highlight Visual        ctermfg=NONE    ctermbg=236     cterm=NONE
