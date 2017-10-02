" Name:     WWDC17 colorscheme
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  This file is placed in the public domain

set background=light
hi clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'wwdc17'

if !has('gui_running') && get(g:, 'wwdc17_term_trans_bg', 0)
  hi Normal ctermfg=0 ctermbg=NONE cterm=NONE guifg=#656567 guibg=NONE gui=NONE guisp=NONE
  hi LineNr ctermfg=8 ctermbg=NONE cterm=NONE guifg=#888888 guibg=NONE gui=NONE guisp=NONE
  hi CursorLineNr ctermfg=9 ctermbg=NONE cterm=NONE guifg=#e4753e guibg=NONE gui=NONE guisp=NONE
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE,underline guifg=NONE guibg=NONE gui=NONE guisp=NONE
  hi Folded ctermfg=8 ctermbg=NONE cterm=NONE guifg=#888888 guibg=NONE gui=NONE,italic guisp=NONE
else
  hi Normal ctermfg=0 ctermbg=15 cterm=NONE guifg=#656567 guibg=#f8f8f8 gui=NONE guisp=NONE
  hi LineNr ctermfg=8 ctermbg=7 cterm=NONE guifg=#888888 guibg=#f0f0f0 gui=NONE guisp=NONE
  hi CursorLineNr ctermfg=9 ctermbg=7 cterm=NONE guifg=#e4753e guibg=#f0f0f0 gui=NONE guisp=NONE
  hi CursorLine ctermfg=NONE ctermbg=7 cterm=NONE guifg=NONE guibg=#f0f0f0 gui=NONE guisp=NONE
  hi Folded ctermfg=8 ctermbg=7 cterm=NONE guifg=#888888 guibg=#f0f0f0 gui=NONE,italic guisp=NONE
endif
hi FoldColumn ctermfg=8 ctermbg=NONE cterm=NONE guifg=#888888 guibg=NONE gui=NONE guisp=NONE

let g:wwdc17_palette = ['#656567', '#e8503f', '#00a995', '#e1ad0b', '#3a5d6f', '#db2d45', '#1faed0', '#f0f0f0', '#888888', '#e4753e', '#afc06c', '#ebb822', '#8c61a6', '#eb314b', '#23bce1', '#f8f8f8']

