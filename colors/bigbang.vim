"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  bigbang.vim
"  Last Change:  2009-10-17  [17:01:53]
"      Version:  125
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h bigbang.vim
"                :h bigbang-options
"                :h bigbang-variants
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

let colors_name = "bigbang"

" Function:  s:GetValue(var, ...) {{{2
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
let s:mimic_bigbang_alt  = s:GetValue("mimic_bigbang_alt")
let s:mimic_bigbang_dark = s:GetValue("mimic_bigbang_dark")

" cleanup
delfunction s:GetValue

" Default Highlight {{{1
if !s:mimic_bigbang_dark
  if !s:mimic_bigbang_alt
    hi Normal	guifg=#68f8c8	guibg=#333333	gui=NONE	ctermfg=cyan	ctermbg=black	cterm=NONE
  else
    hi Normal	guifg=#68f8c8	guibg=#000078	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
  endif
else "darker colors, black and darkblue
  if !s:mimic_bigbang_alt
    hi Normal	guifg=#68f8c8	guibg=#000000	gui=NONE	ctermfg=cyan	ctermbg=black	cterm=NONE
  else
    hi Normal	guifg=#68f8c8	guibg=#000040	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
  endif
endif
hi Cursor	guifg=bg	guibg=#68f868 	gui=NONE	ctermfg=bg	ctermbg=green	cterm=NONE
hi CursorIM	guifg=bg	guibg=#68c8f8	gui=NONE	ctermfg=bg	ctermbg=cyan	cterm=NONE
hi MatchParen	guifg=bg	guibg=#68f8f8	gui=NONE	ctermfg=bg	ctermbg=cyan	cterm=NONE

" search
hi Search	guifg=#f9f999	guibg=#3333f9	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE
hi IncSearch	guifg=#000000	guibg=fg	gui=NONE	ctermfg=black	ctermbg=fg	cterm=NONE

" visual mode
if version < 700
  hi LineNr	guifg=#d8d8d8	guibg=bg	gui=NONE	ctermfg=grey	ctermbg=bg	cterm=NONE
  hi Visual	guifg=fg	guibg=#007000	gui=NONE	ctermfg=fg	ctermbg=darkgreen	cterm=NONE
  hi VisualNOS	guifg=fg	guibg=#000070	gui=NONE	ctermfg=bg	ctermbg=darkcyan	cterm=NONE
  " diff
  hi DiffAdd	guifg=#000000	guibg=#68f868	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi DiffChange	guifg=#000000	guibg=#68ccf8	gui=NONE	ctermfg=grey	ctermbg=blue	cterm=NONE
  hi DiffDelete	guifg=#000000	guibg=#f8f868	gui=NONE	ctermfg=black	ctermbg=yellow	cterm=NONE
  hi DiffText	guifg=#000000	guibg=#68f8f8	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE
else
  hi LineNr	guifg=#d8d8d8		gui=NONE	ctermfg=grey		cterm=NONE
  hi Visual		guibg=#007000	gui=NONE		ctermbg=darkgreen	cterm=NONE
  hi VisualNOS		guibg=#000070	gui=NONE		ctermbg=darkcyan	cterm=NONE
  " diff
  hi DiffAdd		guibg=#004800	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi DiffChange		guibg=#0000a8	gui=NONE	ctermfg=black	ctermbg=blue	cterm=NONE
  hi DiffDelete	guifg=bg	guibg=#989800	gui=NONE	ctermfg=black	ctermbg=yellow	cterm=NONE
  hi DiffText		guibg=#006888	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE
endif

" line numbers and folding
hi NonText	guifg=#f888f8	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
if !s:mimic_bigbang_dark
  " color for grey20 and blue {{{2
  if !s:mimic_bigbang_alt
    hi Folded	guifg=#f888f8	guibg=#131313	gui=NONE	ctermfg=magenta	ctermbg=blue	cterm=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#131313	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
    hi SignColumn	guifg=#88f888	guibg=#131313	gui=NONE	ctermfg=green	ctermbg=blue	cterm=NONE
    " other text
    hi SpecialKey	guifg=#f8f888	guibg=#131313	gui=NONE	ctermfg=yellow	ctermbg=blue	cterm=NONE
    hi ModeMsg	guifg=#88f888	guibg=#131313	gui=NONE	ctermfg=green	ctermbg=blue	cterm=NONE
    hi Title	guifg=#d8d8d8	guibg=#131313	gui=NONE	ctermfg=grey	ctermbg=blue	cterm=NONE
  else
    hi Folded	guifg=#f888f8	guibg=#000040	gui=NONE	ctermfg=magenta	ctermbg=darkblue	cterm=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#000040	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
    hi SignColumn	guifg=#88f888	guibg=#000040	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    " other text
    hi SpecialKey	guifg=#f8f888	guibg=#000040	gui=NONE	ctermfg=yellow	ctermbg=darkblue	cterm=NONE
    hi ModeMsg	guifg=#88f888	guibg=#000040	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    hi Title	guifg=#d8d8d8	guibg=#000040	gui=NONE	ctermfg=grey	ctermbg=darkblue	cterm=NONE
  endif "}}}2
