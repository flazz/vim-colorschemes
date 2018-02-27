" Name:         WWDC17
" Description:  Colorful light color scheme for Vim inspired by Apple's WWDC17 page
" Author:       Lifepillar <lifepillar@lifepillar.me>
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" Website:      https://github.com/lifepillar/vim-wwdc17-theme
" License:      This file is placed in the public domain
" Last Updated: Fri Feb 16 20:46:42 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < (get(g:, 'wwdc17_use16', 0) ? 16 : 256))
  echoerr '[WWDC17] There are not enough colors.'
  finish
endif

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'wwdc17'

" 256-color variant
if !get(g:, 'wwdc17_use16', 0)
  let g:wwdc17_palette = ['#656567', '#e8503f', '#00a995', '#e1ad0b', '#3a5d6f', '#db2d45', '#1faed0', '#f0f0f0',
        \                 '#888888', '#e4753e', '#afc06c', '#ebb822', '#8c61a6', '#eb314b', '#23bce1', '#f8f8f8']

  " Color similarity table (light background)
  "   brightblack: GUI=#888888/rgb(136,136,136)  Term=102 #878787/rgb(135,135,135)  [delta=0.359050]
  "         white: GUI=#f0f0f0/rgb(240,240,240)  Term=255 #eeeeee/rgb(238,238,238)  [delta=0.419881]
  "   brightwhite: GUI=#f8f8f8/rgb(248,248,248)  Term=231 #ffffff/rgb(255,255,255)  [delta=1.400401]
  "         black: GUI=#656567/rgb(101,101,103)  Term=241 #626262/rgb( 98, 98, 98)  [delta=1.715378]
  "          cyan: GUI=#1faed0/rgb( 31,174,208)  Term= 38 #00afd7/rgb(  0,175,215)  [delta=2.066743]
  "    brightblue: GUI=#8c61a6/rgb(140, 97,166)  Term= 97 #875faf/rgb(135, 95,175)  [delta=2.491843]
  "        yellow: GUI=#e1ad0b/rgb(225,173, 11)  Term=178 #d7af00/rgb(215,175,  0)  [delta=3.335617]
  "    brightcyan: GUI=#23bce1/rgb( 35,188,225)  Term= 38 #00afd7/rgb(  0,175,215)  [delta=3.944706]
  "  brightyellow: GUI=#ebb822/rgb(235,184, 34)  Term=178 #d7af00/rgb(215,175,  0)  [delta=4.174274]
  "   brightgreen: GUI=#afc06c/rgb(175,192,108)  Term=143 #afaf5f/rgb(175,175, 95)  [delta=5.808153]
  "         green: GUI=#00a995/rgb(  0,169,149)  Term= 36 #00af87/rgb(  0,175,135)  [delta=6.104160]
  "     brightred: GUI=#e4753e/rgb(228,117, 62)  Term=173 #d7875f/rgb(215,135, 95)  [delta=6.108658]
  " brightmagenta: GUI=#eb314b/rgb(235, 49, 75)  Term=197 #ff005f/rgb(255,  0, 95)  [delta=6.411385]
  "           red: GUI=#e8503f/rgb(232, 80, 63)  Term=167 #d75f5f/rgb(215, 95, 95)  [delta=7.665136]
  "          blue: GUI=#3a5d6f/rgb( 58, 93,111)  Term= 24 #005f87/rgb(  0, 95,135)  [delta=7.871530]
  "       magenta: GUI=#db2d45/rgb(219, 45, 69)  Term=197 #ff005f/rgb(255,  0, 95)  [delta=8.426831]
  if !has('gui_running') && get(g:, 'wwdc17_transp_bg', 0)
    hi Normal ctermfg=241 ctermbg=NONE guifg=#656567 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=173 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Folded ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi LineNr ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=241 ctermbg=NONE guifg=#656567 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=241 ctermbg=231 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
    hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=173 ctermbg=255 guifg=#e4753e guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
    hi Folded ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE,italic
    hi LineNr ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=241 ctermbg=231 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=36 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=143 ctermbg=fg guifg=#afc06c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=178 ctermbg=231 guifg=#e1ad0b guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=38 ctermbg=231 guifg=#1faed0 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi Directory ctermfg=36 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=173 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=173 ctermbg=231 guifg=#e4753e guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,standout
  hi MatchParen ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#656567 cterm=NONE,bold,underline gui=NONE,bold,underline
  hi ModeMsg ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=173 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=fg ctermbg=255 guifg=fg guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=173 ctermbg=102 guifg=#e4753e guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=231 ctermbg=173 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=167 ctermbg=173 guifg=#e8503f guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi Search ctermfg=178 ctermbg=231 guifg=#ebb822 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=173 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=173 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
  hi Title ctermfg=173 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=24 ctermbg=231 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=231 ctermbg=24 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  let s:fc = abs(get(g:, 'wwdc17_frame_color', 10)) % 16
  if s:fc == 0
    hi StatusLine ctermfg=241 ctermbg=231 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=241 ctermbg=255 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=255 ctermbg=241 guifg=#f0f0f0 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=241 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=241 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=241 ctermbg=241 guifg=#656567 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 1
    hi StatusLine ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=167 ctermbg=255 guifg=#e8503f guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=255 ctermbg=167 guifg=#f0f0f0 guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=167 guifg=#f8f8f8 guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=173 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=167 ctermbg=167 guifg=#e8503f guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=143 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 2
    hi StatusLine ctermfg=36 ctermbg=231 guifg=#00a995 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=36 ctermbg=24 guifg=#00a995 guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=24 ctermbg=36 guifg=#3a5d6f guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=36 guifg=#f8f8f8 guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=36 guifg=#f8f8f8 guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=36 ctermbg=36 guifg=#00a995 guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  elseif s:fc == 3
    hi StatusLine ctermfg=178 ctermbg=231 guifg=#e1ad0b guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=178 ctermbg=24 guifg=#e1ad0b guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=24 ctermbg=178 guifg=#3a5d6f guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=178 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=178 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=178 ctermbg=178 guifg=#e1ad0b guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 4
    hi StatusLine ctermfg=24 ctermbg=231 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=24 ctermbg=231 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=231 ctermbg=24 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=24 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=24 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=24 ctermbg=24 guifg=#3a5d6f guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 5
    hi StatusLine ctermfg=197 ctermbg=231 guifg=#db2d45 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=197 ctermbg=178 guifg=#db2d45 guibg=#e1ad0b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=178 ctermbg=197 guifg=#e1ad0b guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=197 ctermbg=197 guifg=#db2d45 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=178 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  elseif s:fc == 6
    hi StatusLine ctermfg=38 ctermbg=231 guifg=#1faed0 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=38 ctermbg=255 guifg=#1faed0 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=255 ctermbg=38 guifg=#f0f0f0 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=38 guifg=#f8f8f8 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=38 guifg=#f8f8f8 guibg=#1faed0 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=38 ctermbg=38 guifg=#1faed0 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 7
    hi StatusLine ctermfg=255 ctermbg=241 guifg=#f0f0f0 guibg=#656567 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=255 ctermbg=231 guifg=#f0f0f0 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=231 ctermbg=255 guifg=#f8f8f8 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=241 ctermbg=255 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=241 ctermbg=255 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=255 ctermbg=255 guifg=#f0f0f0 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 8
    hi StatusLine ctermfg=102 ctermbg=231 guifg=#888888 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=255 ctermbg=102 guifg=#f0f0f0 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=102 guifg=#f8f8f8 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=102 guifg=#f8f8f8 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=102 ctermbg=102 guifg=#888888 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 9
    hi StatusLine ctermfg=173 ctermbg=231 guifg=#e4753e guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=173 ctermbg=24 guifg=#e4753e guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=24 ctermbg=173 guifg=#3a5d6f guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=173 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=173 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=173 ctermbg=173 guifg=#e4753e guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=143 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
  elseif s:fc == 10
    hi StatusLine ctermfg=143 ctermbg=231 guifg=#afc06c guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=143 ctermbg=102 guifg=#afc06c guibg=#888888 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=102 ctermbg=143 guifg=#888888 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=143 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=143 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=143 ctermbg=143 guifg=#afc06c guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  elseif s:fc == 11
    hi StatusLine ctermfg=178 ctermbg=231 guifg=#ebb822 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=178 ctermbg=24 guifg=#ebb822 guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=24 ctermbg=178 guifg=#3a5d6f guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=178 guifg=#f8f8f8 guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=178 guifg=#f8f8f8 guibg=#ebb822 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=178 ctermbg=178 guifg=#ebb822 guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 12
    hi StatusLine ctermfg=97 ctermbg=231 guifg=#8c61a6 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=97 ctermbg=255 guifg=#8c61a6 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=255 ctermbg=97 guifg=#f0f0f0 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=97 guifg=#f8f8f8 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=97 guifg=#f8f8f8 guibg=#8c61a6 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=97 ctermbg=97 guifg=#8c61a6 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 13
    hi StatusLine ctermfg=197 ctermbg=231 guifg=#eb314b guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=197 ctermbg=178 guifg=#eb314b guibg=#e1ad0b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=178 ctermbg=197 guifg=#e1ad0b guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=197 ctermbg=197 guifg=#eb314b guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=178 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  elseif s:fc == 14
    hi StatusLine ctermfg=38 ctermbg=231 guifg=#23bce1 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
    hi StatusLineNC ctermfg=38 ctermbg=255 guifg=#23bce1 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=255 ctermbg=38 guifg=#f0f0f0 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=231 ctermbg=38 guifg=#f8f8f8 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=231 ctermbg=38 guifg=#f8f8f8 guibg=#23bce1 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi VertSplit ctermfg=38 ctermbg=38 guifg=#23bce1 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  elseif s:fc == 15
    hi StatusLine ctermfg=231 ctermbg=241 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi StatusLineNC ctermfg=231 ctermbg=102 guifg=#f8f8f8 guibg=#888888 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi TabLine ctermfg=102 ctermbg=231 guifg=#888888 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
    hi TabLineFill ctermfg=241 ctermbg=231 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
    hi TabLineSel ctermfg=241 ctermbg=231 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=231 ctermbg=231 guifg=#f8f8f8 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
    hi WildMenu ctermfg=231 ctermbg=197 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  endif
  unlet s:fc
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi Boolean ctermfg=143 ctermbg=NONE guifg=#afc06c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi! link Conditional Statement
  hi Constant ctermfg=36 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Define PreProc
  hi Debug ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=24 ctermbg=NONE guifg=#3a5d6f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link Exception Statement
  hi Float ctermfg=143 ctermbg=NONE guifg=#afc06c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=36 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=24 ctermbg=NONE guifg=#3a5d6f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=231 ctermbg=NONE guifg=#f8f8f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=97 ctermbg=NONE guifg=#8c61a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=36 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Macro PreProc
  hi Number ctermfg=36 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link PreCondit PreProc
  hi PreProc ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Repeat Statement
  hi Special ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=173 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Tag Special
  hi Todo ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=97 ctermbg=NONE guifg=#8c61a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Typedef Type
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=231 guifg=NONE guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=241 ctermbg=255 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NormalMode ctermfg=102 ctermbg=231 guifg=#888888 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=143 ctermbg=231 guifg=#afc06c guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=173 ctermbg=231 guifg=#e4753e guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=24 ctermbg=231 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=197 ctermbg=231 guifg=#db2d45 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=231 ctermbg=241 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
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
  if get(g:, "wwdc17_term_italics", 1)
    hi Comment cterm=italic
    hi Folded cterm=italic
  endif
  finish
