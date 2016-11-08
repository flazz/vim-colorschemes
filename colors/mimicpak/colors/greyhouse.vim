"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  greyhouse.vim
"  Last Change:  2009-10-17  [17:02:43]
"      Version:  120
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h greyhouse.vim
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

let colors_name = "greyhouse"

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
hi Normal	guifg=#000000	guibg=#d3d3d3	gui=NONE	ctermfg=black	ctermbg=gray	cterm=NONE
hi Cursor	guifg=#ffffff	guibg=#000099	gui=NONE	ctermfg=white	ctermbg=darkblue	cterm=NONE
hi CursorIM	guifg=#ffffff	guibg=#003300	gui=NONE	ctermfg=white	ctermbg=darkgreen	cterm=NONE
hi MatchParen	guifg=#ffffff	guibg=#990000	gui=NONE	ctermfg=white	ctermbg=darkred	cterm=NONE

" search
hi Search	guifg=#000000	guibg=#78d878	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
hi IncSearch	guifg=#000000	guibg=#78d8d8	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE

" visual mode, line number
if version < 700
  hi Visual	guifg=fg	guibg=#b3b3b3	gui=NONE	ctermfg=bg	ctermbg=black	cterm=NONE
  hi VisualNOS	guifg=fg	guibg=#d3a3a3	gui=NONE	ctermfg=bg	ctermbg=darkred	cterm=NONE
  hi LineNr	guifg=#886688	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
else
  hi Visual		guibg=#b3b3b3	gui=NONE	ctermfg=bg	ctermbg=black	cterm=NONE
  hi VisualNOS		guibg=#d3a3a3	gui=NONE	ctermfg=bg	ctermbg=darkred	cterm=NONE
  hi LineNr	guifg=#886688		gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
endif

" folding
hi NonText	guifg=#886688	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
hi Folded	guifg=#553355	guibg=#b8b8b8	gui=NONE	ctermfg=darkmagenta	ctermbg=darkgray	cterm=NONE
hi FoldColumn	guifg=#664466	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi SignColumn	guifg=#446666	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE

" windows, statusline
hi StatusLine	guifg=bg	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=black	cterm=NONE
hi StatusLineNC	guifg=fg	guibg=#999999	gui=NONE	ctermfg=fg	ctermbg=darkgray	cterm=NONE
hi VertSplit	guifg=fg	guibg=#999999	gui=NONE	ctermfg=fg	ctermbg=darkgray	cterm=NONE
hi WildMenu	guifg=fg	guibg=bg	gui=underline	ctermfg=fg	ctermbg=bg	cterm=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=black	guibg=grey75
    hi Scrollbar	guifg=black	guibg=grey75
    hi Tooltip	guifg=grey25	guibg=lightyellow
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=#c3c3c3	gui=NONE		ctermbg=white	cterm=NONE
  hi CursorColumn		guibg=#c3c3c3	gui=NONE		ctermbg=white	cterm=NONE

  " tab pages
  hi TabLine	guifg=fg	guibg=#999999	gui=NONE	ctermfg=fg	ctermbg=darkgray	cterm=NONE
  hi TabLineFill	guifg=fg	guibg=#999999	gui=NONE	ctermfg=fg	ctermbg=darkgray	cterm=NONE
  hi TabLineSel	guifg=bg	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=black	cterm=NONE

  " popup completion menu
  hi Pmenu	guifg=bg	guibg=#666666	gui=NONE	ctermfg=bg	ctermbg=darkgray	cterm=NONE
  hi PmenuSel	guifg=fg	guibg=#cccccc	gui=underline	ctermfg=fg	ctermbg=gray	cterm=NONE
  hi PmenuSbar	guifg=#333333	guibg=#333333	gui=NONE	ctermfg=black	ctermbg=black	cterm=NONE
  hi PmenuThumb	guifg=#444444	guibg=#444444	gui=NONE	ctermfg=darkgray	ctermbg=darkgray	cterm=NONE

  " spell checking
  hi SpellBad	guisp=#990000		gui=undercurl	ctermfg=bg	ctermbg=darkred	cterm=NONE
  hi SpellCap	guisp=#000099		gui=undercurl	ctermfg=bg	ctermbg=darkblue	cterm=NONE
  hi SpellLocal	guisp=#009999		gui=undercurl	ctermfg=fg	ctermbg=darkcyan	cterm=NONE
  hi SpellRare	guisp=#990099		gui=undercurl	ctermfg=bg	ctermbg=darkmagenta	cterm=NONE
endif

" other texts
hi Question	guifg=#900090	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi WarningMsg	guifg=#900000	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi ErrorMsg	guifg=bg	guibg=#a00000	gui=NONE	ctermfg=yellow	ctermbg=red	cterm=NONE
hi Title	guifg=#006800	guibg=bg	gui=NONE	ctermfg=fg	ctermbg=bg	cterm=NONE
hi Directory	guifg=#000090	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi MoreMsg	guifg=#606000	guibg=bg	gui=NONE	ctermfg=darkyellow	ctermbg=bg	cterm=NONE
hi ModeMsg	guifg=#703000	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi SpecialKey	guifg=#007050	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE

" diff
hi DiffAdd	guifg=fg	guibg=#99e899	gui=NONE	ctermfg=fg	ctermbg=bg	cterm=NONE
hi DiffChange	guifg=fg	guibg=#9999e8	gui=NONE	ctermfg=fg	ctermbg=bg	cterm=NONE
hi DiffDelete	guifg=fg	guibg=#e89999	gui=NONE	ctermfg=fg	ctermbg=bg	cterm=NONE
hi DiffText	guifg=fg	guibg=#99e8e8	gui=NONE	ctermfg=fg	ctermbg=bg	cterm=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#205e50	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi SpecialComment	guifg=#505320	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE

hi Character	guifg=#0000a0	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE
hi String	guifg=#0000a0	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE
hi Constant	guifg=#400080	guibg=bg	gui=NONE	ctermfg=darkyellow	ctermbg=bg	cterm=NONE
hi link Float	Constant
hi link Number	Constant
hi link Boolean	Constant

hi Identifier	guifg=#495a16	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi link Function	Identifier

hi Statement	guifg=#004080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#804040	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#800080	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#9c6911	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi SpecialChar	guifg=#3a5c57	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi link Tag	Special
hi link Delimiter	SpecialChar
hi Debug	guifg=#666666	guibg=bg	gui=NONE	ctermfg=darkgrey	ctermbg=bg	cterm=NONE

hi Underlined	guifg=#004080	guibg=bg	gui=underline	ctermfg=darkblue	ctermbg=bg	cterm=underline
hi Ignore	guifg=#b3b3b3	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
hi Error	guifg=#cc0000	guibg=bg	gui=underline	ctermfg=white	ctermbg=red	cterm=NONE
hi Todo	guifg=fg	guibg=#cccc00	gui=underline	ctermfg=fg	ctermbg=yellow	cterm=NONE

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
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
