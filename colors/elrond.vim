" vim: tw=0 ts=4 sw=4 et
" Vim color file
"
" Based on Vim's built-in "elflord" color scheme,
" originally by Ron Aaron <ron@ronware.org>
"
" Maintainer:   Adrian Perez <aperez@igalia.com>
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elrond"

let g:elrond#cursorline   = get(g:, 'elrond#cursorline',         1)
let g:elrond#cursorline16 = get(g:, 'elrond#cursorline16' , 'bold')


hi Normal     guifg=#dadada  guibg=black

hi Comment    term=italic    ctermfg=DarkCyan        guifg=#00aaaa
hi Constant   term=underline ctermfg=Magenta         guifg=Magenta
hi Special    term=bold      ctermfg=DarkMagenta     guifg=#aa00aa               gui=NONE
hi Identifier term=underline ctermfg=Cyan            guifg=Cyan       cterm=bold gui=bold
hi Statement  term=bold      ctermfg=Yellow          guifg=Yellow                gui=NONE
hi PreProc    term=underline ctermfg=LightBlue       guifg=#99ccff
hi Type       term=underline ctermfg=LightGreen      guifg=LightGreen            gui=NONE
hi Function   term=bold      ctermfg=White           guifg=White                 gui=NONE
hi Repeat     term=underline ctermfg=White           guifg=white
hi Operator                  ctermfg=Red             guifg=Red
hi Ignore                    ctermfg=black           guifg=bg
hi Error      term=reverse   ctermbg=Red    ctermfg=White guibg=Red  guifg=White
hi Todo       term=standout  ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

highlight CursorLine NONE

if &t_Co >= 256 || !empty($NVIM_TUI_ENABLE_TRUE_COLOR)
    if g:elrond#cursorline
        set cursorline
    endif
endif

highlight CursorLine    ctermbg=234               guibg=#1c1c1c
highlight CursorLineNr  ctermbg=235 ctermfg=246   guibg=#262626 guifg=#949494
highlight LineNr        ctermbg=234 ctermfg=238   guibg=#1c1c1c guifg=#444444
highlight SignColumn    ctermbg=234               guibg=#1c1c1c
highlight Pmenu         ctermbg=235 ctermfg=White guibg=#262626 guifg=#ffffff
highlight PmenuSel      ctermbg=238 ctermfg=White guibg=#444444 guifg=#ffffff
highlight PmenuSbar     ctermbg=238               guibg=#444444
highlight PmenuThumb    ctermbg=240               guibg=#585858
highlight VertSplit     ctermbg=235 ctermfg=235   guibg=#262626 guifg=#262626
highlight StatusLine    ctermbg=235 ctermfg=248   guibg=#262626 guifg=#ffffd7 cterm=NONE gui=NONE
highlight StatusLineNC  ctermbg=235 ctermfg=246   guibg=#262626 guifg=#949494 cterm=NONE gui=NONE
highlight TabLine       ctermbg=235 ctermfg=246   guibg=#262626 guifg=#949494 cterm=NONE gui=NONE
highlight TabLineSel    ctermbg=246 ctermfg=235   guibg=#949494 guifg=#262626 cterm=NONE gui=NONE
highlight TabLineFill   ctermbg=235               guibg=#262626               cterm=NONE gui=NONE

highlight LiningItem    ctermbg=236 ctermfg=252   guibg=#303030 guifg=#d0d0d0
highlight LiningVertSep ctermbg=236 ctermfg=240   guibg=#303030 guifg=#585858
highlight LiningBufName ctermbg=237 ctermfg=252   guibg=#3a3a3a guifg=#d0d0d0 cterm=bold gui=bold
highlight LiningBufPath ctermbg=237 ctermfg=252   guibg=#3a3a3a guifg=#d0d0d0 cterm=NONE gui=NONE

if &t_Co < 256
    "
    " Common definitions for 8 & 16 color terminals
    "
    highlight CursorLineNr  ctermbg=DarkGrey  ctermfg=White     cterm=bold gui=bold
    highlight LineNr        ctermbg=DarkGrey  ctermfg=LightGrey
    highlight SignColumn    ctermbg=Black                       cterm=bold gui=bold
    highlight VertSplit     ctermbg=DarkGrey  ctermfg=DarkGrey
    highlight StatusLineNC  ctermbg=LightGrey ctermfg=0         cterm=reverse,bold
    highlight TabLine       ctermbg=DarkGrey  ctermfg=LightGrey cterm=NONE
    highlight TabLineSel    ctermbg=LightGrey ctermfg=White
    highlight TabLineFill   ctermbg=DarkGrey                    cterm=NONE

    if &t_Co >= 16
        if g:elrond#cursorline
            set cursorline
            if g:elrond#cursorline16 == 'bold'
                highlight CursorLine cterm=bold
            elseif g:elrond#cursorline16 == 'reverse'
                highlight CursorLine cterm=reverse
            elseif g:elrond#cursorline16 == 'underline'
                highlight CursorLine cterm=underline
            endif
        endif

        highlight Pmenu         ctermbg=DarkGrey  ctermfg=White
        highlight PmenuSel      ctermbg=LightGrey ctermfg=White cterm=bold
        highlight PmenuSbar     ctermbg=DarkGrey  ctermfg=White
        highlight PmenuThumb    ctermbg=DarkGrey  ctermfg=LightGrey

        highlight StatusLine    ctermbg=White     ctermfg=0     cterm=reverse,bold
        highlight LiningItem    ctermbg=DarkGrey  ctermfg=White cterm=NONE
        highlight LiningBufName ctermbg=White     ctermfg=Black cterm=bold
        highlight LiningBufPath ctermbg=LightGrey ctermfg=Black cterm=bold
    else
        " Cursor lines with 8 colors only are quite terribly looking
        set nocursorline

        highlight Pmenu         ctermfg=NONE ctermbg=NONE  cterm=reverse,bold
        highlight PmenuSel      ctermfg=Cyan ctermbg=Black cterm=reverse
        highlight PmenuSbar     ctermfg=Cyan ctermbg=NONE
        highlight PmenuThumb    ctermfg=Cyan ctermbg=NONE  cterm=bold

        highlight StatusLine    ctermfg=NONE ctermbg=NONE  cterm=reverse
        highlight StatusLineNC  ctermfg=NONE ctermbg=NONE  cterm=reverse,bold
        highlight LiningBufName ctermfg=Cyan ctermbg=Black cterm=reverse
        highlight LiningBufPath ctermfg=Cyan ctermbg=Black cterm=reverse,bold
        highlight link LiningItem StatusLine
    endif

    highlight link LiningVertSep LiningItem
endif

highlight LiningWarn  ctermbg=Brown ctermfg=Yellow guibg=Brown guifg=Yellow
highlight LiningError ctermbg=Red   ctermfg=White  guibg=Red   guifg=White

highlight link LiningLnCol   LiningBufName
highlight link LiningVcsInfo LiningItem

hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Float          Number
hi link Conditional    Repeat
hi link Label          Statement
hi link Keyword        Statement
hi link Exception      Statement
hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link Tag            Special
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special
