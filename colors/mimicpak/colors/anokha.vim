"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  anokha.vim
"  Last Change:  2009-10-17  [16:36:52]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"  Online Help:  :h anokha.vim
"                :h anokha-options
"                :h mimicpak
"                :h mimicpak-options
"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
" Setup {{{1
"~~~~~~~
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "anokha"

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
let s:mimic_anokha_alt   = s:GetValue("mimic_anokha_alt")

" cleanup
delfunction s:GetValue

" Default Highlight {{{1
"~~~~~~~~~~~~~~~~~~~
if !s:mimic_anokha_alt
  hi Normal	guifg=#ffffff	guibg=#003333	gui=NONE
else
  hi Normal	guifg=#ffffff	guibg=#003300	gui=NONE
endif
hi Cursor	guifg=bg	guibg=#ccffcc	gui=NONE
hi CursorIM	guifg=bg	guibg=#ffffcc	gui=NONE
hi MatchParen	guifg=bg	guibg=#66ffff	gui=NONE

" search
hi Search	guifg=bg	guibg=#00ff00	gui=NONE
hi IncSearch	guifg=bg	guibg=#ffff00	gui=NONE

" visual mode
if version < 700
  hi Visual	guifg=fg	guibg=#006600	gui=NONE
  hi VisualNOS	guifg=fg	guibg=#006666	gui=NONE
else
  hi Visual		guibg=#006600	gui=NONE
  hi VisualNOS		guibg=#006666	gui=NONE
endif

if !s:mimic_anokha_alt
  " line numbers and folding
  hi LineNr	guifg=#336666	guibg=bg	gui=NONE
  hi NonText	guifg=#336666	guibg=bg	gui=NONE
  hi Folded	guifg=#229966	guibg=#002222	gui=NONE
  hi FoldColumn	guifg=#229966	guibg=#002222	gui=NONE
  hi SignColumn	guifg=#33cc99	guibg=#114444	gui=NONE
  " windows, statusline
  hi StatusLine	guifg=#002222	guibg=#00cc99	gui=NONE
  hi StatusLineNC	guifg=#00ffcc	guibg=#002222	gui=NONE
  hi VertSplit	guifg=#00ffcc	guibg=#002222	gui=NONE
  hi WildMenu	guifg=#00ffcc	guibg=#002222	gui=underline
else
  " line numbers and folding
  hi LineNr	guifg=#336633	guibg=bg	gui=NONE
  hi NonText	guifg=#336633	guibg=bg	gui=NONE
  hi Folded	guifg=#66ff66	guibg=#006600	gui=NONE
  hi FoldColumn	guifg=#33cc33	guibg=#002200	gui=NONE
  hi SignColumn	guifg=#66cccc	guibg=#002200	gui=NONE
  " windows, statusline
  hi StatusLine	guifg=#002200	guibg=#55cc55	gui=NONE
  hi StatusLineNC	guifg=#66ff66	guibg=#002200	gui=NONE
  hi VertSplit	guifg=#66ff66	guibg=#002200	gui=NONE
  hi WildMenu	guifg=#66ff66	guibg=#002200	gui=underline
endif

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    if !s:mimic_anokha_alt
      hi Menu	guifg=#00ffcc	guibg=#002222
      hi Scrollbar	guifg=#00ffcc	guibg=#002222
      hi Tooltip	guifg=#002222	guibg=#00cc99
    else
      hi Menu	guifg=#66ff66	guibg=#002200
      hi Scrollbar	guifg=#66ff66	guibg=#002200
      hi Tooltip	guifg=#002200	guibg=#33cc33
    endif
  endif
endif

