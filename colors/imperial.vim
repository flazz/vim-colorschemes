"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  imperial.vim
"  Last Change:  2009-10-17  [17:02:58]
"      Version:  115
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h imperial.vim
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

let colors_name = "imperial"

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
hi Normal	guifg=#000000	guibg=#cccccc	gui=NONE	ctermfg=black	ctermbg=grey	cterm=NONE
hi Cursor	guifg=bg	guibg=fg	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
hi CursorIM	guifg=bg	guibg=#0000c0	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
hi MatchParen	guifg=fg	guibg=#c09000	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE

" search
hi Search	guifg=fg	guibg=#d0d030	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
hi IncSearch	guifg=fg	guibg=#30d030	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE

" visual mode
if version < 700
  hi LineNr	guifg=#906030	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
  hi Visual	guifg=fg	guibg=#999999	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE
  hi VisualNOS	guifg=fg	guibg=#c99999	gui=NONE	ctermfg=fg	ctermbg=magenta	cterm=NONE
  " diff
  hi DiffAdd	guifg=#000000	guibg=#50c050	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
  hi DiffChange	guifg=#000000	guibg=#50a0c0	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
  hi DiffDelete	guifg=#000000	guibg=#c0c050	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
  hi DiffText	guifg=#000000	guibg=#50c0c0	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE
else " transparent fg only available in Vim >= 700
  hi LineNr	guifg=#906030		gui=NONE	ctermfg=brown		cterm=NONE
  hi Visual		guibg=#999999	gui=NONE		ctermbg=cyan	cterm=NONE
  hi VisualNOS		guibg=#c99999	gui=NONE		ctermbg=magenta	cterm=NONE
  " diff
  hi DiffAdd		guibg=#80e080	gui=NONE		ctermbg=green	cterm=NONE
  hi DiffChange		guibg=#80b0e0	gui=NONE		ctermbg=blue	cterm=NONE
  hi DiffDelete		guibg=#e0e080	gui=NONE		ctermbg=yellow	cterm=NONE
  hi DiffText		guibg=#80e0e0	gui=NONE		ctermbg=cyan	cterm=NONE
endif

" line numbers and folding
hi NonText	guifg=#906030	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi Folded	guifg=#400080	guibg=#bcbcbc	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi FoldColumn	guifg=#400080	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi SignColumn	guifg=#802000	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE

" windows, statusline
hi StatusLine	guifg=fg	guibg=#a0a0a0	gui=underline	ctermfg=fg	ctermbg=darkgrey	cterm=NONE
hi StatusLineNC	guifg=bg	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
hi VertSplit	guifg=bg	guibg=#333333	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
hi WildMenu	guifg=bg	guibg=#333333	gui=underline	ctermfg=bg	ctermbg=fg	cterm=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=#004080	guibg=bg
    hi Scrollbar	guifg=bg	guibg=#004080
    hi Tooltip	guifg=fg	guibg=#80d080
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=#bcbcbc	gui=underline		ctermbg=yellow	cterm=NONE
  hi CursorColumn		guibg=#bcbcbc	gui=underline		ctermbg=yellow	cterm=NONE

  " tab pages
  hi TabLine	guifg=bg	guibg=#004080	gui=NONE	ctermfg=bg	ctermbg=darkblue	cterm=NONE
  hi TabLineFill	guifg=bg	guibg=#004080	gui=NONE	ctermfg=bg	ctermbg=darkblue	cterm=NONE
  hi TabLineSel	guifg=#002060	guibg=#acacac	gui=underline	ctermfg=darkblue	ctermbg=bg	cterm=NONE

  " popup completion menu
  hi Pmenu	guifg=#002060	guibg=#acacac	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
  hi PmenuSel	guifg=bg	guibg=#004080	gui=NONE	ctermfg=bg	ctermbg=darkblue	cterm=NONE
  hi PmenuSbar	guifg=#002060	guibg=#9c9c9c	gui=NONE	ctermfg=darkblue	ctermbg=darkgrey	cterm=NONE
  hi PmenuThumb	guifg=bg	guibg=#004080	gui=NONE	ctermfg=bg	ctermbg=darkblue	cterm=NONE

  " spell checking
  hi SpellBad	guisp=#c00000		gui=undercurl	ctermfg=darkred	ctermbg=white	cterm=NONE
  hi SpellCap	guisp=#0000c0		gui=undercurl	ctermfg=darkblue	ctermbg=white	cterm=NONE
  hi SpellLocal	guisp=#00c0c0		gui=undercurl	ctermfg=darkcyan	ctermbg=white	cterm=NONE
  hi SpellRare	guisp=#c000c0		gui=undercurl	ctermfg=darkmagenta	ctermbg=white	cterm=NONE
endif

" other texts
hi Question	guifg=#606000	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi WarningMsg	guifg=#800000	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi ErrorMsg	guifg=bg	guibg=#c00000	gui=NONE	ctermfg=bg	ctermbg=darkred	cterm=NONE
hi Title	guifg=#007000	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi Directory	guifg=#002080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi MoreMsg	guifg=fg	guibg=#acacac	gui=NONE	ctermfg=fg	ctermbg=darkgrey	cterm=NONE
hi ModeMsg	guifg=fg	guibg=#acacac	gui=NONE	ctermfg=fg	ctermbg=darkgrey	cterm=NONE
hi SpecialKey	guifg=#006060	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#606000	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi SpecialComment	guifg=#007800	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE

hi Constant	guifg=#007000	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi Character	guifg=#007000	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi String	guifg=#803000	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#400080	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi link Function	Identifier

hi Statement	guifg=#002080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#802000	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#002080	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#800080	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi link SpecialChar	Special
hi link Delimiter	Special
hi link Tag	Special
hi Debug	guifg=#666666	guibg=bg	gui=NONE	ctermfg=darkgrey	ctermbg=bg	cterm=NONE

hi Underlined	guifg=#002080	guibg=bg	gui=underline	ctermfg=darkblue	ctermbg=cyan	cterm=NONE
hi Ignore	guifg=#999999	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
hi Error	guifg=#900000	guibg=#e0e030	gui=NONE	ctermfg=red	ctermbg=yellow	cterm=NONE
hi Todo	guifg=#c0c030	guibg=#900060	gui=NONE	ctermfg=white	ctermbg=darkmagenta	cterm=NONE

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
    call s:MultiHi("gui=bold", "Directory", "WildMenu", "SpecialKey", "MoreMsg", "ModeMsg", "Title", "Constant", "Statement", "PreProc", "Type", "Identifier", "Special", "Error", "Todo")
    call s:MultiHi("gui=bold,underline", "TabLineSel", "StatusLine")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "Folded", "StatusLineNC", "Question", "Comment", "SpecialComment")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "MoreMsg", "Title")
    call s:MultiHi("gui=bold,italic", "Identifier", "Todo")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
