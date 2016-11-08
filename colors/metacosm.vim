
" Vim color file
" Maintainer: Robert Melton ( vim at metacosm dot dhs dot org )
" Last Change: 2004 June 19th


" -----------------------------------------------------------------------------
" This color scheme uses a dark grey background.
" This theme, based on evening (with some input from Torte) is designed to 
" seperate active text (code) from background/line numbers/folds/listchars by 
" having different background colors on the non-code and the code (just 
" slightly).  If you look at the screenshot below, you will get the idea.  
" All non-code(include indents) and string literals have a black background 
" while code has a very dark grey background.
" -----------------------------------------------------------------------------
set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "metacosm"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light


" -----------------------------------------------------------------------------
" Primary (hyper/selected/colored background)
" -----------------------------------------------------------------------------
" Search
hi IncSearch guibg=black guifg=cyan
hi Search guibg=black guifg=cyan

" Visual 
hi Visual guibg=black guifg=yellow
hi VisualNOS guibg=black guifg=yellow gui=underline

" Borders
hi StatusLine guibg=black guifg=white
hi StatusLineNC guibg=grey22 guifg=grey45
hi VertSplit guibg=black guifg=grey45

" Cursors
hi Cursor guibg=white guifg=black
hi lCursor guibg=white guifg=black

" Diff
hi DiffText guibg=red guifg=white gui=bold
hi DiffAdd guibg=darkblue guifg=white
hi DiffChange guibg=darkmagenta guifg=white
hi DiffDelete guibg=darkcyan guifg=blue gui=bold

" Misc
hi Title guifg=magenta gui=bold
hi Question guibg=black guifg=green gui=bold
hi Todo  guibg=black guifg=cyan
hi Error guibg=red guifg=white
hi WildMenu guibg=cyan guifg=black


" -----------------------------------------------------------------------------
" Primary (active/code/text/grey background)
" -----------------------------------------------------------------------------
" Normal
hi Normal guibg=grey22 guifg=white

" Constants
hi Constant guibg=grey22 guifg=#ffa0a0
hi String guibg=grey22 guifg=#ffa0a0
hi Character guibg=grey22 guifg=#ffa0a0
hi Number guibg=grey22 guifg=#ffa0a0
hi Boolean guibg=grey22 guifg=#ffa0a0
hi Float guibg=grey22 guifg=#ffa0a0

" Identifier
hi Identifier guibg=grey22 guifg=#40ffff
hi Function guibg=grey22 guifg=#40ffff

" Statement
hi Statement guibg=grey22 guifg=#ffff60
hi Conditional guibg=grey22 guifg=#ffff60
hi Repeat guibg=grey22 guifg=#ffff60
hi Label guibg=grey22 guifg=#ffff60
hi Operator guibg=grey22 guifg=#ffff60
hi Keyword guibg=grey22 guifg=#ffff60
hi Exception guibg=grey22 guifg=#ffff60

" PreProc
hi PreProc guibg=grey22 guifg=#ff80ff
hi Include guibg=grey22 guifg=#ff80ff
hi Define guibg=grey22 guifg=#ff80ff
hi Macro guibg=grey22 guifg=#ff80ff
hi PreCondit guibg=grey22 guifg=#ff80ff

" Type
hi Type guibg=grey22 guifg=#60ff60
hi StorageClass guibg=grey22 guifg=#60ff60
hi Structure guibg=grey22 guifg=#60ff60
hi Typedef guibg=grey22 guifg=#60ff60

" Special
hi Special guibg=grey22 guifg=orange
hi SpecialChar guibg=grey22 guifg=orange
hi Tag guibg=grey22 guifg=orange
hi Delimiter guibg=grey22 guifg=orange
hi Debug guibg=grey22 guifg=orange

" Misc
hi Underlined guibg=grey22 guifg=#ffff60 gui=underline


" -----------------------------------------------------------------------------
" Secondary (inactive/black background)
" -----------------------------------------------------------------------------
" Comments
hi Comment guibg=black guifg=#80a0ff
hi SpecialComment guibg=black guifg=#80a0ff gui=underline

" Messages
hi ModeMsg guibg=black guifg=white gui=bold
hi MoreMsg guibg=black guifg=seagreen gui=bold
hi WarningMsg guibg=black guifg=blue gui=bold
hi ErrorMsg guibg=black guifg=red gui=bold

" Folding
hi Folded guibg=black guifg=grey45
hi FoldColumn guibg=black guifg=grey45

" Misc
hi Ignore guibg=black guifg=grey45
hi NonText guibg=black guifg=grey45
hi LineNr guibg=black guifg=grey45
hi SpecialKey guibg=black guifg=grey45
hi SignColumn guibg=black guifg=grey45
hi Directory guibg=black guifg=cyan
