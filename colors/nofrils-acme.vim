" Name: No Frils Acme Colorscheme
" Author: robertmeta (on Github)
" URL: https://github.com/robertmeta/nofrils
" (see this url for latest release & screenshots)
" License: OSI approved MIT license

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "nofrils-acme"

if !exists("g:nofrils_strbackgrounds")
    let g:nofrils_strbackgrounds = 0
endif
if !exists("g:nofrils_heavycomments")
    let g:nofrils_heavycomments = 0
endif
if !exists("g:nofrils_heavylinenumbers")
    let g:nofrils_heavylinenumbers = 0
endif

set background=light

" Baseline
hi Normal term=NONE cterm=NONE ctermfg=black ctermbg=230 gui=NONE guifg=#000000 guibg=#ffffd7

" Faded
hi ColorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=253 gui=NONE guifg=NONE guibg=#dadada
hi Comment term=NONE cterm=NONE ctermfg=136 ctermbg=NONE gui=NONE guifg=#af8700 guibg=NONE
hi FoldColumn term=NONE cterm=NONE ctermfg=136 ctermbg=NONE gui=NONE guifg=#af8700 guibg=NONE
hi Folded term=NONE cterm=NONE ctermfg=240 ctermbg=NONE gui=NONE guifg=#585858 guibg=NONE
hi LineNr term=NONE cterm=NONE ctermfg=136 ctermbg=bg gui=NONE guifg=#af8700 guibg=NONE
hi NonText term=NONE cterm=NONE ctermfg=136 ctermbg=NONE gui=NONE guifg=#af8700 guibg=NONE
hi SignColumn term=NONE cterm=NONE ctermfg=240 ctermbg=bg gui=NONE guifg=#585858 guibg=bg
hi SpecialKey term=NONE cterm=NONE ctermfg=240 ctermbg=bg gui=NONE guifg=#585858 guibg=bg
hi StatusLineNC term=NONE cterm=NONE ctermfg=fg ctermbg=195 gui=NONE guifg=fg guibg=#d7ffff
hi VertSplit term=NONE cterm=NONE ctermfg=fg ctermbg=195 gui=NONE guifg=fg guibg=#d7ffff

" Highlight
hi CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=228 gui=NONE guifg=NONE guibg=#ffff87
hi CursorIM term=NONE cterm=NONE ctermfg=fg ctermbg=4 gui=NONE guifg=fg guibg=#00ffff
hi CursorLineNr term=NONE cterm=NONE ctermfg=0 ctermbg=228 gui=NONE guifg=NONE guibg=#ffff87
hi CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=228 gui=NONE guifg=NONE guibg=#ffff87
hi Cursor term=NONE cterm=NONE ctermfg=fg ctermbg=4 gui=NONE guifg=fg guibg=#00ffff
hi Directory term=NONE cterm=NONE ctermfg=53 ctermbg=NONE gui=NONE guifg=#5f005f guibg=NONE
hi ErrorMsg term=NONE cterm=NONE ctermfg=9 ctermbg=white gui=NONE guifg=#ff5555 guibg=white
hi Error term=NONE cterm=NONE ctermfg=9 ctermbg=white gui=NONE guifg=#ff5555 guibg=white
hi IncSearch term=NONE cterm=NONE ctermfg=white ctermbg=2 gui=NONE guifg=white guibg=#008000
hi Search term=NONE cterm=NONE ctermfg=white ctermbg=2 gui=NONE guifg=white guibg=#008000
hi MatchParen term=NONE cterm=NONE ctermfg=15 ctermbg=4 gui=NONE guifg=#ffffff guibg=#000080
hi ModeMsg term=NONE cterm=NONE ctermfg=53 ctermbg=NONE gui=NONE guifg=#5f005f guibg=NONE
hi MoreMsg term=NONE cterm=NONE ctermfg=53 ctermbg=NONE gui=NONE guifg=#5f005f guibg=NONE
hi PmenuSel term=NONE cterm=NONE ctermfg=fg ctermbg=13 gui=NONE guifg=fg guibg=#ff00ff
hi Question term=NONE cterm=NONE ctermfg=53 ctermbg=NONE gui=NONE guifg=#5f005f guibg=NONE
hi StatusLine term=NONE cterm=NONE ctermbg=183 ctermfg=fg gui=NONE guifg=white guibg=#000000
hi Todo term=NONE cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#008000 guibg=NONE
hi WarningMsg term=NONE cterm=NONE ctermfg=9 ctermbg=white gui=NONE guifg=#ff5555 guibg=white
hi WildMenu term=NONE cterm=NONE ctermbg=fg ctermfg=183 gui=NONE guifg=#000000 guibg=white
hi Visual term=NONE cterm=NONE ctermfg=fg ctermbg=222 gui=NONE guifg=NONE guibg=#ffd787
hi VisualNOS term=underline cterm=underline ctermfg=fg ctermbg=222 gui=underline guifg=NONE guibg=#ffd787

" Reversed
hi PmenuSbar term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi Pmenu term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi PmenuThumb term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi TabLineSel term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE

" Diff
hi DiffAdd term=NONE cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#008000 guibg=NONE
hi DiffChange term=NONE cterm=NONE ctermfg=94 ctermbg=NONE gui=NONE guifg=#875f00 guibg=NONE
hi DiffDelete term=NONE cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#800000 guibg=NONE
hi DiffText term=NONE cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#000080 guibg=NONE

