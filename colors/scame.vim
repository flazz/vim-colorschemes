"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
"  ColorScheme:  scame.vim
"  Last Change:  2009-10-17  [16:59:02]
"      Version:  120
"      License:  Public Domain, Free / Frei / Gratis / Libre.
"       Author:  Jaime Wottrich,  <jaime.wottrich@gmail.com>
"         Help:  :h scame.vim
"                :h mimic-emacs
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

let colors_name = "scame"

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
" normal, cursors {{{2
" EMACS: has show-paren and show-paren-mismatch, which are used here
"        for MatchParen and CursorIM respectively.
hi Normal	guifg=black	guibg=white	gui=NONE	ctermfg=black	ctermbg=white	cterm=NONE
hi Cursor	guifg=white	guibg=black	gui=NONE	ctermfg=white	ctermbg=black	cterm=NONE
hi CursorIM	guifg=yellow	guibg=purple	gui=NONE	ctermfg=yellow	ctermbg=darkmagenta	cterm=NONE
hi MatchParen	guifg=fg	guibg=turquoise	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE

" search {{{2
" EMACS: has isearch and lazy-isearch.
"        We use lazy-isearch for Search and isearch for IncSearch
hi Search	guifg=fg	guibg=paleturquoise	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE
hi IncSearch	guifg=lightskyblue1	guibg=magenta4	gui=NONE	ctermfg=cyan	ctermbg=darkmagenta	cterm=NONE

" visual mode {{{2
" EMACS: has region and secondary-selection.
"        We use them for Visual and VisualNOS respectively.
if version < 700
  hi Visual	guifg=fg	guibg=lightgoldenrod2	gui=NONE	ctermfg=fg	ctermbg=darkyellow	cterm=NONE
  hi VisualNOS	guifg=fg	guibg=yellow	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
else
  hi Visual		guibg=lightgoldenrod2	gui=NONE	ctermbg=darkyellow	cterm=NONE
  hi VisualNOS		guibg=yellow	gui=NONE	ctermbg=yellow	cterm=NONE
endif

" line numbers, folding {{{2

" EMACS: LineNr, NonText and FoldColumn use the  fringe-face,
"        Folded text uses the  header-line-face.
"        SignColumn = FoldColum-bg + Comment-fg
hi LineNr	guifg=grey45	guibg=grey95	gui=NONE	ctermfg=darkgrey	ctermbg=grey	cterm=NONE
hi NonText	guifg=grey45	guibg=bg	gui=NONE	ctermfg=darkgrey	ctermbg=bg	cterm=NONE
hi Folded	guifg=grey20	guibg=grey90	gui=NONE	ctermfg=black	ctermbg=grey	cterm=NONE
hi FoldColumn	guifg=grey20	guibg=grey90	gui=NONE	ctermfg=black	ctermbg=grey	cterm=NONE
hi SignColumn	guifg=firebrick	guibg=grey95	gui=NONE	ctermfg=darkred	ctermbg=grey	cterm=NONE

" windows, statusline {{{2
" EMACS: emacs doesn't have StatusLineNC nor VertSplit, thus the following are
"        used respectively for all these:
"              mode-line-face,
"              mode-line-face,
"              mode-line-face,
"              highlight-face.
hi StatusLine	guifg=fg	guibg=grey75	gui=underline	ctermfg=fg	ctermbg=grey	cterm=NONE
hi StatusLineNC	guifg=fg	guibg=grey75	gui=NONE	ctermfg=fg	ctermbg=grey	cterm=NONE
hi VertSplit	guifg=fg	guibg=grey75	gui=NONE	ctermfg=fg	ctermbg=grey	cterm=NONE
hi WildMenu	guifg=fg	guibg=darkseagreen2	gui=underline	ctermfg=fg	ctermbg=green	cterm=NONE

