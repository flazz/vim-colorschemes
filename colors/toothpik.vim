
highlight clear
if exists( "syntax_on" )
    syntax reset
endif
let g:colors_name="toothpik"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light

highlight Comment term=bold  guifg=Yellow
highlight Constant term=underline  guifg=Blue guibg=grey
highlight Cursor gui=reverse guifg=red guibg=white
highlight lCursor guifg=black guibg=green
highlight DiffAdd term=bold  guibg=LightBlue
highlight DiffChange term=bold  guibg=LightMagenta
highlight DiffDelete term=bold  gui=bold guifg=Blue guibg=LightCyan
highlight DiffText term=reverse  gui=bold guibg=Red
highlight Directory term=bold  guifg=Blue
highlight Error term=reverse  guifg=White guibg=Red
highlight ErrorMsg term=standout  guifg=White guibg=Red
highlight Folded term=standout   guifg=DarkBlue guibg=LightGrey
highlight FoldColumn term=standout  guifg=DarkBlue guibg=Grey
highlight Identifier term=underline  guifg=DarkCyan
highlight Ignore  guifg=bg
highlight IncSearch term=reverse  gui=reverse
highlight LineNr term=underline  guifg=Brown
highlight MoreMsg term=bold  gui=bold guifg=SeaGreen
highlight ModeMsg term=bold  gui=bold
highlight NonText term=bold  gui=bold guifg=Blue guibg=grey
highlight Normal guibg=grey font='Fixedsys'
highlight Question term=standout  gui=bold guifg=SeaGreen
highlight PreProc term=underline  guifg=Purple
highlight Search term=reverse  guibg=Yellow
highlight Special term=bold  guifg=darkred guibg=grey
highlight SpecialKey term=bold  guifg=Blue
highlight Statement term=bold  gui=bold guifg=Brown
highlight StatusLine term=bold,reverse  gui=bold,reverse
highlight StatusLineNC term=reverse  gui=reverse
highlight Title term=bold  gui=bold guifg=Magenta
highlight Todo term=standout  guifg=Blue guibg=Yellow
highlight Type term=underline  gui=bold guifg=DarkGreen
highlight Underlined term=underline  gui=underline guifg=SlateBlue
highlight VertSplit term=reverse  gui=reverse
highlight Visual term=reverse  gui=reverse guifg=Yellow guibg=Black
highlight VisualNOS term=bold,underline  gui=bold,underline
highlight WarningMsg term=standout  guifg=Red
highlight WildMenu term=standout  guifg=Black guibg=Yellow
