" Vim color File
" Name:			biogoo
" Maintainer:	Benjamin Esham <bdesham@iname.com>
" Last Change:	2004-02-03
" Version:		1.2
"
" A fairly simple gray-background scheme.  Feedback is greatly appreciated!
"
" Installation:
"   Copy to ~/.vim/colors; do :color biogoo
"
" Customization Options:
"   Use a 'normal' cursor color:
"     let g:biogoo_normal_cursor = 1
"
" Props:
"   Jani Nurminen's zenburn.vim as an example file.
"   Scott and Matt for feature suggestions.
"
" Version History:
"   1.2:   added `SpellErrors' group for use with vimspell.
"   1.1:   added `IncSearch' group for improved visibility in incremental searches.
"   1.0:   minor tweaks
"   0.95:  initial release
"
" TODO: Possibly add some more groups -- please email me if I've left any out.

set background=light
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "biogoo"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light

hi Comment			guifg=#0000c3
hi Constant			guifg=#0000ff
hi Delimiter		guifg=#00007f
hi DiffAdd			guifg=#007f00 guibg=#e5e5e5
hi DiffChange		guifg=#00007f guibg=#e5e5e5
hi DiffDelete		guifg=#7f0000 guibg=#e5e5e5
hi DiffText			guifg=#ee0000 guibg=#e5e5e5
hi Directory		guifg=#b85d00
hi Error			guifg=#d6d6d6 guibg=#7f0000
hi ErrorMsg			guifg=#ffffff guibg=#ff0000 gui=bold
hi Float			guifg=#b85d00
hi FoldColumn		guifg=#00007f guibg=#e5e5e5
hi Folded			guifg=#00007f guibg=#e5e5e5
hi Function			guifg=#7f0000
hi Identifier		guifg=#004000
hi Include			guifg=#295498 gui=bold
hi IncSearch		guifg=#ffffff guibg=#0000ff gui=bold
hi LineNr			guifg=#303030 guibg=#e5e5e5 gui=underline
hi Keyword			guifg=#00007f
hi Macro			guifg=#295498
hi ModeMsg			guifg=#00007f
hi MoreMsg			guifg=#00007f
hi NonText			guifg=#007f00
hi Normal			guifg=#000000 guibg=#d6d6d6
hi Number			guifg=#b85d00
hi Operator			guifg=#00007f
hi PreCondit		guifg=#295498 gui=bold
hi PreProc			guifg=#0c3b6b gui=bold
hi Question			guifg=#00007f
hi Search			guibg=#ffff00
hi Special			guifg=#007f00
hi SpecialKey		guifg=#00007f
hi SpellErrors		guifg=#7f0000 gui=underline
hi Statement		guifg=#00007f gui=none
hi StatusLine		guifg=#00007f guibg=#ffffff
hi StatusLineNC		guifg=#676767 guibg=#ffffff
hi String			guifg=#d10000
hi Title			guifg=#404040 gui=bold
hi Todo				guifg=#00007f guibg=#e5e5e5 gui=underline
hi Type				guifg=#540054 gui=bold
hi Underlined		guifg=#b85d00
hi VertSplit		guifg=#676767 guibg=#ffffff
hi Visual			guifg=#7f7f7f guibg=#ffffff
hi VisualNOS		guifg=#007f00 guibg=#e5e5e5
hi WarningMsg		guifg=#500000
hi WildMenu			guifg=#540054

if !exists("g:biogoo_normal_cursor")
	" use a gray-on-blue cursor
	hi Cursor		guifg=#ffffff guibg=#00007f
endif
