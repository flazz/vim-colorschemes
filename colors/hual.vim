if has("gui_running")
  set background=light
else
  set background=dark
endif
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "hual"
hi Normal ctermbg=Black ctermfg=Gray guibg=White guifg=Black gui=none

" Vim >= 7.0 specific colors {{{1
if v:version >= 700
  " Cursor colors {{{2
  hi Cursor ctermbg=fg ctermfg=bg cterm=NONE guibg=DarkBlue guifg=bg gui=none
  hi CursorLine ctermbg=DarkGray cterm=NONE guibg=bg gui=underline
  hi CursorColumn ctermbg=DarkGray cterm=NONE guibg=bg gui=underline
  " only for Win32, IME status
  if has('multi_byte_ime')
    hi CursorIM guibg=#660066 guifg=NONE gui=none
  endif

  " Auto-completion Popup Menu colors {{{2
  hi Pmenu ctermbg=Gray ctermfg=bg cterm=NONE guibg=#ccff99 guifg=fg gui=none
  hi PmenuSel ctermbg=DarkRed ctermfg=White cterm=NONE guibg=#336600 guifg=bg gui=bold
  hi PmenuSbar ctermbg=DarkRed ctermfg=fg cterm=NONE guibg=#99cc66 guifg=fg gui=none
  hi PmenuThumb ctermbg=DarkGray ctermfg=DarkGray cterm=NONE guibg=#669933 guifg=bg gui=none

  " Tab colors {{{2
  if has("windows")
    hi TabLine ctermbg=Gray ctermfg=DarkBlue guibg=Gray75 guifg=#003399 gui=none
    hi TabLineFill ctermbg=Gray ctermfg=DarkBlue guibg=Gray75 guifg=#003399 gui=none
    hi TabLineSel ctermbg=DarkBlue ctermfg=fg guibg=#003399 guifg=bg gui=bold
  endif

  " Spell checking colors {{{2
  if has("spell")
    hi SpellBad ctermbg=White ctermfg=Red cterm=NONE guisp=Red gui=undercurl
    hi SpellCap ctermbg=White ctermfg=Blue cterm=NONE guisp=Blue gui=undercurl
    hi SpellLocal ctermbg=White ctermfg=DarkCyan cterm=NONE guisp=DarkCyan gui=undercurl
    hi SpellRare ctermbg=White ctermfg=Magenta cterm=NONE guisp=DarkMagenta gui=undercurl
  endif

endif "}}}1
" Messages and other texts' colors {{{1
hi WarningMsg ctermbg=bg ctermfg=Red cterm=NONE guibg=bg guifg=Red3 gui=none
hi ErrorMsg ctermbg=Red ctermfg=White cterm=NONE guibg=Red3 guifg=bg gui=none
hi ModeMsg ctermbg=bg ctermfg=fg cterm=NONE guibg=bg guifg=fg gui=none
hi MoreMsg ctermbg=bg ctermfg=Green cterm=NONE guibg=bg guifg=DarkGreen gui=none
hi Question ctermbg=bg ctermfg=White cterm=NONE guibg=bg guifg=Gray30 gui=italic
hi Directory ctermbg=bg ctermfg=Blue cterm=NONE guibg=bg guifg=Blue2 gui=none
hi Title ctermbg=bg ctermfg=Magenta cterm=NONE guibg=bg guifg=Blue gui=bold

" Diff colors {{{1
if has("diff")
  hi DiffAdd ctermbg=Green ctermfg=bg cterm=NONE guibg=#ccffcc gui=none
  hi DiffChange ctermbg=Blue ctermfg=fg cterm=NONE guibg=#ccccff gui=none
  hi DiffDelete ctermbg=Red ctermfg=bg cterm=NONE guibg=#ffcccc gui=none
  hi DiffText ctermbg=Cyan ctermfg=bg cterm=NONE guibg=#ccffff gui=none
endif

" Outline, Fold & Sign columns colors {{{1
hi LineNr ctermbg=bg ctermfg=DarkGray guibg=bg guifg=Gray60 gui=none
if has("folding")
  hi Folded ctermbg=bg ctermfg=DarkBlue cterm=NONE guibg=Gray95 guifg=Gray40 gui=none
  hi FoldColumn ctermbg=bg ctermfg=DarkBlue cterm=NONE guibg=Gray95 guifg=Gray40 gui=none