else
  " colors for black and darkblue {{{2
  if !s:mimic_bigbang_alt
    hi Folded	guifg=#f888f8	guibg=#232323	gui=NONE	ctermfg=magenta	ctermbg=darkblue	cterm=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#232323	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
    hi SignColumn	guifg=#88f888	guibg=#232323	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    " other text
    hi SpecialKey	guifg=#f8f888	guibg=#232323	gui=NONE	ctermfg=yellow	ctermbg=darkblue	cterm=NONE
    hi ModeMsg	guifg=#88f888	guibg=#232323	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    hi Title	guifg=#d8d8d8	guibg=#232323	gui=NONE	ctermfg=grey	ctermbg=darkblue	cterm=NONE
  else
    hi Folded	guifg=#f888f8	guibg=#000078	gui=NONE	ctermfg=magenta	ctermbg=black	cterm=NONE
    hi FoldColumn	guifg=#38f8f8	guibg=#000078	gui=NONE	ctermfg=cyan	ctermbg=black	cterm=NONE
    hi SignColumn	guifg=#88f888	guibg=#000078	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
    " other text
    hi SpecialKey	guifg=#f888f8	guibg=#000078	gui=NONE	ctermfg=yellow	ctermbg=blue	cterm=NONE
    hi ModeMsg	guifg=#88f888	guibg=#000098	gui=NONE	ctermfg=green	ctermbg=blue	cterm=NONE
    hi Title	guifg=#d8d8d8	guibg=#000098	gui=NONE	ctermfg=grey	ctermbg=blue	cterm=NONE
  endif "}}}2
endif

" windows, statusline
hi StatusLine	guifg=#000000	guibg=#38f8f8	gui=NONE	ctermfg=bg	ctermbg=cyan	cterm=NONE
hi StatusLineNC	guifg=#000000	guibg=#68f868	gui=NONE	ctermfg=bg	ctermbg=green	cterm=NONE
hi VertSplit	guifg=#000000	guibg=#68f868	gui=NONE	ctermfg=bg	ctermbg=green	cterm=NONE
hi WildMenu	guifg=fg	guibg=bg	gui=underline	ctermfg=fg	ctermbg=bg	cterm=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=fg	guibg=bg
    hi Scrollbar	guifg=bg	guibg=#88f8f8
    hi Tooltip	guifg=bg	guibg=fg
  endif
endif

" vim >= 7.0 only
if version >= 700
  " tab pages
  hi TabLine	guifg=#000000	guibg=#38f8f8	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE
  hi TabLineFill	guifg=#000000	guibg=#38f8f8	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE
  hi TabLineSel	guifg=fg	guibg=bg	gui=underline	ctermfg=fg	ctermbg=bg	cterm=NONE

  if !s:mimic_bigbang_dark
    " color for grey20 and blue {{{2
    if !s:mimic_bigbang_alt
      " current line, column
      hi CursorLine		guibg=#131313	gui=NONE		ctermbg=blue	cterm=NONE
      hi CursorColumn		guibg=#131313	gui=NONE		ctermbg=blue	cterm=NONE
    else
      " current line, column
      hi CursorLine		guibg=#000040	gui=NONE		ctermbg=darkblue	cterm=NONE
      hi CursorColumn		guibg=#000040	gui=NONE		ctermbg=darkblue	cterm=NONE
    endif "}}}2
  else
    " color for black and darkblue {{{2
    if !s:mimic_bigbang_alt
      " current line, column
      hi CursorLine		guibg=#232323	gui=NONE		ctermbg=darkblue	cterm=NONE
      hi CursorColumn		guibg=#232323	gui=NONE		ctermbg=darkblue	cterm=NONE
    else
      " current line, column
      hi CursorLine		guibg=#000098	gui=NONE		ctermbg=black	cterm=NONE
      hi CursorColumn		guibg=#000098	gui=NONE		ctermbg=black	cterm=NONE
    endif "}}}2
  endif

  " popup completion menu
  hi Pmenu	guifg=bg	guibg=fg	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE
  hi PmenuSel	guifg=bg	guibg=#88f888	gui=underline	ctermfg=bg	ctermbg=green	cterm=NONE
  hi PmenuSbar	guifg=#38f868	guibg=#68f868	gui=NONE	ctermfg=green	ctermbg=green	cterm=NONE
  hi PmenuThumb	guifg=#38f8f8	guibg=#38f8f8	gui=NONE	ctermfg=cyan	ctermbg=cyan	cterm=NONE

  " spell checking
  hi SpellBad	guisp=#f87878		gui=undercurl	ctermfg=red	ctermbg=yellow	cterm=NONE
  hi SpellCap	guisp=#4888f8		gui=undercurl	ctermfg=blue	ctermbg=yellow	cterm=NONE
  hi SpellLocal	guisp=#38f8f8		gui=undercurl	ctermfg=cyan	ctermbg=yellow	cterm=NONE
  hi SpellRare	guisp=#f838f8		gui=undercurl	ctermfg=magenta	ctermbg=yellow	cterm=NONE