endif

" 16-color variant
let g:wwdc17_palette = ['#656567', '#e8503f', '#00a995', '#e1ad0b', '#3a5d6f', '#db2d45', '#1faed0', '#f0f0f0',
      \                 '#888888', '#e4753e', '#afc06c', '#ebb822', '#8c61a6', '#eb314b', '#23bce1', '#f8f8f8']

if !has('gui_running') && get(g:, 'wwdc17_transp_bg', 0)
  hi Normal ctermfg=0 ctermbg=NONE guifg=#656567 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=9 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=8 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi LineNr ctermfg=8 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=8 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=0 ctermbg=NONE guifg=#656567 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=0 ctermbg=15 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=7 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=9 ctermbg=7 guifg=#e4753e guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=8 ctermbg=7 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE,italic
  hi LineNr ctermfg=8 ctermbg=7 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=8 ctermbg=7 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=0 ctermbg=15 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=7 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=2 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CursorColumn ctermfg=NONE ctermbg=7 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=10 ctermbg=fg guifg=#afc06c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=3 ctermbg=15 guifg=#e1ad0b guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=1 ctermbg=15 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=6 ctermbg=15 guifg=#1faed0 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Directory ctermfg=2 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=9 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=1 ctermbg=15 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=9 ctermbg=15 guifg=#e4753e guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi MatchParen ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#656567 cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=9 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=8 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=fg ctermbg=7 guifg=fg guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=9 ctermbg=8 guifg=#e4753e guibg=#888888 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=15 ctermbg=9 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=1 ctermbg=9 guifg=#e8503f guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=11 ctermbg=15 guifg=#ebb822 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=9 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=9 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi Title ctermfg=9 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=4 ctermbg=15 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=15 ctermbg=4 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
