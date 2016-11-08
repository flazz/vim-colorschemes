"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  gaea.vim
"  Last Change:  2009-10-17  [17:02:31]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h gaea.vim
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

let colors_name = "gaea"

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
hi Normal	guifg=black	guibg=white	gui=NONE
hi Cursor	guifg=bg	guibg=fg	gui=NONE
hi CursorIM	guifg=bg	guibg=darkred	gui=NONE
hi MatchParen	guifg=fg	guibg=chartreuse	gui=NONE

" search
hi Search	guifg=fg	guibg=gold	gui=NONE
hi IncSearch	guifg=gold	guibg=indianred4	gui=NONE

" visual mode
if version < 700
  hi Visual	guifg=fg	guibg=khaki1	gui=NONE
  hi VisualNOS	guifg=fg	guibg=darkolivegreen1	gui=NONE
  " diff
  hi DiffAdd	guifg=fg	guibg=chartreuse	gui=NONE
  hi DiffChange	guifg=fg	guibg=steelblue1	gui=NONE
  hi DiffDelete	guifg=fg	guibg=gold	gui=NONE
  hi DiffText	guifg=fg	guibg=cadetblue1	gui=NONE
else
  hi Visual		guibg=khaki1	gui=NONE
  hi VisualNOS		guibg=darkolivegreen1	gui=NONE
  " diff
  hi DiffAdd		guibg=chartreuse	gui=NONE
  hi DiffChange		guibg=steelblue1	gui=NONE
  hi DiffDelete		guibg=gold	gui=NONE
  hi DiffText		guibg=cadetblue1	gui=NONE
endif

" line numbers and folding
hi LineNr	guifg=darkseagreen4	guibg=bg	gui=NONE
hi NonText	guifg=sienna4	guibg=wheat3	gui=NONE
hi Folded	guifg=brown 	guibg=wheat3	gui=NONE
hi FoldColumn	guifg=brown 	guibg=wheat3	gui=NONE
hi SignColumn	guifg=firebrick3	guibg=wheat3	gui=NONE

" windows, statusline
hi StatusLine	guifg=fg	guibg=burlywood3	gui=NONE
hi StatusLineNC	guifg=wheat2	guibg=burlywood4	gui=NONE
hi VertSplit	guifg=wheat2	guibg=burlywood4	gui=NONE
hi WildMenu	guifg=gold	guibg=indianred4	gui=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=fg	guibg=burlywood
    hi Scrollbar	guifg=wheat1	guibg=burlywood4
    hi Tooltip	guifg=green4	guibg=darkseagreen2
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=lemonchiffon1	gui=NONE
  hi CursorColumn		guibg=lemonchiffon1	gui=NONE

  " tab pages
  hi TabLine	guifg=wheat2	guibg=burlywood4	gui=NONE
  hi TabLineFill	guifg=wheat2	guibg=burlywood4	gui=NONE
  hi TabLineSel	guifg=fg	guibg=burlywood3	gui=NONE

  " popup completion menu
  hi Pmenu	guifg=fg	guibg=darkseagreen2	gui=NONE
  hi PmenuSel	guifg=darkseagreen1	guibg=green4	gui=NONE
  hi PmenuSbar	guifg=darkseagreen3	guibg=darkseagreen3	gui=NONE
  hi PmenuThumb	guifg=darkseagreen4	guibg=darkseagreen4	gui=NONE

  " spell checking
  hi SpellBad	guisp=red		gui=undercurl
  hi SpellCap	guisp=blue		gui=undercurl
  hi SpellLocal	guisp=cyan3		gui=undercurl
  hi SpellRare	guisp=orchid2		gui=undercurl
endif

" other texts
hi Question	guifg=forestgreen	guibg=bg	gui=NONE
hi WarningMsg	guifg=red2	guibg=bg	gui=NONE
hi ErrorMsg	guifg=bg	guibg=red2	gui=NONE
hi Title	guifg=deepskyblue4	guibg=bg	gui=NONE
hi Directory	guifg=green4	guibg=bg	gui=NONE
hi MoreMsg	guifg=sienna4	guibg=wheat1	gui=NONE
hi ModeMsg	guifg=fg	guibg=darkseagreen2	gui=NONE
hi SpecialKey	guifg=royalblue2	guibg=bg	gui=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=sienna	guibg=bg	gui=NONE
hi SpecialComment	guifg=salmon3	guibg=bg	gui=NONE

hi Constant	guifg=darkorange2	guibg=bg	gui=NONE
hi Character	guifg=tan3	guibg=bg	gui=NONE
hi String	guifg=tan3	guibg=bg	gui=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=darkolivegreen4	guibg=bg	gui=NONE
hi Function	guifg=darkolivegreen4	guibg=bg	gui=NONE

hi Statement	guifg=green4	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=tomato3	guibg=bg	gui=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=olivedrab4	guibg=bg	gui=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=deepskyblue4	guibg=bg	gui=NONE
hi link SpecialChar	Special
hi link Delimiter	Special
hi link Tag	Special
hi Debug	guifg=grey40	guibg=bg	gui=NONE

hi Underlined	guifg=forestgreen	guibg=bg	gui=underline
hi Ignore	guifg=grey90	guibg=bg	gui=NONE
hi Error	guifg=bg	guibg=red3	gui=NONE
hi Todo	guifg=brown4	guibg=burlywood1	gui=NONE

" Font Style {{{1
"~~~~~~~~~~~~
if 0 < s:mimic_font_style

  " Function:  s:MultiHi {{{2
  "   Sets highlight option(s) on all its arguments.
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
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Constant", "Statement", "PreProc", "Type", "Identifier", "Function", "Special", "Special", "Todo", "Directory")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "StatusLineNC", "TabLine", "Comment", "SpecialComment", "Question", "Identifier", "Function", "TODO")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "MoreMsg", "Title", "Special", "Identifier", "Function", "Todo", "Directory")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
