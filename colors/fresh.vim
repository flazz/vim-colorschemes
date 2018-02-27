" Vim color file - fresh
" Name:       fresh.vim
" Maintainer: https://github.com/Alvarocz/
" Url:        https://github.com/Alvarocz/vim-fresh
" License:    The MIT License (MIT)

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "fresh"

" Palette
let s:bg = {'gui': '#0b0b13', 'cterm': 232}
let s:fg = {'gui': '#71818f', 'cterm': 241}
let s:light_gray = {'gui': '#e3e3e3', 'cterm': 253}
let s:gray = {'gui': '#44474f', 'cterm': 241}
let s:dark_gray = {'gui': '#12121e', 'cterm': 233}
let s:cyan = {'gui': '#0085a8', 'cterm': 50}
let s:light_blue = {'gui': '#6c67f6', 'cterm': 33}
let s:blue = {'gui': '#515d90', 'cterm': 20}
let s:dark_blue = {'gui': '#3b4574', 'cterm': 60}
let s:purple = {'gui': '#8f4aa8', 'cterm': 57}
let s:fuchsia = {'gui': '#a84a79', 'cterm': 197}
let s:light_green = {'gui': '#31c238', 'cterm': 47}
let s:green = {'gui': '#4aa87e', 'cterm': 47}
let s:dark_green = {'gui': '#258349', 'cterm': 47}
let s:red = {'gui': '#ac2727', 'cterm': 160}
let s:orange = {'gui': '#c24c31', 'cterm': 166}

