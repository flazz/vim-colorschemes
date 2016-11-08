"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  vimhut.vim
"  Last Change:  2009-10-17  [16:57:22]
"      Version:  115
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h vimhut.vim
"                :h mimicpak
"                :h mimicpak-options
"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
" Setup {{{1
"~~~~~~~
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "vimhut"

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

" Highlights {{{1
"~~~~~~~~~~~
if "light" == &bg
  " Light Colors:     {{{2
  " Default Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~
  hi Normal	guifg=#000000	guibg=#d3d3d3	gui=NONE
  hi Cursor	guifg=#ffffff	guibg=#000099	gui=NONE
  hi CursorIM	guifg=#ffffff	guibg=#003300	gui=NONE
  hi MatchParen	guifg=#ffffff	guibg=#990000	gui=NONE

  " transparency effects
  if version < 700
    hi Search	guifg=fg	guibg=#d8d828	gui=NONE
    hi Visual	guifg=fg	guibg=#b3b3b3	gui=NONE
    hi VisualNOS	guifg=#880000	guibg=#b3b3b3	gui=NONE
    hi LineNr	guifg=#999999	guibg=bg	gui=NONE
  else
    hi Search		guibg=#d8d828	gui=NONE
    hi Visual		guibg=#b3b3b3	gui=NONE
    hi VisualNOS		guibg=#ceacac	gui=NONE
    hi LineNr	guifg=#999999		gui=NONE
  endif
  hi IncSearch			gui=reverse

  " line numbers and folding
  hi NonText	guifg=#886688	guibg=bg	gui=NONE
  hi Folded	guifg=#000066	guibg=#b8b8b8	gui=NONE
  hi FoldColumn	guifg=#000066	guibg=#999999	gui=NONE
  hi SignColumn	guifg=#660000	guibg=bg	gui=NONE

  " windows, statusline
  hi StatusLine	guifg=bg	guibg=#333333	gui=NONE
  hi StatusLineNC	guifg=fg	guibg=#999999	gui=NONE
  hi VertSplit	guifg=fg	guibg=#999999	gui=NONE
  hi WildMenu	guifg=fg	guibg=bg	gui=underline

  " colors for GUI
  if 0 < s:mimic_colorize_gui

    " will be set for everyone but Windows.
    " Athena, Motif, Mac, Photon or GTK GUI.
    if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
      hi Menu	guifg=fg	guibg=bg
      hi Scrollbar	guifg=#999999	guibg=fg
      hi Tooltip	guifg=fg	guibg=#cccccc
    endif
  endif

  " vim >= 7.0 only
  if version >= 700
    hi CursorLine		guibg=#c0c0c0	gui=NONE
    hi CursorColumn		guibg=#c0c0c0	gui=NONE

    " tab pages
    hi TabLine	guifg=fg	guibg=#999999	gui=NONE
    hi TabLineFill	guifg=fg	guibg=#999999	gui=NONE
    hi TabLineSel	guifg=bg	guibg=#333333	gui=NONE

    " popup completion menu
    hi Pmenu	guifg=fg	guibg=#999999	gui=NONE
    hi PmenuSel	guifg=fg	guibg=#cccccc	gui=underline
    hi PmenuSbar	guifg=#333333	guibg=#333333	gui=NONE
    hi PmenuThumb	guifg=#cccccc	guibg=#cccccc	gui=NONE

    " spell checking
    hi SpellBad	guisp=#990000		gui=undercurl
    hi SpellCap	guisp=#000099		gui=undercurl
    hi SpellLocal	guisp=#009999		gui=undercurl
    hi SpellRare	guisp=#990099		gui=undercurl
  endif

  " other texts
  hi Question	guifg=#006800	guibg=bg	gui=NONE
  hi WarningMsg	guifg=#900000	guibg=bg	gui=NONE
  hi ErrorMsg	guifg=bg	guibg=#a00000	gui=NONE
  hi Title	guifg=#800080	guibg=bg	gui=NONE
  hi Directory	guifg=#206e20	guibg=bg	gui=underline
  hi MoreMsg	guifg=#004080	guibg=bg	gui=NONE
  hi ModeMsg	guifg=#802040	guibg=bg	gui=NONE
  hi SpecialKey	guifg=#007070	guibg=bg	gui=NONE

  " diff
  hi DiffAdd	guifg=fg	guibg=#99e899	gui=NONE
  hi DiffChange	guifg=fg	guibg=#9999e8	gui=NONE
  hi DiffDelete	guifg=fg	guibg=#e89999	gui=NONE
  hi DiffText	guifg=fg	guibg=#99e8e8	gui=NONE

  " Default Syntax Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~~~~~~~~
  hi Comment	guifg=#004080	guibg=bg	gui=NONE
  hi SpecialComment	guifg=#800040	guibg=bg	gui=NONE

  hi Character	guifg=#990099	guibg=bg	gui=NONE
  hi String	guifg=#990099	guibg=bg	gui=NONE
  hi Constant	guifg=#990099	guibg=bg	gui=NONE
  hi link Float	Constant
  hi link Number	Constant
  hi link Boolean	Constant

  hi Identifier	guifg=#006060	guibg=bg	gui=NONE
  hi link Function	Identifier

  hi Statement	guifg=#804040	guibg=bg	gui=NONE
  hi link Conditional	Statement
  hi link Repeat	Statement
  hi link Label	Statement
  hi link Operator	Statement
  hi link Keyword	Statement
  hi link Exception	Statement

  hi PreProc	guifg=#400080	guibg=bg	gui=NONE
  hi link Include	PreProc
  hi link Define	PreProc
  hi link Macro	PreProc
  hi link PreCondit	PreProc

  hi Type	guifg=#205e50	guibg=bg	gui=NONE
  hi link StorageClass	Type
  hi link Structure	Type
  hi link Typedef	Type

  hi Special	guifg=#62499c	guibg=bg	gui=NONE
  hi SpecialChar	guifg=#62499c	guibg=bg	gui=NONE
  hi link Tag	Special
  hi link Delimiter	SpecialChar
  hi Debug	guifg=#666666	guibg=bg	gui=NONE

  hi Underlined	guifg=#804040	guibg=bg	gui=underline
  hi Ignore	guifg=#b3b3b3	guibg=bg	gui=NONE
  hi Error	guifg=#cc0000	guibg=bg	gui=underline
  hi Todo	guifg=#333399	guibg=#cccc00	gui=underline
  "}}}2
