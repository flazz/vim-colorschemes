"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  astroboy.vim
"  Last Change:  2009-10-17  [21:17:50]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h astroboy.vim
"                :h astroboy-options
"                :h astroboy-variants
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

let colors_name = "astroboy"

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
let s:mimic_font_style    = s:GetValue("mimic_font_style")
let s:mimic_colorize_gui  = s:GetValue("mimic_colorize_gui")
let s:mimic_astroboy_alt  = s:GetValue("mimic_astroboy_alt")
let s:mimic_astroboy_dark = s:GetValue("mimic_astroboy_dark")

" cleanup
delfunction s:GetValue

" Default Highlight {{{1
if !s:mimic_astroboy_dark
  if !s:mimic_astroboy_alt
    hi Normal	guifg=#88f888	guibg=#333333	gui=NONE
  else
    hi Normal	guifg=#88f888	guibg=#000078	gui=NONE
  endif
else "darker colors, black and darkblue
  if !s:mimic_astroboy_alt
    hi Normal	guifg=#88f888	guibg=#000000	gui=NONE
  else
    hi Normal	guifg=#88f888	guibg=#000040	gui=NONE
  endif
endif
hi Cursor	guifg=bg	guibg=#66ff66 	gui=NONE
hi CursorIM	guifg=bg	guibg=#66ccff	gui=NONE
hi MatchParen	guifg=bg	guibg=#66ffff	gui=NONE

" search
hi Search	guifg=#f9f999	guibg=#3333f9	gui=NONE
hi IncSearch	guifg=#000000	guibg=fg	gui=NONE

" visual mode
if version < 700
  hi LineNr	guifg=#f8f888	guibg=bg	gui=NONE
  hi Visual	guifg=fg	guibg=#007000	gui=NONE
  hi VisualNOS	guifg=fg	guibg=#000070	gui=NONE
  " diff
  hi DiffAdd	guifg=#000000	guibg=#68f868	gui=NONE
  hi DiffChange	guifg=#000000	guibg=#68ccf8	gui=NONE
  hi DiffDelete	guifg=#000000	guibg=#f8f868	gui=NONE
  hi DiffText	guifg=#000000	guibg=#68f8f8	gui=NONE
else
  hi LineNr	guifg=#f8f888		gui=NONE
  hi Visual		guibg=#007000	gui=NONE
  hi VisualNOS		guibg=#000070	gui=NONE
  " diff
  hi DiffAdd		guibg=#004800	gui=NONE
  hi DiffChange		guibg=#0000a8	gui=NONE
  hi DiffDelete	guifg=bg	guibg=#989800	gui=NONE
  hi DiffText		guibg=#006888	gui=NONE
endif

" line numbers and folding
hi NonText	guifg=#666666	guibg=bg	gui=NONE
if !s:mimic_astroboy_dark
  " color for grey20 and blue {{{2
  if !s:mimic_astroboy_alt
    hi Folded	guifg=#f888f8	guibg=#131313	gui=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#131313	gui=NONE
    hi SignColumn	guifg=#88f888	guibg=#131313	gui=NONE
    " other text
    hi SpecialKey	guifg=#f888f8	guibg=#131313	gui=NONE
    hi ModeMsg	guifg=#88f8c8	guibg=#131313	gui=NONE
  else
    hi Folded	guifg=#f888f8	guibg=#000040	gui=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#000040	gui=NONE
    hi SignColumn	guifg=#88f888	guibg=#000040	gui=NONE
    " other text
    hi SpecialKey	guifg=#f888f8	guibg=#000040	gui=NONE
    hi ModeMsg	guifg=#88f8c8	guibg=#000040	gui=NONE
  endif "}}}2
else
  " colors for black and darkblue {{{2
  if !s:mimic_astroboy_alt
    hi Folded	guifg=#f888f8	guibg=#232323	gui=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#232323	gui=NONE
    hi SignColumn	guifg=#88f888	guibg=#232323	gui=NONE
    " other text
    hi SpecialKey	guifg=#f888f8	guibg=#232323	gui=NONE
    hi ModeMsg	guifg=#88f8c8	guibg=#232323	gui=NONE
  else
    hi Folded	guifg=#f888f8	guibg=#000078	gui=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#000078	gui=NONE
    hi SignColumn	guifg=#88f888	guibg=#000078	gui=NONE
    " other text
    hi SpecialKey	guifg=#f888f8	guibg=#000078	gui=NONE
    hi ModeMsg	guifg=#88f8c8	guibg=#000078	gui=NONE
  endif "}}}2
endif

" windows, statusline
hi StatusLine	guifg=#000000	guibg=#68f8f8	gui=NONE
hi StatusLineNC	guifg=#000000	guibg=#68f868	gui=NONE
hi VertSplit	guifg=#000000	guibg=#68f868	gui=NONE
hi WildMenu	guifg=#78f8c8	guibg=bg	gui=underline

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=fg	guibg=bg
    hi Scrollbar	guifg=bg	guibg=#68f8f8
    hi Tooltip	guifg=bg	guibg=fg
  endif
endif

