"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  mickeysoft.vim
"  Last Change:  2009-10-17  [17:04:06]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h mickeysoft.vim
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

let colors_name = "mickeysoft"

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
hi Normal	guifg=#000000	guibg=#ffffff	gui=NONE
hi Cursor	guifg=bg	guibg=fg	gui=NONE
hi CursorIM	guifg=bg	guibg=#000090	gui=NONE
hi MatchParen	guifg=fg	guibg=#99ccff	gui=NONE

" search
hi Search	guifg=bg	guibg=#316ac5	gui=NONE
hi IncSearch	guifg=bg	guibg=#c56a31	gui=NONE

" visual mode
hi Visual	guifg=bg	guibg=#316ac5	gui=NONE
hi VisualNOS	guifg=bg	guibg=#c53131	gui=NONE

" groups with transparent foreground {{{2
" only for Vim >= 7.00
if version < 700
  " diff
  hi DiffAdd	guifg=#000000	guibg=#66ff66	gui=NONE
  hi DiffChange	guifg=#000000	guibg=#66ccff	gui=NONE
  hi DiffDelete	guifg=#000000	guibg=#ffff66	gui=NONE
  hi DiffText	guifg=#000000	guibg=#66ffff	gui=NONE
else
  " diff
  hi DiffAdd		guibg=#66ff66	gui=NONE
  hi DiffChange		guibg=#66ccff	gui=NONE
  hi DiffDelete		guibg=#ffff66	gui=NONE
  hi DiffText		guibg=#66ffff	gui=NONE
endif "}}}2

" line numbers and folding
hi LineNr	guifg=#800000	guibg=#ece9d8	gui=NONE
hi NonText	guifg=#800000	guibg=#ece9d8	gui=NONE
hi Folded	guifg=#134690	guibg=#f6f6f3	gui=NONE
hi FoldColumn	guifg=#134690	guibg=#ece9d8	gui=NONE
hi SignColumn	guifg=#000080	guibg=#ece9d8	gui=NONE

" windows, statusline
hi StatusLine	guifg=fg	guibg=#ece9d8	gui=NONE
hi StatusLineNC	guifg=fg	guibg=#d4d0c8	gui=NONE
hi VertSplit	guifg=fg	guibg=#d4d0c8	gui=NONE
hi WildMenu	guifg=bg	guibg=#316ac5	gui=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=fg	guibg=#ece9d8
    hi Scrollbar	guifg=fg	guibg=#d4d0c8
    hi Tooltip	guifg=fg	guibg=#ffffe1
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=NONE	gui=underline
  hi CursorColumn		guibg=NONE	gui=underline

  " tab pages
  hi TabLine	guifg=#d8e4f8	guibg=#7a96df	gui=NONE
  hi TabLineFill	guifg=#d8e4f8	guibg=#9db9eb	gui=NONE
  hi TabLineSel	guifg=bg	guibg=#0054e3	gui=NONE

  " popup completion menu
  hi Pmenu	guifg=fg	guibg=#ece9d8	gui=NONE
  hi PmenuSel	guifg=bg	guibg=#316ac5	gui=NONE
  hi PmenuSbar	guifg=fg	guibg=#d4d0c8	gui=NONE
  hi PmenuThumb	guifg=fg	guibg=#316ac5	gui=NONE

  " spell checking
  hi SpellBad	guisp=#d00000		gui=undercurl
  hi SpellCap	guisp=#0000d0		gui=undercurl
  hi SpellLocal	guisp=#00c0c0		gui=undercurl
  hi SpellRare	guisp=#c000c0		gui=undercurl
endif

" other texts
hi Question	guifg=#134690	guibg=#ece9d8	gui=NONE
hi WarningMsg	guifg=#900000	guibg=#ece9d8	gui=NONE
hi ErrorMsg	guifg=bg	guibg=#900000	gui=NONE
hi Title	guifg=#008000	guibg=bg	gui=NONE
hi Directory	guifg=#000080	guibg=bg	gui=NONE
hi MoreMsg	guifg=#000080	guibg=bg	gui=NONE
hi ModeMsg	guifg=fg	guibg=#ece9d8	gui=NONE
hi SpecialKey	guifg=#905000	guibg=bg	gui=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#007000	guibg=bg	gui=NONE
hi SpecialComment	guifg=#008080	guibg=bg	gui=NONE

hi Constant	guifg=#008080	guibg=bg	gui=NONE
hi Character	guifg=#900000	guibg=bg	gui=NONE
hi String	guifg=#900000	guibg=bg	gui=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#800080	guibg=bg	gui=NONE
hi Function	guifg=#800080	guibg=bg	gui=NONE

hi Statement	guifg=#000080	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#007878	guibg=bg	gui=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#000080	guibg=bg	gui=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#000080	guibg=bg	gui=NONE
hi SpecialChar	guifg=#000080	guibg=bg	gui=NONE
hi link Delimiter	Special
hi Tag	guifg=#008080	guibg=bg	gui=underline
hi Debug	guifg=#666666	guibg=bg	gui=NONE

hi Underlined	guifg=#0000ff	guibg=bg	gui=underline
hi Ignore	guifg=#cccccc	guibg=bg	gui=NONE
hi Error	guifg=#ff0000	guibg=bg	gui=underline
hi Todo	guifg=#0000b9	guibg=#f8f848	gui=none

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
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Constant", "Character", "Statement", "PreProc", "Type", "String", "Tag", "Identifier", "Function", "Special", "SpecialChar", "Todo")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "Folded", "TabLine", "StatusLineNC", "Question", "Identifier", "Function", "Comment", "SpecialComment", "Question")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "TabLine", "MoreMsg", "Title", "Identifier", "Function", "Todo")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
