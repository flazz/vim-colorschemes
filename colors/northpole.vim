" Vim color file - northpole
" Name:       northpole.vim
" Maintainer: https://github.com/Alvarocz/
" Url: https://github.com/Alvarocz/vim-northpole
" License:    The MIT License (MIT)

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "northpole"

" Palette
let s:bg = {'gui': '#1e1f25', 'cterm': 234}
let s:fg = {'gui': '#a2a8ad', 'cterm': 247}
let s:white = {'gui': '#D5D6D7', 'cterm': 15}
let s:light_gray = {'gui': '#caccd7', 'cterm': 252}
let s:gray = {'gui': '#626870', 'cterm': 241}
let s:dark_gray = {'gui': '#2C2D34', 'cterm': 236}
let s:cyan = {'gui': '#54c5ca', 'cterm': 50}
let s:blue = {'gui': '#8599cc', 'cterm': 33}
let s:dark_blue = {'gui': '#58678C', 'cterm': 60}
let s:gray_blue = {'gui': '#23242A', 'cterm': 235}
let s:purple = {'gui': '#ad85cc', 'cterm': 57}
let s:green = {'gui': '#54ca91', 'cterm': 47}
let s:red = {'gui': '#ee6a6a', 'cterm': 160}
let s:orange = {'gui': '#e89e70', 'cterm': 166}
let s:light_orange = {'gui': '#f0c674', 'cterm': 168}

