" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" title      Nord Vim                                    +
" project    nord-vim                                    +
" repository https://github.com/arcticicestudio/nord-vim +
" author     Arctic Ice Studio                           +
" email      development@arcticicestudio.com             +
" copyright  Copyright (C) 2017                          +
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "nord"
let s:nord_vim_version="0.6.0"
set background=dark

let s:nord0_gui = "#2E3440"
let s:nord1_gui = "#3B4252"
let s:nord2_gui = "#434C5E"
let s:nord3_gui = "#4C566A"
let s:nord4_gui = "#D8DEE9"
let s:nord5_gui = "#E5E9F0"
let s:nord6_gui = "#ECEFF4"
let s:nord7_gui = "#8FBCBB"
let s:nord8_gui = "#88C0D0"
let s:nord9_gui = "#81A1C1"
let s:nord10_gui = "#5E81AC"
let s:nord11_gui = "#BF616A"
let s:nord12_gui = "#D08770"
let s:nord13_gui = "#EBCB8B"
let s:nord14_gui = "#A3BE8C"
let s:nord15_gui = "#B48EAD"

let s:nord1_term = "0"
let s:nord3_term = "8"
let s:nord5_term = "7"
let s:nord6_term = "15"
let s:nord7_term = "14"
let s:nord8_term = "6"
let s:nord9_term = "4"
let s:nord10_term = "12"
let s:nord11_term = "1"
let s:nord12_term = "11"
let s:nord13_term = "3"
let s:nord14_term = "2"
let s:nord15_term = "5"

if !exists('g:nord_italic_comments')
  let g:nord_italic_comments = 0
endif

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let l:attr = a:attr
  if g:nord_italic_comments == 0 && l:attr ==? 'italic'
    let l:attr= 'NONE'
  endif

  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", "bold", "")
call s:hi("Italic", "", "", "", "", "italic", "")
call s:hi("Underline", "", "", "", "", "underline", "")

