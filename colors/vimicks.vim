" Set name
let g:colors_name="Vimicks"

" Reset highlight to defaults {{{
set background=dark

highlight clear

if exists("sytax_on")
  syntax reset
endif
" }}}

" MyHighlight(group, ctermfg, ctermbg, cterm) {{{
function! MyHighlight(group, fg, bg, extra)
  let fg_tmp    = a:fg    >= 0 ? a:fg    : "NONE"
  let bg_tmp    = a:bg    >= 0 ? a:bg    : "NONE"
  let extra_tmp = a:extra >= 0 ? a:extra : "NONE"

  execute "highlight" a:group "ctermfg=" . fg_tmp "ctermbg=" . bg_tmp "cterm=" . extra_tmp
endfunction
" }}}

" MyLink(group, target) {{{
function! MyLink(group, target)
  execute "highlight link" a:group a:target
endfunction
" }}}

" Basic
call MyHighlight("Normal"      ,  -1, 235,  -1)

" Comments
call MyHighlight("Comment"     , 243,  -1,  -1)

" Folding
call MyHighlight("Folded"      , 243, 237,  -1)
call MyHighlight("FoldColumn"  , 243, 237,  -1)

" Constants
call MyHighlight("Constant"    , 214,  -1,  -1)
call MyHighlight("String"      , 220,  -1,  -1)
call MyHighlight("Character"   , 171,  -1,  -1)
call MyHighlight("Number"      , 214,  -1,  -1)
call MyHighlight("Boolean"     , 149,  -1,  -1)
call MyHighlight("Float"       , 227,  -1,  -1)

" Keywords
call MyHighlight("Type"        ,  67,  -1,  -1)
call MyHighlight("StorageClass",  71,  -1,  -1)

call MyHighlight("Identifier"  ,  69,  -1,  -1)
call MyHighlight("Function"    , 117,  -1,  -1)

call MyHighlight("Statement"   , 149,  -1,  "BOLD")
call MyHighlight("Conditional" , 110,  -1,  "BOLD")
call MyHighlight("Repeat"      , 110,  -1,  "BOLD")

" Cursor-Surrounding
call MyHighlight("CursorLine"  ,  -1,  236,  -1)
call MyHighlight("CursorColumn",  -1,  237,  -1)

" Environment
call MyHighlight("Cursor"      , 231, 160,  "BOLD")
call MyLink("TermCursor"  , "Cursor")
call MyLink("TermCursorNC", "Cursor")

call MyHighlight("LineNr"      , 243, 237,  -1)
call MyHighlight("CursorLineNr", 148, 242,  -1)
call MyHighlight("Vertsplit"   , 148, 235,  -1)
call MyHighlight("MatchParen"  , 236, 148,  -1)

call MyHighlight("Visual"      , 254,  27,  -1)
call MyHighlight("VisualNOS"   , 254,  27,  -1)

" Miscellaneous
call MyHighlight("Todo", 227,  94, "BOLD")
call MyLink("EndOfBuffer", "Normal")
call MyHighlight("Title", 67,  -1,  -1)
call MyLink("htmlTagN", "htmlTagName")

call MyHighlight("PreProc", 67, -1, -1)