" vim >= 7.0 only
if version >= 700
  " tab pages
  hi TabLine	guifg=#000000	guibg=#68f8f8	gui=NONE
  hi TabLineFill	guifg=#000000	guibg=#68f8f8	gui=NONE
  hi TabLineSel	guifg=#78f8c8	guibg=bg	gui=underline

  if !s:mimic_astroboy_dark
    " color for grey20 and blue {{{2
    if !s:mimic_astroboy_alt
      " current line, column
      hi CursorLine		guibg=#131313	gui=NONE
      hi CursorColumn		guibg=#131313	gui=NONE
    else
      " current line, column
      hi CursorLine		guibg=#000040	gui=NONE
      hi CursorColumn		guibg=#000040	gui=NONE
    endif "}}}2
  else
    " color for black and darkblue {{{2
    if !s:mimic_astroboy_alt
      " current line, column
      hi CursorLine		guibg=#232323	gui=NONE
      hi CursorColumn		guibg=#232323	gui=NONE
    else
      " current line, column
      hi CursorLine		guibg=#000078	gui=NONE
      hi CursorColumn		guibg=#000078	gui=NONE
    endif "}}}2
  endif

  " popup completion menu
  hi Pmenu	guifg=bg	guibg=#68f8f8	gui=NONE
  hi PmenuSel	guifg=bg	guibg=#f8f888	gui=underline
  hi PmenuSbar	guifg=#68f868	guibg=#68f868	gui=NONE
  hi PmenuThumb	guifg=#68f8f8	guibg=#68f8f8	gui=NONE

  " spell checking
  hi SpellBad	guisp=#f87878		gui=undercurl
  hi SpellCap	guisp=#4888f8		gui=undercurl
  hi SpellLocal	guisp=#38f8f8		gui=undercurl
  hi SpellRare	guisp=#f838f8		gui=undercurl
endif

" other texts
hi Question	guifg=#f8f888	guibg=bg	gui=NONE
hi WarningMsg	guifg=bg	guibg=#f8f888	gui=NONE
hi ErrorMsg	guifg=#e8e8e8	guibg=#c80000	gui=NONE
hi Title	guifg=#e8e8e8	guibg=bg	gui=NONE
hi Directory	guifg=#e8e8e8	guibg=bg	gui=NONE
hi MoreMsg	guifg=#88f8c8	guibg=bg	gui=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#d8d8d8	guibg=bg	gui=NONE
hi link SpecialComment	Comment

hi Constant	guifg=#f8f888	guibg=bg	gui=NONE
hi Character	guifg=#f8f888	guibg=bg	gui=NONE
hi String	guifg=#f8f888	guibg=bg	gui=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#f888f8	guibg=bg	gui=NONE
hi Function	guifg=#38f8f8	guibg=bg	gui=NONE

hi Statement	guifg=#38f8f8	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

if !s:mimic_astroboy_dark
  " colors for grey20 and blue {{{2
  if !s:mimic_astroboy_alt
    hi PreProc	guifg=#d8d8d8	guibg=#131313	gui=NONE
    hi Special	guifg=#68f8f8	guibg=#131313	gui=NONE
    hi Tag	guifg=#f888f8	guibg=#131313	gui=NONE
  else
    hi PreProc	guifg=#d8d8d8	guibg=#000040	gui=NONE
    hi Special	guifg=#68f8f8	guibg=#000040	gui=NONE
    hi Tag	guifg=#f888f8	guibg=#000040	gui=NONE
  endif "}}}2
else
  " colors for black and darkblue {{{2
  if !s:mimic_astroboy_alt
    hi PreProc	guifg=#d8d8d8	guibg=#232323	gui=NONE
    hi Special	guifg=#68f8f8	guibg=#232323	gui=NONE
    hi Tag	guifg=#f888f8	guibg=#232323	gui=NONE
  else
    hi PreProc	guifg=#d8d8d8	guibg=#000078	gui=NONE
    hi Special	guifg=#68f8f8	guibg=#000078	gui=NONE
    hi Tag	guifg=#f888f8	guibg=#000078	gui=NONE
  endif "}}}2
endif
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#78f8c8	guibg=bg	gui=underline
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi link SpecialChar	Special
hi Delimiter	guifg=#e8e8e8	guibg=bg	gui=NONE
hi Debug	guifg=#f888f8	guibg=bg	gui=NONE

hi Underlined	guifg=#f8f888	guibg=bg	gui=underline
hi Ignore	guifg=bg	guibg=bg	gui=NONE
hi Error	guifg=#e8e8e8	guibg=#c80000	gui=NONE
hi Todo	guifg=bg	guibg=#f888f8	gui=NONE

" Font Style {{{1
"~~~~~~~~~~~~
if has("gui_running") && 0 < s:mimic_font_style

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
    call s:MultiHi("gui=bold", "Directory", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Constant", "Character", "Statement", "PreProc", "Identifier", "Function", "Special", "Tag", "Delimiter", "Todo")
    call s:MultiHi("gui=underline,bold", "WildMenu", "TablineSel", "Type")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "TabLine", "StatusLineNC", "Folded", "Question", "Comment", "Identifier", "Function")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "MoreMsg", "Title", "Identifier", "Function", "Todo")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui s:mimic_astroboy_alt s:mimic_astroboy_dark

" vim:noet:sw=24:ts=24:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
