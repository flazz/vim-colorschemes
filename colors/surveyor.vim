" Surveyor color scheme version 1.0
" By Marcel Strik

set background=light
hi clear

if exists( "syntax_on" )
	syntax reset
endif

let g:colors_name = "Surveyor"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light


" hi Normal	guibg=#5f626d guifg=#e1eaff
hi Normal	guibg=#000040 guifg=#e1eaff
hi NonText	guibg=#5f626d guifg=#fefefe
hi Cursor	guibg=#fef047

hi Statement	guifg=#d9f5ff
hi Special		guifg=#efefaa gui=bold
hi Constant		guifg=#ffd6b0
hi Comment		guifg=#fceb70
hi Preproc		guifg=#aec5ff
hi Type			guifg=#ffd9f4
hi Identifier	guifg=#fff297

hi StatusLine	guibg=#7076af
hi StatusLineNC guibg=#a7abcd

hi Visual		guibg=#a7abcd

hi VertSplit	guibg=#7076af guifg=#dddeec

hi Directory	guibg=#6c0075 guifg=#fbcaff

hi WarningMsg	guibg=red

hi Error		guibg=red

hi IncSearch	guibg=red
hi Search		guibg=#d09e09 guifg=white gui=bold

hi Title		guifg=#ffc4ed

hi Underlined	guifg=#f9c6fd

hi SpecialKey	guibg=#c10000 guifg=#ffd2d2

hi Function		guifg=#bbcfff gui=bold