" Spell
hi SpellBad term=underline cterm=underline ctermfg=5 ctermbg=NONE gui=underline guifg=#cd00cd guibg=NONE
hi SpellCap term=underline cterm=underline ctermfg=5 ctermbg=NONE gui=underline guifg=#cd00cd guibg=NONE
hi SpellLocal term=underline cterm=underline ctermfg=5 ctermbg=NONE gui=underline guifg=#cd00cd guibg=NONE
hi SpellRare term=underline cterm=underline ctermfg=5 ctermbg=NONE gui=underline guifg=#cd00cd guibg=NONE

" Vim Features
hi Menu term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Scrollbar term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi TabLineFill term=NONE cterm=NONE ctermfg=fg ctermbg=136 gui=NONE guifg=fg guibg=#af8700
hi TabLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tooltip term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Syntax Highsepiaing (or lack there of)
hi Boolean term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conceal term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conditional term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Constant term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Debug term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Define term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Delimiter term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Directive term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Exception term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Float term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Format term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Function term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Identifier term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Ignore term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Include term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Keyword term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Label term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Macro term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Number term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Operator term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreCondit term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreProc term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Repeat term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialChar term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialComment term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Special term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Statement term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi StorageClass term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi String term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Structure term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tag term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Title term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Typedef term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Type term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Underlined term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Sneak
hi SneakLabelMask term=NONE cterm=NONE ctermfg=black ctermbg=195 gui=NONE guifg=black guibg=#d7ffff
hi SneakTarget term=NONE cterm=NONE ctermfg=black ctermbg=195 gui=NONE guifg=black guibg=#d7ffff
hi SneakLabelTarget term=NONE cterm=NONE ctermfg=black ctermbg=183 gui=NONE guifg=black guibg=#d7afff
hi SneakScope term=NONE cterm=NONE ctermfg=black ctermbg=183 gui=NONE guifg=black guibg=#d7afff

" Helper Functions
function! NofrilsFocusComments()
    hi Comment term=NONE cterm=NONE ctermfg=black ctermbg=NONE gui=NONE guifg=#af8700 guibg=NONE
    hi Normal term=NONE cterm=NONE ctermfg=136 ctermbg=230 gui=NONE guifg=#000000 guibg=#ffffd7
    hi LineNr term=NONE cterm=NONE ctermfg=136 ctermbg=bg gui=NONE guifg=#af8700 guibg=NONE
    hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
    hi String term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

    if g:nofrils_heavycomments
        hi Comment term=NONE cterm=NONE ctermfg=89 ctermbg=NONE gui=NONE guifg=#87005F guibg=NONE
    end
endfunction

function! NofrilsFocusCode()
    hi Comment term=NONE cterm=NONE ctermfg=136 ctermbg=NONE gui=NONE guifg=#af8700 guibg=NONE
    hi Normal term=NONE cterm=NONE ctermfg=black ctermbg=230 gui=NONE guifg=#000000 guibg=#ffffd7
    hi LineNr term=NONE cterm=NONE ctermfg=136 ctermbg=bg gui=NONE guifg=#af8700 guibg=NONE
    hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
    hi String term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

    if g:nofrils_strbackgrounds
        hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=223 gui=NONE guifg=NONE guibg=#ffd7af
        hi String term=NONE cterm=NONE ctermfg=NONE ctermbg=223 gui=NONE guifg=NONE guibg=#ffd7af
    end
endfunction

function! NofrilsNormal()
    hi Comment term=NONE cterm=NONE ctermfg=136 ctermbg=NONE gui=NONE guifg=#af8700 guibg=NONE
    hi Normal term=NONE cterm=NONE ctermfg=black ctermbg=230 gui=NONE guifg=#000000 guibg=#ffffd7
    hi LineNr term=NONE cterm=NONE ctermfg=136 ctermbg=bg gui=NONE guifg=#af8700 guibg=NONE
    hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
    hi String term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

    " Optional Syntax Features
    if g:nofrils_strbackgrounds
        hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=223 gui=NONE guifg=NONE guibg=#ffd7af
        hi String term=NONE cterm=NONE ctermfg=NONE ctermbg=223 gui=NONE guifg=NONE guibg=#ffd7af
    end
    if g:nofrils_heavycomments
        hi Comment term=NONE cterm=NONE ctermfg=89 ctermbg=NONE gui=NONE guifg=#87005f guibg=NONE
    end
    if g:nofrils_heavylinenumbers
        hi LineNr term=NONE cterm=NONE ctermfg=89 ctermbg=NONE gui=NONE guifg=#87005f guibg=NONE
    end
endfunction

" Command mappings
command! NofrilsDark :colo nofrils-dark
command! NofrilsLight :colo nofrils-light
command! NofrilsSepia :colo nofrils-sepia
command! NofrilsAcme :colo nofrils-acme
command! NofrilsFocusNormal :call NofrilsNormal()
command! NofrilsFocusCode :call NofrilsFocusCode()
command! NofrilsFocusComments :call NofrilsFocusComments()

" Setup normal settings
call NofrilsNormal()
