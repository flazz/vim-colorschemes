" Rupza
" 🔱 a dark colorscheme to GUI Vim. 
" Created by: Felipe Sousa <felipzbr@gmail.com>

set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256

let g:colors_name = "rupza"

hi Normal guifg=#FFFFFF guibg=#242424 guisp=#242424 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE

hi IncSearch guifg=#111214 guibg=#fcfcfc guisp=#fcfcfc gui=underline ctermfg=233 ctermbg=15 cterm=underline
hi SpecialComment guifg=#466EFF guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi Typedef guifg=#FEFFBA guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi Title guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Folded guifg=#FFFFFF guibg=#373737 guisp=#373737 gui=NONE ctermfg=15 ctermbg=237 cterm=NONE
hi PreCondit guifg=#FFA41B guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Include guifg=#FFA41B guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#696969 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=242 ctermbg=15 cterm=NONE
hi NonText guifg=#A6A6A6 guibg=#222222 guisp=#222222 gui=NONE ctermfg=248 ctermbg=235 cterm=NONE
hi DiffText guifg=#828282 guibg=#1D1D1D guisp=#1D1D1D gui=underline ctermfg=8 ctermbg=234 cterm=underline
hi ErrorMsg guifg=#FFFFFF guibg=#FF0000 guisp=#FF0000 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi Ignore guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi Debug guifg=#466EFF guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#373737 guisp=#373737 gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
hi Identifier guifg=#00f2ff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#466EFF guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ff7700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#FEFFBA guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi Special guifg=#ff478a guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi LineNr guifg=#545454 guibg=#242424 guisp=#242424 gui=NONE ctermfg=240 ctermbg=235 cterm=NONE
hi StatusLine guifg=#0f0f0f guibg=#d4d4d4 guisp=#d4d4d4 gui=NONE ctermfg=233 ctermbg=188 cterm=NONE
hi Label guifg=#FEFFBA guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#2E2E2E guibg=#62FB44 guisp=#62FB44 gui=NONE ctermfg=236 ctermbg=119 cterm=NONE
hi Search guifg=#FFDABB guibg=#708090 guisp=#708090 gui=NONE ctermfg=223 ctermbg=60 cterm=NONE
hi Delimiter guifg=#466EFF guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi Statement guifg=#ff6363 guibg=NONE guisp=NONE gui=NONE ctermfg=9 ctermbg=NONE cterm=NONE
hi Comment guifg=#878587 guibg=NONE guisp=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi Character guifg=#DAC5FF guibg=#141414 guisp=#141414 gui=NONE ctermfg=183 ctermbg=233 cterm=NONE
hi Number guifg=#ffaa42 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Boolean guifg=#FF6262 guibg=NONE guisp=NONE gui=NONE ctermfg=9 ctermbg=NONE cterm=NONE
hi Operator guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Question guifg=#60FF5C guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#FF0000 guibg=#1D1D1D guisp=#1D1D1D gui=NONE ctermfg=196 ctermbg=234 cterm=NONE
hi ModeMsg guifg=#60FF5C guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi Define guifg=#FFA41B guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Function guifg=#faac0f guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#9e9e9e guibg=#242424 guisp=#242424 gui=bold ctermfg=247 ctermbg=235 cterm=bold
hi PreProc guifg=#ffa41b guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Visual guifg=#FFFFFF guibg=#07077B guisp=#07077B gui=NONE ctermfg=15 ctermbg=18 cterm=NONE
hi MoreMsg guifg=#60FF5C guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#B8B8B8 guibg=#373737 guisp=#373737 gui=NONE ctermfg=250 ctermbg=237 cterm=NONE
hi Exception guifg=#FEFFBA guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi Keyword guifg=#FEFFBA guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi Type guifg=#ff4f4f guibg=NONE guisp=NONE gui=NONE ctermfg=203 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#8c878c guibg=NONE guisp=NONE gui=underline ctermfg=245 ctermbg=NONE cterm=underline
hi Cursor guifg=#e8e8e8 guibg=#3c3c3d guisp=#3c3c3d gui=NONE ctermfg=254 ctermbg=237 cterm=NONE
hi PMenu guifg=#5A5A5A guibg=#A8FF97 guisp=#A8FF97 gui=NONE ctermfg=240 ctermbg=120 cterm=NONE
hi Constant guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Tag guifg=#466EFF guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi String guifg=#bb9bfa guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#B8B8B8 guisp=#B8B8B8 gui=NONE ctermfg=NONE ctermbg=250 cterm=NONE
hi MatchParen guifg=#2424FF guibg=#60FF5C guisp=#60FF5C gui=NONE ctermfg=21 ctermbg=83 cterm=NONE
hi Repeat guifg=#FEFFBA guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi Directory guifg=#94948a guibg=NONE guisp=NONE gui=underline ctermfg=246 ctermbg=NONE cterm=underline
hi Structure guifg=#FEFFBA guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi Macro guifg=#FFA41B guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Underlined guifg=#20b0eF guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#07AF07 guibg=#1D1D1D guisp=#1D1D1D gui=NONE ctermfg=34 ctermbg=234 cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi lcursor guifg=#ffdab9 guibg=#000000 guisp=#000000 gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
