" Vim color file
" Maintainer:   Shirk <shirk@gmx.net>
" Last Change:  10 August 2004 - 0.1
" URL: darkside.gentoofreak.org

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark     "or light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="impact"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light

hi Normal       ctermfg=LightGray ctermbg=Black
hi NonText      ctermfg=DarkGray  ctermbg=Black

hi Statement    ctermfg=Blue      ctermbg=Black
hi Comment      ctermfg=DarkCyan  ctermbg=Black
hi Constant     ctermfg=Brown     ctermbg=Black
hi Identifier   ctermfg=Cyan      ctermbg=Black
hi Type         ctermfg=DarkGreen ctermbg=Black
hi Folded       ctermfg=DarkGreen ctermbg=Black cterm=underline term=none
hi Special      ctermfg=Blue      ctermbg=Black
hi PreProc      ctermfg=Lightgray ctermbg=Black cterm=bold term=bold
hi Scrollbar    ctermfg=Blue      ctermbg=Black
hi Cursor       ctermfg=white     ctermbg=Black
hi ErrorMsg     ctermfg=Red       ctermbg=Black cterm=bold term=bold
hi WarningMsg   ctermfg=Yellow    ctermbg=Black
hi VertSplit    ctermfg=White     ctermbg=Black
hi Directory    ctermfg=Cyan      ctermbg=DarkBlue
hi Visual       ctermfg=White     ctermbg=DarkGray cterm=underline term=none
hi Title        ctermfg=White     ctermbg=DarkBlue

hi StatusLine   term=bold cterm=bold,underline ctermfg=White ctermbg=Black
hi StatusLineNC term=bold cterm=bold,underline ctermfg=Gray  ctermbg=Black
hi LineNr       term=bold cterm=bold ctermfg=White ctermbg=DarkGray

