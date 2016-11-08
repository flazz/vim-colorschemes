"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  psclone.vim
"  Last Change:  2009-10-17  [16:59:40]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h psclone.vim
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

let colors_name = "psclone"

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
hi Normal	guifg=#c0c0c0	guibg=#333333	gui=NONE
hi Cursor	guifg=bg	guibg=#80f080	gui=NONE
hi CursorIM	guifg=bg	guibg=#80f0f0	gui=NONE
hi MatchParen	guifg=bg	guibg=#f0f080	gui=NONE

" search
hi Search	guifg=#232323	guibg=#c0c080	gui=NONE
if version < 700
  hi IncSearch	guifg=#232323	guibg=#80c080	gui=NONE
else
  hi IncSearch			gui=reverse
endif

" visual mode
hi Visual	guifg=bg	guibg=#a0c0e0	gui=NONE
hi VisualNOS	guifg=bg	guibg=#e0c0a0	gui=NONE


" line numbers and folding
hi LineNr	guifg=#808080	guibg=bg	gui=NONE
hi NonText	guifg=#808080	guibg=bg	gui=NONE
hi Folded	guifg=fg	guibg=#003000	gui=NONE
hi FoldColumn	guifg=fg	guibg=#006000	gui=NONE
hi SignColumn	guifg=fg	guibg=#006000	gui=underline

" windows, statusline
hi StatusLine	guifg=bg	guibg=#90b0c0	gui=NONE
hi StatusLineNC	guifg=bg	guibg=fg	gui=NONE
hi VertSplit	guifg=bg	guibg=fg	gui=NONE
hi WildMenu	guifg=fg	guibg=#232323	gui=NONE

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=fg	guibg=#232323
    hi Scrollbar	guifg=bg	guibg=fg
    hi Tooltip	guifg=#801313	guibg=#c0c080
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=bg	gui=underline
  hi CursorColumn		guibg=bg	gui=underline

  " tab pages
  hi TabLine	guifg=fg	guibg=#006000	gui=underline
  hi TabLineFill	guifg=fg	guibg=#006000	gui=underline
  hi TabLineSel	guifg=fg	guibg=bg	gui=NONE

  " popup completion menu
  hi Pmenu	guifg=bg	guibg=fg	gui=NONE
  hi PmenuSel	guifg=bg	guibg=#a0c0d0	gui=underline
  hi PmenuSbar	guifg=#333383	guibg=#333383	gui=NONE
  hi PmenuThumb	guifg=#a0c0d0	guibg=#a0c0d0	gui=NONE

  " spell checking
  hi SpellBad	guisp=#ff9999		gui=undercurl
  hi SpellCap	guisp=#9999ff		gui=undercurl
  hi SpellLocal	guisp=#99ffff		gui=undercurl
  hi SpellRare	guisp=#ff99ff		gui=undercurl
endif

" other texts
hi Question	guifg=bg	guibg=#cccc99	gui=NONE
hi WarningMsg	guifg=#f08080	guibg=bg	gui=NONE
hi ErrorMsg	guifg=#d0d080	guibg=#990000	gui=NONE
hi Title	guifg=#e0c080	guibg=bg	gui=NONE
hi Directory	guifg=#80c0e0	guibg=bg	gui=NONE
hi MoreMsg	guifg=#66cc66	guibg=bg	gui=NONE
hi ModeMsg	guifg=fg	guibg=#003000	gui=NONE
hi SpecialKey	guifg=#00cc66	guibg=bg	gui=NONE

" diff
hi DiffAdd	guifg=#d0d0d0	guibg=#008000	gui=NONE
hi DiffChange	guifg=#d0d0d0	guibg=#000080	gui=NONE
hi DiffDelete	guifg=#6080f0	guibg=#232323	gui=NONE
hi DiffText	guifg=bg	guibg=#c0e080	gui=NONE


" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#c0c0a0	guibg=bg	gui=NONE
hi SpecialComment	guifg=#a0c0b0	guibg=bg	gui=NONE

hi Constant	guifg=#90b0d0	guibg=bg	gui=NONE
hi String	guifg=#90b0d0	guibg=bg	gui=NONE
hi Character	guifg=#90c0e0	guibg=bg	gui=NONE
hi Number	guifg=#d0b080	guibg=bg	gui=NONE
hi link Boolean	Constant
hi link Float	Number

hi Identifier	guifg=#d0b0d0	guibg=bg	gui=NONE
hi Function	guifg=#d0b0d0	guibg=bg	gui=NONE

hi Statement	guifg=#a0c0d0	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi Type	guifg=#a0c0d0	guibg=bg	gui=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi PreProc	guifg=#80d080	guibg=bg	gui=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Special	guifg=#d0b080	guibg=bg	gui=NONE
hi link SpecialChar	Special
hi link Delimiter	Special
hi Tag	guifg=#80b0d0	guibg=bg	gui=NONE
hi Debug	guifg=#808080	guibg=bg	gui=NONE

hi Underlined	guifg=#80b0d0	guibg=bg	gui=underline
hi Ignore	guifg=#535353	guibg=bg	gui=NONE
hi Error	guifg=fg	guibg=#803333	gui=underline
hi Todo	guifg=#801313	guibg=#c0c080	gui=NONE

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
      silent execute "highlight " . a:{l:i} . " " . a:option
      let l:i = l:i + 1
    endwhile
  endfunction "}}}2

  " set the bold only options, including the bold & italics groups.
  if 1 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "ModeMsg", "Title", "Constant", "Statement", "PreProc", "Type", "Number", "Function", "Identifier", "Special", "Todo")
    call s:MultiHi("gui=bold,underline", "Error")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "StatusLineNC", "Folded", "Comment", "SpecialComment", "Question")
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