endif
if has("signs")
  hi SignColumn ctermbg=bg ctermfg=Yellow cterm=NONE guibg=Gray95 guifg=#0033ff gui=none
endif

" Search & Special characters' colors {{{1
if has("extra_search")
  hi Search ctermbg=Yellow ctermfg=bg cterm=NONE guibg=Yellow guifg=fg gui=none
  hi IncSearch ctermbg=Green ctermfg=bg cterm=NONE guibg=Green guifg=fg gui=none
endif
hi NonText ctermbg=bg ctermfg=DarkGray guibg=Gray95 guifg=DarkGray gui=none
hi SpecialKey ctermbg=bg ctermfg=Brown guibg=bg guifg=#993333 gui=none

" Window Bars, Status line & Visual mode colors {{{1
hi StatusLine ctermbg=DarkBlue ctermfg=fg cterm=NONE guibg=#003399 guifg=bg gui=none
if has("windows")
  hi StatusLineNC ctermbg=Gray ctermfg=DarkBlue cterm=NONE guibg=Gray75 guifg=#003399 gui=italic
endif
if has("vertsplit")
  hi VertSplit ctermbg=Gray ctermfg=DarkBlue cterm=NONE guibg=Gray75 guifg=#003399 gui=bold
endif

if has("wildmenu")
  hi WildMenu ctermbg=bg ctermfg=Blue guibg=bg guifg=#003399 gui=bold
endif

if has("visual")
  hi Visual ctermbg=DarkBlue ctermfg=fg cterm=NONE guibg=DarkBlue guifg=bg gui=none
  hi VisualNOS ctermbg=fg ctermfg=DarkBlue cterm=NONE guibg=DarkBlue guifg=bg gui=none
endif

" Syntax highlighting colors {{{1
hi Comment ctermbg=bg ctermfg=Green guibg=bg guifg=#008800 gui=none
hi link SpecialComment Comment

hi Character ctermbg=bg ctermfg=Green guibg=bg guifg=#008800 gui=none
hi String ctermbg=bg ctermfg=Green guibg=bg guifg=#008800 gui=none
hi Constant ctermbg=bg ctermfg=Yellow guibg=bg guifg=#ff6600 gui=none
hi link Number Constant
hi link Float Constant
hi link Boolean Constant

hi Identifier ctermbg=bg ctermfg=Magenta guibg=bg guifg=#990099 gui=none
hi link Function Identifier

hi Statement ctermbg=bg ctermfg=Blue guibg=bg guifg=#0000cc gui=none
hi link Conditional Statement
hi link Repeat Statement
hi link Operator Statement
hi link Keyword Statement
hi link Label Statement
hi link Exception Statement

hi Type ctermbg=bg ctermfg=Blue guibg=bg guifg=#0000cc gui=none
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

hi PreProc ctermbg=bg ctermfg=DarkYellow guibg=bg guifg=#666600 gui=none
hi PreCondit ctermbg=bg ctermfg=Yellow guibg=bg guifg=#999900 gui=none
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc

hi Special ctermbg=bg ctermfg=Cyan guibg=bg guifg=#3366cc gui=none
hi SpecialChar ctermbg=bg ctermfg=Cyan guibg=bg guifg=Blue gui=none
hi Tag ctermbg=bg ctermfg=Cyan guibg=bg guifg=#3366cc gui=none
hi Delimiter ctermbg=bg ctermfg=Cyan guibg=bg guifg=#3366cc gui=none
hi Debug ctermbg=bg ctermfg=DarkGray guibg=bg guifg=DarkGray gui=none

hi MatchParen ctermbg=White ctermfg=Black cterm=NONE guibg=DarkBlue guifg=bg gui=none
hi Error ctermbg=Red ctermfg=White cterm=NONE guibg=bg guifg=Red gui=none
hi Ignore ctermbg=bg ctermfg=bg cterm=NONE guibg=bg guifg=bg gui=none
hi Todo ctermbg=Green ctermfg=bg cterm=NONE guibg=DarkGreen guifg=bg gui=none
hi Underlined ctermbg=bg ctermfg=Cyan cterm=underline guibg=bg guifg=Blue2 gui=underline
"}}}1
"==========================================================================={{{1
" vim: set et sw=2 sts=2 ts=8 nowrap:
" vim600: set fdc=2 fdm=marker:
