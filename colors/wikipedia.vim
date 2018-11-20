" Wikipedia colorscheme
" License: MIT
set background=light

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "wikipedia"

hi TabLine      NONE
hi link TabLine TabLinefill
hi Normal       cterm=none ctermbg=White ctermfg=Black
hi Error        cterm=none ctermbg=Red   ctermfg=Black
hi StatusLine   cterm=none ctermfg=White ctermbg=Black
hi StatusLineNC cterm=none ctermfg=Grey  ctermbg=Black
hi LineNr       cterm=none ctermfg=Black ctermbg=LightGrey

hi diffFile     cterm=bold
hi diffLine     ctermfg=DarkCyan
hi diffAdded    ctermfg=DarkGreen
hi diffRemoved  ctermfg=DarkRed

hi Normal     term=none      cterm=none   ctermfg=0   ctermbg=255
hi Comment    term=bold      cterm=italic ctermfg=73
hi Constant   term=underline cterm=none   ctermfg=1
hi Special    term=bold      cterm=none   ctermfg=0
hi Identifier term=underline cterm=none   ctermfg=0
hi Statement  term=bold      cterm=none   ctermfg=22
hi PreProc    term=underline cterm=none   ctermfg=94
hi Type       term=underline cterm=none   ctermfg=89
hi Number     term=bold      cterm=none   ctermfg=8
hi Visual     term=bold      cterm=none   ctermbg=251
hi Search     term=bold      cterm=none   ctermbg=224
hi CursorLine term=none      cterm=none   ctermbg=253
hi Title      term=none      cterm=none   ctermfg=4
hi Function   term=none      cterm=none   ctermfg=21
