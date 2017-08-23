" Colorscheme: NBA Lakers away jersey
" Author: Russell Bradley (me@russellbradley.com)
" Origin: https://github.com/RussellBradley/vim-lakers-away

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "lakers_away_jersey"

"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi SpecialComment -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi NonText -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
"hi Debug -- no settings --
"hi SpecialChar -- no settings --
"hi Todo -- no settings --
"hi Special -- no settings --
hi Normal guifg=#ffc800 guibg=#562880 guisp=#562880 gui=NONE ctermfg=220 ctermbg=54 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi Delimiter -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi SpecialKey -- no settings --
"hi DefinedName -- no settings --
"hi Tag -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Underlined -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#8b1a1a guibg=#ffefdb guisp=#ffefdb gui=NONE ctermfg=88 ctermbg=230 cterm=NONE
hi Typedef guifg=#ff00c8 guibg=NONE guisp=NONE gui=NONE ctermfg=200 ctermbg=NONE cterm=NONE
hi Title guifg=#ffff00 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=11 ctermbg=67 cterm=NONE
hi Folded guifg=#b0e0e6 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=152 ctermbg=67 cterm=NONE
hi PreCondit guifg=#ffff00 guibg=NONE guisp=NONE gui=italic ctermfg=11 ctermbg=NONE cterm=NONE
hi Include guifg=#ffff00 guibg=NONE guisp=NONE gui=italic ctermfg=11 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#ffc800 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=220 ctermbg=67 cterm=NONE
hi DiffText guifg=#ffc800 guibg=#4682b4 guisp=#4682b4 gui=italic ctermfg=220 ctermbg=67 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Conditional guifg=#00bfff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#ffffc8 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ffc800 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffc800 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=220 ctermbg=67 cterm=NONE
hi Label guifg=#ffffc8 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#562880 guibg=#4682b4 guisp=#4682b4 gui=bold ctermfg=54 ctermbg=67 cterm=bold
hi Search guifg=#fffafa guibg=#1e90ff guisp=#1e90ff gui=NONE ctermfg=15 ctermbg=33 cterm=NONE
hi Statement guifg=#f5f5f5 guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Comment guifg=#5c97d6 guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Character guifg=#ff8080 guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE
hi Float guifg=#ffdab9 guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Number guifg=#ffc800 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Boolean guifg=#ff00aa guibg=NONE guisp=NONE gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi Operator guifg=#5c97d6 guibg=NONE guisp=NONE gui=bold ctermfg=68 ctermbg=NONE cterm=bold
hi DiffDelete guifg=#ffff00 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=11 ctermbg=67 cterm=NONE
hi Define guifg=#ff0000 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi Function guifg=#5c97d6 guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#ff8080 guibg=#000000 guisp=#000000 gui=italic ctermfg=210 ctermbg=NONE cterm=NONE
hi PreProc guifg=#ffff00 guibg=NONE guisp=NONE gui=italic ctermfg=11 ctermbg=NONE cterm=NONE
hi Visual guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi VertSplit guifg=#87ceeb guibg=#000000 guisp=#000000 gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Exception guifg=#ffffc8 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi Type guifg=#ffffc8 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#dbcfa2 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=187 ctermbg=67 cterm=NONE
hi Cursor guifg=#fffafa guibg=#cd5c5c guisp=#cd5c5c gui=NONE ctermfg=15 ctermbg=167 cterm=NONE
hi PMenu guifg=#ffff00 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=11 ctermbg=67 cterm=NONE
hi Constant guifg=#ffff00 guibg=NONE guisp=NONE gui=bold ctermfg=11 ctermbg=NONE cterm=bold
hi String guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#b9d3ee guisp=#b9d3ee gui=NONE ctermfg=NONE ctermbg=153 cterm=NONE
hi Repeat guifg=#ffffc8 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Structure guifg=#ffffc8 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Macro guifg=#ffff00 guibg=NONE guisp=NONE gui=italic ctermfg=11 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#ffc800 guibg=#4682b4 guisp=#4682b4 gui=NONE ctermfg=220 ctermbg=67 cterm=NONE
hi cursorim guifg=#ffffff guibg=#e000b0 guisp=#e000b0 gui=NONE ctermfg=15 ctermbg=163 cterm=NONE
hi lcursor guifg=NONE guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi browsedirectory guifg=#97ffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