hi ColorColumn ctermfg=NONE ctermbg=7 cterm=NONE guifg=NONE guibg=#f0f0f0 gui=NONE guisp=NONE
hi Conceal ctermfg=2 ctermbg=NONE cterm=NONE guifg=#00a995 guibg=NONE gui=NONE guisp=NONE
hi Cursor ctermfg=NONE ctermbg=NONE cterm=NONE,reverse guifg=NONE guibg=NONE gui=NONE,reverse guisp=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=15 cterm=NONE guifg=NONE guibg=#f8f8f8 gui=NONE guisp=NONE
hi CursorColumn ctermfg=NONE ctermbg=7 cterm=NONE guifg=NONE guibg=#f0f0f0 gui=NONE guisp=NONE
hi DiffAdd ctermfg=10 ctermbg=0 cterm=NONE,reverse guifg=#afc06c guibg=#656567 gui=NONE,reverse guisp=NONE
hi DiffChange ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#e1ad0b guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi DiffDelete ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#e8503f guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi DiffText ctermfg=6 ctermbg=15 cterm=NONE,bold,reverse guifg=#1faed0 guibg=#f8f8f8 gui=NONE,bold,reverse guisp=NONE
hi Directory ctermfg=2 ctermbg=NONE cterm=NONE guifg=#00a995 guibg=NONE gui=NONE guisp=NONE
hi EndOfBuffer ctermfg=9 ctermbg=NONE cterm=NONE guifg=#e4753e guibg=NONE gui=NONE guisp=NONE
hi Error ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#e8503f guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi ErrorMsg ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#e8503f guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi IncSearch ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#e1ad0b guibg=#f8f8f8 gui=NONE,standout guisp=NONE
hi MatchParen ctermfg=NONE ctermbg=NONE cterm=NONE,bold,underline guifg=NONE guibg=NONE gui=NONE,bold,underline guisp=#656567
hi ModeMsg ctermfg=0 ctermbg=NONE cterm=NONE guifg=#656567 guibg=NONE gui=NONE guisp=NONE
hi MoreMsg ctermfg=9 ctermbg=NONE cterm=NONE guifg=#e4753e guibg=NONE gui=NONE guisp=NONE
hi NonText ctermfg=8 ctermbg=NONE cterm=NONE guifg=#888888 guibg=NONE gui=NONE guisp=NONE
hi Pmenu ctermfg=0 ctermbg=7 cterm=NONE guifg=#656567 guibg=#f0f0f0 gui=NONE guisp=NONE
hi PmenuSbar ctermfg=9 ctermbg=8 cterm=NONE guifg=#e4753e guibg=#888888 gui=NONE guisp=NONE
hi PmenuSel ctermfg=15 ctermbg=9 cterm=NONE guifg=#f8f8f8 guibg=#e4753e gui=NONE guisp=NONE
hi PmenuThumb ctermfg=1 ctermbg=9 cterm=NONE guifg=#e8503f guibg=#e4753e gui=NONE guisp=NONE
hi Question ctermfg=0 ctermbg=NONE cterm=NONE guifg=#656567 guibg=NONE gui=NONE guisp=NONE
hi! link QuickFixLine Search
hi Search ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#e1ad0b guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi SignColumn ctermfg=9 ctermbg=NONE cterm=NONE guifg=#e4753e guibg=NONE gui=NONE guisp=NONE
hi SpecialKey ctermfg=9 ctermbg=NONE cterm=NONE guifg=#e4753e guibg=NONE gui=NONE guisp=NONE
hi SpellBad ctermfg=5 ctermbg=NONE cterm=NONE,underline guifg=#db2d45 guibg=NONE gui=NONE,undercurl guisp=#888888
hi SpellCap ctermfg=5 ctermbg=NONE cterm=NONE,underline guifg=#db2d45 guibg=NONE gui=NONE,undercurl guisp=#888888
hi SpellLocal ctermfg=5 ctermbg=NONE cterm=NONE,underline guifg=#db2d45 guibg=NONE gui=NONE,undercurl guisp=#888888
hi SpellRare ctermfg=5 ctermbg=NONE cterm=NONE,underline guifg=#db2d45 guibg=NONE gui=NONE,undercurl guisp=#888888
hi Title ctermfg=9 ctermbg=NONE cterm=NONE,bold guifg=#e4753e guibg=NONE gui=NONE,bold guisp=NONE
hi Visual ctermfg=4 ctermbg=15 cterm=NONE,reverse guifg=#3a5d6f guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi VisualNOS ctermfg=15 ctermbg=4 cterm=NONE guifg=#f8f8f8 guibg=#3a5d6f gui=NONE guisp=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE cterm=NONE guifg=#e8503f guibg=NONE gui=NONE guisp=NONE
let s:fc = abs(get(g:, 'wwdc17_frame_color', 10)) % 16
if s:fc == 0
  hi StatusLine ctermfg=0 ctermbg=15 cterm=NONE,reverse,bold guifg=#656567 guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=0 ctermbg=7 cterm=NONE,reverse guifg=#656567 guibg=#f0f0f0 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=7 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#656567 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=0 cterm=NONE guifg=#f8f8f8 guibg=#656567 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=0 cterm=NONE,bold guifg=#f8f8f8 guibg=#656567 gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=0 ctermbg=0 cterm=NONE guifg=#656567 guibg=#656567 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 1
  hi StatusLine ctermfg=1 ctermbg=15 cterm=NONE,reverse,bold guifg=#e8503f guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=1 ctermbg=7 cterm=NONE,reverse guifg=#e8503f guibg=#f0f0f0 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=7 ctermbg=1 cterm=NONE guifg=#f0f0f0 guibg=#e8503f gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=1 cterm=NONE guifg=#f8f8f8 guibg=#e8503f gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=9 cterm=NONE,bold guifg=#f8f8f8 guibg=#e4753e gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=1 ctermbg=1 cterm=NONE guifg=#e8503f guibg=#e8503f gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=10 cterm=NONE,bold guifg=#f8f8f8 guibg=#afc06c gui=NONE,bold guisp=NONE
elseif s:fc == 2
  hi StatusLine ctermfg=2 ctermbg=15 cterm=NONE,reverse guifg=#00a995 guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
  hi StatusLineNC ctermfg=2 ctermbg=4 cterm=NONE,reverse guifg=#00a995 guibg=#3a5d6f gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=4 ctermbg=2 cterm=NONE guifg=#3a5d6f guibg=#00a995 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=2 cterm=NONE guifg=#f8f8f8 guibg=#00a995 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=2 cterm=NONE guifg=#f8f8f8 guibg=#00a995 gui=NONE guisp=NONE
  hi VertSplit ctermfg=2 ctermbg=2 cterm=NONE guifg=#00a995 guibg=#00a995 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE guifg=#f8f8f8 guibg=#db2d45 gui=NONE guisp=NONE