"+--- Editor ---+
call s:hi("ColorColumn", "", s:nord1_gui, "NONE", s:nord1_term, "", "")
call s:hi("Cursor", s:nord0_gui, s:nord4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
call s:hi("iCursor", s:nord0_gui, s:nord4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:nord3_gui, s:nord0_gui, s:nord3_term, "NONE", "", "")
call s:hi("MatchParen", s:nord0_gui, s:nord8_gui, s:nord1_term, s:nord8_term, "", "")
call s:hi("NonText", s:nord2_gui, "", s:nord3_term, "", "", "")
call s:hi("Normal", s:nord4_gui, s:nord0_gui, "NONE", "NONE", "", "")
call s:hi("PMenu", s:nord4_gui, s:nord2_gui, "NONE", s:nord1_term, "NONE", "")
call s:hi("PmenuSbar", s:nord4_gui, s:nord2_gui, "NONE", s:nord1_term, "", "")
call s:hi("PMenuSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "", "")
call s:hi("PmenuThumb", s:nord8_gui, s:nord3_gui, "NONE", s:nord3_term, "", "")
call s:hi("SpecialKey", s:nord3_gui, "", s:nord3_term, "", "", "")
call s:hi("SpellBad", "", s:nord0_gui, "", "NONE", "undercurl", s:nord11_gui)
call s:hi("SpellCap", "", s:nord0_gui, "", "NONE", "undercurl", s:nord13_gui)
call s:hi("SpellLocal", "", s:nord0_gui, "", "NONE", "undercurl", s:nord5_gui)
call s:hi("SpellRare", "", s:nord0_gui, "", "NONE", "undercurl", s:nord6_gui)
call s:hi("Visual", "", s:nord2_gui, "", s:nord1_term, "", "")
call s:hi("VisualNOS", "", s:nord2_gui, "", s:nord1_term, "", "")
"+- Neovim Support -+
call s:hi("healthError", s:nord11_gui, s:nord1_gui, s:nord11_term, s:nord1_term, "", "")
call s:hi("healthSuccess", s:nord14_gui, s:nord1_gui, s:nord14_term, s:nord1_term, "", "")
call s:hi("healthWarning", s:nord13_gui, s:nord1_gui, s:nord13_term, s:nord1_term, "", "")

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:nord1_gui, "NONE", s:nord1_term, "", "")
call s:hi("CursorLineNr", s:nord3_gui, s:nord0_gui, "NONE", "", "", "")
call s:hi("Folded", s:nord3_gui, s:nord1_gui, s:nord3_term, s:nord1_term, "bold", "")
call s:hi("FoldColumn", s:nord3_gui, s:nord0_gui, s:nord3_term, "NONE", "", "")
call s:hi("SignColumn", s:nord1_gui, s:nord0_gui, s:nord1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:nord8_gui, "", s:nord8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:nord1_gui, "", s:nord1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:nord4_gui, s:nord11_gui, "NONE", s:nord11_term, "", "")
call s:hi("ModeMsg", s:nord4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:nord4_gui, "", "", "", "", "")
call s:hi("Question", s:nord4_gui, "", "NONE", "", "", "")
call s:hi("StatusLine", s:nord4_gui, s:nord0_gui, s:nord8_term, s:nord1_term, "NONE", "")
call s:hi("StatusLineNC", s:nord4_gui, s:nord0_gui, s:nord8_term, "NONE", "NONE", "")
call s:hi("WarningMsg", s:nord0_gui, s:nord13_gui, s:nord1_term, s:nord13_term, "", "")
call s:hi("WildMenu", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:nord1_gui, s:nord8_gui, s:nord1_term, s:nord8_term, "underline", "")
call s:hi("Search", s:nord1_gui, s:nord8_gui, s:nord1_term, s:nord8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
call s:hi("TabLineFill", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
call s:hi("TabLineSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:nord4_gui, "", "NONE", "", "NONE", "")
call s:hi("VertSplit", s:nord2_gui, s:nord1_gui, s:nord3_term, s:nord1_term, "NONE", "")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Character", s:nord14_gui, "", s:nord14_term, "", "", "")
call s:hi("Comment", s:nord3_gui, "", s:nord3_term, "", "italic", "")
call s:hi("Conditional", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Constant", s:nord4_gui, "", "NONE", "", "", "")
call s:hi("Define", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Delimiter", s:nord6_gui, "", s:nord6_term, "", "", "")
call s:hi("Exception", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Float", s:nord15_gui, "", s:nord15_term, "", "", "")
call s:hi("Function", s:nord8_gui, "", s:nord8_term, "", "", "")
call s:hi("Identifier", s:nord4_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Keyword", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Label", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Number", s:nord15_gui, "", s:nord15_term, "", "", "")
call s:hi("Operator", s:nord9_gui, "", s:nord9_term, "", "NONE", "")
call s:hi("PreProc", s:nord9_gui, "", s:nord9_term, "", "NONE", "")
call s:hi("Repeat", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Special", s:nord4_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:nord13_gui, "", s:nord13_term, "", "", "")
call s:hi("SpecialComment", s:nord8_gui, "", s:nord8_term, "", "italic", "")
call s:hi("Statement", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("StorageClass", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("String", s:nord14_gui, "", s:nord14_term, "", "", "")
call s:hi("Structure", s:nord9_gui, "", s:nord9_term, "", "", "")
call s:hi("Tag", s:nord4_gui, "", "", "", "", "")
call s:hi("Todo", s:nord13_gui, "", s:nord13_term, "NONE", "", "")
call s:hi("Type", s:nord9_gui, "", s:nord9_term, "", "NONE", "")
call s:hi("Typedef", s:nord9_gui, "", s:nord9_term, "", "", "")
hi! link Macro Define
hi! link PreCondit PreProc

"+-----------+
"+ Languages +
"+-----------+
call s:hi("awkCharClass", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("awkPatterns", s:nord9_gui, "", s:nord9_term, "", "bold", "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("cssDefinition", s:nord7_gui, "", s:nord7_term, "", "NONE", "")
call s:hi("cssIdentifier", s:nord7_gui, "", s:nord7_term, "", "underline", "")
call s:hi("cssStringQ", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:nord8_gui, "", s:nord8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("dtExecKey", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("dtLocaleKey", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("dtNumericKey", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("dtTypeKey", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

call s:hi("diffAdded", s:nord14_gui, "", s:nord14_term, "", "", "")
call s:hi("diffChanged", s:nord13_gui, "", s:nord13_term, "", "", "")
call s:hi("diffNewFile", s:nord8_gui, "", s:nord8_term, "", "", "")
call s:hi("diffOldFile", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("diffRemoved", s:nord11_gui, "", s:nord11_term, "", "", "")
call s:hi("DiffAdd", s:nord14_gui, "", s:nord14_term, "", "", "")
call s:hi("DiffChange", s:nord13_gui, "", s:nord13_term, "", "", "")
call s:hi("DiffDelete", s:nord11_gui, "", s:nord11_term, "", "", "")
call s:hi("DiffText", s:nord4_gui, "", "NONE", "", "", "")

call s:hi("gitconfigVariable", s:nord7_gui, "", s:nord7_term, "", "", "")

call s:hi("goBuiltins", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link goConstants Keyword

call s:hi("htmlArg", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("htmlLink", s:nord4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:nord7_gui, "", s:nord7_term, "", "", "")

call s:hi("lessClass", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("markdownCode", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("markdownFootnote", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("markdownId", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("markdownH1", s:nord8_gui, "", s:nord8_term, "", "", "")
call s:hi("markdownLinkText", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("markdownUrl", s:nord4_gui, "", "NONE", "", "NONE", "")
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:nord7_gui, "", s:nord7_term, "", "", "")

call s:hi("phpClasses", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("phpDocTags", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("podVerbatimLine", s:nord4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("rubySymbol", s:nord6_gui, "", s:nord6_term, "", "bold", "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("sassClass", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("sassId", s:nord7_gui, "", s:nord7_term, "", "underline", "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("vimMapRhs", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("vimNotation", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:nord7_gui, "", s:nord7_term, "", "", "")
call s:hi("xmlCdataStart", s:nord3_gui, "", s:nord3_term, "", "bold", "")
call s:hi("xmlNamespace", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:nord13_gui, "", s:nord13_term, "", "", "")
call s:hi("ALEErrorSign" , s:nord11_gui, "", s:nord11_term, "", "", "")

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:nord14_gui, "", s:nord14_term, "", "", "")
call s:hi("GitGutterChange", s:nord13_gui, "", s:nord13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:nord11_gui, "", s:nord11_term, "", "", "")
call s:hi("GitGutterDelete", s:nord11_gui, "", s:nord11_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:nord4_gui, s:nord3_gui, "", s:nord3_term, "", "")
call s:hi("jediFat", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "bold,underline", "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:nord7_gui, "", s:nord7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

"+--- Languages ---+
" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:nord8_gui, "", s:nord8_term, "", "italic", "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar
