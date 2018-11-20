" Vim color file
" Name:     Garden
" Date:     Thursday, June 15, 2017
" Author:   Jak Wings <jakwings@gmail.com>
" Credits:  Thanks to http://bytefluent.com/vivify/

set background=light

if version > 580
    hi clear
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'garden'

hi Boolean guifg=#00005f guibg=NONE guisp=NONE gui=NONE ctermfg=17 ctermbg=NONE cterm=NONE
hi Character guifg=#00005f guibg=NONE guisp=NONE gui=NONE ctermfg=17 ctermbg=NONE cterm=NONE
hi ColorColumn guifg=#080808 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=232 ctermbg=255 cterm=NONE
hi Comment guifg=#b2b2b2 guibg=NONE guisp=NONE gui=NONE ctermfg=249 ctermbg=NONE cterm=NONE
hi Conceal guifg=#0000af guibg=NONE guisp=NONE gui=NONE ctermfg=19 ctermbg=NONE cterm=NONE
hi Conditional guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Constant guifg=#00005f guibg=NONE guisp=NONE gui=NONE ctermfg=17 ctermbg=NONE cterm=NONE
hi Cursor guifg=#ffffff guibg=#af5fff guisp=#af5fff gui=NONE ctermfg=231 ctermbg=135 cterm=NONE
hi CursorColumn guifg=#080808 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=232 ctermbg=255 cterm=NONE
hi CursorLine guifg=#080808 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=232 ctermbg=255 cterm=NONE
hi CursorLineNr guifg=#080808 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=232 ctermbg=255 cterm=NONE
hi Debug guifg=#870000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi Define guifg=#875f00 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#870000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#ffffff guibg=#5faf5f guisp=#5faf5f gui=NONE ctermfg=231 ctermbg=71 cterm=NONE
hi DiffChange guifg=#3a3a3a guibg=#d7d787 guisp=#d7d787 gui=NONE ctermfg=237 ctermbg=186 cterm=NONE
hi DiffDelete guifg=#ffffff guibg=#ff8787 guisp=#ff8787 gui=NONE ctermfg=231 ctermbg=210 cterm=NONE
hi DiffText guifg=#080808 guibg=#d7d787 guisp=#d7d787 gui=bold ctermfg=232 ctermbg=186 cterm=bold
hi Directory guifg=#875f00 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi EndOfBuffer guifg=#e4e4e4 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi Error guifg=#ffffff guibg=#af0000 guisp=NONE gui=NONE ctermfg=231 ctermbg=124 cterm=NONE
hi ErrorMsg guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi Exception guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Float guifg=#00005f guibg=NONE guisp=NONE gui=NONE ctermfg=17 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#585858 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=240 ctermbg=255 cterm=NONE
hi Folded guifg=#585858 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi Function guifg=#005f00 guibg=NONE guisp=NONE gui=NONE ctermfg=22 ctermbg=NONE cterm=NONE
hi Identifier guifg=#5f8700 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi IncSearch guifg=#1c1c1c guibg=#ffffaf guisp=#ffffaf gui=NONE ctermfg=234 ctermbg=229 cterm=NONE
hi Include guifg=#875f00 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi Keyword guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Label guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi LineNr guifg=#e4e4e4 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi Macro guifg=#875f00 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#af0000 guibg=#afd75f guisp=#afd75f gui=bold ctermfg=124 ctermbg=149 cterm=bold
hi ModeMsg guifg=#0000af guibg=NONE guisp=NONE gui=NONE ctermfg=19 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#5f0000 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi NonText guifg=#e4e4e4 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi Normal guifg=#080808 guibg=#ffffff guisp=NONE gui=NONE ctermfg=232 ctermbg=231 cterm=NONE
hi Number guifg=#00005f guibg=NONE guisp=NONE gui=NONE ctermfg=17 ctermbg=NONE cterm=NONE
hi Operator guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Pmenu guifg=#080808 guibg=#ffffd7 guisp=NONE gui=NONE ctermfg=232 ctermbg=230 cterm=NONE
hi PmenuSbar guifg=NONE guibg=#eeeeee guisp=NONE gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi PmenuSel guifg=#af0000 guibg=#d7d7af guisp=NONE gui=NONE ctermfg=124 ctermbg=187 cterm=NONE
hi PmenuThumb guifg=NONE guibg=#afaf87 guisp=NONE gui=NONE ctermfg=NONE ctermbg=144 cterm=NONE
hi PreCondit guifg=#875f00 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi PreProc guifg=#875f00 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi Question guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Repeat guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Search guifg=#444444 guibg=#ffffd7 guisp=#ffffd7 gui=NONE ctermfg=238 ctermbg=230 cterm=NONE
hi SignColumn guifg=#585858 guibg=#eeeeee guisp=NONE gui=NONE ctermfg=240 ctermbg=255 cterm=NONE
hi Special guifg=#870000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#870000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#870000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#005fff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE guisp=#ff0000 gui=undercurl ctermfg=196 ctermbg=189 cterm=underline
hi SpellCap guifg=NONE guibg=NONE guisp=#005fff gui=undercurl ctermfg=27 ctermbg=189 cterm=underline
hi SpellLocal guifg=NONE guibg=NONE guisp=#d78700 gui=undercurl ctermfg=167 ctermbg=189 cterm=underline
hi SpellRare guifg=NONE guibg=NONE guisp=#9e9e9e gui=undercurl ctermfg=247 ctermbg=189 cterm=underline
hi Statement guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#eeeeee guibg=#808080 guisp=NONE gui=NONE ctermfg=255 ctermbg=244 cterm=NONE
hi StatusLineNC guifg=#c6c6c6 guibg=#808080 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 cterm=NONE
hi StorageClass guifg=#5f0000 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi String guifg=#00005f guibg=NONE guisp=NONE gui=NONE ctermfg=17 ctermbg=NONE cterm=NONE
hi Structure guifg=#5f0000 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi TabLine guifg=#262626 guibg=#af875f guisp=NONE gui=NONE ctermfg=235 ctermbg=137 cterm=NONE
hi TabLineFill guifg=NONE guibg=#af875f guisp=NONE gui=NONE ctermfg=NONE ctermbg=137 cterm=NONE
hi TabLineSel guifg=#eeeeee guibg=#af875f guisp=NONE gui=bold ctermfg=255 ctermbg=137 cterm=bold
hi Tag guifg=#870000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Todo guifg=#ffffff guibg=#ffaf00 guisp=NONE gui=NONE ctermfg=231 ctermbg=214 cterm=NONE
hi Type guifg=#5f0000 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi Typedef guifg=#5f0000 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit guifg=#c6c6c6 guibg=#808080 guisp=NONE gui=NONE ctermfg=244 ctermbg=244 cterm=NONE
hi Visual guifg=#080808 guibg=#ffffaf guisp=#ffffaf gui=NONE ctermfg=232 ctermbg=229 cterm=NONE
hi VisualNOS guifg=#080808 guibg=#d7d7af guisp=#d7d7af gui=NONE ctermfg=232 ctermbg=187 cterm=NONE
hi WarningMsg guifg=#ff5f00 guibg=NONE guisp=NONE gui=NONE ctermfg=202 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#afd700 guibg=#808080 guisp=NONE gui=NONE ctermfg=148 ctermbg=244 cterm=NONE