" vim >= 7.0 only
if version >= 700
  if !s:mimic_anokha_alt
    hi CursorLine		guibg=#225555	gui=NONE
    hi CursorColumn		guibg=#225555	gui=NONE
    " tab pages
    hi TabLine	guifg=#00ddad	guibg=#002222	gui=underline
    hi TabLineFill	guifg=#00ddad	guibg=#002222	gui=underline
    hi TabLineSel	guifg=#002222	guibg=#00ddad	gui=NONE
    " popup completion menu
    hi Pmenu	guifg=#002222	guibg=#66cccc	gui=NONE
    hi PmenuSel	guifg=#33ffcc	guibg=#003333	gui=NONE
    hi PmenuSbar	guifg=#336666	guibg=#336666	gui=NONE
    hi PmenuThumb	guifg=#447777	guibg=#447777	gui=NONE
  else
    hi CursorLine		guibg=#225522	gui=NONE
    hi CursorColumn		guibg=#225522	gui=NONE
    " tab pages
    hi TabLine	guifg=#44cc44	guibg=#002200	gui=underline
    hi TabLineFill	guifg=#44cc44	guibg=#002200	gui=underline
    hi TabLineSel	guifg=#002200	guibg=#55cc55	gui=NONE
    " popup completion menu
    hi Pmenu	guifg=#002200	guibg=#55cc55	gui=NONE
    hi PmenuSel	guifg=#66ff66	guibg=#002200	gui=NONE
    hi PmenuSbar	guifg=#225522	guibg=#225522	gui=NONE
    hi PmenuThumb	guifg=#447744	guibg=#447744	gui=NONE
  endif

  " spell checking
  hi SpellBad	guisp=#ff0000	guibg=#441111	gui=undercurl
  hi SpellCap	guisp=#0000ff	guibg=#111144	gui=undercurl
  hi SpellLocal	guisp=#00ffff	guibg=#114444	gui=undercurl
  hi SpellRare	guisp=#ff00ff	guibg=#441144	gui=undercurl
endif

" other texts
hi Question	guifg=#99cc99	guibg=bg	gui=NONE
hi WarningMsg	guifg=#ff6666	guibg=bg	gui=NONE
hi ErrorMsg	guifg=#ffffff	guibg=#cc0000	gui=NONE
hi Title	guifg=#99ff00	guibg=bg	gui=NONE
hi Directory	guifg=#ff9900	guibg=bg	gui=NONE
hi MoreMsg	guifg=#66cc66	guibg=bg	gui=NONE
hi ModeMsg	guifg=#99cc99	guibg=bg	gui=NONE
hi SpecialKey	guifg=#00ff99	guibg=bg	gui=NONE

" diff
hi DiffAdd	guifg=#000000	guibg=#33ff33	gui=NONE
hi DiffChange	guifg=#000000	guibg=#33cccc	gui=NONE
if !s:mimic_anokha_alt
  hi DiffDelete	guifg=#006666	guibg=bg	gui=NONE
else
  hi DiffDelete	guifg=#006600	guibg=bg	gui=NONE
endif
hi DiffText	guifg=#000000	guibg=#66ffff	gui=NONE


" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
if !s:mimic_anokha_alt
  hi Comment	guifg=#669999	guibg=bg	gui=NONE
  hi Todo	guifg=bg	guibg=#00ff99	gui=NONE
  hi Ignore	guifg=#004444	guibg=bg	gui=NONE
else
  hi Comment	guifg=#55b055	guibg=bg	gui=NONE
  hi Todo	guifg=bg	guibg=#66ff66	gui=NONE
  hi Ignore	guifg=#004400	guibg=bg	gui=NONE
endif
hi SpecialComment	guifg=#999966	guibg=bg	gui=NONE

hi Constant	guifg=#ffcc00	guibg=bg	gui=NONE
hi Character	guifg=#66cc99	guibg=bg	gui=NONE
hi String	guifg=#99cc99	guibg=bg	gui=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#ffcc00	guibg=bg	gui=NONE
hi Function	guifg=#ffcc00	guibg=bg	gui=NONE

hi Statement	guifg=#ff9900	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#66ff66	guibg=bg	gui=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#00ccff	guibg=bg	gui=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#efef00	guibg=bg	gui=NONE
hi link SpecialChar	Special
hi link Delimiter	Special
hi Tag	guifg=#ffcc00	guibg=bg	gui=NONE
hi Debug	guifg=#cccccc	guibg=bg	gui=NONE

hi Underlined	guifg=#dddd00	guibg=bg	gui=underline
hi Error	guifg=#ffffff	guibg=#cc0000	gui=underline

" Font Style {{{1
"~~~~~~~~~~~~
if 0 < s:mimic_font_style

  " Function:  s:MultiHi {{{2
  "   Sets highlight option(s) for all its arguments.
  " Parameters:
  "   option -- a string in the form of "key=value", like "gui=NONE".  Can also
  "             be repeated: "key1=value1 key2=value2 ... keyN=valueN".
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
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Constant", "Statement", "PreProc", "Type", "Identifier", "Special", "SpecialChar", "Todo")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "StatusLineNC", "Comment", "SpecialComment", "Question")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "MoreMsg", "Title", "Identifier", "Todo")
  endif

  " Cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui s:mimic_anokha_alt

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
