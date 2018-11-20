" Vim color file - vivid
" Generated by http://bytefluent.com/vivify 2015-07-06
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "vivid"

"hi SignColumn -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#f2f5e9 guibg=#201227 guisp=#201227 gui=NONE ctermfg=230 ctermbg=235 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi VisualNOS -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi ColorColumn guibg=#693b80 cterm=NONE
hi CursorColumn guibg=#aa2299 cterm=NONE
hi IncSearch guifg=#312321 guibg=#c2cd23 guisp=#c2cd23 gui=NONE ctermfg=236 ctermbg=184 cterm=NONE
hi WildMenu guifg=#d7a7ef guibg=#883aaf guisp=#883aaf gui=NONE ctermfg=183 ctermbg=97 cterm=NONE
hi SpecialComment guifg=#d1418e guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi Typedef guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Title guifg=#af8217 guibg=NONE guisp=NONE gui=NONE ctermfg=136 ctermbg=NONE cterm=NONE
hi Folded guifg=#d0ba8e guibg=#8b8f85 guisp=#8b8f85 gui=NONE ctermfg=180 ctermbg=101 cterm=NONE
hi PreCondit guifg=#163f91 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Include guifg=#163f91 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#a780ba guibg=#49225e guisp=#49225e gui=NONE ctermfg=139 ctermbg=53 cterm=NONE
hi NonText guifg=#a34dce guibg=NONE guisp=NONE gui=NONE ctermfg=134 ctermbg=NONE cterm=NONE
hi DiffText guifg=#aaff7f guibg=#4a1528 guisp=#4a1528 gui=NONE ctermfg=156 ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#e5b1ff guibg=#ce8e0f guisp=#ce8e0f gui=NONE ctermfg=183 ctermbg=172 cterm=NONE
hi Debug guifg=#d1418e guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#d7a7ef guibg=#883aaf guisp=#883aaf gui=NONE ctermfg=183 ctermbg=97 cterm=NONE
hi Identifier guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#d1418e guibg=#2e2d40 guisp=#2e2d40 gui=NONE ctermfg=169 ctermbg=238 cterm=NONE
hi Conditional guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Todo guifg=#660000 guibg=#912299 guisp=#912299 gui=NONE ctermfg=52 ctermbg=90 cterm=NONE
hi Special guifg=#d1418e guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi LineNr guifg=#a34dce guibg=#201f2e guisp=#201f2e gui=NONE ctermfg=134 ctermbg=236 cterm=NONE
hi StatusLine guifg=#a780ba guibg=#49225e guisp=#49225e gui=NONE ctermfg=139 ctermbg=53 cterm=NONE
hi Label guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#d7a7ef guibg=#3f1c2f guisp=#3f1c2f gui=NONE ctermfg=183 ctermbg=237 cterm=NONE
hi Search guifg=#312321 guibg=#c2cd23 guisp=#c2cd23 gui=NONE ctermfg=236 ctermbg=184 cterm=NONE
hi Delimiter guifg=#d1418e guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi Statement guifg=#9f37ee guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Comment guifg=#b9a0de guibg=NONE guisp=NONE gui=NONE ctermfg=140 ctermbg=NONE cterm=NONE
hi Character guifg=#d2ff3c guibg=NONE guisp=NONE gui=NONE ctermfg=191 ctermbg=NONE cterm=NONE
hi Float guifg=#d2f026 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi Number guifg=#42f5e9 guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
hi Boolean guifg=#9f37ee guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Operator guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Question guifg=#dbffb1 guibg=NONE guisp=NONE gui=NONE ctermfg=193 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#e5b1ff guibg=#aece0f guisp=#aece0f gui=NONE ctermfg=183 ctermbg=148 cterm=NONE
hi DiffDelete guifg=#aaff7f guibg=#6d4e0f guisp=#6d4e0f gui=NONE ctermfg=156 ctermbg=58 cterm=NONE
hi ModeMsg guifg=#8d49af guibg=NONE guisp=NONE gui=NONE ctermfg=97 ctermbg=NONE cterm=NONE
hi Define guifg=#163f91 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Function guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#a34dce guibg=#201f2e guisp=#201f2e gui=NONE ctermfg=134 ctermbg=236 cterm=NONE
hi PreProc guifg=#5e98bf guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi Visual guifg=#d7a7ef guibg=#6b248f guisp=#6b248f gui=NONE ctermfg=183 ctermbg=54 cterm=NONE
hi MoreMsg guifg=#8d49af guibg=NONE guisp=NONE gui=NONE ctermfg=97 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#a780ba guibg=#49225e guisp=#49225e gui=NONE ctermfg=139 ctermbg=53 cterm=NONE
hi Exception guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Type guifg=#ff0a5c guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#aaff7f guibg=#0d068f guisp=#0d068f gui=NONE ctermfg=156 ctermbg=18 cterm=NONE
hi Cursor guifg=#2d3741 guibg=#be3dff guisp=#be3dff gui=NONE ctermfg=238 ctermbg=13 cterm=NONE
hi Error guifg=#e5b1ff guibg=#6e4e0d guisp=#6e4e0d gui=NONE ctermfg=183 ctermbg=58 cterm=NONE
hi PMenu guifg=#d7a7ef guibg=#6b248f guisp=#6b248f gui=NONE ctermfg=183 ctermbg=54 cterm=NONE
hi SpecialKey guifg=#ee19c3 guibg=NONE guisp=NONE gui=NONE ctermfg=200 ctermbg=NONE cterm=NONE
hi Constant guifg=#d2ff3c guibg=NONE guisp=NONE gui=NONE ctermfg=191 ctermbg=NONE cterm=NONE
hi Tag guifg=#d1418e guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi String guifg=#0f7799 guibg=#2e2d40 guisp=#2e2d40 gui=NONE ctermfg=24 ctermbg=238 cterm=NONE
hi PMenuThumb guifg=#d7a7ef guibg=#883aaf guisp=#883aaf gui=NONE ctermfg=183 ctermbg=97 cterm=NONE
hi MatchParen guifg=#2d3741 guibg=#3dffb8 guisp=#3dffb8 gui=NONE ctermfg=238 ctermbg=86 cterm=NONE
hi Repeat guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Directory guifg=#b1efff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Structure guifg=#ff3c7d guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Macro guifg=#163f91 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Underlined guifg=#d9e0cb guibg=NONE guisp=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#aaff7f guibg=#0f6d4e guisp=#0f6d4e gui=NONE ctermfg=156 ctermbg=23 cterm=NONE
hi cursorim guifg=#2d3741 guibg=#be3dff guisp=#be3dff gui=NONE ctermfg=238 ctermbg=13 cterm=NONE
hi mbenormal guifg=#b8d071 guibg=#3f1c2f guisp=#3f1c2f gui=NONE ctermfg=149 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#d1418e guibg=#2e2d40 guisp=#2e2d40 gui=NONE ctermfg=169 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#d0fe45 guibg=NONE guisp=NONE gui=NONE ctermfg=191 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#d7a7ef guibg=#3f1c2f guisp=#3f1c2f gui=NONE ctermfg=183 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#d7a7ef guibg=#6b248f guisp=#6b248f gui=NONE ctermfg=183 ctermbg=54 cterm=NONE
hi doxygenparam guifg=#d0fe45 guibg=NONE guisp=NONE gui=NONE ctermfg=191 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#d0fe45 guibg=NONE guisp=NONE gui=NONE ctermfg=191 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#d0fe45 guibg=NONE guisp=NONE gui=NONE ctermfg=191 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#d1418e guibg=#2e2d40 guisp=#2e2d40 gui=NONE ctermfg=169 ctermbg=238 cterm=NONE
hi cformat guifg=#d1418e guibg=#2e2d40 guisp=#2e2d40 gui=NONE ctermfg=169 ctermbg=238 cterm=NONE
hi lcursor guifg=#2d3741 guibg=#3dffb8 guisp=#3dffb8 gui=NONE ctermfg=238 ctermbg=86 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#8ead85 guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#9f37ee guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#dbfe14 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#d0ba8e guibg=#6b248f guisp=#6b248f gui=NONE ctermfg=180 ctermbg=54 cterm=NONE
hi user2 guifg=#8140a1 guibg=#49225e guisp=#49225e gui=NONE ctermfg=97 ctermbg=53 cterm=NONE
hi user1 guifg=#b1efff guibg=#49225e guisp=#49225e gui=NONE ctermfg=159 ctermbg=53 cterm=NONE
hi doxygenspecialonelinedesc guifg=#8ead85 guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ada49a guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#d1418e guibg=#2e2d40 guisp=#2e2d40 gui=NONE ctermfg=169 ctermbg=238 cterm=NONE