elseif s:fc == 3
  hi StatusLine ctermfg=3 ctermbg=15 cterm=NONE,reverse,bold guifg=#e1ad0b guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=3 ctermbg=4 cterm=NONE,reverse guifg=#e1ad0b guibg=#3a5d6f gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=4 ctermbg=3 cterm=NONE guifg=#3a5d6f guibg=#e1ad0b gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=3 cterm=NONE guifg=#f8f8f8 guibg=#e1ad0b gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=3 cterm=NONE,bold guifg=#f8f8f8 guibg=#e1ad0b gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=3 ctermbg=3 cterm=NONE guifg=#e1ad0b guibg=#e1ad0b gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 4
  hi StatusLine ctermfg=4 ctermbg=15 cterm=NONE,reverse,bold guifg=#3a5d6f guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=4 ctermbg=15 cterm=NONE,reverse guifg=#3a5d6f guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=15 ctermbg=4 cterm=NONE guifg=#f8f8f8 guibg=#3a5d6f gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=4 cterm=NONE guifg=#f8f8f8 guibg=#3a5d6f gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=4 cterm=NONE,bold guifg=#f8f8f8 guibg=#3a5d6f gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=4 ctermbg=4 cterm=NONE guifg=#3a5d6f guibg=#3a5d6f gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 5
  hi StatusLine ctermfg=5 ctermbg=15 cterm=NONE,reverse guifg=#db2d45 guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
  hi StatusLineNC ctermfg=5 ctermbg=3 cterm=NONE,reverse guifg=#db2d45 guibg=#e1ad0b gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=3 ctermbg=5 cterm=NONE guifg=#e1ad0b guibg=#db2d45 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=5 cterm=NONE guifg=#f8f8f8 guibg=#db2d45 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=5 cterm=NONE guifg=#f8f8f8 guibg=#db2d45 gui=NONE guisp=NONE
  hi VertSplit ctermfg=5 ctermbg=5 cterm=NONE guifg=#db2d45 guibg=#db2d45 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=3 cterm=NONE guifg=#f8f8f8 guibg=#e1ad0b gui=NONE guisp=NONE
elseif s:fc == 6
  hi StatusLine ctermfg=6 ctermbg=15 cterm=NONE,reverse,bold guifg=#1faed0 guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=6 ctermbg=7 cterm=NONE,reverse guifg=#1faed0 guibg=#f0f0f0 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=7 ctermbg=6 cterm=NONE guifg=#f0f0f0 guibg=#1faed0 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=6 cterm=NONE guifg=#f8f8f8 guibg=#1faed0 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=6 cterm=NONE,bold guifg=#f8f8f8 guibg=#1faed0 gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=6 ctermbg=6 cterm=NONE guifg=#1faed0 guibg=#1faed0 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 7
  hi StatusLine ctermfg=7 ctermbg=0 cterm=NONE,reverse,bold guifg=#f0f0f0 guibg=#656567 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=7 ctermbg=8 cterm=NONE,reverse guifg=#f0f0f0 guibg=#888888 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=8 ctermbg=7 cterm=NONE guifg=#888888 guibg=#f0f0f0 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=0 ctermbg=7 cterm=NONE guifg=#656567 guibg=#f0f0f0 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=0 ctermbg=7 cterm=NONE,bold guifg=#656567 guibg=#f0f0f0 gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=7 ctermbg=7 cterm=NONE guifg=#f0f0f0 guibg=#f0f0f0 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 8
  hi StatusLine ctermfg=8 ctermbg=15 cterm=NONE,reverse,bold guifg=#888888 guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=8 ctermbg=7 cterm=NONE,reverse guifg=#888888 guibg=#f0f0f0 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=7 ctermbg=8 cterm=NONE guifg=#f0f0f0 guibg=#888888 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=8 cterm=NONE guifg=#f8f8f8 guibg=#888888 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=8 cterm=NONE guifg=#f8f8f8 guibg=#888888 gui=NONE guisp=NONE
  hi VertSplit ctermfg=8 ctermbg=8 cterm=NONE guifg=#888888 guibg=#888888 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 9
  hi StatusLine ctermfg=9 ctermbg=15 cterm=NONE,reverse guifg=#e4753e guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
  hi StatusLineNC ctermfg=9 ctermbg=4 cterm=NONE,reverse guifg=#e4753e guibg=#3a5d6f gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=4 ctermbg=9 cterm=NONE guifg=#3a5d6f guibg=#e4753e gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=9 cterm=NONE guifg=#f8f8f8 guibg=#e4753e gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=9 cterm=NONE guifg=#f8f8f8 guibg=#e4753e gui=NONE guisp=NONE
  hi VertSplit ctermfg=9 ctermbg=9 cterm=NONE guifg=#e4753e guibg=#e4753e gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=10 cterm=NONE guifg=#f8f8f8 guibg=#afc06c gui=NONE guisp=NONE
