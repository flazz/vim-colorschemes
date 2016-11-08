"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  omen.vim
"  Last Change:  2009-10-17  [17:04:14]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h omen.vim
"                :h mimicpak
"                :h mimicpak-options
"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
" Setup {{{1
"~~~~~~~
set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "omen"

" Function: s:GetValue(var, ...) {{{2
"    Looks up the value of a variable in this order (by default):
"    buffer, window, tabpage and global.
"    The one that exists first is returned, or 0 if none of them exists.
" Optional Args:
"    a:1  value to return if variable doesn't exist.
"    a:2  string with comma separated variable prefixes.  Examples:
"         "b:,t:,g:" - search for buffer, tabpage and global variables
"            "w:,t:" - search for window and tabpage variables
"               "g:" - search for global variables only
function s:GetValue(var, ...)
  let l:defvalue = 0 < a:0 ? a:1      : 0
  let l:prefixes = 1 < a:0 ? a:2 . "" : "b:,w:,t:,g:"
  let l:start = 0
  let l:i = stridx(l:prefixes, ",")
  while 1
    " track down the comma position, and handle special cases:
    "  - only one prefix without commas, and
    "  - after the last encountered comma.
    let l:end = l:i < 0 ? strlen(l:prefixes) : l:i
    let l:prefix = strpart(l:prefixes, l:start, l:end - l:start)
    if exists(prefix . a:var)
      return {prefix . a:var}
    endif
    " after last comma (or one prefix only without commas),
    " and variable not found
    if l:i < 0
      return l:defvalue
    endif
    " update needle and get next comma position
    let l:start = l:i + 1
    let l:i = stridx(l:prefixes, ",", l:start)
  endwhile
endfunction "}}}2

" get the values (if any) for the options
let s:mimic_font_style   = s:GetValue("mimic_font_style")
let s:mimic_colorize_gui = s:GetValue("mimic_colorize_gui")

" cleanup
delfunction s:GetValue

" Default Highlight {{{1
"~~~~~~~~~~~~~~~~~~~
hi Normal	guifg=#000000	guibg=#e5e5e5	gui=NONE	ctermfg=black	ctermbg=grey	cterm=NONE
hi Cursor	guifg=bg	guibg=fg	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
hi CursorIM	guifg=bg	guibg=fg	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
hi MatchParen	guifg=bg	guibg=#880000	gui=NONE	ctermfg=bg	ctermbg=darkred	cterm=NONE

" search
hi Search	guifg=fg	guibg=#e7a52e	gui=NONE	ctermfg=fg	ctermbg=brown	cterm=NONE
hi IncSearch	guifg=bg	guibg=fg	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE

" transparent selection works only for Vim >= 7.00
if version < 700
  " visual mode
  hi Visual	guifg=fg	guibg=#999999	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
  hi VisualNOS	guifg=fg	guibg=#aa8888	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE
else
  " visual mode
  hi Visual		guibg=#bfbfbf	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
  hi VisualNOS		guibg=#bf9999	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE
endif

" line numbers and folding
hi LineNr	guifg=#787878	guibg=#333333	gui=NONE	ctermfg=gray	ctermbg=black	cterm=NONE
hi NonText	guifg=#787878	guibg=#333333	gui=NONE	ctermfg=gray	ctermbg=black	cterm=NONE
hi Folded	guifg=#ffbcbc	guibg=#884040	gui=NONE	ctermfg=gray	ctermbg=darkred	cterm=NONE
hi FoldColumn	guifg=#af8c8c	guibg=#333333	gui=NONE	ctermfg=red	ctermbg=black	cterm=NONE
hi SignColumn	guifg=#ffffbc	guibg=#333333	gui=NONE	ctermfg=yellow	ctermbg=black	cterm=NONE