"hi Directory 
exec "hi Boolean guifg=". s:fuchsia.gui ." guibg=NONE gui=bold ctermfg=". s:fuchsia.cterm
exec "hi Builtin guifg=". s:purple.gui ." guibg=NONE gui=bold ctermfg=". s:purple.cterm
exec "hi Character guifg=". s:orange.gui ." guibg=NONE gui=NONE ctermfg=". s:orange.cterm
exec "hi Comment guifg=". s:fuchsia.gui ." guibg=NONE gui=italic ctermfg=". s:fuchsia.cterm
exec "hi Conditional guifg=". s:fuchsia.gui ." guibg=NONE gui=NONE ctermfg=". s:fuchsia.cterm
exec "hi ColorColumn guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=". s:dark_gray.cterm
exec "hi Constant guifg=". s:cyan.gui ." guibg=NONE gui=NONE ctermfg=". s:cyan.cterm
exec "hi cursorim guifg=". s:bg.gui ." guibg=". s:blue.gui ." gui=NONE ctermfg=" s:bg.cterm " ctermbg=". s:blue.cterm
exec "hi CursorLine guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=". s:dark_gray.cterm
exec "hi CursorLineNr guifg=". s:cyan.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:cyan.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi CursorColumn guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=". s:dark_gray.cterm
exec "hi Cursor guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=241"
exec "hi Debug guifg=". s:fuchsia.gui ." guibg=NONE gui=NONE ctermfg=". s:fuchsia.cterm
exec "hi Define guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Delimiter guifg=". s:dark_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:dark_blue.cterm
"hi EnumerationName 
"hi EnumerationValue 
exec "hi Error guifg=". s:bg.gui ." guibg=". s:red.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:red.cterm
exec "hi ErrorMsg guifg=". s:red.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:red.cterm
exec "hi Exception guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Float guifg=". s:green.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:green.cterm
"hi FoldColumn 
exec "hi Folded guifg=". s:light_gray.gui " guibg=". s:blue.gui ." gui=NONE ctermfg=". s:light_blue.cterm ." ctermbg=". s:blue.cterm
exec "hi Function guifg=". s:light_gray.gui ." guibg=NONE gui=NONE ctermfg=". s:light_gray.cterm
exec "hi Identifier guifg=". s:fg.gui ." guibg=NONE gui=NONE cterm=NONE ctermfg=". s:fg.cterm
"hi Ignore 
exec "hi Import guifg=". s:light_gray.gui ." guibg=NONE gui=NONE ctermfg=". s:light_gray.cterm
exec "hi Include guifg=". s:fg.gui ." guibg=NONE gui=NONE ctermfg=". s:fg.cterm
exec "hi IncSearch guifg=". s:cyan.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:cyan.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi Keyword guifg=". s:light_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:light_blue.cterm
exec "hi Label guifg=". s:cyan.gui ." guibg=NONE gui=NONE ctermfg=". s:cyan.cterm
exec "hi LineNr guifg=". s:light_gray.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:light_gray.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi Macro guifg=". s:gray.gui ." guibg=NONE gui=NONE ctermfg=". s:gray.cterm
exec "hi MatchParen guifg=". s:bg.gui ." guibg=". s:gray.gui ." gui=bold cterm=bold ctermfg=". s:bg.cterm ." ctermbg=". s:gray.cterm
exec "hi NonText guifg=". s:fg.gui ." guibg=" s:bg.gui " gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Normal guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Number guifg=". s:green.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:green.cterm
exec "hi Operator guifg=". s:dark_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:dark_blue.cterm
exec "hi PMenu guifg=". s:light_gray.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:light_gray.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi PMenuSbar guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=NONE ctermbg=". s:dark_gray.cterm
exec "hi PMenuSel guifg=#000000 guibg=". s:purple.gui ." gui=NONE ctermfg=NONE ctermbg=". s:purple.cterm
exec "hi PMenuThumb guifg=NONE guibg=". s:purple.gui ." gui=NONE ctermfg=NONE ctermbg=". s:purple.cterm
exec "hi PreCondit guifg=". s:gray.gui ." guibg=NONE gui=NONE ctermfg=". s:gray.cterm
exec "hi PreProc guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Question guifg=". s:fuchsia.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:fuchsia.cterm
exec "hi Repeat guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Search guifg=". s:bg.gui ." guibg=". s:cyan.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:cyan.cterm
"hi SignColumn 
exec "hi Special guifg=". s:red.gui ." guibg=NONE gui=NONE ctermfg=". s:red.cterm
exec "hi SpecialChar guifg=". s:orange.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi SpecialComment guifg=". s:orange.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi SpecialKey guifg=". s:red.gui ." guibg=". s:dark_blue.gui ." gui=NONE ctermfg=". s:red.cterm ." ctermbg=". s:dark_blue.cterm
exec "hi Statement guifg=". s:light_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:light_blue.cterm
exec "hi StatusLine guifg=". s:fg.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi StatusLineNC guifg=". s:gray.gui ." guibg=". s:dark_gray.gui ." gui=NONE ctermfg=". s:gray.cterm ." ctermbg=". s:dark_gray.cterm
exec "hi StorageClass guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi String guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi Structure guifg=". s:blue.gui ." guibg=NONE gui=NONE ctermfg=". s:blue.cterm
exec "hi TabLine guifg=". s:bg.gui ." guibg=". s:gray.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:gray.cterm
exec "hi TabLineFill guifg=NONE guibg=". s:gray.gui ." gui=NONE ctermbg=". s:gray.cterm
exec "hi TabLineSel guifg=". s:light_gray.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:light_gray.cterm ." ctermbg=". s:bg.cterm
exec "hi Tag guifg=". s:orange.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi Title guifg=". s:fg.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:fg.cterm
exec "hi Todo guifg=". s:gray.gui ." guibg=NONE gui=NONE ctermfg=". s:gray.cterm
exec "hi Type guifg=". s:purple.gui ." guibg=NONE gui=NONE ctermfg=". s:purple.cterm
exec "hi Typedef guifg=". s:purple.gui ." guibg=NONE gui=NONE ctermfg=". s:purple.cterm
"hi Underlined 
"hi Union 
exec "hi VertSplit guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=238 ctermbg=". s:dark_gray.cterm
exec "hi Visual guifg=NONE guibg=". s:dark_gray.gui ." gui=NONE ctermfg=0 ctermbg=". s:dark_gray.cterm
"hi WarningMsg 
"hi WildMenu 
" Python
exec "hi pythonDecorator guifg=". s:fuchsia.gui ." guibg=NONE gui=NONE ctermfg=". s:fuchsia.cterm
exec "hi pythonDecoratorName guifg=". s:fuchsia.gui ." guibg=NONE gui=NONE ctermfg=". s:fuchsia.cterm
exec "hi pythonexception guifg=". s:dark_gray.gui ." guibg=NONE gui=NONE ctermfg=". s:dark_gray.cterm
exec "hi pythonexclass guifg=". s:cyan.gui ." guibg=NONE gui=NONE ctermfg=". s:cyan.cterm

" HTML
exec "hi htmlTag guifg=". s:dark_blue.gui ." guibg=NONE gui=NONE ctermfg=". s:dark_blue.cterm
exec "hi htmlTagName guifg=". s:light_gray.gui ." guibg=NONE gui=NONE ctermfg=". s:light_gray.cterm
exec "hi htmlArg guifg=". s:purple.gui ." guibg=NONE gui=NONE ctermfg=". s:purple.cterm

" TODO: Add support for css

" Diff
exec "hi DiffAdd guifg=NONE guibg=". s:green.gui ." ctermbg=". s:green.cterm
exec "hi DiffChange guifg=NONE guibg=". s:blue.gui ." ctermbg=". s:blue.cterm
exec "hi DiffDelete guifg=NONE guibg=". s:red.gui ." ctermbg=". s:red.cterm