" vim >= 7.0 only {{{2
if version >= 700

  " highlighted line, column
  " EMACS: the highlight of the active line in Emacs terribly sucks...
	"        it uses a green color (and red/purple/pink on green sucks); so we
	"        use something a-bit-better here (a very light yellow :).
  hi CursorLine		guibg=lemonchiffon	gui=NONE	ctermbg=yellow	cterm=NONE
  hi CursorColumn		guibg=lemonchiffon	gui=NONE	ctermbg=yellow	cterm=NONE

  " tab pages
  " EMACS: doesn't have tab pages, and thus the following are used:
  "        scroll-bar-face,
  "        scroll-bar-face, and
  "         highlight-face  respectively.
  hi TabLine	guifg=fg	guibg=grey75	gui=underline	ctermfg=fg	ctermbg=grey	cterm=NONE
  hi TabLineFill	guifg=fg	guibg=grey75	gui=underline	ctermfg=fg	ctermbg=grey	cterm=NONE
  hi TabLineSel	guifg=fg	guibg=darkseagreen2	gui=underline	ctermfg=fg	ctermbg=green	cterm=NONE

  " popup completion menu
  hi Pmenu	guifg=fg	guibg=grey75	gui=NONE	ctermfg=fg	ctermbg=grey	cterm=NONE
  hi PmenuSel	guifg=fg	guibg=darkseagreen2	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
  hi PmenuSbar	guifg=fg	guibg=grey50	gui=NONE	ctermfg=fg	ctermbg=darkgrey	cterm=NONE
  hi PmenuThumb	guifg=fg	guibg=darkseagreen2	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE

  " spell checking
  " EMACS: the highlights of emacs' spell checking suck terribly,
  "        and thus we use something a-bit-better here :).
  hi SpellBad	guisp=red		gui=undercurl	ctermfg=fg	ctermbg=red	cterm=NONE
  hi SpellCap	guisp=magenta		gui=undercurl	ctermfg=fg	ctermbg=magenta	cterm=NONE
  hi SpellLocal	guisp=cyan		gui=undercurl	ctermfg=fg	ctermbg=green	cterm=NONE
  hi SpellRare	guisp=blue		gui=undercurl	ctermfg=bg	ctermbg=blue	cterm=NONE

endif

" other texts {{{2

" EMACS: error is called warning in emacs lingo.
hi ErrorMsg	guifg=bg	guibg=red	gui=NONE	ctermfg=bg	ctermbg=red	cterm=NONE
hi WarningMsg	guifg=red	guibg=bg	gui=NONE	ctermfg=red	ctermbg=bg	cterm=NONE

" EMACS: the highlights for these groups are taken from emacs':
"                speedbar-button-face,
"             speedbar-directory-face,
"        comint-highlight-prompt-face,
"        comint-highlight-prompt-face,
"                         fringe-face, and
"                   escape-glyph-face  respectively.
" NOTE: the "brown" color in emacs is "brown3" in gvim
"
if version < 700
  hi Title	guifg=green4	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
else
  " use transparent bgs
  hi Title	guifg=green4		gui=NONE	ctermfg=fg		cterm=NONE
endif
hi Directory	guifg=blue4	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi Question	guifg=darkblue	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi MoreMsg	guifg=darkblue	guibg=bg	gui=NONE	ctermfg=darkblue	ctermbg=bg	cterm=NONE
hi ModeMsg	guifg=fg	guibg=grey95	gui=NONE	ctermfg=fg	ctermbg=grey	cterm=NONE
hi SpecialKey	guifg=brown3	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE


" diff {{{2
" EMACS: the highlights of emacs' diff mode and Ediff suck terribly,
"        and thus we use something a-bit-better here :).
hi DiffAdd	guifg=fg	guibg=chartreuse	gui=NONE	ctermfg=fg	ctermbg=green	cterm=NONE
hi DiffDelete	guifg=fg	guibg=gold	gui=NONE	ctermfg=fg	ctermbg=yellow	cterm=NONE
hi DiffChange	guifg=fg	guibg=deepskyblue1	gui=NONE	ctermfg=fg	ctermbg=blue	cterm=NONE
hi DiffText	guifg=fg	guibg=cyan1	gui=NONE	ctermfg=fg	ctermbg=cyan	cterm=NONE

"}}}1
" Default Syntax Highlight {{{1
"~~~~~~~~~~~~~~~~~~~~~~~~~~
hi Comment	guifg=firebrick	guibg=bg	gui=NONE	ctermfg=darkred	ctermbg=bg	cterm=NONE

" EMACS: doc comments have the same color as strings.
hi String	guifg=rosybrown	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
hi link Character	String
hi link SpecialComment	String

