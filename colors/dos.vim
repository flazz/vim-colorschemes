" Vim color file 
" Maintainer:   Marco Peereboom <slash@peereboom.us> 
" Last Change:  August 19, 2004 
" Licence:      Public Domain 

" Try to emulate standard colors so that gvim == vim 

set background=dark 
hi clear 
if exists("syntax_on") 
   syntax reset 
endif 

let g:colors_name = "putty2" 
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light




hi Normal guifg=White guibg=Black 
hi ErrorMsg guibg=Red guifg=White 
hi IncSearch gui=reverse 
"hi ModeMsg 
hi StatusLine gui=reverse 
hi StatusLineNC gui=reverse 
hi VertSplit gui=reverse 
"hi Visual gui=reverse guifg=Red guibg=fg 
hi Visual gui=reverse guifg=White guibg=Black 
hi VisualNOS gui=underline 
hi DiffText guibg=Red 
hi Cursor guibg=#004080 guifg=NONE 
hi lCursor guibg=Cyan guifg=NONE 
hi Directory guifg=Blue 
hi LineNr guifg=#BBBB00 
hi MoreMsg guifg=SeaGreen 
hi NonText guifg=Blue guibg=Black 
hi Question guifg=SeaGreen 
"hi Search guibg=#BBBB00 guifg=NONE 
hi Search guibg=#DDDD00 guifg=NONE 
hi SpecialKey guifg=Blue 
hi Title guifg=Magenta 
hi WarningMsg guifg=Red 
hi WildMenu guibg=Cyan guifg=Black 
hi Folded guibg=White guifg=DarkBlue 
hi FoldColumn guibg=Grey guifg=DarkBlue 
hi DiffAdd guibg=LightBlue 
hi DiffChange guibg=LightMagenta 
hi DiffDelete guifg=Blue guibg=LightCyan 
hi Comment guifg=Blue guibg=Black 
hi Constant guifg=#BB0000 guibg=Black 
hi PreProc guifg=#BB00BB guibg=Black 
hi Statement gui=NONE guifg=#BBBB00 guibg=Black 
hi Special guifg=#BB00BB guibg=Black 
hi Ignore guifg=Grey 
hi Identifier guifg=#00BBBB guibg=Black 
hi Type guifg=#00BB00 guibg=Black 

hi link IncSearch               Visual 
hi link String                  Constant 
hi link Character               Constant 
hi link Number                  Constant 
hi link Boolean                 Constant 
hi link Float                   Number 
hi link Function                Identifier 
hi link Conditional             Statement 
hi link Repeat                  Statement 
hi link Label                   Statement 
hi link Operator                Statement 
hi link Keyword                 Statement 
hi link Exception               Statement 
hi link Include                 PreProc 
hi link Define                  PreProc 
hi link Macro                   PreProc 
hi link PreCondit               PreProc 
hi link StorageClass            Type 
hi link Structure               Type 
hi link Typedef                 Type 
hi link Tag                     Special 
hi link SpecialChar             Special 
hi link Delimiter               Special 
hi link SpecialComment          Special 
hi link Debug                   Special 

hi Normal guifg=Grey guibg=Black 
hi ErrorMsg guibg=Red guifg=Grey 
hi IncSearch gui=reverse 
hi StatusLine gui=reverse 
hi StatusLineNC gui=reverse 
hi VertSplit gui=reverse 
hi Visual gui=reverse guifg=Grey guibg=Black 
hi VisualNOS gui=underline 
hi DiffText guibg=Red 
hi Cursor guibg=#004080 guifg=NONE 
hi lCursor guibg=Cyan guifg=NONE 
hi Directory guifg=Blue 
hi LineNr guifg=Grey 
hi MoreMsg guifg=Green 
hi NonText guifg=Blue guibg=Black 
hi Question guifg=Green 
hi Search guibg=#888800 guifg=Black 
hi SpecialKey guifg=Blue 
hi Title guifg=Magenta 
hi WarningMsg guifg=Red 
hi WildMenu guibg=Cyan guifg=Black 
hi Folded guibg=Grey guifg=DarkBlue 
hi FoldColumn guibg=Grey guifg=DarkBlue 
hi DiffAdd guibg=LightBlue 
hi DiffChange guibg=LightMagenta 
hi DiffDelete guifg=Blue guibg=LightCyan 
hi Comment guifg=Cyan guibg=Black 
hi Constant guifg=Magenta guibg=Black 
hi PreProc guifg=Blue guibg=Black 
hi Statement gui=NONE guifg=Yellow guibg=Black 
hi Special guifg=Red guibg=Black 
hi Ignore guifg=Grey 
hi Identifier guifg=Yellow guibg=Black 
hi Type gui=NONE guifg=Green guibg=Black  