endif

" other texts
hi Question	guifg=#88f888	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE
hi WarningMsg	guifg=bg	guibg=#f8f888	gui=NONE	ctermfg=bg	ctermbg=yellow	cterm=NONE
hi ErrorMsg	guifg=#d8d8d8	guibg=#c80000	gui=NONE	ctermfg=grey	ctermbg=darkred	cterm=NONE
hi Directory	guifg=#88f888	guibg=bg	gui=underline	ctermfg=green	ctermbg=bg	cterm=NONE
hi MoreMsg	guifg=#f8f888	guibg=bg	gui=NONE	ctermfg=yellow	ctermbg=bg	cterm=NONE

" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
if !s:mimic_bigbang_dark
  " colors for grey20 and blue {{{2
  if !s:mimic_bigbang_alt
    hi Statement	guifg=#68f868	guibg=#131313	gui=NONE	ctermfg=green	ctermbg=blue	cterm=NONE
    hi Type	guifg=#38f8f8	guibg=#131313	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
    hi PreProc	guifg=#f888f8	guibg=#131313	gui=NONE	ctermfg=magenta	ctermbg=blue	cterm=NONE
    hi Special	guifg=#f8f888	guibg=#131313	gui=NONE	ctermfg=yellow	ctermbg=blue	cterm=NONE
    hi Tag	guifg=#68f868	guibg=#131313	gui=NONE	ctermfg=green	ctermbg=blue	cterm=NONE
    hi Delimiter	guifg=#d8d8d8	guibg=#131313	gui=NONE	ctermfg=grey	ctermbg=blue	cterm=NONE
  else
    hi Statement	guifg=#68f868	guibg=#000040	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    hi Type	guifg=#38f8f8	guibg=#000040	gui=none	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
    hi PreProc	guifg=#f888f8	guibg=#000040	gui=NONE	ctermfg=magenta	ctermbg=darkblue	cterm=NONE
    hi Special	guifg=#f8f888	guibg=#000040	gui=NONE	ctermfg=yellow	ctermbg=darkblue	cterm=NONE
    hi Tag	guifg=#68f868	guibg=#000040	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    hi Delimiter	guifg=#d8d8d8	guibg=#000040	gui=NONE	ctermfg=grey	ctermbg=darkblue	cterm=NONE
  endif "}}}2
else
  " colors for black and darkblue {{{2
  if !s:mimic_bigbang_alt
    hi Statement	guifg=#68f868	guibg=#232323	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    hi Type	guifg=#38f8f8	guibg=#232323	gui=none	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
    hi PreProc	guifg=#f888f8	guibg=#232323	gui=NONE	ctermfg=magenta	ctermbg=darkblue	cterm=NONE
    hi Special	guifg=#f8f888	guibg=#232323	gui=NONE	ctermfg=yellow	ctermbg=darkblue	cterm=NONE
    hi Tag	guifg=#68f868	guibg=#232323	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    hi Delimiter	guifg=#d8d8d8	guibg=#232323	gui=NONE	ctermfg=grey	ctermbg=darkblue	cterm=NONE
  else
    hi Statement	guifg=#88f888	guibg=#000098	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
    hi Type	guifg=#38f8f8	guibg=#000098	gui=none	ctermfg=cyan	ctermbg=black	cterm=NONE
    hi PreProc	guifg=#f888f8	guibg=#000098	gui=NONE	ctermfg=magenta	ctermbg=black	cterm=NONE
    hi Special	guifg=#f8f888	guibg=#000098	gui=NONE	ctermfg=yellow	ctermbg=black	cterm=NONE
    hi Tag	guifg=#88f888	guibg=#000098	gui=NONE	ctermfg=green	ctermbg=black	cterm=NONE
    hi Delimiter	guifg=#d8d8d8	guibg=#000098	gui=NONE	ctermfg=grey	ctermbg=black	cterm=NONE
  endif "}}}2
endif

hi Comment	guifg=#d8d8d8	guibg=bg	gui=NONE	ctermfg=grey	ctermbg=bg	cterm=NONE
hi link SpecialComment	Comment

