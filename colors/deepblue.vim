"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  deepblue.vim
"  Last Change:  2009-10-17  [17:02:05]
"      Version:  110
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h deepblue.vim
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

let colors_name = "deepblue"

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
hi Normal	guifg=#cccccc	guibg=#001040	gui=NONE
hi Cursor	guifg=bg	guibg=#ffff66	gui=NONE
hi CursorIM	guifg=bg	guibg=#66ff66	gui=NONE
hi MatchParen	guifg=bg	guibg=#66ffff	gui=NONE

" search
hi Search	guifg=bg	guibg=#33ff33	gui=NONE
hi IncSearch	guifg=bg	guibg=#ffff33	gui=NONE

" visual mode
if version < 700
  hi Visual	guifg=fg	guibg=#001088	gui=NONE
  hi VisualNOS	guifg=fg	guibg=#780078	gui=NONE
else
  hi Visual		guibg=#001088	gui=NONE
  hi VisualNOS		guibg=#780078	gui=NONE
endif

" line numbers and folding
hi LineNr	guifg=#586878	guibg=bg	gui=NONE
hi NonText	guifg=#586878	guibg=bg	gui=NONE
hi Folded	guifg=#ed9393	guibg=#000030	gui=NONE
hi FoldColumn	guifg=#ed9393	guibg=bg	gui=NONE
hi SignColumn	guifg=#9393ed	guibg=bg	gui=NONE

" windows, statusline
hi StatusLine	guifg=bg	guibg=#18cded	gui=NONE
hi StatusLineNC	guifg=#58ffcc	guibg=#032e98	gui=NONE
hi VertSplit	guifg=#58ffcc	guibg=#032e98	gui=NONE
hi WildMenu	guifg=#18ddfd	guibg=#001e78	gui=underline

" colors for GUI
if 0 < s:mimic_colorize_gui

  " will be set for everyone but Windows.
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    hi Menu	guifg=#18ddfd	guibg=#001e78
    hi Scrollbar	guifg=#58ffcc	guibg=#032e98
    hi Tooltip	guifg=#58ffcc	guibg=#032e98
  endif
endif

" vim >= 7.0 only
if version >= 700
  hi CursorLine		guibg=#102070	gui=NONE
  hi CursorColumn		guibg=#102070	gui=NONE

  " tab pages
  hi TabLine	guifg=#58ffcc	guibg=#032e98	gui=NONE
  hi TabLineFill	guifg=#58ffcc	guibg=#032e98	gui=NONE
  hi TabLineSel	guifg=bg	guibg=#18cded	gui=NONE

  " popup completion menu
  hi Pmenu	guifg=bg	guibg=#18cded	gui=NONE
  hi PmenuSel	guifg=#58ffde	guibg=#032e78	gui=NONE
  hi PmenuSbar	guifg=#0e2e78	guibg=#0e2e78	gui=NONE
  hi PmenuThumb	guifg=#18cded	guibg=#18cded	gui=NONE

  " spell checking
  hi SpellBad		guisp=#ed0000	gui=undercurl
  hi SpellCap		guisp=#0000ed	gui=undercurl
  hi SpellLocal		guisp=#00eded	gui=undercurl
  hi SpellRare		guisp=#ed00ed	gui=undercurl
endif

" other texts
hi Question	guifg=#66ff66	guibg=bg	gui=NONE
hi WarningMsg	guifg=#ef6666	guibg=bg	gui=NONE
hi ErrorMsg	guifg=#efefef	guibg=#da0000	gui=NONE
hi Title	guifg=#99ff66	guibg=bg	gui=NONE
hi Directory	guifg=#0099ff	guibg=bg	gui=NONE
hi MoreMsg	guifg=#33ccfd	guibg=#001088	gui=NONE
hi ModeMsg	guifg=#33ccfd	guibg=#001088	gui=NONE
hi SpecialKey	guifg=#00ff99	guibg=bg	gui=NONE

" diff
hi DiffAdd	guifg=bg	guibg=#99ef99	gui=NONE
hi DiffChange	guifg=bg	guibg=#9999ef	gui=NONE
hi DiffDelete	guifg=bg	guibg=#ef9999	gui=NONE
hi DiffText	guifg=bg	guibg=#99efef	gui=NONE


" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=#557799	guibg=bg	gui=NONE
hi SpecialComment	guifg=#559999	guibg=bg	gui=NONE

hi Constant	guifg=#eded78	guibg=bg	gui=NONE
hi Character	guifg=#ed9393	guibg=bg	gui=NONE
hi String	guifg=#ed9393	guibg=bg	gui=NONE
hi link Number	Constant
hi link Boolean	Constant
hi link Float	Constant

hi Identifier	guifg=#edcc48	guibg=bg	gui=NONE
hi Function	guifg=#edcc48	guibg=bg	gui=NONE

hi Statement	guifg=#00ccff	guibg=bg	gui=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement

hi PreProc	guifg=#66ccff	guibg=bg	gui=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

hi Type	guifg=#99ff99	guibg=bg	gui=NONE
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type

hi Special	guifg=#a878ed	guibg=bg	gui=NONE
hi link SpecialChar	Special
hi link Delimiter	Special
hi link Tag	Special
hi Debug	guifg=#999999	guibg=bg	gui=NONE

hi Underlined	guifg=#00ccff	guibg=bg	gui=underline
hi Ignore	guifg=#203060	guibg=bg	gui=NONE
hi Error	guifg=#eaeaea	guibg=#cc0000	gui=NONE
hi Todo	guifg=bg	guibg=#00ccff	gui=underline

" Font Style {{{1
"~~~~~~~~~~~~
if 0 < s:mimic_font_style

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
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine" , "MoreMsg", "ModeMsg", "Title" , "Statement", "PreProc", "Type", "Function" , "Identifier", "Special", "Todo")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic", "StatusLineNC", "Question" , "Comment", "SpecialComment")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic", "Identifier", "Function", "Todo")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=22:ts=22:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