"hi Directory 
exec "hi Boolean guifg=". s:white.gui ." guibg=NONE gui=bold ctermfg=". s:white.cterm
exec "hi Builtin guifg=". s:purple.gui ." guibg=NONE gui=bold ctermfg=". s:purple.cterm
exec "hi Character guifg=#ff9800 guibg=NONE gui=NONE ctermfg=208"
exec "hi Comment guifg=". s:gray.gui ." guibg=NONE gui=italic ctermfg=". s:gray.cterm
exec "hi Conditional guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm
exec "hi ColorColumn guifg=NONE guibg=". s:gray_blue.gui ." gui=NONE ctermfg=NONE ctermbg=". s:gray_blue.cterm
exec "hi Constant guifg=". s:cyan.gui ." guibg=NONE gui=NONE ctermfg=". s:cyan.cterm
exec "hi cursorim guifg=#192224 guibg=#536991 gui=NONE ctermfg=235 ctermbg=60"
exec "hi CursorLine guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=". s:dark_gray.cterm
exec "hi CursorLineNr guifg=". s:cyan.gui ." guibg=". s:gray_blue.gui ." gui=NONE ctermfg=". s:cyan.cterm ." ctermbg=". s:gray_blue.cterm
exec "hi CursorColumn guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=". s:dark_gray.cterm
exec "hi Cursor guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=241"
exec "hi Debug guifg=". s:light_orange.gui ." guibg=NONE gui=NONE ctermfg=". s:light_orange.cterm
exec "hi Define guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Delimiter guifg=". s:gray.gui ." guibg=NONE gui=NONE ctermfg=". s:gray.cterm
"hi EnumerationName 
"hi EnumerationValue 
exec "hi Error guifg=". s:bg.gui ." guibg=". s:red.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:red.cterm
exec "hi ErrorMsg guifg=". s:red.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:red.cterm
exec "hi Exception guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Float guifg=". s:green.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:green.cterm
"hi FoldColumn 
exec "hi Folded guifg=#a0a8b0 guibg=#384048 gui=NONE ctermfg=103 ctermbg=238"
exec "hi Function guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Identifier guifg=". s:fg.gui ." guibg=NONE gui=NONE cterm=NONE ctermfg=". s:fg.cterm
"hi Ignore 
exec "hi Import guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm
exec "hi Include guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm
exec "hi IncSearch guifg=". s:cyan.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:cyan.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi Keyword guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm
exec "hi Label guifg=#7e8aa2 guibg=NONE gui=NONE ctermfg=103"
exec "hi LineNr guifg=". s:fg.gui ." guibg=". s:gray_blue.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:gray_blue.cterm
exec "hi Macro guifg=". s:gray.gui ." guibg=NONE gui=NONE ctermfg=". s:gray.cterm
exec "hi MatchParen guifg=". s:bg.gui ." guibg=". s:dark_blue.gui ." gui=bold cterm=bold ctermfg=". s:bg.cterm ." ctermbg=". s:dark_blue.cterm
exec "hi NonText guifg=#808080 guibg=#202020 gui=NONE ctermfg=8 ctermbg=234"
exec "hi Normal guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Number guifg=". s:green.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:green.cterm
exec "hi Operator guifg=". s:dark_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:dark_blue.cterm
exec "hi PMenu guifg=". s:white.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi PMenuSbar guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=". s:dark_gray.cterm
exec "hi PMenuSel guifg=#000000 guibg=". s:green.gui ." gui=NONE ctermfg=NONE ctermbg=". s:green.cterm
exec "hi PMenuThumb guifg=NONE guibg=". s:green.gui ." gui=NONE ctermfg=NONE ctermbg=". s:green.cterm
exec "hi PreCondit guifg=". s:gray.gui ." guibg=NONE gui=NONE ctermfg=". s:gray.cterm
exec "hi PreProc guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Question guifg=". s:light_orange.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:light_orange.cterm
exec "hi Repeat guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Search guifg=". s:cyan.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:cyan.cterm ." ctermbg=". s:dark_gray.cterm
"hi SignColumn 
exec "hi Special guifg=". s:red.gui ." guibg=NONE gui=NONE ctermfg=". s:red.cterm
exec "hi SpecialChar guifg=". s:orange.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi SpecialComment guifg=". s:orange.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi SpecialKey guifg=". s:light_orange.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:light_orange.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi Statement guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm
exec "hi StatusLine guifg=". s:white.gui ." guibg=". s:gray_blue.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:gray_blue.cterm
exec "hi StatusLineNC guifg=". s:gray.gui ." guibg=". s:gray_blue.gui ." gui=NONE ctermfg=". s:gray.cterm ." ctermbg=". s:gray_blue.cterm
exec "hi StorageClass guifg=". s:dark_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:dark_blue.cterm
exec "hi String guifg=". s:red.gui ." guibg=NONE gui=NONE ctermfg=". s:red.cterm
exec "hi Structure guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi TabLine guifg=". s:bg.gui ." guibg=". s:gray.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:gray.cterm
exec "hi TabLineFill guifg=NONE guibg=". s:gray.gui ." gui=NONE ctermbg=". s:gray.cterm
exec "hi TabLineSel guifg=". s:white.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:bg.cterm
exec "hi Tag guifg=". s:orange.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi Title guifg=". s:fg.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:fg.cterm
exec "hi Todo guifg=#8f8f8f guibg=NONE gui=NONE ctermfg=245"
exec "hi Type guifg=". s:purple.gui ." guibg=NONE gui=NONE ctermfg=". s:purple.cterm
exec "hi Typedef guifg=". s:dark_blue.gui ." guibg=NONE gui=NONE ctermfg=103"
"hi Underlined 
"hi Union 
exec "hi VertSplit guifg=NONE guibg=". s:gray_blue.gui ." gui=NONE ctermfg=238 ctermbg=". s:gray_blue.cterm
exec "hi Visual guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=0 ctermbg=". s:dark_blue.cterm
"hi WarningMsg 
"hi WildMenu 
" Python
exec "hi pythonDecorator guifg=". s:green.gui ." guibg=NONE gui=NONE ctermfg=". s:green.cterm
exec "hi pythonDecoratorName guifg=". s:green.gui ." guibg=NONE gui=NONE ctermfg=". s:green.cterm
exec "hi pythonexception guifg=". s:dark_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:dark_blue.cterm
exec "hi pythonexclass guifg=". s:cyan.gui ." guibg=NONE gui=NONE ctermfg=". s:cyan.cterm

" HTML
exec "hi htmlTag guifg=". s:gray.gui ." guibg=NONE gui=NONE ctermfg=". s:gray.cterm
exec "hi htmlTagName guifg=". s:purple.gui ." guibg=NONE gui=NONE ctermfg=". s:purple.cterm
exec "hi htmlArg guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm

" TODO: Add support for css

" Diff
exec "hi DiffAdd guifg=NONE guibg=". s:green.gui ." ctermbg=". s:green.cterm
exec "hi DiffChange guifg=NONE guibg=". s:blue.gui ." ctermbg=". s:blue.cterm
exec "hi DiffDelete guifg=NONE guibg=". s:red.gui ." ctermbg=". s:red.cterm