elseif s:fc == 10
  hi StatusLine ctermfg=10 ctermbg=15 cterm=NONE,reverse guifg=#afc06c guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
  hi StatusLineNC ctermfg=10 ctermbg=8 cterm=NONE,reverse guifg=#afc06c guibg=#888888 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=8 ctermbg=10 cterm=NONE guifg=#888888 guibg=#afc06c gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=10 cterm=NONE guifg=#f8f8f8 guibg=#afc06c gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=10 cterm=NONE guifg=#f8f8f8 guibg=#afc06c gui=NONE guisp=NONE
  hi VertSplit ctermfg=10 ctermbg=10 cterm=NONE guifg=#afc06c guibg=#afc06c gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE guifg=#f8f8f8 guibg=#db2d45 gui=NONE guisp=NONE
elseif s:fc == 11
  hi StatusLine ctermfg=11 ctermbg=15 cterm=NONE,reverse,bold guifg=#ebb822 guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=11 ctermbg=4 cterm=NONE,reverse guifg=#ebb822 guibg=#3a5d6f gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=4 ctermbg=11 cterm=NONE guifg=#3a5d6f guibg=#ebb822 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=11 cterm=NONE guifg=#f8f8f8 guibg=#ebb822 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=11 cterm=NONE,bold guifg=#f8f8f8 guibg=#ebb822 gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=11 ctermbg=11 cterm=NONE guifg=#ebb822 guibg=#ebb822 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 12
  hi StatusLine ctermfg=12 ctermbg=15 cterm=NONE,reverse,bold guifg=#8c61a6 guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=12 ctermbg=7 cterm=NONE,reverse guifg=#8c61a6 guibg=#f0f0f0 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=7 ctermbg=12 cterm=NONE guifg=#f0f0f0 guibg=#8c61a6 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=12 cterm=NONE guifg=#f8f8f8 guibg=#8c61a6 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=12 cterm=NONE,bold guifg=#f8f8f8 guibg=#8c61a6 gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=12 ctermbg=12 cterm=NONE guifg=#8c61a6 guibg=#8c61a6 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 13
  hi StatusLine ctermfg=13 ctermbg=15 cterm=NONE,reverse guifg=#eb314b guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
  hi StatusLineNC ctermfg=13 ctermbg=3 cterm=NONE,reverse guifg=#eb314b guibg=#e1ad0b gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=3 ctermbg=13 cterm=NONE guifg=#e1ad0b guibg=#eb314b gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=13 cterm=NONE guifg=#f8f8f8 guibg=#eb314b gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=13 cterm=NONE guifg=#f8f8f8 guibg=#eb314b gui=NONE guisp=NONE
  hi VertSplit ctermfg=13 ctermbg=13 cterm=NONE guifg=#eb314b guibg=#eb314b gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=3 cterm=NONE guifg=#f8f8f8 guibg=#e1ad0b gui=NONE guisp=NONE
elseif s:fc == 14
  hi StatusLine ctermfg=14 ctermbg=15 cterm=NONE,reverse,bold guifg=#23bce1 guibg=#f8f8f8 gui=NONE,reverse,bold guisp=NONE
  hi StatusLineNC ctermfg=14 ctermbg=7 cterm=NONE,reverse guifg=#23bce1 guibg=#f0f0f0 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=7 ctermbg=14 cterm=NONE guifg=#f0f0f0 guibg=#23bce1 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=15 ctermbg=14 cterm=NONE guifg=#f8f8f8 guibg=#23bce1 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=15 ctermbg=14 cterm=NONE,bold guifg=#f8f8f8 guibg=#23bce1 gui=NONE,bold guisp=NONE
  hi VertSplit ctermfg=14 ctermbg=14 cterm=NONE guifg=#23bce1 guibg=#23bce1 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE,bold guifg=#f8f8f8 guibg=#db2d45 gui=NONE,bold guisp=NONE
