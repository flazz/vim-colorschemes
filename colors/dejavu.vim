"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  dejavu.vim
"  Last Change:  2009-10-17  [17:02:20]
"      Version:  125
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h dejavu.vim
"                :h dejavu-options
"                :h dejavu-variants
"                :h mimicpak
"                :h mimicpak-options
"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
" Setup {{{1
"~~~~~~~
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "dejavu"

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

" get the user values (if any) for the options
let s:mimic_font_style   = s:GetValue("mimic_font_style")
let s:mimic_colorize_gui = s:GetValue("mimic_colorize_gui")
let s:mimic_dejavu_alt   = s:GetValue("mimic_dejavu_alt")
let s:mimic_dejavu_dark  = s:GetValue("mimic_dejavu_dark")

" cleanup
delfunction s:GetValue

" Highlights {{{1
"~~~~~~~~~~~~
if "light" == &bg
  " Light Colors:     {{{2
  " Default Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~
  " Normal, cursors   {{{4
  if !s:mimic_dejavu_dark
    hi Normal	guifg=#000000	guibg=#ffffff	gui=NONE	ctermfg=black	ctermbg=white	cterm=NONE
    hi Cursor	guifg=bg	guibg=#3dac7a	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
    hi CursorIM	guifg=bg	guibg=#ac3d7a	gui=NONE	ctermfg=bg	ctermbg=red	cterm=NONE
    hi MatchParen	guifg=bg	guibg=#3d7aac	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
  else
    hi Normal	guifg=#000000	guibg=#e8e8e8	gui=NONE	ctermfg=black	ctermbg=gray	cterm=NONE
    hi Cursor	guifg=bg	guibg=#3d9c6a	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
    hi CursorIM	guifg=bg	guibg=#9c3d6a	gui=NONE	ctermfg=bg	ctermbg=red	cterm=NONE
    hi MatchParen	guifg=bg	guibg=#3d6a9c	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
  endif

  " search, visual mode {{{4
  hi Search	guifg=fg	guibg=#ffff66	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
  hi IncSearch	guifg=fg	guibg=#66ff66	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
  if version < 700
    if !s:mimic_dejavu_dark
      hi Visual	guifg=bg	guibg=#90a0d8	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
      hi VisualNOS	guifg=bg	guibg=#d890a0	gui=NONE	ctermfg=bg	ctermbg=red	cterm=NONE
      hi LineNr	guifg=#aaaaaa	guibg=bg	gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE
    else
      hi Visual	guifg=bg	guibg=#8090c8	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
      hi VisualNOS	guifg=bg	guibg=#c88090	gui=NONE	ctermfg=bg	ctermbg=red	cterm=NONE
      hi LineNr	guifg=#888888	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
    endif
  else
    if !s:mimic_dejavu_dark
      hi Visual		guibg=#cfcfd7	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
      hi VisualNOS		guibg=#d7cfdf	gui=NONE	ctermfg=bg	ctermbg=red	cterm=NONE
      hi LineNr	guifg=#aaaaaa		gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE
    else
      hi Visual		guibg=#bfbfc7	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
      hi VisualNOS		guibg=#c7bfcf	gui=NONE	ctermfg=bg	ctermbg=red	cterm=NONE
      hi LineNr	guifg=#888888		gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
    endif
  endif

  " folding {{{4
  if !s:mimic_dejavu_dark
    hi NonText	guifg=#aaaaaa	guibg=bg	gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE
    hi Folded	guifg=#1a7c3c	guibg=#eaeaea	gui=NONE	ctermfg=darkgreen	ctermbg=gray	cterm=NONE
    hi FoldColumn	guifg=#1a7c3c	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
  else
    hi NonText	guifg=#888888	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
    hi Folded	guifg=#0a6c2c	guibg=#cecece	gui=NONE	ctermfg=darkgreen	ctermbg=darkgray	cterm=NONE
    hi FoldColumn	guifg=#0a6c2c	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
  endif
  hi SignColumn	guifg=#1a7c3c	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE

  " windows, statusline {{{4
  if !s:mimic_dejavu_dark
    hi StatusLine	guifg=bg	guibg=#007777	gui=NONE	ctermfg=bg	ctermbg=darkcyan	cterm=NONE
    hi StatusLineNC	guifg=#004455	guibg=#bbbbbb	gui=NONE	ctermfg=darkcyan	ctermbg=gray	cterm=NONE
    hi VertSplit	guifg=#004455	guibg=#bbbbbb	gui=NONE	ctermfg=darkcyan	ctermbg=gray	cterm=NONE
    hi WildMenu	guifg=#007777	guibg=bg	gui=underline	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
  else
    hi StatusLine	guifg=bg	guibg=#006666	gui=NONE	ctermfg=white	ctermbg=darkcyan	cterm=NONE
    hi StatusLineNC	guifg=#004455	guibg=#aaaaaa	gui=NONE	ctermfg=cyan	ctermbg=darkgray	cterm=NONE
    hi VertSplit	guifg=#004455	guibg=#aaaaaa	gui=NONE	ctermfg=cyan	ctermbg=darkgray	cterm=NONE
    hi WildMenu	guifg=#006666	guibg=bg	gui=underline	ctermfg=darkcyan	ctermbg=white	cterm=NONE
  endif

  " colors for GUI
  if 0 < s:mimic_colorize_gui

    " will be set for everyone but Windows.
    " Athena, Motif, Mac, Photon or GTK GUI.
    if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
      hi Menu	guifg=#004455	guibg=#aaaaaa
      hi Scrollbar	guifg=#004455	guibg=#aaaaaa
      hi Tooltip	guifg=black	guibg=lightyellow
    endif
  endif

  " vim >= 7.0 only {{{4
  if version >= 700
    if !s:mimic_dejavu_dark
      hi CursorLine		guibg=#eaeaef	gui=NONE		ctermbg=cyan	cterm=NONE
      hi CursorColumn		guibg=#eaeaef	gui=NONE		ctermbg=cyan	cterm=NONE

      " tab pages
      hi TabLine	guifg=#004455	guibg=#bbbbbb	gui=NONE	ctermfg=darkcyan	ctermbg=gray	cterm=NONE
      hi TabLineFill	guifg=#004455	guibg=#bbbbbb	gui=NONE	ctermfg=darkcyan	ctermbg=gray	cterm=NONE
      hi TabLineSel	guifg=bg	guibg=#007777	gui=NONE	ctermfg=bg	ctermbg=darkcyan	cterm=NONE

      " popup completion menu
      hi Pmenu	guifg=bg	guibg=#23818e	gui=NONE	ctermfg=bg	ctermbg=darkcyan	cterm=NONE
      hi PmenuSel	guifg=#23818e	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
      hi PmenuSbar	guifg=#606070	guibg=#606070	gui=NONE	ctermfg=darkgray	ctermbg=darkgray	cterm=NONE
      hi PmenuThumb	guifg=#007777	guibg=#007777	gui=NONE	ctermfg=darkcyan	ctermbg=darkcyan	cterm=NONE

    else " dark colors
      hi CursorLine		guibg=#d2d2db	gui=NONE		ctermbg=cyan	cterm=NONE
      hi CursorColumn		guibg=#d2d2db	gui=NONE		ctermbg=cyan	cterm=NONE

      " tab pages
      hi TabLine	guifg=#004455	guibg=#aaaaaa	gui=NONE	ctermfg=cyan	ctermbg=darkgray    	cterm=NONE
      hi TabLineFill	guifg=#004455	guibg=#aaaaaa	gui=NONE	ctermfg=cyan	ctermbg=darkgray    	cterm=NONE
      hi TabLineSel	guifg=bg	guibg=#006666	gui=NONE	ctermfg=white	ctermbg=darkcyan	cterm=NONE

      " popup completion menu
      hi Pmenu	guifg=bg	guibg=#13717e	gui=NONE	ctermfg=white	ctermbg=darkcyan	cterm=NONE
      hi PmenuSel	guifg=#13717e	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=white      	cterm=NONE
      hi PmenuSbar	guifg=#505060	guibg=#505060	gui=NONE	ctermfg=darkgray	ctermbg=darkgray	cterm=NONE
      hi PmenuThumb	guifg=#006666	guibg=#006666	gui=NONE	ctermfg=darkcyan	ctermbg=darkcyan	cterm=NONE
    endif

    " spell checking
    hi SpellBad	guisp=#cc6666	guibg=#ffdada	gui=undercurl	ctermfg=white	ctermbg=red	cterm=NONE
    hi SpellCap	guisp=#6666cc	guibg=#dadaff	gui=undercurl	ctermfg=white	ctermbg=blue	cterm=NONE
    hi SpellLocal	guisp=#66cccc	guibg=#daffff	gui=undercurl	ctermfg=black	ctermbg=cyan	cterm=NONE
    hi SpellRare	guisp=#cc66cc	guibg=#ffdaff	gui=undercurl	ctermfg=black	ctermbg=magenta	cterm=NONE

  endif
  "}}}4
  " other texts {{{4
  if !s:mimic_dejavu_dark
    hi Question	guifg=#44a268	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
    hi Title	guifg=#a0214a	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
    hi Directory	guifg=#a26834	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
    hi MoreMsg	guifg=#3468a2	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi ModeMsg	guifg=#004e8e	guibg=#eaeaea	gui=NONE	ctermfg=darkcyan	ctermbg=gray	cterm=NONE
    hi SpecialKey	guifg=#a2a244	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
  else
    hi Question	guifg=#349258	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
    hi Title	guifg=#90113a	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
    hi Directory	guifg=#925824	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
    hi MoreMsg	guifg=#245892	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE
    hi ModeMsg	guifg=#002e7e	guibg=#cacaca	gui=NONE	ctermfg=darkcyan	ctermbg=darkgray	cterm=NONE
    hi SpecialKey	guifg=#929234	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
  endif
  hi WarningMsg	guifg=#af2828	guibg=bg	gui=NONE	ctermfg=red	ctermbg=bg	cterm=NONE
  hi ErrorMsg	guifg=#efefef	guibg=#cc0000	gui=NONE	ctermfg=white	ctermbg=red	cterm=NONE

  " diff {{{4
  hi DiffAdd	guifg=fg	guibg=#66ff33	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
  hi DiffChange	guifg=fg	guibg=#33ccff	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE
  hi DiffDelete	guifg=fg	guibg=#ffff33	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
  hi DiffText	guifg=fg	guibg=#33ffff	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE

  " }}}3
  " Default Syntax Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~~~~~~~~
  if !s:mimic_dejavu_dark
    " normal colors, for white background {{{4
    hi Comment	guifg=#026175	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
    hi SpecialComment	guifg=#027561	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE

    hi Character	guifg=#008844	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi String	guifg=#008844	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi Constant	guifg=#1868ad	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE

    hi Identifier	guifg=#9c2a2a	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE

    hi Statement	guifg=#a26834	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE

    hi PreProc	guifg=#344482	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
    hi PreCondit	guifg=#6d5ca0	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE

    hi Type	guifg=#a23468	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE

    hi Special	guifg=#00547c	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
    hi SpecialChar	guifg=#007185	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
    hi Delimiter	guifg=#008571	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi Debug	guifg=#888888	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE

    hi Underlined	guifg=#a05a31	guibg=bg	gui=underline	ctermfg=brown	ctermbg=bg	cterm=underline
    hi Ignore	guifg=#e0e0e0	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
    hi Error	guifg=#cc0000	guibg=bg	gui=underline	ctermfg=white	ctermbg=red	cterm=NONE
    hi Todo	guifg=bg	guibg=#11a04a	gui=NONE	ctermfg=bg	ctermbg=darkgreen	cterm=NONE
    " }}}4
  else
    " darker colors, for lightgray background {{{4
    hi Comment	guifg=#005165	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg       	cterm=NONE
    hi SpecialComment	guifg=#006551	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg       	cterm=NONE

    hi Character	guifg=#007733	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg       	cterm=NONE
    hi String	guifg=#007733	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg       	cterm=NONE
    hi Constant	guifg=#08589d	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg       	cterm=NONE

    hi Identifier	guifg=#8c1a1a	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg       	cterm=NONE

    hi Statement	guifg=#925824	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg       	cterm=NONE

    hi PreProc	guifg=#243472	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg       	cterm=NONE
    hi PreCondit	guifg=#5d4c90	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg       	cterm=NONE

    hi Type	guifg=#922458	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg       	cterm=NONE

    hi Special	guifg=#00446c	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg       	cterm=NONE
    hi SpecialChar	guifg=#006175	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg       	cterm=NONE
    hi Delimiter	guifg=#007561	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg       	cterm=NONE
    hi Debug	guifg=#666666	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg       	cterm=NONE

    hi Underlined	guifg=#a05a31	guibg=bg	gui=underline	ctermfg=brown	ctermbg=bg       	cterm=NONE
    hi Ignore	guifg=#bbbbbb	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg       	cterm=NONE
    hi Error	guifg=#bb0000	guibg=bg	gui=underline	ctermfg=white	ctermbg=red      	cterm=NONE
    hi Todo	guifg=bg	guibg=#01903a	gui=NONE	ctermfg=bg	ctermbg=darkgreen	cterm=NONE
    " }}}4
  endif

  " linked groups {{{4
  hi link Float	Constant
  hi link Number	Constant
  hi link Boolean	Constant

  hi link Function	Identifier

  hi link Conditional	Statement
  hi link Repeat	Statement
  hi link Label	Statement
  hi link Operator	Statement
  hi link Keyword	Statement
  hi link Exception	Statement

  hi link Include	PreProc
  hi link Define	PreProc
  hi link Macro	PreProc

  hi link StorageClass	Type
  hi link Structure	Type
  hi link Typedef	Type

  hi link Tag	Special
  "}}}2
