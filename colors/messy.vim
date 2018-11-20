" Vim color file
" Name:     Messy
" Date:     Tuesday, June 27, 2017
" Author:   Jak Wings <jakwings@gmail.com>
" Credits:  Thanks to http://bytefluent.com/vivify/

set background=light

if version > 580
    hi clear
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'messy'

hi Boolean guifg=#808000 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Character guifg=#808000 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi ColorColumn guifg=#000000 guibg=#c0c0c0 guisp=#000000 gui=NONE ctermfg=0 ctermbg=7 cterm=NONE
hi Comment guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Conceal guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Conditional guifg=#000080 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi Constant guifg=#808000 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Cursor guifg=#ffffff guibg=#0000ff guisp=#0000ff gui=NONE ctermfg=15 ctermbg=12 cterm=NONE
hi CursorColumn guifg=#ffffff guibg=#008080 guisp=#ffffff gui=NONE ctermfg=15 ctermbg=6 cterm=NONE
hi CursorLine guifg=#ffffff guibg=#008080 guisp=#ffffff gui=NONE ctermfg=15 ctermbg=6 cterm=NONE
hi CursorLineNr guifg=#ffffff guibg=#008080 guisp=NONE gui=NONE ctermfg=15 ctermbg=6 cterm=NONE
hi Debug guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Define guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#ffffff guibg=#008000 guisp=#008000 gui=bold ctermfg=15 ctermbg=2 cterm=NONE
hi DiffChange guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=0 ctermbg=11 cterm=NONE
hi DiffDelete guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=bold ctermfg=15 ctermbg=9 cterm=NONE
hi DiffText guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=bold ctermfg=0 ctermbg=11 cterm=underline
hi Directory guifg=#000080 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi EndOfBuffer guifg=#c0c0c0 guibg=#ffffff guisp=NONE gui=NONE ctermfg=7 ctermbg=15 cterm=NONE
hi Error guifg=#000000 guibg=#ff0000 guisp=NONE gui=bold ctermfg=0 ctermbg=9 cterm=underline
hi ErrorMsg guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=9 ctermbg=NONE cterm=NONE
hi Exception guifg=#000080 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi Float guifg=#808000 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#008080 guibg=#c0c0c0 guisp=NONE gui=NONE ctermfg=6 ctermbg=7 cterm=NONE
hi Folded guifg=#008080 guibg=#c0c0c0 guisp=#c0c0c0 gui=NONE ctermfg=6 ctermbg=7 cterm=NONE
hi Function guifg=#800000 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Identifier guifg=#800000 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi IncSearch guifg=#000000 guibg=#00ff00 guisp=#00ff00 gui=NONE ctermfg=0 ctermbg=10 cterm=NONE
hi Include guifg=#008000 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Keyword guifg=#000080 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi Label guifg=#000080 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ffffff guibg=#808080 guisp=NONE gui=NONE ctermfg=15 ctermbg=8 cterm=NONE
hi Macro guifg=#008000 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#ffffff guibg=#ff00ff guisp=#ff00ff gui=bold ctermfg=15 ctermbg=13 cterm=bold
hi ModeMsg guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=12 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#008080 guibg=NONE guisp=NONE gui=NONE ctermfg=6 ctermbg=NONE cterm=NONE
hi NonText guifg=#c0c0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi Normal guifg=#000000 guibg=#ffffff guisp=NONE gui=NONE ctermfg=0 ctermbg=15 cterm=NONE
hi Number guifg=#808000 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Operator guifg=#000080 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi Pmenu guifg=#ffffff guibg=#800080 guisp=NONE gui=NONE ctermfg=15 ctermbg=5 cterm=NONE
hi PmenuSbar guifg=NONE guibg=#808080 guisp=NONE gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi PmenuSel guifg=#ffffff guibg=#ff00ff guisp=NONE gui=NONE ctermfg=15 ctermbg=13 cterm=NONE
hi PmenuThumb guifg=NONE guibg=#c0c0c0 guisp=NONE gui=NONE ctermfg=0 ctermbg=7 cterm=NONE
hi PreCondit guifg=#008000 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi PreProc guifg=#008000 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Question guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=0 ctermbg=NONE cterm=bold
hi Repeat guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=12 ctermbg=NONE cterm=NONE
hi Search guifg=#ffffff guibg=#008000 guisp=#008000 gui=NONE ctermfg=15 ctermbg=2 cterm=NONE
hi SignColumn guifg=#008080 guibg=#c0c0c0 guisp=NONE gui=NONE ctermfg=6 ctermbg=7 cterm=NONE
hi Special guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE guisp=#ff0000 gui=undercurl ctermfg=1 ctermbg=7 cterm=underline
hi SpellCap guifg=NONE guibg=NONE guisp=#0000ff gui=undercurl ctermfg=4 ctermbg=7 cterm=underline
hi SpellLocal guifg=NONE guibg=NONE guisp=#008080 gui=undercurl ctermfg=6 ctermbg=7 cterm=underline
hi SpellRare guifg=NONE guibg=NONE guisp=#808080 gui=undercurl ctermfg=8 ctermbg=7 cterm=underline
hi Statement guifg=#000080 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffffff guibg=#808080 guisp=NONE gui=NONE ctermfg=15 ctermbg=8 cterm=NONE
hi StatusLineNC guifg=#c0c0c0 guibg=#808080 guisp=NONE gui=NONE ctermfg=7 ctermbg=8 cterm=NONE
hi StorageClass guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi String guifg=#808000 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Structure guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi TabLine guifg=#c0c0c0 guibg=#000000 guisp=NONE gui=NONE ctermfg=7 ctermbg=0 cterm=NONE
hi TabLineFill guifg=NONE guibg=#000000 guisp=NONE gui=NONE ctermfg=NONE ctermbg=0 cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#000000 guisp=NONE gui=NONE ctermfg=15 ctermbg=0 cterm=NONE
hi Tag guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Todo guifg=#000000 guibg=#ffff00 guisp=NONE gui=bold ctermfg=0 ctermbg=11 cterm=underline
hi Type guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Typedef guifg=#800080 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit guifg=#c0c0c0 guibg=#808080 guisp=NONE gui=NONE ctermfg=7 ctermbg=8 cterm=NONE
hi Visual guifg=#ffffff guibg=#0000ff guisp=#0000ff gui=NONE ctermfg=15 ctermbg=12 cterm=NONE
hi VisualNOS guifg=#c0c0c0 guibg=#000080 guisp=#000080 gui=NONE ctermfg=7 ctermbg=4 cterm=NONE
hi WarningMsg guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#ffff00 guibg=#808080 guisp=NONE gui=NONE ctermfg=11 ctermbg=8 cterm=NONE
