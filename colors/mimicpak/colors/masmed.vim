"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  masmed.vim
"  Last Change:  2009-10-17  [17:03:39]
"      Version:  120
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h masmed.vim
"                :h masmed-options
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

let colors_name = "masmed"

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
let s:mimic_masmed_alt   = s:GetValue("mimic_masmed_alt")

" cleanup
delfunction s:GetValue

" Default Highlight {{{1
"~~~~~~~~~~~~~~~~~~~
if !s:mimic_masmed_alt
  hi Normal	guifg=#b0b0b0	guibg=#303058	gui=NONE
else
  hi Normal	guifg=#b0b0b0	guibg=#333333	gui=NONE
endif
hi Cursor	guifg=bg	guibg=#8dfcba	gui=NONE
hi CursorIM	guifg=bg	guibg=#fc8dba	gui=NONE
hi MatchParen	guifg=bg	guibg=#8ddafc	gui=NONE

" search
hi Search	guifg=bg	guibg=#d5c813	gui=NONE
hi IncSearch	guifg=bg	guibg=#63e593	gui=NONE

" transparent effects
if version < 700
  hi Visual	guifg=bg	guibg=#9b8db8	gui=NONE
  hi VisualNOS	guifg=bg	guibg=#b89b8d	gui=NONE
  hi LineNr	guifg=#88889f	guibg=bg	gui=NONE
else
  hi Visual		guibg=#405088	gui=NONE
  hi VisualNOS		guibg=#884050	gui=NONE
  hi LineNr	guifg=#88889f		gui=NONE
endif

" folding
if !s:mimic_masmed_alt
  hi NonText	guifg=#88889f	guibg=bg	gui=NONE
  hi Folded	guifg=#a8a8cf	guibg=#404068	gui=NONE
  hi FoldColumn	guifg=#a8a8cf	guibg=#404068	gui=NONE
  hi SignColumn	guifg=#cf9898	guibg=#404068	gui=NONE
else
  hi NonText	guifg=#88889f	guibg=#404040	gui=NONE
  hi Folded	guifg=#c8a8cf	guibg=#404040	gui=NONE
  hi FoldColumn	guifg=#c8a8cf	guibg=#404040	gui=NONE
  hi SignColumn	guifg=#cf9898	guibg=#404040	gui=NONE
endif

" windows, statusline
hi StatusLine	guifg=bg	guibg=#13d1d5	gui=NONE
hi StatusLineNC	guifg=#13d1d5	guibg=#404090	gui=NONE
hi VertSplit	guifg=#13d1d5	guibg=#404090	gui=NONE
hi WildMenu	guifg=#13d1d5	guibg=bg	gui=underline

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=#13d1d5	guibg=bg
    hi Scrollbar	guifg=#13d1d5	guibg=#404090
    hi Tooltip	guifg=bg	guibg=#71f09a
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=#304078	gui=NONE
  hi CursorColumn		guibg=#304078	gui=NONE

  " tab pages
  hi TabLine	guifg=#13d1d5	guibg=#404090	gui=NONE
  hi TabLineFill	guifg=#13d1d5	guibg=#404090	gui=NONE
  hi TabLineSel	guifg=bg	guibg=#13d1d5	gui=NONE

  " popup completion menu
  if !s:mimic_masmed_alt
    hi Pmenu	guifg=bg	guibg=#55d3d5	gui=NONE
    hi PmenuSel	guifg=#45c3c5	guibg=bg	gui=NONE
    hi PmenuSbar	guifg=#404068	guibg=#404068	gui=NONE
    hi PmenuThumb	guifg=#55d3d5	guibg=#55d3d5	gui=NONE
  else
    hi Pmenu	guifg=#13d1d5	guibg=bg	gui=NONE
    hi PmenuSel	guifg=bg	guibg=#13d1d5	gui=NONE
    hi PmenuSbar	guifg=bg	guibg=#13d1d5	gui=NONE
    hi PmenuThumb	guifg=#13d1d5	guibg=bg	gui=NONE
  endif

  " spell checking
  hi SpellBad	guisp=#ff0000	guibg=#583030	gui=undercurl
  hi SpellCap	guisp=#0000ff	guibg=#303058	gui=undercurl
  hi SpellLocal	guisp=#00ffff	guibg=#305858	gui=undercurl
  hi SpellRare	guisp=#ff00ff	guibg=#583058	gui=undercurl
endif

" other texts
hi Question	guifg=#94b8f2	guibg=bg	gui=NONE
hi WarningMsg	guifg=#ff6666	guibg=bg	gui=NONE
hi ErrorMsg	guifg=#ffffff	guibg=#cc0000	gui=NONE
hi Title	guifg=#71f09a	guibg=bg	gui=NONE
hi Directory	guifg=#f2b884	guibg=bg	gui=NONE
hi MoreMsg	guifg=#f2b884	guibg=bg	gui=NONE
hi ModeMsg	guifg=#84f2b8	guibg=bg	gui=NONE
hi SpecialKey	guifg=#f284f2	guibg=bg	gui=NONE

" diff
hi DiffAdd	guifg=bg	guibg=#66ff33	gui=NONE
hi DiffChange	guifg=bg	guibg=#33ccff	gui=NONE
hi DiffDelete	guifg=bg	guibg=#ffff33	gui=NONE
hi DiffText	guifg=bg	guibg=#33ffff	gui=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#13c1d5	guibg=bg	gui=NONE
hi SpecialComment	guifg=#13d5c1	guibg=bg	gui=NONE

hi Character	guifg=#4aa5ff	guibg=bg	gui=NONE
hi String	guifg=#4aa5ff	guibg=bg	gui=NONE
hi Constant	guifg=#8080ff	guibg=bg	gui=NONE
hi link Float	Constant
hi link Number	Constant
hi link Boolean	Constant

hi Identifier	guifg=#8dbafc	guibg=bg	gui=NONE
hi link Function	Identifier

hi Statement	guifg=#f2b884	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#9d8cd0	guibg=bg	gui=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#f09a71	guibg=bg	gui=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#00cca4	guibg=bg	gui=NONE
hi SpecialChar	guifg=#71f09a	guibg=bg	gui=NONE
hi link Tag	Special
hi link Delimiter	SpecialChar

hi Debug	guifg=#909090	guibg=bg	gui=NONE

hi Underlined	guifg=#71f09a	guibg=bg	gui=underline
hi Ignore	guifg=#505078	guibg=bg	gui=NONE
hi Error	guifg=#ffffff	guibg=#cc0000	gui=underline
hi Todo	guifg=bg	guibg=#71f09a	gui=NONE

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
    call s:MultiHi("gui=italic", "Folded", "StatusLineNC","Comment", "SpecialComment", "Question")
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
unlet s:mimic_font_style s:mimic_colorize_gui s:mimic_masmed_alt

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