hi Constant	guifg=#f8f888	guibg=bg	gui=NONE	ctermfg=yellow	ctermbg=bg	cterm=NONE
hi Character	guifg=#f8f888	guibg=bg	gui=NONE	ctermfg=yellow	ctermbg=bg	cterm=NONE
hi String	guifg=#f8f888	guibg=bg	gui=NONE	ctermfg=yellow	ctermbg=bg	cterm=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#88f888	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE
hi Function	guifg=#88f888	guibg=bg	gui=underline	ctermfg=green	ctermbg=bg	cterm=NONE

hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi link SpecialChar	Special

hi Debug	guifg=#f8f888	guibg=bg	gui=NONE	ctermfg=yellow	ctermbg=bg	cterm=NONE
hi Underlined	guifg=#f8f888	guibg=bg	gui=underline	ctermfg=yellow	ctermbg=darkmagenta	cterm=NONE
hi Ignore	guifg=bg	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
hi Error	guifg=#d8d8d8	guibg=#880000	gui=NONE	ctermfg=white	ctermbg=darkred	cterm=NONE
hi Todo	guifg=bg	guibg=#88f888	gui=NONE	ctermfg=bg	ctermbg=fg	cterm=NONE

" Non-Standard Syntax Groups {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Vim help {{{2
hi! link Subtitle	Function

" Dr. Chip's stuff {{{2

" Decho
if exists("g:loaded_Decho")
  hi! link DechoBarHL	Delimiter
  hi! link Warning	WarningMsg
endif

" Lisp {{{2
" Correct the FG and BG colors for the fancy Rainbow parenthesis.
if exists("g:lisp_rainbow") && 0 != g:lisp_rainbow

  " set up BG color according to current one,
  if !s:mimic_bigbang_dark
    if !s:mimic_bigbang_alt
      let s:guibg   = "#131313"
      let s:ctermbg = "blue"
    else
      " gvim=#000078, vim=blue
      let s:guibg   = "#000040"
      let s:ctermbg = "darkblue"
    endif
  else
    if !s:mimic_bigbang_alt
      " gvim=#000000, vim=black
      let s:guibg   = "#232323"
      let s:ctermbg = "darkblue"
    else
      " gvim=#000040, vim=darkblue
      let s:guibg   = "#000098"
      let s:ctermbg = "black"
    endif
  endif

  " Green and Cyan are used a lot for the syntax, so they will be in the last
  " levels for the fg colors; and so the levels go from "Yellow" to "Green" in
  " the GUI, and from "White" to "Cyan" in Console.
  " Note: the cterm fg colors can't use Blue nor Darkblue, because they're
  "       already used for the background.
  exe "hi hlLevel0 guifg=#ffff66 guibg=".s:guibg." ctermfg=white   ctermbg=".s:ctermbg
  exe "hi hlLevel1 guifg=#ffcc66 guibg=".s:guibg." ctermfg=yellow  ctermbg=".s:ctermbg
  exe "hi hlLevel2 guifg=#ff66cc guibg=".s:guibg." ctermfg=red     ctermbg=".s:ctermbg
  exe "hi hlLevel3 guifg=#ff66ff guibg=".s:guibg." ctermfg=magenta ctermbg=".s:ctermbg
  exe "hi hlLevel4 guifg=#cc66ff guibg=".s:guibg." ctermfg=cyan    ctermbg=".s:ctermbg
  exe "hi hlLevel5 guifg=#6666ff guibg=".s:guibg." ctermfg=white   ctermbg=".s:ctermbg
  exe "hi hlLevel6 guifg=#66ccff guibg=".s:guibg." ctermfg=yellow  ctermbg=".s:ctermbg
  exe "hi hlLevel7 guifg=#66ffff guibg=".s:guibg." ctermfg=red     ctermbg=".s:ctermbg
  exe "hi hlLevel8 guifg=#66ffcc guibg=".s:guibg." ctermfg=magenta ctermbg=".s:ctermbg
  exe "hi hlLevel9 guifg=#66ff66 guibg=".s:guibg." ctermfg=cyan    ctermbg=".s:ctermbg

  " cleanup
  unlet s:guibg s:ctermbg

endif

" }}}1
" Font Style {{{1
"~~~~~~~~~~~~
if has("gui_running") && 0 < s:mimic_font_style

  " Function:  s:MultiHi(option, ...) {{{2
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
    call s:MultiHi("gui=bold", "Directory", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Constant", "Character", "Type", "Statement", "PreProc","Special", "Tag", "Delimiter", "Todo")
    call s:MultiHi("gui=underline,bold", "WildMenu", "TablineSel", "Function")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "TabLine", "StatusLineNC", "Folded", "Question", "Comment")
    call s:MultiHi("gui=underline,italic", "Function")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "MoreMsg", "Title", "Todo")
    call s:MultiHi("gui=bold,italic,underline", "Function")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui s:mimic_bigbang_alt s:mimic_bigbang_dark

" vim:noet:sw=24:ts=24:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
