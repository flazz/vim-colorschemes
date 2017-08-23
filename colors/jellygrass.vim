" Vim color file
"
" File:         jellygrass.vim
" URL:          github.com/chr4/jellygrass.vim
" Maintainer:   Chris Aumann
" Version:      1.7
" Last Change:  April 18th, 2017
" License:      MIT
" Contributors: Andrew Wong (w0ng)
"               Brian Marshall (bmars)
"               Daniel Herbert (pocketninja)
"               David Liang <bmdavll at gmail dot com>
"               Henry So, Jr. <henryso@panix.com>
"               Joe Doherty (docapotamus)
"               Karl Litterfeldt (Litterfeldt)
"               Keith Pitt (keithpitt)
"               Philipp Rustemeier (12foo)
"               Rafael Bicalho (rbika)
"               Rich Healey (richo)
"               Siwen Yu (yusiwen)
"               Tim Willis (willist)
"
" Copyright (c) 2017 Chris Aumann
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation  files  (the “Software”), to deal in the Soft‐
" ware without restriction,  including  without  limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software,  and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice  and  this  permission  notice
" shall  be  included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND,  EXPRESS  OR  IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR  PURPOSE  AND  NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE  LIABLE  FOR  ANY  CLAIM,
" DAMAGES  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "jellygrass"

" Use shell background
let s:background_color = "NONE"

let s:black = 16
let s:grey = 237
let s:light_grey = 241
let s:dark_grey = 233
let s:white = 244
let s:light_white = 255
let s:light_red = 1
let s:red = 9
let s:dark_red = 88
let s:green = 64
let s:light_green = 108
let s:blue = 67          " My shellrc uses 31
let s:cyan = 73
let s:light_blue = 110
let s:yellow = 185
let s:purple = 98        " Unused
let s:light_orange = 214 " Unused
let s:orange = 130       " Unused

" Returns the palette index
fun! s:is_empty_or_none(color)
  if empty(a:color) || a:color ==? "NONE"
    return "NONE"
  endif

  return a:color
endfun

" Sets the highlighting for the given group
fun! s:X(group, fg, bg, attr)
  exec "hi ".a:group. " ctermfg=".s:is_empty_or_none(a:fg). " ctermbg=".s:is_empty_or_none(a:bg). " cterm=".s:is_empty_or_none(a:attr)
endfun
" }}}

call s:X("Normal",188,s:background_color,"")

" Auto-completion
call s:X("Pmenu",s:white,240,"")
call s:X("PmenuSel",232,255,"")

" General highlighting
call s:X("CursorLine","",234,"")
call s:X("CursorColumn","",234,"")
call s:X("MatchParen",s:light_white,s:green,"bold")
call s:X("TabLine",s:black,145,"")
call s:X("TabLineFill",103,"","")
call s:X("TabLineSel",s:black,255,"")
call s:X("Visual","",s:light_grey,"")
call s:X("Cursor",s:background_color,153,"")
call s:X("LineNr",s:dark_grey,s:background_color,"")
call s:X("CursorLineNr",188,"","")
call s:X("Comment",244,"","")
call s:X("Todo",251,"","bold")
call s:X("StatusLine",s:black,253,"")
call s:X("StatusLineNC",s:white,16,"")
call s:X("VertSplit",243,16,"")
call s:X("WildMenu",217,16,"")
call s:X("Folded",145,16,"")
call s:X("FoldColumn",59,234,"")
call s:X("SignColumn",243,236,"")
call s:X("ColorColumn","",s:black,"")
call s:X("Title",s:green,"","bold")
call s:X("Constant",s:red,"","")
call s:X("Special",s:green,"","")
call s:X("Delimiter",s:grey,"","")
call s:X("String",s:yellow,"","")
call s:X("StringDelimiter",s:yellow,"","")
call s:X("Identifier",s:light_green,"","")
call s:X("Structure",s:light_green,"","")
call s:X("Function",s:light_green,"","")
call s:X("Statement",s:green,"","")
call s:X("PreProc",s:light_blue,"","")
hi! link Operator Structure
hi! link Conceal Operator
call s:X("Type",s:blue,"","")
call s:X("NonText",240,s:background_color,"")
call s:X("SpecialKey",238,234,"")
call s:X("Search",217,16,"underline")
call s:X("Directory",s:yellow,"","")
call s:X("ErrorMsg","",s:dark_red,"")
hi! link Error ErrorMsg
hi! link MoreMsg Special
call s:X("Question",s:cyan,"","")

