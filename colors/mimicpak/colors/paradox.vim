"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  paradox.vim
"  Last Change:  2009-10-17  [17:00:34]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h paradox.vim
"                :h paradox-options
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

let colors_name = "paradox"

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
let s:mimic_paradox_alt  = s:GetValue("mimic_paradox_alt")

" cleanup
delfunction s:GetValue

" Default Highlight {{{1
"~~~~~~~~~~~~~~~~~~~
if !s:mimic_paradox_alt
  hi Normal	guifg=#c8c8c8	guibg=#104848	gui=NONE
else
  hi Normal	guifg=#c8c8c8	guibg=#333333	gui=NONE
endif
hi Cursor	guifg=bg	guibg=#beffbe	gui=NONE
hi CursorIM	guifg=bg	guibg=#ffffbe	gui=NONE
hi MatchParen	guifg=bg	guibg=#ffbebe	gui=NONE

" search
hi Search	guifg=bg	guibg=#44ff88	gui=NONE
hi IncSearch			gui=reverse

" visual mode
if version < 700
  hi Visual	guifg=#76dc43	guibg=#006666	gui=NONE
  hi VisualNOS	guifg=#76dc43	guibg=#660066	gui=NONE
else
  hi Visual		guibg=#006666	gui=NONE
  hi VisualNOS		guibg=#660066	gui=NONE
endif

" line numbers and folding
hi LineNr	guifg=#ffa070	guibg=#003838	gui=NONE
hi NonText	guifg=#ffa070	guibg=#003838	gui=NONE
hi Folded	guifg=#58de78	guibg=#002828	gui=NONE
hi FoldColumn	guifg=#68ee88	guibg=#003838	gui=NONE
hi SignColumn	guifg=#33eedd	guibg=#003838	gui=NONE

" windows, statusline
hi StatusLine	guifg=#002828	guibg=#f5c67e	gui=NONE
hi StatusLineNC	guifg=#f5c67e	guibg=#002828	gui=NONE
hi VertSplit	guifg=#f5c67e	guibg=#002828	gui=NONE
hi WildMenu	guifg=#f5c67e	guibg=#002828	gui=underline

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=#f5c67e	guibg=#002828
    hi Scrollbar	guifg=#f5c67e	guibg=#002828
    hi Tooltip	guifg=bg	guibg=#66ee66
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=#205858	gui=NONE
  hi CursorColumn		guibg=#205858	gui=NONE

  " tab pages
  hi TabLine	guifg=#f5c673	guibg=#002828	gui=NONE
  hi TabLineFill	guifg=#f5c673	guibg=#002828	gui=NONE
  hi TabLineSel	guifg=#002828	guibg=#f5c67e	gui=underline

  " popup completion menu
  hi Pmenu	guifg=#002222	guibg=#66cc66	gui=NONE
  hi PmenuSel	guifg=#33ff33	guibg=#003300	gui=NONE
  hi PmenuSbar	guifg=#336633	guibg=#336633	gui=NONE
  hi PmenuThumb	guifg=#447744	guibg=#447744	gui=NONE

  " spell checking
  hi SpellBad	guisp=#ff6666	guibg=#481010	gui=undercurl
  hi SpellCap	guisp=#6666ff	guibg=#101048	gui=undercurl
  hi SpellLocal	guisp=#66ffff	guibg=#104848	gui=undercurl
  hi SpellRare	guisp=#ff66ff	guibg=#481048	gui=undercurl
endif

" other texts
hi Question	guifg=#99cc99	guibg=bg	gui=NONE
hi WarningMsg	guifg=#ff8844	guibg=bg	gui=NONE
hi ErrorMsg	guifg=#ffff66	guibg=#b83838	gui=NONE
hi Title	guifg=#99ff00	guibg=bg	gui=NONE
hi Directory	guifg=#00ff99	guibg=bg	gui=NONE
hi MoreMsg	guifg=#33ff99	guibg=bg	gui=NONE
hi ModeMsg	guifg=#99cc99	guibg=bg	gui=NONE
hi SpecialKey	guifg=#99ff00	guibg=bg	gui=NONE

" diff
hi DiffAdd	guifg=#000000	guibg=#66ef66	gui=NONE
hi DiffChange	guifg=#000000	guibg=#66ccef	gui=NONE
hi DiffDelete	guifg=#000000	guibg=#efef66	gui=NONE
hi DiffText	guifg=#000000	guibg=#66efef	gui=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#f5c67e	guibg=bg	gui=NONE
hi SpecialComment	guifg=#c6f57e	guibg=bg	gui=NONE

hi Character	guifg=#66b3b3	guibg=bg	gui=NONE
hi String	guifg=#66b3b3	guibg=bg	gui=NONE
hi Constant	guifg=#03fcca	guibg=bg	gui=NONE
hi link Float	Constant
hi link Number	Constant
hi link Boolean	Constant

hi Identifier	guifg=#d3d1ab	guibg=bg	gui=NONE
hi link Function	Identifier

hi Statement	guifg=#ffffff	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#b5f7a4	guibg=bg	gui=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#86cef0	guibg=bg	gui=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#b0e3de	guibg=bg	gui=NONE
hi SpecialChar	guifg=#dfed7c	guibg=bg	gui=NONE
hi link Tag	Special
hi link Delimiter	SpecialChar
hi Debug	guifg=#888888	guibg=bg	gui=NONE

hi Underlined	guifg=#b0e3de	guibg=bg	gui=underline
hi Ignore	guifg=#306868	guibg=bg	gui=NONE
hi Error	guifg=#dadada	guibg=#b83838	gui=underline
hi Todo	guifg=bg	guibg=#66ee66	gui=NONE

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

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui s:mimic_paradox_alt

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