elseif s:fc == 15
  hi StatusLine ctermfg=15 ctermbg=0 cterm=NONE,reverse guifg=#f8f8f8 guibg=#656567 gui=NONE,reverse guisp=NONE
  hi StatusLineNC ctermfg=15 ctermbg=8 cterm=NONE,reverse guifg=#f8f8f8 guibg=#888888 gui=NONE,reverse guisp=NONE
  hi TabLine ctermfg=8 ctermbg=15 cterm=NONE guifg=#888888 guibg=#f8f8f8 gui=NONE guisp=NONE
  hi TabLineFill ctermfg=0 ctermbg=15 cterm=NONE guifg=#656567 guibg=#f8f8f8 gui=NONE guisp=NONE
  hi TabLineSel ctermfg=0 ctermbg=15 cterm=NONE guifg=#656567 guibg=#f8f8f8 gui=NONE guisp=NONE
  hi VertSplit ctermfg=15 ctermbg=15 cterm=NONE guifg=#f8f8f8 guibg=#f8f8f8 gui=NONE guisp=NONE
  hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE guifg=#f8f8f8 guibg=#db2d45 gui=NONE guisp=NONE
endif
unlet s:fc
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi Boolean ctermfg=10 ctermbg=NONE cterm=NONE guifg=#afc06c guibg=NONE gui=NONE guisp=NONE
hi Character ctermfg=5 ctermbg=NONE cterm=NONE guifg=#db2d45 guibg=NONE gui=NONE guisp=NONE
hi Comment ctermfg=8 ctermbg=NONE cterm=NONE guifg=#888888 guibg=NONE gui=NONE,italic guisp=NONE
hi Constant ctermfg=2 ctermbg=NONE cterm=NONE guifg=#00a995 guibg=NONE gui=NONE guisp=NONE
hi Debug ctermfg=5 ctermbg=NONE cterm=NONE guifg=#db2d45 guibg=NONE gui=NONE guisp=NONE
hi Delimiter ctermfg=4 ctermbg=NONE cterm=NONE guifg=#3a5d6f guibg=NONE gui=NONE guisp=NONE
hi Float ctermfg=10 ctermbg=NONE cterm=NONE guifg=#afc06c guibg=NONE gui=NONE guisp=NONE
hi Function ctermfg=2 ctermbg=NONE cterm=NONE guifg=#00a995 guibg=NONE gui=NONE guisp=NONE
hi Identifier ctermfg=4 ctermbg=NONE cterm=NONE guifg=#3a5d6f guibg=NONE gui=NONE guisp=NONE
hi Ignore ctermfg=15 ctermbg=NONE cterm=NONE guifg=#f8f8f8 guibg=NONE gui=NONE guisp=NONE
hi Include ctermfg=12 ctermbg=NONE cterm=NONE guifg=#8c61a6 guibg=NONE gui=NONE guisp=NONE
hi Keyword ctermfg=6 ctermbg=NONE cterm=NONE guifg=#1faed0 guibg=NONE gui=NONE guisp=NONE
hi Label ctermfg=2 ctermbg=NONE cterm=NONE guifg=#00a995 guibg=NONE gui=NONE guisp=NONE
hi Number ctermfg=2 ctermbg=NONE cterm=NONE guifg=#00a995 guibg=NONE gui=NONE guisp=NONE
hi Operator ctermfg=6 ctermbg=NONE cterm=NONE guifg=#1faed0 guibg=NONE gui=NONE guisp=NONE
hi PreProc ctermfg=1 ctermbg=NONE cterm=NONE guifg=#e8503f guibg=NONE gui=NONE guisp=NONE
hi Special ctermfg=1 ctermbg=NONE cterm=NONE guifg=#e8503f guibg=NONE gui=NONE guisp=NONE
hi SpecialChar ctermfg=5 ctermbg=NONE cterm=NONE guifg=#db2d45 guibg=NONE gui=NONE guisp=NONE
hi SpecialComment ctermfg=5 ctermbg=NONE cterm=NONE guifg=#db2d45 guibg=NONE gui=NONE guisp=NONE
hi Statement ctermfg=6 ctermbg=NONE cterm=NONE guifg=#1faed0 guibg=NONE gui=NONE guisp=NONE
hi StorageClass ctermfg=6 ctermbg=NONE cterm=NONE guifg=#1faed0 guibg=NONE gui=NONE guisp=NONE
hi String ctermfg=9 ctermbg=NONE cterm=NONE guifg=#e4753e guibg=NONE gui=NONE guisp=NONE
hi Structure ctermfg=1 ctermbg=NONE cterm=NONE guifg=#e8503f guibg=NONE gui=NONE guisp=NONE
hi Todo ctermfg=5 ctermbg=NONE cterm=NONE,bold guifg=#db2d45 guibg=NONE gui=NONE,bold guisp=NONE
hi Type ctermfg=12 ctermbg=NONE cterm=NONE guifg=#8c61a6 guibg=NONE gui=NONE guisp=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=NONE,underline guifg=NONE guibg=NONE gui=NONE,underline guisp=NONE
hi NormalMode ctermfg=8 ctermbg=15 cterm=NONE,reverse guifg=#888888 guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi InsertMode ctermfg=10 ctermbg=15 cterm=NONE,reverse guifg=#afc06c guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi ReplaceMode ctermfg=9 ctermbg=15 cterm=NONE,reverse guifg=#e4753e guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi VisualMode ctermfg=4 ctermbg=15 cterm=NONE,reverse guifg=#3a5d6f guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
hi CommandMode ctermfg=5 ctermbg=15 cterm=NONE,reverse guifg=#db2d45 guibg=#f8f8f8 gui=NONE,reverse guisp=NONE
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=15 ctermbg=0 cterm=NONE guifg=#f8f8f8 guibg=#656567 gui=NONE guisp=NONE
  let g:terminal_color_0='#656567'
  let g:terminal_color_1='#e8503f'
  let g:terminal_color_2='#00a995'
  let g:terminal_color_3='#e1ad0b'
  let g:terminal_color_4='#3a5d6f'
  let g:terminal_color_5='#db2d45'
  let g:terminal_color_6='#1faed0'
  let g:terminal_color_7='#f0f0f0'
  let g:terminal_color_8='#888888'
  let g:terminal_color_9='#e4753e'
  let g:terminal_color_10='#afc06c'
  let g:terminal_color_11='#ebb822'
  let g:terminal_color_12='#8c61a6'
  let g:terminal_color_13='#eb314b'
  let g:terminal_color_14='#23bce1'
  let g:terminal_color_15='#f8f8f8'
