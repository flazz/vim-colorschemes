" vim:foldmethod=marker
"  marklar colorscheme 
"   SM Smithfield 
"    generated on March, 02 2006 (19:34)

hi clear
set background=dark
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "marklar"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light


if version >= 700
    hi SpellBad         guisp=#ff4046
    hi SpellRare        guisp=#f18f96
endif

hi Comment guifg=#00BBBB guibg=NONE ctermfg=6 cterm=none
hi Constant guifg=#FFFFFF guibg=NONE ctermfg=7 cterm=none
hi Cursor guifg=NONE guibg=#FF0000
hi DiffAdd guifg=fg guibg=#136769 ctermfg=4 ctermbg=7 cterm=none
hi DiffChange guifg=fg guibg=#096354 ctermfg=4 ctermbg=2 cterm=none
hi DiffDelete guifg=fg guibg=#50694A ctermfg=1 ctermbg=7 cterm=none
hi DiffText guifg=#7CFC94 guibg=#096354 ctermfg=4 ctermbg=3 cterm=none
hi Directory guifg=#25B9F8 guibg=NONE ctermfg=2
hi Error guifg=#FFFFFF guibg=#000000 ctermfg=7 ctermbg=0 cterm=bold
hi ErrorMsg guifg=#FFFFFF guibg=#886600
hi FoldColumn guifg=#00BBBB guibg=#204d40
hi Folded guifg=#00BBBB guibg=#204d40 ctermfg=0 ctermbg=8 cterm=bold
hi Identifier guifg=#38FF56 guibg=NONE gui=bold ctermfg=8 cterm=bold
hi Ignore guifg=#467C5C guibg=NONE ctermfg=1
hi IncSearch guifg=NONE guibg=NONE gui=none
hi LineNr guifg=#38ff56 guibg=#204d40
hi ModeMsg guifg=#FFFFFF guibg=#0000FF ctermfg=7 ctermbg=4 cterm=bold
hi MoreMsg guifg=#FFFFFF guibg=#00A261 ctermfg=7 ctermbg=2 cterm=bold
hi NonText guifg=#00bbbb guibg=#204d40
hi Normal guifg=#71C293 guibg=#245748
hi PreProc guifg=#25B9F8 guibg=bg gui=underline ctermfg=2 cterm=underline
hi Question guifg=#FFFFFF guibg=#00A261
hi Search guifg=#ffffff guibg=#237ac1 gui=none ctermfg=3 ctermbg=0 cterm=bold
hi SignColumn guifg=#00BBBB guibg=#204d40
hi Special guifg=#00FFFF guibg=NONE gui=bold ctermfg=6 cterm=bold
hi SpecialKey guifg=#00FFFF guibg=#266955
hi Statement guifg=#FFFF00 guibg=NONE gui=bold ctermfg=3 cterm=bold
hi StatusLine guifg=#245748 guibg=#71C293 gui=none cterm=reverse
hi StatusLineNC guifg=#245748 guibg=#689C7C gui=none
hi Title guifg=#7CFC94 guibg=NONE gui=bold ctermfg=2 cterm=bold
hi Todo guifg=#FFFFFF guibg=#884400 ctermfg=6 ctermbg=4 cterm=none
hi Type guifg=#FF80FF guibg=bg gui=bold ctermfg=2
hi Underlined guifg=#df820c guibg=NONE gui=underline ctermfg=8 cterm=underline
hi Visual guibg=#0B7260 gui=NONE
hi WarningMsg guifg=#FFFFFF guibg=#FF0000 ctermfg=7 ctermbg=1 cterm=bold
hi WildMenu guifg=#20012e guibg=#00a675 gui=bold
hi pythonPreCondit ctermfg=2 cterm=none
hi tkWidget guifg=#D5B11C guibg=bg gui=bold ctermfg=7 cterm=bold

" CTERM_SUPPORT:
hi Identifier      ctermfg=8           cterm=bold
hi PreProc         ctermfg=2           cterm=underline
hi Underlined      ctermfg=8           cterm=underline
hi MoreMsg         ctermfg=7 ctermbg=2 cterm=bold
hi ModeMsg         ctermfg=7 ctermbg=4 cterm=bold
hi WarningMsg      ctermfg=7 ctermbg=1 cterm=bold
hi Error           ctermfg=7 ctermbg=0 cterm=bold
hi Constant        ctermfg=7           cterm=none
hi tkWidget        ctermfg=7           cterm=bold
hi Todo            ctermfg=6 ctermbg=4 cterm=none
hi Comment         ctermfg=6           cterm=none
hi Special         ctermfg=6           cterm=bold
hi Folded          ctermfg=0 ctermbg=8 cterm=bold
hi Search          ctermfg=3 ctermbg=0 cterm=bold
hi Statement       ctermfg=3           cterm=bold
hi Title           ctermfg=2           cterm=bold
hi Type            ctermfg=2
hi Directory       ctermfg=2
hi pythonPreCondit ctermfg=2           cterm=none
hi StatusLine                          cterm=reverse
hi DiffAdd         ctermfg=4 ctermbg=7 cterm=none
hi DiffDelete      ctermfg=1 ctermbg=7 cterm=none
hi DiffChange      ctermfg=4 ctermbg=2 cterm=none
hi DiffText        ctermfg=4 ctermbg=3 cterm=none