else
  " Dark Colors:      {{{2
  " Default Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~
  " Normal, cursors   {{{4
  if !s:mimic_dejavu_dark
    if !s:mimic_dejavu_alt
      hi Normal	guifg=#b0b0b0	guibg=#333333	gui=NONE	ctermfg=grey	ctermbg=black	cterm=NONE
    else
      hi Normal	guifg=#b0b0b0	guibg=#000050	gui=NONE	ctermfg=grey	ctermbg=blue	cterm=NONE
    endif
  else
    if !s:mimic_dejavu_alt
      hi Normal	guifg=#b0b0b0	guibg=#000000	gui=NONE	ctermfg=grey	ctermbg=black	cterm=NONE
    else
      hi Normal	guifg=#b0b0b0	guibg=#000025	gui=NONE	ctermfg=grey	ctermbg=darkblue	cterm=NONE
    endif
  endif
  hi Cursor	guifg=bg	guibg=#8dfcba	gui=NONE	ctermfg=bg	ctermbg=green	cterm=NONE
  hi CursorIM	guifg=bg	guibg=#fc8dba	gui=NONE	ctermfg=bg	ctermbg=magenta	cterm=NONE
  hi MatchParen	guifg=bg	guibg=#8ddafc	gui=NONE	ctermfg=bg	ctermbg=blue	cterm=NONE

  " search, visual mode {{{4
  hi Search	guifg=bg	guibg=#d5d113	gui=NONE	ctermfg=bg	ctermbg=yellow	cterm=NONE
  hi IncSearch	guifg=bg	guibg=#63e593	gui=NONE	ctermfg=bg	ctermbg=green	cterm=NONE
  if version < 700
    if !s:mimic_dejavu_dark
      hi Visual	guifg=fg	guibg=#1020a8	gui=NONE	ctermfg=fg	ctermbg=blue	cterm=NONE
      hi VisualNOS	guifg=fg	guibg=#a82010	gui=NONE	ctermfg=fg	ctermbg=red	cterm=NONE
    else
      hi Visual	guifg=fg	guibg=#000073	gui=NONE	ctermfg=fg	ctermbg=darkblue	cterm=NONE
      hi VisualNOS	guifg=fg	guibg=#730000	gui=NONE	ctermfg=fg	ctermbg=darkred	cterm=NONE
    endif
  else " visual mode with transparent fg
    if !s:mimic_dejavu_dark
      hi Visual		guibg=#1020a8	gui=NONE		ctermbg=blue	cterm=NONE
      hi VisualNOS		guibg=#a81020	gui=NONE		ctermbg=red	cterm=NONE
    else
      hi Visual		guibg=#000073	gui=NONE		ctermbg=blue	cterm=NONE
      hi VisualNOS		guibg=#730000	gui=NONE		ctermbg=red	cterm=NONE
    endif
  endif

  " correct the cterm colors for blue/darkblue backgrounds,
  " this reduces too much nested IFs in the above block.
  if !has("gui_running") && s:mimic_dejavu_alt
    if !s:mimic_dejavu_dark
      hi Visual				ctermfg=fg	ctermbg=darkblue	cterm=NONE
      hi VisualNOS				ctermfg=fg	ctermbg=darkred	cterm=NONE
    else
      hi Visual				ctermfg=fg	ctermbg=blue	cterm=NONE
      hi VisualNOS				ctermfg=fg	ctermbg=red	cterm=NONE
    endif
    " make fg transparent
    if version < 700
      hi Visual				ctermfg=NONE
      hi VisualNOS				ctermfg=NONE
    else
      hi Visual				ctermfg=NONE
      hi VisualNOS				ctermfg=NONE
    endif
  endif

  " line numbers, folding {{{4
  if !s:mimic_dejavu_dark
    if !s:mimic_dejavu_alt
      hi LineNr	guifg=#666666	guibg=bg	gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE
      hi NonText	guifg=#666666	guibg=bg	gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE
      hi Folded	guifg=#7aec9c	guibg=#151515	gui=NONE	ctermfg=green	ctermbg=darkgray	cterm=NONE
    else
      hi LineNr	guifg=#444488	guibg=bg	gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE
      hi NonText	guifg=#444488	guibg=bg	gui=NONE	ctermfg=gray	ctermbg=bg	cterm=NONE
      hi Folded	guifg=#7aec9c	guibg=#000030	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    endif
  else
    if !s:mimic_dejavu_alt
      hi LineNr	guifg=#444444	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
      hi NonText	guifg=#444444	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
      hi Folded	guifg=#6adc8c	guibg=#252525	gui=NONE	ctermfg=green	ctermbg=darkgray	cterm=NONE
    else
      hi LineNr	guifg=#333366	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
      hi NonText	guifg=#333366	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE
      hi Folded	guifg=#6adc8c	guibg=#000050	gui=NONE	ctermfg=green	ctermbg=blue	cterm=NONE
    endif
  endif
  hi FoldColumn	guifg=#7aec9c	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE
  hi SignColumn	guifg=#7a9cec	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE

  " windows, statusline {{{4
  hi StatusLine	guifg=bg	guibg=#13c1ce	gui=NONE	ctermfg=bg	ctermbg=cyan	cterm=NONE
  if !s:mimic_dejavu_dark
    if !s:mimic_dejavu_alt
      hi StatusLineNC	guifg=#13c1ce	guibg=#303080	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
      hi VertSplit	guifg=#13c1ce	guibg=#303080	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
      hi ModeMsg	guifg=#44fec8	guibg=#202020	gui=NONE	ctermfg=green	ctermbg=darkgray	cterm=NONE
    else
      hi StatusLineNC	guifg=#33e1ee	guibg=#2020b0	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
      hi VertSplit	guifg=#33e1ee	guibg=#2020b0	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
      hi ModeMsg	guifg=#44fec8	guibg=#1020a0	gui=NONE	ctermfg=green	ctermbg=darkblue	cterm=NONE
    endif
  else
    if !s:mimic_dejavu_alt
      hi StatusLineNC	guifg=#13c1ce	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
      hi VertSplit	guifg=#13c1ce	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
      hi ModeMsg	guifg=#44fec8	guibg=#333333	gui=NONE	ctermfg=green	ctermbg=darkgray	cterm=NONE
    else
      hi StatusLineNC	guifg=#23d1de	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
      hi VertSplit	guifg=#23d1de	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
      hi ModeMsg	guifg=#44fec8	guibg=#102080	gui=NONE	ctermfg=green	ctermbg=blue	cterm=NONE
    endif
  endif
  hi WildMenu	guifg=#13c1ce	guibg=bg	gui=underline	ctermfg=cyan	ctermbg=bg	cterm=NONE

  " colors for GUI
  if 0 < s:mimic_colorize_gui

    " will be set for everyone but Windows.
    " Athena, Motif, Mac, Photon or GTK GUI.
    if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
      hi Menu	guifg=#13c1ce	guibg=bg
      hi Scrollbar	guifg=#13a1ae	guibg=#202060
      hi Tooltip	guifg=bg	guibg=#61f09a
    endif
  endif

  " vim >= 7.0 only {{{4
  if version >= 700
    " tab pages
    if !s:mimic_dejavu_dark
      if !s:mimic_dejavu_alt
        hi CursorLine		guibg=#202020	gui=NONE		ctermbg=darkgray	cterm=NONE
        hi CursorColumn		guibg=#202020	gui=NONE		ctermbg=darkgray	cterm=NONE
        hi TabLine	guifg=#13c1ce	guibg=#303080	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
        hi TabLineFill	guifg=#13c1ce	guibg=#303080	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
      else
        hi CursorLine		guibg=#101070	gui=NONE		ctermbg=darkblue	cterm=NONE
        hi CursorColumn		guibg=#101070	gui=NONE		ctermbg=darkblue	cterm=NONE
        hi TabLine	guifg=#13c1ce	guibg=#303080	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
        hi TabLineFill	guifg=#13c1ce	guibg=#303080	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
      endif
    else
      if !s:mimic_dejavu_alt
        hi CursorLine		guibg=#232323	gui=NONE		ctermbg=darkgray	cterm=NONE
        hi CursorColumn		guibg=#232323	gui=NONE		ctermbg=darkgray	cterm=NONE
        hi TabLine	guifg=#13c1ce	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
        hi TabLineFill	guifg=#13c1ce	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=darkblue	cterm=NONE
      else
        hi CursorLine		guibg=#101050	gui=NONE		ctermbg=blue	cterm=NONE
        hi CursorColumn		guibg=#101050	gui=NONE		ctermbg=blue	cterm=NONE
        hi TabLine	guifg=#13c1ce	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
        hi TabLineFill	guifg=#13c1ce	guibg=#101060	gui=NONE	ctermfg=cyan	ctermbg=blue	cterm=NONE
      endif
    endif
    hi TabLineSel	guifg=bg	guibg=#13c1ce	gui=NONE	ctermfg=bg	ctermbg=cyan	cterm=NONE

    " popup completion menu
    hi Pmenu	guifg=bg	guibg=#23d1de	gui=NONE	ctermfg=bg	ctermbg=cyan	cterm=NONE
    hi PmenuSel	guifg=#23d1de	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=bg	cterm=NONE
    hi PmenuSbar	guifg=#303040	guibg=#303040	gui=NONE	ctermfg=darkblue	ctermbg=darkblue	cterm=NONE
    hi PmenuThumb	guifg=#13c1ce	guibg=#13c1ce	gui=NONE	ctermfg=cyan	ctermbg=cyan	cterm=NONE

    " spell checking
    hi SpellBad	guisp=#ff9999		gui=undercurl	ctermfg=white	ctermbg=red	cterm=NONE
    hi SpellCap	guisp=#9999ff		gui=undercurl	ctermfg=white	ctermbg=blue	cterm=NONE
    hi SpellLocal	guisp=#99ffff		gui=undercurl	ctermfg=black	ctermbg=cyan	cterm=NONE
    hi SpellRare	guisp=#ff99ff		gui=undercurl	ctermfg=black	ctermbg=magenta	cterm=NONE
  endif
  " }}}4
  " other texts {{{4
  hi Question	guifg=#94f2b8	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE
  hi WarningMsg	guifg=#ff7878	guibg=bg	gui=NONE	ctermfg=red	ctermbg=bg	cterm=NONE
  hi ErrorMsg	guifg=#efefef	guibg=#cc0000	gui=NONE	ctermfg=white	ctermbg=red	cterm=NONE
  hi Title	guifg=#f0719a	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
  hi MoreMsg	guifg=#84b8f2	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=bg	cterm=NONE
  hi SpecialKey	guifg=#d2d284	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
  if !s:mimic_dejavu_dark
    hi Directory	guifg=#f2b884	guibg=bg	gui=NONE	ctermfg=yellow	ctermbg=bg	cterm=NONE
  else
    hi Directory	guifg=#f2b884	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
  endi

  " diff {{{4
  hi DiffAdd	guifg=bg	guibg=#66ff33	gui=NONE	ctermfg=black	ctermbg=green	cterm=NONE
  hi DiffChange	guifg=bg	guibg=#33ccff	gui=NONE	ctermfg=white	ctermbg=blue	cterm=NONE
  hi DiffDelete	guifg=bg	guibg=#ffff33	gui=NONE	ctermfg=black	ctermbg=yellow	cterm=NONE
  hi DiffText	guifg=bg	guibg=#33ffff	gui=NONE	ctermfg=black	ctermbg=cyan	cterm=NONE

  " }}}3
  " Default Syntax Highlight {{{3
  "~~~~~~~~~~~~~~~~~~~~~~~~~~
  if !s:mimic_dejavu_alt
    hi Constant	guifg=#68b8fd	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=bg	cterm=NONE
    hi PreProc	guifg=#8494d2	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE
    hi PreCondit	guifg=#9d8cd0	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
    hi SpecialChar	guifg=#13b1d5	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE
    hi Ignore	guifg=#454545	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
  else
    hi Constant	guifg=#68b8fd	guibg=bg	gui=NONE	ctermfg=white	ctermbg=bg	cterm=NONE
    hi PreProc	guifg=#8494d2	guibg=bg	gui=NONE	ctermfg=white	ctermbg=bg	cterm=NONE
    hi PreCondit	guifg=#9d8cd0	guibg=bg	gui=NONE	ctermfg=white	ctermbg=bg	cterm=NONE
    hi SpecialChar	guifg=#13b1d5	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=bg	cterm=NONE
    hi Ignore	guifg=#151575	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
  endif
  hi Comment	guifg=#13c1d5	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=bg	cterm=NONE
  hi SpecialComment	guifg=#55d5c1	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=bg	cterm=NONE

  hi Character	guifg=#55eea4	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE
  hi String	guifg=#55eea4	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE

  hi Identifier	guifg=#ec7a7a	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
  hi Statement	guifg=#f2b884	guibg=bg	gui=NONE	ctermfg=yellow	ctermbg=bg	cterm=NONE

  hi Type	guifg=#f284b8	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE

  hi Special	guifg=#3bc4ec	guibg=bg	gui=NONE	ctermfg=cyan	ctermbg=bg	cterm=NONE
  hi Delimiter	guifg=#33d895	guibg=bg	gui=NONE	ctermfg=green	ctermbg=bg	cterm=NONE
  hi Debug	guifg=#808080	guibg=bg	gui=NONE	ctermfg=darkgray	ctermbg=bg	cterm=NONE

  hi Underlined	guifg=#f0aa81	guibg=bg	gui=underline	ctermfg=yellow	ctermbg=bg	cterm=underline
  hi Error	guifg=#efefef	guibg=#cc0000	gui=underline	ctermfg=white	ctermbg=red	cterm=NONE
  hi Todo	guifg=bg	guibg=#61f09a	gui=NONE	ctermfg=bg	ctermbg=green	cterm=NONE

  " darker style for cterm only {{{4
  "
  " Als Bonus setzen wir die dunklere Farben nur f№r cterm, und nur damit es
  " Ein bischen unterschied gibt zwischen dark=0 und dark=1.
  "
  if 0 != s:mimic_dejavu_dark && !s:mimic_dejavu_alt
    hi Comment	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
    hi SpecialComment	ctermfg=cyan	ctermbg=bg	cterm=NONE
    hi Constant	ctermfg=darkblue	ctermbg=bg	cterm=NONE
    hi PreProc	ctermfg=darkblue	ctermbg=bg	cterm=NONE
    hi PreCondit	ctermfg=darkblue	ctermbg=bg	cterm=NONE
    hi Character	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi String	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi Identifier	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi Statement	ctermfg=darkyellow	ctermbg=bg	cterm=NONE
    hi Type	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
    hi Special	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
    hi SpecialChar	ctermfg=darkblue	ctermbg=bg	cterm=NONE
    hi Delimiter	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
    hi Debug	ctermfg=darkgray	ctermbg=bg	cterm=NONE
    hi Underlined	ctermfg=darkyellow	ctermbg=bg	cterm=underline
  endif

  " linked groups {{{4
  hi link Float	Constant
  hi link Number	Constant
  hi link Boolean	Constant

  hi link Function	Identifier

  hi link Conditional	Statement
  hi link Repeat	Statement
  hi link Label	Statement
  hi link Operator	Statement
  hi link Keyword	Statement
  hi link Exception	Statement

  hi link StorageClass	Type
  hi link Structure	Type
  hi link Typedef	Type

  hi link Include	PreProc
  hi link Define	PreProc
  hi link Macro	PreProc

  hi link Tag	Special

  " }}}2
endif

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

  " set the bold only options, including the bold & italics groups.
  if 1 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold", "WildMenu", "TabLineSel", "StatusLine", "MoreMsg", "ModeMsg", "Title" , "Constant", "Statement", "PreProc", "PreCondit", "Type", "Identifier", "Special", "SpecialChar", "Todo")
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
unlet s:mimic_font_style s:mimic_colorize_gui s:mimic_dejavu_alt s:mimic_dejavu_dark

" vim:noet:sw=24:ts=24:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
