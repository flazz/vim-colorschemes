" Colorscheme: NBA Celtics away jersey
" Author: Russell Bradley (me@russellbradley.com)
" Origin: https://github.com/RussellBradley/vim-celtics-away

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "celtics_away"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#f9f9ff guibg=#335b38 guisp=#335b38 gui=NONE ctermfg=189 ctermbg=65 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=NONE ctermfg=65 ctermbg=77 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Title guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=bold ctermfg=65 ctermbg=77 cterm=bold
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreCondit guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Include guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#335b38 guibg=#bd9700 guisp=#bd9700 gui=bold ctermfg=65 ctermbg=1 cterm=bold
hi StatusLineNC guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=bold ctermfg=65 ctermbg=77 cterm=bold
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffText guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=NONE ctermfg=65 ctermbg=77 cterm=NONE
hi ErrorMsg guifg=#335b38 guibg=#bd9700 guisp=#bd9700 gui=NONE ctermfg=65 ctermbg=1 cterm=NONE
hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi StorageClass guifg=#3bc74c guibg=NONE guisp=NONE gui=bold ctermfg=77 ctermbg=NONE cterm=bold
hi Todo guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=NONE ctermfg=65 ctermbg=77 cterm=NONE
hi Special guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi LineNr guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=bold ctermfg=65 ctermbg=77 cterm=bold
hi Label guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#335b38 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=65 ctermbg=1 cterm=NONE
hi Search guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=NONE ctermfg=65 ctermbg=77 cterm=NONE
hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Comment guifg=#a1a6a8 guibg=NONE guisp=NONE gui=italic ctermfg=248 ctermbg=NONE cterm=NONE
hi Character guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=NONE ctermfg=65 ctermbg=77 cterm=NONE
hi Boolean guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Operator guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLineFill guifg=#192224 guibg=#3bc74c guisp=#3bc74c gui=bold ctermfg=235 ctermbg=77 cterm=bold
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=#335b38 guibg=#bd9700 guisp=#bd9700 gui=NONE ctermfg=65 ctermbg=1 cterm=NONE
hi ModeMsg guifg=#F9F9F9 guibg=#192224 guisp=#192224 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Function guifg=#3bc74c guibg=NONE guisp=NONE gui=bold ctermfg=77 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreProc guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Visual guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi MoreMsg guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi Exception guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Keyword guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Type guifg=#3bc74c guibg=NONE guisp=NONE gui=bold ctermfg=77 ctermbg=NONE cterm=bold
hi DiffChange guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=NONE ctermfg=65 ctermbg=77 cterm=NONE
hi Cursor guifg=#192224 guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=NONE ctermfg=65 ctermbg=77 cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Tag guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#a1a6a8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Repeat guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=#335b38 guibg=#bd9700 guisp=#bd9700 gui=NONE ctermfg=65 ctermbg=1 cterm=NONE
hi TabLine guifg=#335b38 guibg=#3bc74c guisp=#3bc74c gui=bold ctermfg=65 ctermbg=77 cterm=bold
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