" EMACS: labels have the same color as constants.
hi Constant	guifg=cadetblue	guibg=bg	gui=NONE	ctermfg=darkcyan	ctermbg=bg	cterm=NONE
hi link Number	Constant
hi link Float	Constant
hi link Boolean	Constant
hi link Label	Constant

" EMACS: identifier includes variable names.
hi Identifier	guifg=darkgoldenrod	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi Function	guifg=blue	guibg=bg	gui=NONE	ctermfg=blue	ctermbg=bg	cterm=NONE

" EMACS: keywords also include structures and typedefs.
hi Statement	guifg=purple	guibg=bg	gui=NONE	ctermfg=darkmagenta	ctermbg=bg	cterm=NONE
hi link Conditional	Statement
hi link Repeat	Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Structure	Statement
hi link Typedef	Statement

" EMACS: defines/includes/etc. are called builtins.
hi PreProc	guifg=orchid	guibg=bg	gui=NONE	ctermfg=magenta	ctermbg=bg	cterm=NONE
hi link Include	PreProc
hi link Define	PreProc
hi link Macro	PreProc
hi link PreCondit	PreProc

" EMACS: only type and classes share these.
hi Type	guifg=forestgreen	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi link StorageClass	Type


" EMACS: doesn't have these highlights, and thus we use the highlights of:
"        vhdl-speedbar-entity-face,
"                speedbar-tag-face, and
"                  sh-heredoc-face  respectively.
hi Special	guifg=forestgreen	guibg=bg	gui=NONE	ctermfg=darkgreen	ctermbg=bg	cterm=NONE
hi Tag	guifg=brown	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi Debug	guifg=tan	guibg=bg	gui=NONE	ctermfg=brown	ctermbg=bg	cterm=NONE
hi link SpecialChar	Tag
hi link Delimiter	Special

" EMACS: errors are called warning there.
hi Error	guifg=red	guibg=bg	gui=underline	ctermfg=bg	ctermbg=red	cterm=NONE
hi Underlined	guifg=fg	guibg=bg	gui=underline	ctermfg=fg	ctermbg=bg	cterm=underline

" EMACS: doesn't have highlight for these groups.
"        The highlight for TODO is a mix of:  comment-fg  +  tooltip-bg.
hi Ignore	guifg=bg	guibg=bg	gui=NONE	ctermfg=bg	ctermbg=bg	cterm=NONE
hi Todo	guifg=firebrick	guibg=lightyellow	gui=NONE	ctermfg=darkred	ctermbg=yellow	cterm=NONE


" Options {{{1
"~~~~~~~~~
" font style {{{2
if has("gui_running") && 0 < s:mimic_font_style

  " Function:  s:MultiHi {{{3
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
  endfunction "}}}3

  " set the bold only options, including the bold & italics groups.
  if 1 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,underline","StatusLine","WildMenu")
    call s:MultiHi("gui=bold","MoreMsg","ModeMsg","Title","PMenuSel","Constant","Statement","Identifier","Function","Type","PreProc","Special","SpecialChar","Todo")
  endif

  " set the italic only options
  if 2 == s:mimic_font_style || 3 <= s:mimic_font_style
    call s:MultiHi("gui=italic","Question","MoreMsg","Folded","StatusLineNC","Comment","SpecialComment","Identifier","Function")
  endif

  " set the bold & italic options
  if 3 <= s:mimic_font_style
    call s:MultiHi("gui=bold,italic","MoreMsg","Title","Identifier","Function","Todo")
  endif

  " cleanup
  delfunction s:MultiHi
endif

" colors for GUI elements {{{2
if 0 <  s:mimic_colorize_gui

  " will be set for everyone else but Windows:
  " Athena, Motif, Mac, Photon or GTK GUI.
  if has("gui_running") && !(has("gui_win32") || has("gui_win32s"))
    " EMACS: has different colors for Menu and Tool Bar, but in Vim
    "        they are shared, and thus we only use the Tool Bar colors.
    hi Menu	guifg=black	guibg=grey75
    hi Scrollbar	guifg=black	guibg=grey75
    hi Tooltip	guifg=black	guibg=lightyellow
  endif

endif
"}}}1
" Cleanup {{{1
"~~~~~~~~~
unlet s:mimic_font_style s:mimic_colorize_gui

" vim:noet:sw=24:ts=24:tw=0:nowrap:
" vim600:fdc=2:fdm=marker:
