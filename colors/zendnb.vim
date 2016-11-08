"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  zendnb.vim
"  Last Change:  2009-10-17  [17:01:18]
"      Version:  120
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h zendnb.vim
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

let colors_name = "zendnb"

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
hi Normal	guifg=#c0c0c0	guibg=#000000	gui=NONE	ctermfg=gray		cterm=NONE
hi Cursor	guifg=bg	guibg=#66ee66	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
hi CursorIM	guifg=bg	guibg=#88bbee	gui=NONE	ctermfg=black	ctermbg=blue	cterm=NONE
hi MatchParen	guifg=bg	guibg=#66eeee	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE

" search
hi Search	guifg=bg	guibg=#40d040	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
hi IncSearch	guifg=bg	guibg=#d0d040	gui=NONE	ctermfg=black	ctermbg=yellow	cterm=NONE

" visual mode
if version < 700
  hi Visual	guifg=bg	guibg=#40c040	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi VisualNOS	guifg=bg	guibg=#d08020	gui=NONE	ctermfg=black	ctermbg=yellow	cterm=NONE
else
  hi Visual		guibg=#006000	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi VisualNOS		guibg=#000050	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
endif

" line numbers and folding
hi LineNr	guifg=#306030	guibg=bg	gui=NONE	ctermfg=darkgreen		cterm=NONE
hi NonText	guifg=#306030	guibg=#002000	gui=NONE	ctermfg=darkgreen	ctermbg=black	cterm=NONE
hi Folded	guifg=#30c030	guibg=#004000	gui=NONE	ctermfg=grey	ctermbg=darkgreen	cterm=NONE
hi FoldColumn	guifg=#30d030	guibg=#002000	gui=NONE	ctermfg=grey 	ctermbg=darkgreen	cterm=NONE
hi SignColumn	guifg=#60d0d0	guibg=#002000	gui=NONE	ctermfg=cyan	ctermbg=darkgreen	cterm=NONE

" windows, statusline
hi StatusLine	guifg=#002000	guibg=#50c050	gui=NONE	ctermfg=grey	ctermbg=darkgreen	cterm=NONE
hi StatusLineNC	guifg=#40c040	guibg=#002000	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
hi VertSplit	guifg=#40c040	guibg=#002000	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
hi WildMenu	guifg=#40c040	guibg=#002000	gui=underline	ctermfg=green	ctermbg=black	cterm=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=#40c040	guibg=#002000
    hi Scrollbar	guifg=#44cc44	guibg=#002000
    hi Tooltip	guifg=#002000	guibg=#50c050
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=bg	gui=underline		ctermbg=darkblue	cterm=NONE
  hi CursorColumn		guibg=bg	gui=underline		ctermbg=darkblue	cterm=NONE

  " tab pages
  hi TabLine	guifg=#40c040	guibg=#002000	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
  hi TabLineFill	guifg=#40c040	guibg=#002000	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
  hi TabLineSel	guifg=#002000	guibg=#50c050	gui=NONE	ctermfg=gray	ctermbg=darkgreen	cterm=NONE

  " popup completion menu
  hi Pmenu	guifg=#002000	guibg=#50c050	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi PmenuSel	guifg=#44cc44	guibg=#002000	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
  hi PmenuSbar	guifg=#205020	guibg=#205020	gui=NONE	ctermfg=darkgreen	ctermbg=darkgreen	cterm=NONE
  hi PmenuThumb	guifg=#447040	guibg=#407040	gui=NONE	ctermfg=black	ctermbg=black	cterm=NONE

  " spell checking
  hi SpellBad	guisp=#d05050		gui=undercurl	ctermfg=white	ctermbg=red	cterm=NONE
  hi SpellCap	guisp=#5050d0		gui=undercurl	ctermfg=white	ctermbg=blue	cterm=NONE
  hi SpellLocal	guisp=#50c0c0		gui=undercurl	ctermfg=black	ctermbg=cyan	cterm=NONE
  hi SpellRare	guisp=#c050c0		gui=undercurl	ctermfg=black	ctermbg=magenta	cterm=NONE
endif

" other texts
hi Question	guifg=#70d070	guibg=bg	gui=NONE	ctermfg=green		cterm=NONE
hi WarningMsg	guifg=#c06060	guibg=bg	gui=NONE	ctermfg=red	ctermbg=yellow	cterm=NONE
hi ErrorMsg	guifg=#d0d0d0	guibg=#900000	gui=NONE	ctermfg=white	ctermbg=darkred	cterm=NONE
hi Title	guifg=#60d060	guibg=bg	gui=NONE	ctermfg=green		cterm=NONE
hi Directory	guifg=#60b0e0	guibg=bg	gui=NONE	ctermfg=cyan		cterm=NONE
hi MoreMsg	guifg=#60d060	guibg=#002000	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
hi ModeMsg	guifg=#60d060	guibg=#002000	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
hi SpecialKey	guifg=#00a0d0	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=black	cterm=NONE

" diff
hi DiffAdd	guifg=#000000	guibg=#40d040	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
hi DiffChange	guifg=#000000	guibg=#4090d0	gui=NONE	ctermfg=black	ctermbg=blue	cterm=NONE
hi DiffDelete	guifg=#000000	guibg=#d0d040	gui=NONE	ctermfg=black	ctermbg=yellow	cterm=NONE
hi DiffText	guifg=#000000	guibg=#40d0d0	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#909040	guibg=bg	gui=NONE	ctermfg=brown		cterm=NONE
hi SpecialComment	guifg=#60a040	guibg=bg	gui=NONE	ctermfg=green		cterm=NONE

hi Constant	guifg=#d08040	guibg=bg	gui=NONE	ctermfg=yellow		cterm=NONE
hi Character	guifg=#d08040	guibg=bg	gui=NONE	ctermfg=yellow		cterm=NONE
hi String	guifg=#40c0c0	guibg=bg	gui=NONE	ctermfg=cyan		cterm=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#4090c0	guibg=bg	gui=NONE	ctermfg=blue		cterm=NONE
hi link Function	Identifier

hi Statement	guifg=#60c060	guibg=bg	gui=NONE	ctermfg=green		cterm=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#c0a040	guibg=bg	gui=NONE	ctermfg=yellow		cterm=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#50a0d0	guibg=bg	gui=NONE	ctermfg=cyan		cterm=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#c0c070	guibg=bg	gui=NONE	ctermfg=yellow		cterm=NONE
hi link SpecialChar	Special
hi link Delimiter	Special
hi link Tag	Special
hi Debug	guifg=#b0b0b0	guibg=bg	gui=NONE	ctermfg=grey		cterm=NONE

hi Underlined	guifg=#60e060	guibg=bg	gui=underline	ctermfg=green		cterm=underline
hi Ignore	guifg=#404040	guibg=bg	gui=NONE			cterm=NONE
hi Error	guifg=#e0e030	guibg=#c00000	gui=underline	ctermfg=yellow	ctermbg=red	cterm=NONE
hi Todo	guifg=bg	guibg=#60b0b0	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE

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
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Constant", "Statement", "PreProc", "Type", "Identifier", "Special", "SpecialChar", "Todo")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "StatusLineNC", "Folded", "Comment", "SpecialComment", "Question")
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