endif
hi vimCommentTitle ctermfg=5 ctermbg=NONE cterm=NONE guifg=#db2d45 guibg=NONE gui=NONE guisp=NONE
hi vimMapModKey ctermfg=3 ctermbg=NONE cterm=NONE guifg=#e1ad0b guibg=NONE gui=NONE guisp=NONE
hi vimMapMod ctermfg=3 ctermbg=NONE cterm=NONE guifg=#e1ad0b guibg=NONE gui=NONE guisp=NONE
hi vimBracket ctermfg=6 ctermbg=NONE cterm=NONE guifg=#1faed0 guibg=NONE gui=NONE guisp=NONE
hi vimNotation ctermfg=6 ctermbg=NONE cterm=NONE guifg=#1faed0 guibg=NONE gui=NONE guisp=NONE
hi! link vimUserFunc Function
hi gitcommitComment ctermfg=8 ctermbg=NONE cterm=NONE guifg=#888888 guibg=NONE gui=NONE,italic guisp=NONE
hi markdownHeadingDelimiter ctermfg=3 ctermbg=NONE cterm=NONE guifg=#e1ad0b guibg=NONE gui=NONE guisp=NONE
hi markdownURL ctermfg=12 ctermbg=NONE cterm=NONE guifg=#8c61a6 guibg=NONE gui=NONE guisp=NONE
hi htmlItalic ctermfg=0 ctermbg=NONE cterm=NONE guifg=#656567 guibg=NONE gui=NONE,italic guisp=NONE
hi htmlBold ctermfg=0 ctermbg=NONE cterm=NONE,bold guifg=#656567 guibg=NONE gui=NONE,bold guisp=NONE
hi htmlBoldItalic ctermfg=0 ctermbg=NONE cterm=NONE,bold guifg=#656567 guibg=NONE gui=NONE,bold,italic guisp=NONE
hi! link javascriptBraces Delimiter
hi SyntasticErrorSign ctermfg=1 ctermbg=NONE cterm=NONE guifg=#e8503f guibg=NONE gui=NONE guisp=NONE
hi SyntasticWarningSign ctermfg=3 ctermbg=NONE cterm=NONE guifg=#e1ad0b guibg=NONE gui=NONE guisp=NONE
if get(g:, "wwdc17_term_italics", 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