else
  " Dark Colors:      {{{2
  " Default Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~
  hi Normal	guifg=#b0b0b0	guibg=#333333	gui=NONE
  hi Cursor	guifg=bg	guibg=#a0a0f0	gui=NONE
  hi CursorIM	guifg=bg	guibg=#a0f0a0	gui=NONE
  hi MatchParen	guifg=bg	guibg=#f0a0a0	gui=NONE

  " transparency effects
  if version < 700
    hi Search	guifg=fg	guibg=#d8d828	gui=NONE
    hi Visual	guifg=bg	guibg=#838383	gui=NONE
    hi VisualNOS	guifg=fg	guibg=#833333	gui=NONE
    hi LineNr	guifg=#666666	guibg=bg	gui=NONE
  else
    hi Search		guibg=#d8d828	gui=NONE
    hi Visual		guibg=#636363	gui=NONE
    hi VisualNOS		guibg=#833333	gui=NONE
    hi LineNr	guifg=#666666		gui=NONE
  endif
  hi IncSearch			gui=reverse

  " line numbers and folding
  hi NonText	guifg=#885566	guibg=bg	gui=NONE
  hi Folded	guifg=#6898d8	guibg=#202020	gui=NONE
  hi FoldColumn	guifg=#6898d8	guibg=#000000	gui=NONE
  hi SignColumn	guifg=#cc6666	guibg=bg	gui=NONE

  " windows, statusline
  hi StatusLine	guifg=bg	guibg=#999999	gui=NONE
  hi StatusLineNC	guifg=fg	guibg=#000000	gui=NONE
  hi VertSplit	guifg=fg	guibg=#000000	gui=NONE
  hi WildMenu	guifg=fg	guibg=bg	gui=underline

  " colors for GUI
  if 0 < s:mimic_colorize_gui

    " will be set for everyone but Windows.
    " Athena, Motif, Mac, Photon or GTK GUI.
    if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
      hi Menu	guifg=fg	guibg=bg
      hi Scrollbar	guifg=fg	guibg=#000000
      hi Tooltip	guifg=#333399	guibg=#cccc00
    endif
  endif

  " vim >= 7.0 only
  if version >= 700
    hi CursorLine		guibg=#535353	gui=NONE
    hi CursorColumn		guibg=#535353	gui=NONE

    " tab pages
    hi TabLine	guifg=fg	guibg=#000000	gui=NONE
    hi TabLineFill	guifg=fg	guibg=#000000	gui=NONE
    hi TabLineSel	guifg=bg	guibg=#999999	gui=NONE

    " popup completion menu
    hi Pmenu	guifg=fg	guibg=#131313	gui=NONE
    hi PmenuSel	guifg=bg	guibg=#999999	gui=underline
    hi PmenuSbar	guifg=#535353	guibg=#535353	gui=NONE
    hi PmenuThumb	guifg=#999999	guibg=#999999	gui=NONE

    " spell checking
    hi SpellBad	guisp=#ff3333		gui=undercurl
    hi SpellCap	guisp=#3333ff		gui=undercurl
    hi SpellLocal	guisp=#33ffff		gui=undercurl
    hi SpellRare	guisp=#ff33ff		gui=undercurl
  endif

  " other texts
  hi Question	guifg=#58b858	guibg=bg	gui=NONE
  hi WarningMsg	guifg=#ff9999	guibg=bg	gui=NONE
  hi ErrorMsg	guifg=#ffff00	guibg=#cc0000	gui=NONE
  hi Title	guifg=#c858c8	guibg=bg	gui=NONE
  hi Directory	guifg=#78be78	guibg=bg	gui=NONE
  hi MoreMsg	guifg=#5898cc	guibg=bg	gui=NONE
  hi ModeMsg	guifg=#78b8e8	guibg=#232323	gui=NONE
  hi SpecialKey	guifg=#00cccc	guibg=bg	gui=NONE

  " diff
  hi DiffAdd	guifg=bg	guibg=#99ff99	gui=NONE
  hi DiffChange	guifg=bg	guibg=#9999ff	gui=NONE
  hi DiffDelete	guifg=bg	guibg=#ff9999	gui=NONE
  hi DiffText	guifg=bg	guibg=#99ffff	gui=NONE

  " Default Syntax Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~~~~~~~~
  hi Comment	guifg=#58a9de	guibg=bg	gui=NONE
  hi SpecialComment	guifg=#de78a9	guibg=bg	gui=NONE

  hi Character	guifg=#eb78eb	guibg=bg	gui=NONE
  hi String	guifg=#eb78eb	guibg=bg	gui=NONE
  hi Constant	guifg=#eb78eb	guibg=bg	gui=NONE
  hi link Float	Constant
  hi link Number	Constant
  hi link Boolean	Constant

  hi Identifier	guifg=#5bcece	guibg=bg	gui=NONE
  hi link Function	Identifier

  hi Statement	guifg=#de9898	guibg=bg	gui=NONE
  hi link Conditional	Statement
  hi link Repeat	Statement
  hi link Label	Statement
  hi link Operator	Statement
  hi link Keyword	Statement
  hi link Exception	Statement

  hi PreProc	guifg=#a678de	guibg=bg	gui=NONE
  hi link Include	PreProc
  hi link Define	PreProc
  hi link Macro	PreProc
  hi link PreCondit	PreProc

  hi Type	guifg=#78d898	guibg=bg	gui=NONE
  hi link StorageClass	Type
  hi link Structure	Type
  hi link Typedef	Type

  hi Special	guifg=#b898ee	guibg=bg	gui=NONE
  hi SpecialChar	guifg=#b898ee	guibg=bg	gui=NONE
  hi link Tag	Special
  hi link Delimiter	SpecialChar
  hi Debug	guifg=#999999	guibg=bg	gui=NONE

  hi Underlined	guifg=#d09090	guibg=bg	gui=underline
  hi Ignore	guifg=#515151	guibg=bg	gui=NONE
  hi Error	guifg=#eaeaea	guibg=#cc0000	gui=underline
  hi Todo	guifg=#3333cc	guibg=#eeee00	gui=underline
  "}}}2
endif
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
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "Title", "Statement", "PreProc", "Type", "Constant", "Special", "Identifier", "Todo")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "StatusLineNC", "Directory", "Comment", "SpecialComment", "Question")
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
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