let s:fc = abs(get(g:, 'wwdc17_frame_color', 10)) % 16
if s:fc == 0
  hi StatusLine ctermfg=0 ctermbg=15 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=0 ctermbg=7 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=7 ctermbg=0 guifg=#f0f0f0 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=0 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=0 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=0 ctermbg=0 guifg=#656567 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 1
  hi StatusLine ctermfg=1 ctermbg=15 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=1 ctermbg=7 guifg=#e8503f guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=7 ctermbg=1 guifg=#f0f0f0 guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=1 guifg=#f8f8f8 guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=9 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=1 ctermbg=1 guifg=#e8503f guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=10 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 2
  hi StatusLine ctermfg=2 ctermbg=15 guifg=#00a995 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=2 ctermbg=4 guifg=#00a995 guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=4 ctermbg=2 guifg=#3a5d6f guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=2 guifg=#f8f8f8 guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=2 guifg=#f8f8f8 guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=2 ctermbg=2 guifg=#00a995 guibg=#00a995 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
elseif s:fc == 3
  hi StatusLine ctermfg=3 ctermbg=15 guifg=#e1ad0b guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=3 ctermbg=4 guifg=#e1ad0b guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=4 ctermbg=3 guifg=#3a5d6f guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=3 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=3 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=3 ctermbg=3 guifg=#e1ad0b guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 4
  hi StatusLine ctermfg=4 ctermbg=15 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=4 ctermbg=15 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=15 ctermbg=4 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=4 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=4 guifg=#f8f8f8 guibg=#3a5d6f guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=4 ctermbg=4 guifg=#3a5d6f guibg=#3a5d6f guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 5
  hi StatusLine ctermfg=5 ctermbg=15 guifg=#db2d45 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=5 ctermbg=3 guifg=#db2d45 guibg=#e1ad0b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=3 ctermbg=5 guifg=#e1ad0b guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=5 ctermbg=5 guifg=#db2d45 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=3 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
elseif s:fc == 6
  hi StatusLine ctermfg=6 ctermbg=15 guifg=#1faed0 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=6 ctermbg=7 guifg=#1faed0 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=7 ctermbg=6 guifg=#f0f0f0 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=6 guifg=#f8f8f8 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=6 guifg=#f8f8f8 guibg=#1faed0 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=6 ctermbg=6 guifg=#1faed0 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 7
  hi StatusLine ctermfg=7 ctermbg=0 guifg=#f0f0f0 guibg=#656567 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=7 ctermbg=15 guifg=#f0f0f0 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=15 ctermbg=7 guifg=#f8f8f8 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=0 ctermbg=7 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=0 ctermbg=7 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=7 ctermbg=7 guifg=#f0f0f0 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 8
  hi StatusLine ctermfg=8 ctermbg=15 guifg=#888888 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=8 ctermbg=7 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=7 ctermbg=8 guifg=#f0f0f0 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=8 guifg=#f8f8f8 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=8 guifg=#f8f8f8 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=8 ctermbg=8 guifg=#888888 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 9
  hi StatusLine ctermfg=9 ctermbg=15 guifg=#e4753e guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=9 ctermbg=4 guifg=#e4753e guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=4 ctermbg=9 guifg=#3a5d6f guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=9 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=9 guifg=#f8f8f8 guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=9 ctermbg=9 guifg=#e4753e guibg=#e4753e guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=10 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
elseif s:fc == 10
  hi StatusLine ctermfg=10 ctermbg=15 guifg=#afc06c guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=10 ctermbg=8 guifg=#afc06c guibg=#888888 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=8 ctermbg=10 guifg=#888888 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=10 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=10 guifg=#f8f8f8 guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=10 ctermbg=10 guifg=#afc06c guibg=#afc06c guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
