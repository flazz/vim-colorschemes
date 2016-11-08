"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  intellij.vim
"  Last Change:  2009-10-17  [17:03:23]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h intellij.vim
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

let colors_name = "intellij"

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
hi Normal	guifg=#000000	guibg=#ffffff	gui=NONE	ctermfg=black	ctermbg=white	cterm=NONE
hi Cursor	guifg=bg	guibg=fg	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
hi CursorIM	guifg=bg	guibg=fg	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
hi MatchParen	guifg=fg	guibg=#99ccff	gui=NONE	ctermfg=fg	ctermbg=blue	cterm=NONE

" groups with transparent foreground {{{2
" only for Vim >= 7.00
if version < 700
  " search
  hi Search	guifg=fg	guibg=#ccccff	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE
  hi IncSearch	guifg=fg	guibg=#ccffcc	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE

  " visual mode
  hi Visual	guifg=bg	guibg=#526da5	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE
  hi VisualNOS	guifg=bg	guibg=#a5526d	gui=NONE	ctermfg=fg	ctermbg=magenta	cterm=NONE

  " diff
  hi DiffAdd	guifg=#000000	guibg=#ccffcc	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi DiffChange	guifg=#000000	guibg=#ccccff	gui=NONE	ctermfg=white	ctermbg=blue	cterm=NONE
  hi DiffDelete	guifg=#000000	guibg=#ffcccc	gui=NONE	ctermfg=white	ctermbg=red	cterm=NONE
  hi DiffText	guifg=#000000	guibg=#ccffff	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE

else
  " search
  hi Search		guibg=#ccccff	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE
  hi IncSearch		guibg=#ccffcc	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE

  " visual mode
  hi Visual		guibg=#c2ddf5	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE
  hi VisualNOS		guibg=#f5c2dd	gui=NONE	ctermfg=fg	ctermbg=magenta	cterm=NONE

  " diff
  hi DiffAdd		guibg=#edfced	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi DiffChange		guibg=#f2f2fc	gui=NONE	ctermfg=white	ctermbg=blue	cterm=NONE
  hi DiffDelete		guibg=#fceded	gui=NONE	ctermfg=white	ctermbg=red	cterm=NONE
  hi DiffText		guibg=#edfcfc	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE

endif "}}}2

" line numbers and folding
hi LineNr	guifg=#800000	guibg=#d2d2d2	gui=NONE	ctermfg=darkred	ctermbg=darkgray	cterm=NONE
hi NonText	guifg=#c5c5c5	guibg=#d2d2d2	gui=NONE	ctermfg=gray	ctermbg=darkgray	cterm=NONE
hi Folded	guifg=#707090	guibg=#f0f0f0	gui=NONE	ctermfg=darkblue	ctermbg=gray	cterm=NONE
hi FoldColumn	guifg=#707090	guibg=#d2d2d2	gui=NONE	ctermfg=darkblue	ctermbg=darkgray	cterm=NONE
hi SignColumn	guifg=#000080	guibg=#d2d2d2	gui=NONE	ctermfg=darkblue	ctermbg=darkgray	cterm=NONE

" windows, statusline
hi StatusLine	guifg=bg	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=black	cterm=NONE
hi StatusLineNC	guifg=fg	guibg=#bbbbbb	gui=NONE	ctermfg=fg	ctermbg=gray	cterm=NONE
hi VertSplit	guifg=fg	guibg=#bbbbbb	gui=NONE	ctermfg=fg	ctermbg=gray	cterm=NONE
hi WildMenu	guifg=fg	guibg=bg	gui=underline	ctermfg=fg	ctermbg=bg	cterm=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=fg	guibg=bg
    hi Scrollbar	guifg=fg	guibg=#bbbbbb
    hi Tooltip	guifg=#0000ff	guibg=#ffffc0
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=#ffffd7	gui=NONE		ctermbg=yellow	cterm=NONE
  hi CursorColumn		guibg=#ffffd7	gui=NONE		ctermbg=yellow	cterm=NONE

  " tab pages
  hi TabLine	guifg=fg	guibg=#bbbbbb	gui=underline	ctermfg=fg	ctermbg=darkgray	cterm=NONE
  hi TabLineFill	guifg=fg	guibg=#bbbbbb	gui=underline	ctermfg=fg	ctermbg=darkgray	cterm=NONE
  hi TabLineSel	guifg=#d2d2d2	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE

  " popup completion menu
  hi Pmenu	guifg=fg	guibg=#cccccc	gui=NONE	ctermfg=fg	ctermbg=gray	cterm=NONE
  hi PmenuSel	guifg=bg	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=darkgray	cterm=NONE
  hi PmenuSbar	guifg=#333333	guibg=#333333	gui=NONE	ctermfg=darkgray	ctermbg=darkgray	cterm=NONE
  hi PmenuThumb	guifg=#999999	guibg=#999999	gui=NONE	ctermfg=gray	ctermbg=gray	cterm=NONE

  " spell checking
  hi SpellBad	guisp=#ff0000	guibg=#ffdfdf	gui=undercurl	ctermfg=white	ctermbg=red	cterm=NONE
  hi SpellCap	guisp=#0000ff	guibg=#dfdfff	gui=undercurl	ctermfg=white	ctermbg=blue	cterm=NONE
  hi SpellLocal	guisp=#00ffff	guibg=#dfffff	gui=undercurl	ctermfg=black	ctermbg=cyan	cterm=NONE
  hi SpellRare	guisp=#ff00ff	guibg=#ffdfff	gui=undercurl	ctermfg=black	ctermbg=magenta	cterm=NONE
endif

" other texts
hi Question	guifg=#0000cc	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE
hi WarningMsg	guifg=#990000	guibg=#f6ebbc	gui=NONE	ctermfg=darkred	ctermbg=yellow	cterm=NONE
hi ErrorMsg	guifg=#ffffff	guibg=#cc0000	gui=NONE	ctermfg=white	ctermbg=darkred	cterm=NONE
hi Title	guifg=#008800	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi Directory	guifg=#000099	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi MoreMsg	guifg=#cc8000	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi ModeMsg	guifg=#606000	guibg=#ebf6bc	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi SpecialKey	guifg=#309090	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE


" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#808080	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
hi SpecialComment	guifg=#707090	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE

hi Constant	guifg=#0000ff	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE
hi Character	guifg=#008000	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi String	guifg=#008000	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#808000	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi Function	guifg=#808000	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE

hi Statement	guifg=#000080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#800080	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#000080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#000080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi SpecialChar	guifg=#000080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi link Delimiter	Special
hi Tag	guifg=#008080	guibg=bg	gui=underline	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
hi Debug	guifg=#666666	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE

hi Underlined	guifg=#0000ff	guibg=bg	gui=underline	ctermfg=blue	ctermbg=bg	cterm=underline
hi Ignore	guifg=#cccccc	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
hi Error	guifg=#ff0000	guibg=bg	gui=underline	ctermfg=red	ctermbg=bg	cterm=underline
hi Todo	guifg=#0000ff	guibg=bg	gui=underline	ctermfg=blue	ctermbg=bg	cterm=underline

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
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Character", "Statement", "PreProc", "Type", "String", "Tag", "Identifier", "Function", "Special", "SpecialChar", "Todo")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "Folded", "StatusLineNC", "Question", "Identifier", "Function", "Comment", "SpecialComment", "Question")
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
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
