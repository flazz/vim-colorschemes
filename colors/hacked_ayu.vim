" Initialisation:"{{{
" ----------------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let s:style = &background
let g:colors_name = "hacked_ayu"
"}}}

" Palettes:"{{{
" ----------------------------------------------------------------------------

let s:palette = {}

let s:palette.white      = { 'dark' : "#FFFFFF",      'light' : "#FFFFFF" }
" let s:palette.background = { 'dark' : "#1F2429",      'light' : "#FAFAFA" }
let s:palette.background = { 'dark' : "#1F2429",      'light' : "#d9cfca" }
let s:palette.foreground = { 'dark' : "#E6E1CF",      'light' : "#5C6773" }
let s:palette.line       = { 'dark' : "#151A1F",      'light' : "#e6dbd5" } " Line bg
let s:palette.line_nr    = { 'dark' : "#4D4640",      'light' : "#ABB0B6" } " Line numbers
let s:palette.selection  = { 'dark' : "#253340",      'light' : "#F0EEE4" }
let s:palette.guide      = { 'dark' : "#1A2633",      'light' : "#DEDDDC" }

let s:palette.ui_accent  = { 'dark' : "#F29718",      'light' : "#FF6A00" }
let s:palette.ui_gray    = { 'dark' : "#3E4B59",      'light' : "#828C99" }
let s:palette.status     = { 'dark' : "#36A3D9",      'light' : "#86B300" }
let s:palette.status_nc  = { 'dark' : "#225B79",      'light' : "#D4E6A1" }

let s:palette.string     = { 'dark' : "#E7C96E",      'light' : "#86B300" }
let s:palette.keyword    = { 'dark' : "#FF794C",      'light' : "#F2590C" }
let s:palette.comment    = { 'dark' : "#3C6773",      'light' : "#ABB0B6" }
let s:palette.constant   = { 'dark' : "#FFEE99",      'light' : "#A37ACC" }
let s:palette.tag        = { 'dark' : "#58E2A2",      'light' : "#41A6D9" }
let s:palette.es_spec    = { 'dark' : "#E6B673",      'light' : "#CCA37A" }

let s:palette.window     = { 'dark' : "#303030",      'light' : "#9e9e9e" }
let s:palette.darkcolumn = { 'dark' : "#1c1c1c",      'light' : "#808080" }
let s:palette.addbg      = { 'dark' : "#5F875F",      'light' : "#d7ffd7" }
let s:palette.changebg   = { 'dark' : "#5F5F87",      'light' : "#d7d7ff" }
let s:palette.changefg   = { 'dark' : "#d7d7ff",      'light' : "#5f005f" }
let s:palette.delbg      = { 'dark' : "#cc6666",      'light' : "#ffd7d7" }

let s:palette.blue       = { 'dark' : "#2B9FD9",      'light' : "#00005f" }
let s:palette.gray       = { 'dark' : "#525C66",      'light' : "#5f5f5f" }
let s:palette.darkred    = { 'dark' : "#5f0000",      'light' : "#d7d7ff" }
let s:palette.red        = { 'dark' : "#FF3333",      'light' : "#FF3333" }
let s:palette.yellow     = { 'dark' : "#E7C547",      'light' : "#F29718" }
let s:palette.darkaqua   = { 'dark' : "#005f5f",      'light' : "#005f00" }
let s:palette.darkblue   = { 'dark' : "#00005f",      'light' : "#d7ffd7" }
let s:palette.darkpurple = { 'dark' : "#5f005f",      'light' : "#5f005f" }

"}}}

" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------

function! s:build_prim(hi_elem, field)
  let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_gray
  let l:gui_assign = "gui".a:hi_elem."=".s:palette[a:field][s:style] " guibg=...
  exe "let " . l:vname . " = ' " . l:gui_assign . "'"
endfunction

let s:bg_none = ' guibg=NONE ctermbg=NONE'
let s:fg_none = ' guifg=NONE ctermfg=NONE'
for [key_name, d_value] in items(s:palette)
  call s:build_prim('bg', key_name)
  call s:build_prim('fg', key_name)
endfor
" }}}

" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"
"}}}


" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! Normal"        .s:fg_foreground  .s:bg_background  .s:fmt_none
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
" Conceal, Cursor, CursorIM
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none

" get rid of dark cursorline color
" highlight CursorLine guibg=#858a8f

exe "hi! CursorLineNr"  .s:fg_keyword     .s:bg_line        .s:fmt_none
exe "hi! LineNr"        .s:fg_line_nr     .s:bg_none        .s:fmt_none


exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_string      .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_background  .s:bg_delbg       .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_ui_gray     .s:bg_white       .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
"   Incsearch"

exe "hi! MatchParen"    .s:fg_background  .s:bg_changebg    .s:fmt_none
exe "hi! ModeMsg"       .s:fg_string      .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_string      .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_background  .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
"   PmenuSbar"
"   PmenuThumb"
exe "hi! Question"      .s:fg_string      .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_background  .s:bg_yellow      .s:fmt_none
exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! SpellCap"      .s:fg_blue        .s:bg_darkblue    .s:fmt_undr
exe "hi! SpellLocal"    .s:fg_es_spec     .s:bg_darkaqua    .s:fmt_undr
exe "hi! SpellBad"      .s:fg_red         .s:bg_darkred     .s:fmt_undr
exe "hi! SpellRare"     .s:fg_tag         .s:bg_darkpurple  .s:fmt_undr
exe "hi! StatusLine"    .s:fg_status      .s:bg_white       .s:fmt_revr
exe "hi! StatusLineNC"  .s:fg_status_nc   .s:bg_foreground  .s:fmt_revr
exe "hi! TabLine"       .s:fg_foreground  .s:bg_darkcolumn  .s:fmt_revr
"   TabLineFill"
"   TabLineSel"
exe "hi! Title"         .s:fg_keyword     .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
"   VisualNos"
exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
" FIXME LongLineWarning to use variables instead of hardcoding
hi LongLineWarning  guifg=NONE        guibg=#371F1C     gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
"   WildMenu"

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment   .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_constant  .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_string    .s:bg_none        .s:fmt_none
"   Character"
"   Number"
"   Boolean"
"   Float"

exe "hi! Identifier"      .s:fg_tag       .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_keyword   .s:bg_none        .s:fmt_none

exe "hi! Statement"       .s:fg_keyword   .s:bg_none        .s:fmt_none
"   Conditional"
"   Repeat"
"   Label"
exe "hi! Operator"        .s:fg_es_spec   .s:bg_none        .s:fmt_none
"   Keyword"
"   Exception"

exe "hi! PreProc"         .s:fg_es_spec   .s:bg_none        .s:fmt_none
"   Include"
"   Define"
"   Macro"
"   PreCondit"

exe "hi! Type"            .s:fg_tag       .s:bg_none        .s:fmt_none
"   StorageClass"
exe "hi! Structure"       .s:fg_es_spec   .s:bg_none        .s:fmt_none
"   Typedef"

exe "hi! Special"         .s:fg_tag       .s:bg_none        .s:fmt_none
"   SpecialChar"
"   Tag"
"   Delimiter"
"   SpecialComment"
"   Debug"
"
exe "hi! Underlined"      .s:fg_blue      .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none      .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_red       .s:bg_darkred     .s:fmt_undr

exe "hi! Todo"            .s:fg_string    .s:bg_none        .s:fmt_none

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_keyword   .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

exe "hi! Conceal"         .s:fg_guide     .s:bg_none        .s:fmt_none
exe "hi! CursorLineConceal" .s:fg_guide   .s:bg_line        .s:fmt_none







" NerdTree
" " --------
"
exe "hi! NERDTreeOpenable"          .s:fg_ui_gray     .s:bg_none        .s:fmt_none
exe "hi! NERDTreeClosable"          .s:fg_ui_accent   .s:bg_none        .s:fmt_none
" exe "hi! NERDTreeBookmarksHeader"   .s:fg_pink        .s:bg_none        .s:fmt_none
" exe "hi! NERDTreeBookmarksLeader"   .s:fg_background  .s:bg_none        .s:fmt_none
" exe "hi! NERDTreeBookmarkName"      .s:fg_keyword     .s:bg_none        .s:fmt_none
" exe "hi! NERDTreeCWD"               .s:fg_pink        .s:bg_none        .s:fmt_none
exe "hi! NERDTreeUp"                .s:fg_ui_gray    .s:bg_none        .s:fmt_none
exe "hi! NERDTreeDir"               .s:fg_ui_gray    .s:bg_none        .s:fmt_none
exe "hi! NERDTreeFile"              .s:fg_ui_gray    .s:bg_none        .s:fmt_none
exe "hi! NERDTreeDirSlash"          .s:fg_line_nr    .s:bg_none        .s:fmt_none
"}}}
" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"   diffOldFile
"   diffNewFile
"   diffFile
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
hi! link diffRemoved Constant
"   diffChanged
hi! link diffAdded String
"   diffLine
"   diffSubname
"   diffComment

"}}}
"
" This is needed for some reason: {{{

let &background = s:style

" }}}