elseif s:fc == 11
  hi StatusLine ctermfg=11 ctermbg=15 guifg=#ebb822 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=11 ctermbg=4 guifg=#ebb822 guibg=#3a5d6f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=4 ctermbg=11 guifg=#3a5d6f guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=11 guifg=#f8f8f8 guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=11 guifg=#f8f8f8 guibg=#ebb822 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=11 ctermbg=11 guifg=#ebb822 guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 12
  hi StatusLine ctermfg=12 ctermbg=15 guifg=#8c61a6 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=12 ctermbg=7 guifg=#8c61a6 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=7 ctermbg=12 guifg=#f0f0f0 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=12 guifg=#f8f8f8 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=12 guifg=#f8f8f8 guibg=#8c61a6 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=12 ctermbg=12 guifg=#8c61a6 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 13
  hi StatusLine ctermfg=13 ctermbg=15 guifg=#eb314b guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=13 ctermbg=3 guifg=#eb314b guibg=#e1ad0b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=3 ctermbg=13 guifg=#e1ad0b guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=13 guifg=#f8f8f8 guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=13 guifg=#f8f8f8 guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=13 ctermbg=13 guifg=#eb314b guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=3 guifg=#f8f8f8 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
elseif s:fc == 14
  hi StatusLine ctermfg=14 ctermbg=15 guifg=#23bce1 guibg=#f8f8f8 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=14 ctermbg=7 guifg=#23bce1 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=7 ctermbg=14 guifg=#f0f0f0 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=15 ctermbg=14 guifg=#f8f8f8 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=15 ctermbg=14 guifg=#f8f8f8 guibg=#23bce1 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=14 ctermbg=14 guifg=#23bce1 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 15
  hi StatusLine ctermfg=15 ctermbg=0 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=15 ctermbg=8 guifg=#f8f8f8 guibg=#888888 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=8 ctermbg=15 guifg=#888888 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=0 ctermbg=15 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=0 ctermbg=15 guifg=#656567 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=15 ctermbg=15 guifg=#f8f8f8 guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=15 ctermbg=5 guifg=#f8f8f8 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