" Spell Checking
call s:X("SpellBad","",s:dark_red,"underline")
call s:X("SpellRare","",s:dark_red,"underline")
call s:X("SpellCap","",s:light_green,"underline")
call s:X("SpellLocal","",s:green,"underline")

" Diff
hi! link diffRemoved Constant
hi! link diffAdded String

" VimDiff
call s:X("DiffAdd",193,22,"")
call s:X("DiffDelete",16,52,"")
call s:X("DiffChange","",24,"")
call s:X("DiffText",110,s:black,"reverse")

" PHP
hi! link phpFunctions Function
call s:X("StorageClass",179,"","")
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator
hi! link phpOperator Normal
hi! link phpRelation Normal
hi! link phpVarSelector Identifier

" Python
hi! link pythonOperator Statement

" Ruby
hi! link rubySharpBang Comment
call s:X("rubyClass",30,"","")
call s:X("rubyIdentifier",183,"","")
hi! link rubyConstant Type
hi! link rubyFunction Function
call s:X("rubyInstanceVariable",183,"","")
call s:X("rubySymbol",108,"","")
hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule rubyClass
call s:X("rubyControl",64,"","")
hi! link rubyString String
hi! link rubyStringDelimiter StringDelimiter
hi! link rubyInterpolationDelimiter Identifier
call s:X("rubyRegexpDelimiter",53,"","")
call s:X("rubyRegexp",162,"","")
call s:X("rubyRegexpSpecial",126,"","")
call s:X("rubyPredefinedIdentifier",168,"","")

" Erlang
hi! link erlangAtom rubySymbol
hi! link erlangBIF rubyPredefinedIdentifier
hi! link erlangFunction rubyPredefinedIdentifier
hi! link erlangDirective Statement
hi! link erlangNode Identifier

" Elixir
hi! link elixirAtom rubySymbol

" JavaScript
hi! link javaScriptValue Constant
hi! link javaScriptRegexpString rubyRegexp
hi! link javaScriptTemplateVar StringDelim
hi! link javaScriptTemplateDelim Identifier
hi! link javaScriptTemplateString String

" CoffeeScript
hi! link coffeeRegExp javaScriptRegexpString

" Lua
hi! link luaOperator Conditional

" C
hi! link cFormat Identifier
hi! link cOperator Constant

" Objective-C/Cocoa
hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link objcStatement Constant
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier

" Vimscript
hi! link vimOper Normal

" HTML
hi! link htmlTag Statement
hi! link htmlEndTag htmlTag
hi! link htmlTagName htmlTag

" XML
hi! link xmlTag Statement
hi! link xmlEndTag xmlTag
hi! link xmlTagName xmlTag
hi! link xmlEqual xmlTag
hi! link xmlEntity Special
hi! link xmlEntityPunct xmlEntity
hi! link xmlDocTypeDecl PreProc
hi! link xmlDocTypeKeyword PreProc
hi! link xmlProcessingDelim xmlAttrib

" Markdown
call s:X("markdownURL",s:yellow,"","")
call s:X("htmlLink",s:light_orange,"","underline")

" Debugger.vim
call s:X("DbgCurrent",195,25,"")
call s:X("DbgBreakPt","",52,"")

" vim-indent-guides
if !exists("g:indent_guides_auto_colors")
  let g:indent_guides_auto_colors = 0
endif
call s:X("IndentGuidesOdd","",234,"")
call s:X("IndentGuidesEven","",233,"")

" Plugins, etc.
hi! link TagListFileName Directory
call s:X("PreciseJumpTarget",155,22,"")

" delete functions {{{
delf s:X
delf s:is_empty_or_none
" }}}