" windows, statusline
hi StatusLine	guifg=fg	guibg=#b8b8b8	gui=underline	ctermfg=fg	ctermbg=gray	cterm=NONE
hi StatusLineNC	guifg=#f8f8f8	guibg=#333333	gui=NONE	ctermfg=gray	ctermbg=black	cterm=NONE
hi VertSplit	guifg=#f8f8f8	guibg=#333333	gui=NONE	ctermfg=gray	ctermbg=black	cterm=NONE
hi WildMenu	guifg=#f8f8f8	guibg=#333333	gui=NONE	ctermfg=gray	ctermbg=fg	cterm=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=#f8f8f8	guibg=#333333
    hi Scrollbar	guifg=#f8f8f8	guibg=#333333
    hi Tooltip	guifg=#990000	guibg=#ffff99
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=#cccccc	gui=NONE		ctermbg=yellow	cterm=NONE
  hi CursorColumn		guibg=#cccccc	gui=NONE		ctermbg=yellow	cterm=NONE

  " tab pages
  hi TabLine	guifg=#f8f8f8	guibg=#333333	gui=NONE	ctermfg=gray	ctermbg=black	cterm=NONE
  hi TabLineFill	guifg=#f8f8f8	guibg=#333333	gui=NONE	ctermfg=gray	ctermbg=black	cterm=NONE
  hi TabLineSel	guifg=fg	guibg=#cccccc	gui=underline	ctermfg=fg	ctermbg=gray	cterm=NONE

  " popup completion menu
  hi Pmenu	guifg=fg	guibg=#cccccc	gui=NONE	ctermfg=fg	ctermbg=gray	cterm=NONE
  hi PmenuSel	guifg=bg	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=darkgray	cterm=NONE
  hi PmenuSbar	guifg=#333333	guibg=#333333	gui=NONE	ctermfg=darkgray	ctermbg=darkgray	cterm=NONE
  hi PmenuThumb	guifg=#999999	guibg=#999999	gui=NONE	ctermfg=gray	ctermbg=gray	cterm=NONE

  " spell checking
  hi SpellBad	guisp=#cc3333		gui=undercurl	ctermfg=white	ctermbg=red	cterm=NONE
  hi SpellCap	guisp=#3333cc		gui=undercurl	ctermfg=white	ctermbg=blue	cterm=NONE
  hi SpellLocal	guisp=#339999		gui=undercurl	ctermfg=black	ctermbg=cyan	cterm=NONE
  hi SpellRare	guisp=#cc33cc		gui=undercurl	ctermfg=black	ctermbg=magenta	cterm=NONE
endif

" other texts
hi Question	guifg=#cc8000	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi WarningMsg	guifg=#990000	guibg=#fada50	gui=NONE	ctermfg=darkred	ctermbg=yellow	cterm=NONE
hi ErrorMsg	guifg=bg	guibg=#990000	gui=NONE	ctermfg=white	ctermbg=red	cterm=NONE
hi Title	guifg=#787800	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi Directory	guifg=#990000	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi MoreMsg	guifg=#cc8000	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi ModeMsg	guifg=#700000	guibg=#cccccc	gui=NONE	ctermfg=darkred	ctermbg=gray	cterm=NONE
hi SpecialKey	guifg=#0000c0	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE

" diff
hi DiffAdd	guifg=#000000	guibg=#66ff66	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
hi DiffChange	guifg=#000000	guibg=#66ccff	gui=NONE	ctermfg=white	ctermbg=blue	cterm=NONE
hi DiffDelete	guifg=#000000	guibg=#ffff66	gui=NONE	ctermfg=white	ctermbg=red	cterm=NONE
hi DiffText	guifg=#000000	guibg=#66ffff	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#808080	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
hi SpecialComment	guifg=#906060	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE

hi Constant	guifg=#987800	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi Character	guifg=#686800	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi String	guifg=#686800	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#802020	guibg=bg	gui=NONE	ctermfg=red	ctermbg=bg	cterm=NONE
hi Function	guifg=#802020	guibg=bg	gui=NONE	ctermfg=red	ctermbg=bg	cterm=NONE

hi Statement	guifg=#781313	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#000000	guibg=bg	gui=NONE	ctermfg=black	ctermbg=bg	cterm=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#781313	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#984800	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi link SpecialChar	Special
hi link Delimiter	Special
hi link Tag	Special
hi Debug	guifg=#666666	guibg=bg	gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE

hi Underlined	guifg=fg	guibg=bg	gui=underline	ctermfg=fg	ctermbg=bg	cterm=underline
hi Ignore	guifg=#aaaaaa	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
hi Error	guifg=bg	guibg=#97151e	gui=NONE	ctermfg=bg	ctermbg=darkred	cterm=NONE
hi Todo	guifg=fg	guibg=#ecec3c	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE

" Font Style {{{1
"~~~~~~~~~~~~
if has("gui_running") && 0 < s:mimic_font_style

  " Function:  s:MultiHi {{{2
  "   Sets highlight option(s) for all its arguments.
  " Parameters:
  "   option -- a string in the form of "key1=value1 key2=value2 ... keyN=valueN".
  "      ... -- the highlight group names.
  function s:MultiHi(option, ...)
    let l:i = 1
    while l:i <= a:0
      silent execute "hi " . a:{l:i} . " " . a:option
      let l:i = l:i + 1
    endwhile
  endfunction "}}}2

  " set the bold only options, including the "bold & italics" groups.
  if 1 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "Title", "Character" , "Statement", "PreProc", "Type", "Special", "Identifier", "Function", "Todo", "Constant")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "Folded", "Question", "StatusLineNC", "TabLine", "Identifier", "Function", "Comment", "SpecialComment", "Question")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "MoreMsg", "Title", "Identifier", "Function")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