endif
unlet s:fc
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi Boolean ctermfg=10 ctermbg=NONE guifg=#afc06c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=8 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=2 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi Debug ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=4 ctermbg=NONE guifg=#3a5d6f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=1 ctermbg=15 guifg=#e8503f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi Float ctermfg=10 ctermbg=NONE guifg=#afc06c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=2 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=4 ctermbg=NONE guifg=#3a5d6f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=15 ctermbg=NONE guifg=#f8f8f8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=12 ctermbg=NONE guifg=#8c61a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=6 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=2 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Macro PreProc
hi Number ctermfg=2 ctermbg=NONE guifg=#00a995 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=6 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link PreCondit PreProc
hi PreProc ctermfg=1 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=1 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=6 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=6 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=9 ctermbg=NONE guifg=#e4753e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=1 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=5 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=12 ctermbg=NONE guifg=#8c61a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=15 guifg=NONE guibg=#f8f8f8 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=8 ctermbg=7 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=0 ctermbg=7 guifg=#656567 guibg=#f0f0f0 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NormalMode ctermfg=8 ctermbg=15 guifg=#888888 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=10 ctermbg=15 guifg=#afc06c guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=9 ctermbg=15 guifg=#e4753e guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=4 ctermbg=15 guifg=#3a5d6f guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=5 ctermbg=15 guifg=#db2d45 guibg=#f8f8f8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=15 ctermbg=0 guifg=#f8f8f8 guibg=#656567 guisp=NONE cterm=NONE gui=NONE
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
if get(g:, "wwdc17_term_italics", 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
endif
finish

" Color: black                rgb(101, 101, 103)     ~         0
" Color: red                  rgb(232,  80,  63)     167       1
" Color: green                rgb(  0, 169, 149)     ~         2
" Color: yellow               rgb(225, 173,  11)     ~         3
" Color: blue                 rgb( 58,  93, 111)     ~         4
" Color: magenta              rgb(219,  45,  69)     ~         5
" Color: cyan                 rgb( 31, 174, 208)     ~         6
" Color: white                rgb(240, 240, 240)     ~         7
" Color: brightblack          rgb(136, 136, 136)     ~         8
" Color: brightred            rgb(228, 117,  62)     ~         9
" Color: brightgreen          rgb(175, 192, 108)     ~         10
" Color: brightyellow         rgb(235, 184,  34)     ~         11
" Color: brightblue           rgb(140,  97, 166)     ~         12
" Color: brightmagenta        rgb(235,  49,  75)     ~         13
" Color: brightcyan           rgb( 35, 188, 225)     ~         14
" Color: brightwhite          rgb(248, 248, 248)     ~         15
" Background: light
"     Normal           black             none
"     CursorLine       none              none
"     CursorLineNr     brightred         none
"     Folded           brightblack       none              g=italic
"     LineNr           brightblack       none
"     FoldColumn       brightblack       none
"     Terminal         black             none
"     Normal           black             brightwhite
"     CursorLine       none              white
"     CursorLineNr     brightred         white
"     Folded           brightblack       white             g=italic
"     LineNr           brightblack       white
"     FoldColumn       brightblack       white
"     Terminal         black             brightwhite
" ColorColumn          none              white
" Conceal              green             none
" Cursor               none              none              reverse
" CursorColumn         none              white
" DiffAdd              brightgreen       fg                reverse
" DiffChange           yellow            brightwhite       reverse
" DiffDelete           red               brightwhite       reverse
" DiffText             cyan              brightwhite       bold,reverse
" Directory            green             none
" EndOfBuffer          brightred         none
" ErrorMsg             red               brightwhite       reverse
" IncSearch            brightred         brightwhite       t=reverse g=standout
" MatchParen           none              none              bold,underline s=black
" ModeMsg              fg                none
" MoreMsg              brightred         none
" NonText              brightblack       none
" Pmenu                fg                white
" PmenuSbar            brightred         brightblack
" PmenuSel             brightwhite       brightred
" PmenuThumb           red               brightred
" Question             fg                none
" QuickFixLine     ->  Search
" Search               brightyellow      brightwhite       reverse
" SignColumn           brightred         none
" SpecialKey           brightred         none
" SpellBad             magenta           none              s=brightblack t=underline g=undercurl
" SpellCap             magenta           none              s=brightblack t=underline g=undercurl
" SpellLocal           magenta           none              s=brightblack t=underline g=undercurl
" SpellRare            magenta           none              s=brightblack t=underline g=undercurl
" Title                brightred         none              bold
" Visual               blue              brightwhite       reverse
" VisualNOS            brightwhite       blue
" WarningMsg           red               none
" StatusLine           black             brightwhite       bold,reverse
" StatusLineNC         black             white             reverse
" TabLine              white             black
" TabLineFill          brightwhite       black
" TabLineSel           brightwhite       black             bold
" VertSplit            black             black
" WildMenu             brightwhite       magenta           bold
" StatusLine           red               brightwhite       bold,reverse
" StatusLineNC         red               white             reverse
" TabLine              white             red
" TabLineFill          brightwhite       red
" TabLineSel           brightwhite       brightred         bold
" VertSplit            red               red
" WildMenu             brightwhite       brightgreen       bold
" StatusLine           green             brightwhite       reverse
" StatusLineNC         green             blue              reverse
" TabLine              blue              green
" TabLineFill          brightwhite       green
" TabLineSel           brightwhite       green
" VertSplit            green             green
" WildMenu             brightwhite       magenta
" StatusLine           yellow            brightwhite       bold,reverse
" StatusLineNC         yellow            blue              reverse
" TabLine              blue              yellow
" TabLineFill          brightwhite       yellow
" TabLineSel           brightwhite       yellow            bold
" VertSplit            yellow            yellow
" WildMenu             brightwhite       magenta           bold
" StatusLine           blue              brightwhite       bold,reverse
" StatusLineNC         blue              brightwhite       reverse
" TabLine              brightwhite       blue
" TabLineFill          brightwhite       blue
" TabLineSel           brightwhite       blue              bold
" VertSplit            blue              blue
" WildMenu             brightwhite       magenta           bold
" StatusLine           magenta           brightwhite       reverse
" StatusLineNC         magenta           yellow            reverse
" TabLine              yellow            magenta
" TabLineFill          brightwhite       magenta
" TabLineSel           brightwhite       magenta
" VertSplit            magenta           magenta
" WildMenu             brightwhite       yellow
" StatusLine           cyan              brightwhite       bold,reverse
" StatusLineNC         cyan              white             reverse
" TabLine              white             cyan
" TabLineFill          brightwhite       cyan
" TabLineSel           brightwhite       cyan              bold
" VertSplit            cyan              cyan
" WildMenu             brightwhite       magenta           bold
" StatusLine           white             black             bold,reverse
" StatusLineNC         white             brightwhite       reverse
" TabLine              brightwhite       white
" TabLineFill          black             white
" TabLineSel           black             white             bold
" VertSplit            white             white
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightblack       brightwhite       bold,reverse
" StatusLineNC         brightblack       white             reverse
" TabLine              white             brightblack
" TabLineFill          brightwhite       brightblack
" TabLineSel           brightwhite       brightblack
" VertSplit            brightblack       brightblack
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightred         brightwhite       reverse
" StatusLineNC         brightred         blue              reverse
" TabLine              blue              brightred
" TabLineFill          brightwhite       brightred
" TabLineSel           brightwhite       brightred
" VertSplit            brightred         brightred
" WildMenu             brightwhite       brightgreen
" StatusLine           brightgreen       brightwhite       reverse
" StatusLineNC         brightgreen       brightblack       reverse
" TabLine              brightblack       brightgreen
" TabLineFill          brightwhite       brightgreen
" TabLineSel           brightwhite       brightgreen
" VertSplit            brightgreen       brightgreen
" WildMenu             brightwhite       magenta
" StatusLine           brightyellow      brightwhite       bold,reverse
" StatusLineNC         brightyellow      blue              reverse
" TabLine              blue              brightyellow
" TabLineFill          brightwhite       brightyellow
" TabLineSel           brightwhite       brightyellow      bold
" VertSplit            brightyellow      brightyellow
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightblue        brightwhite       bold,reverse
" StatusLineNC         brightblue        white             reverse
" TabLine              white             brightblue
" TabLineFill          brightwhite       brightblue
" TabLineSel           brightwhite       brightblue        bold
" VertSplit            brightblue        brightblue
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightmagenta     brightwhite       reverse
" StatusLineNC         brightmagenta     yellow            reverse
" TabLine              yellow            brightmagenta
" TabLineFill          brightwhite       brightmagenta
" TabLineSel           brightwhite       brightmagenta
" VertSplit            brightmagenta     brightmagenta
" WildMenu             brightwhite       yellow
" StatusLine           brightcyan        brightwhite       bold,reverse
" StatusLineNC         brightcyan        white             reverse
" TabLine              white             brightcyan
" TabLineFill          brightwhite       brightcyan
" TabLineSel           brightwhite       brightcyan        bold
" VertSplit            brightcyan        brightcyan
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightwhite       black             reverse
" StatusLineNC         brightwhite       brightblack       reverse
" TabLine              brightblack       brightwhite
" TabLineFill          black             brightwhite
" TabLineSel           black             brightwhite
" VertSplit            brightwhite       brightwhite
" WildMenu             brightwhite       magenta
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" Boolean              brightgreen       none
" Character            magenta           none
" Comment              brightblack       none              g=italic
" Conditional       -> Statement
" Constant             green             none
" Define            -> PreProc
" Debug                magenta           none
" Delimiter            blue              none
" Error                red               brightwhite       reverse
" Exception         -> Statement
" Float                brightgreen       none
" Function             green             none
" Identifier           blue              none
" Ignore               brightwhite       none
" Include              brightblue        none
" Keyword              cyan              none
" Label                green             none
" Macro             -> PreProc
" Number               green             none
" Operator             cyan              none
" PreCondit         -> PreProc
" PreProc              red               none
" Repeat            -> Statement
" Special              red               none
" SpecialChar          magenta           none
" SpecialComment       magenta           none
" Statement            cyan              none
" StorageClass         cyan              none
" String               brightred         none
" Structure            red               none
" Tag               -> Special
" Todo                 magenta           none              bold
" Type                 brightblue        none
" Typedef           -> Type
" Underlined           none              none              underline
" lCursor           -> Cursor
" CursorIM             none              brightwhite
" ToolbarLine          brightblack       white
" ToolbarButton        black             white             bold
" NormalMode           brightblack       brightwhite       reverse
" InsertMode           brightgreen       brightwhite       reverse
" ReplaceMode          brightred         brightwhite       reverse
" VisualMode           blue              brightwhite       reverse
" CommandMode          magenta           brightwhite       reverse
" TermCursor        -> Cursor
" TermCursorNC         brightwhite       black
