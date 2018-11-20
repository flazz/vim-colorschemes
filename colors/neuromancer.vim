set background=dark

highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "neuromancer"
let s:colors = {
    \ "dark_blue": "#54C9FF",
    \ "turquoise": "#6AFFB7",
    \ "dark_purple": "#1B1C30",
    \ "light_purple": "#858EED",
    \ "dark_gray": "#7E7E7E",
    \ "orange": "#ED6352",
    \ "red": "#ff586b",
    \ "hot_pink": "#E9729F",
    \ "black": "#050809",
    \ "white": "#FFFFFF",
    \ "green": "#2CEAA3",
    \ "yellow": "#FFF94F",
\ }

function! Hi(name, guifg, guibg, gui)
    let l:cmd = "hi " . a:name . " guibg=" . a:guibg . " guifg=" . a:guifg . " gui=" . a:gui
    exe l:cmd
endfunc

call Hi("Normal", s:colors["white"], s:colors["dark_purple"], "NONE")
call Hi("ColorColumn", "NONE", s:colors["hot_pink"],"NONE")
call Hi("LineNr", s:colors["white"], "NONE", "NONE")
call Hi("CursorLineNr", s:colors["white"], "NONE", "NONE")
call Hi("Conditional", s:colors["light_purple"], "NONE", "NONE")
call Hi("Function", s:colors["hot_pink"], "NONE", "NONE")
call Hi("Constant", s:colors["hot_pink"], "NONE", "NONE")
call Hi("Statement", s:colors["dark_blue"], "NONE", "NONE")
call Hi("Comment", s:colors["dark_gray"], "NONE", "NONE")
call Hi("PreProc", s:colors["orange"], "NONE", "NONE")
call Hi("String", s:colors["yellow"], "NONE", "NONE")
call Hi("Number", s:colors["light_purple"], "NONE", "NONE")
call Hi("Float", s:colors["dark_purple"], "NONE", "NONE")
call Hi("Repeat", s:colors["red"], "NONE", "NONE")
call Hi("Operator", s:colors["red"], "NONE", "NONE")

""""""""""""""""""""""""""""""
"    SQL specific settings   "
"                            "
""""""""""""""""""""""""""""""
call Hi("sqlType", s:colors["yellow"], "NONE", "NONE")
call Hi("sqlKeyword", s:colors["light_purple"], "NONE", "NONE")

""""""""""""""""""""""""""""""
"   HTML specific settings   "
"                            "
""""""""""""""""""""""""""""""

call Hi("htmlTitle", s:colors["light_purple"], "NONE", "underline")
call Hi("htmlH1", s:colors["light_purple"], "NONE", "underline")
call Hi("htmlH2", s:colors["light_purple"], "NONE", "underline")
call Hi("htmlH3", s:colors["light_purple"], "NONE", "underline")
call Hi("htmlH4", s:colors["light_purple"], "NONE", "underline")
call Hi("htmlH5", s:colors["light_purple"], "NONE", "underline")
call Hi("htmlH6", s:colors["light_purple"], "NONE", "underline")

call Hi("htmlTag", s:colors["dark_blue"], "NONE", "NONE")
call Hi("htmlEndTag", s:colors["dark_blue"], "NONE", "NONE")
call Hi("htmlTagName", s:colors["dark_blue"], "NONE", "NONE")
call Hi("htmlArg", s:colors["hot_pink"], "NONE", "NONE")

""""""""""""""""""""""""""""""
"  Python specific settings  "
"                            "
""""""""""""""""""""""""""""""

" lighten up orange

call Hi("pythonImport", s:colors["hot_pink"], "NONE", "NONE")
call Hi("pythonRepeat", s:colors["light_purple"], "NONE", "NONE")
call Hi("pythonOperator", s:colors["light_purple"], "NONE", "NONE")
call Hi("pythonException", s:colors["light_purple"], "NONE", "NONE")
call Hi("pythonExClass", s:colors["orange"], "NONE", "NONE")
call Hi("pythonStrFormat", s:colors["dark_blue"], "NONE", "NONE")
call Hi("pythonStrFormatting", s:colors["dark_blue"], "NONE", "NONE")
call Hi("pythonConditional", s:colors["light_purple"], "NONE", "NONE")
call Hi("pythonBoolean", s:colors["hot_pink"], "NONE", "NONE")
call Hi("pythonBuilinObj", s:colors["green"], "NONE", "NONE")
call Hi("pythonRun", "#575758", "NONE", "NONE")

""""""""""""""""""""""""""""""
"   Vim specific settings    "
"                            "
""""""""""""""""""""""""""""""

call Hi("vimFunction", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimUserFunc", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimParenSep", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimHiLink", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimAutoEventList", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimAutoEvent", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimMapMod", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimMapModKey", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimHiGroup", s:colors["hot_pink"], "NONE", "NONE")
call Hi("vimGroup", s:colors["yellow"], "NONE", "NONE")
call Hi("vimHiGuiRgb", s:colors["yellow"], "NONE", "NONE")
call Hi("vimSynType", s:colors["yellow"], "NONE", "NONE")
call Hi("vimHiClear", s:colors["yellow"], "NONE", "NONE")
call Hi("vimNotation", s:colors["yellow"], "NONE", "NONE")
call Hi("vimBracket", s:colors["yellow"], "NONE", "NONE")
call Hi("vimOperParen", s:colors["white"], "NONE", "NONE")
call Hi("vimHiKeyList", s:colors["white"], "NONE", "NONE")
call Hi("vimHiGuiFgBg", s:colors["white"], "NONE", "NONE")
call Hi("vimHiGui", s:colors["white"], "NONE", "NONE")
call Hi("vimVar", s:colors["white"], "NONE", "NONE")
call Hi("vimOper", s:colors["white"], "NONE", "NONE")
call Hi("vimFuncVar", s:colors["light_purple"], "NONE", "NONE")
call Hi("vimOption", s:colors["light_purple"], "NONE", "NONE")
call Hi("vimHiCTerm", s:colors["light_purple"], "NONE", "NONE")
call Hi("vimHiCTermFgBg", s:colors["light_purple"], "NONE", "NONE")

""""""""""""""""""""""""""""""
" Markdown specific settings "
"                            "
""""""""""""""""""""""""""""""
call Hi("markdownH1", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownH2", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownH3", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownH4", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownH5", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownH6", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownHeadingDelimiter", s:colors["dark_blue"], "NONE", "NONE")
call Hi("mardownHeadingRule", "#575859", "NONE", "NONE")
call Hi("markdownBold", s:colors["yellow"], "NONE", "bold")
call Hi("markdownBoldDelimiter", s:colors["yellow"], "NONE", "bold")
call Hi("markdownLinkText", s:colors["light_purple"], "NONE", "NONE")
call Hi("markdownUrl", s:colors["dark_blue"], "NONE", "NONE")
call Hi("markdownId", s:colors["dark_blue"], "NONE", "NONE")
call Hi("markdownUrlTitle", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownUrlTitleDelimiter", s:colors["hot_pink"], "NONE", "NONE")
call Hi("markdownItalic", s:colors["green"], "NONE", "italic")
call Hi("markdownItalicDelimiter", s:colors["green"], "NONE", "italic")
call Hi("markdownCodeDelimiter", s:colors["turquoise"], "NONE", "italic")


""""""""""""""""""""""""""""""
" NERDTree specific settings "
"                            "
""""""""""""""""""""""""""""""
call Hi("NERDTreeOpenable", s:colors["hot_pink"], "NONE", "NONE")
call Hi("NERDTreeClosable", s:colors["hot_pink"], "NONE", "NONE")
call Hi("NERDTreeDirSlash", s:colors["hot_pink"], "NONE", "NONE")
call Hi("NERDTreeDir", s:colors["hot_pink"], "NONE", "NONE")
call Hi("NERDTreeCWD", s:colors["light_purple"], "NONE", "NONE")

""""""""""""""""""""""""""""""""
" Javascript specific settings "
"                              "
""""""""""""""""""""""""""""""""

call Hi("javascriptIdentifierName", s:colors["white"], "NONE", "NONE")
call Hi("javascript_asserter", s:colors["red"], "NONE", "NONE")
call Hi("javascriptVariable", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptTry", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptExceptions", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptImport", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptExport", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptOperator", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptBOMWindowProp", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptBOMWindowMethod", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptNodeGlobal", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptFuncArg", s:colors["yellow"], "NONE", "NONE")
call Hi("javascriptNumber", s:colors["turquoise"], "NONE", "NONE")
call Hi("javascriptObjectLabel", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptConditial", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptBoolean", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptLogicSymbols", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptNull", s:colors["orange"], "NONE", "NONE")
call Hi("javascriptOpSymbol", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptOpSymbols", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptIdentifier", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptFuncKeyword", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptFuncArg", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptRepeat", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptForOperator", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptFuncComma", s:colors["white"], "NONE", "NONE")
call Hi("javascriptHtmlEvents", s:colors["yellow"], "NONE", "NONE")
call Hi("javascriptPrototype", s:colors["yellow"], "NONE", "NONE")
call Hi("javascriptFuncExp", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptReserved", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptAjaxProperties", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptOperator", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptGlobalMethod", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptIdentifier", s:colors["light_purple"], "NONE", "NONE")
call Hi("javascriptMessage", s:colors["white"], "NONE", "NONE")
call Hi("javascriptDOMObjects", s:colors["white"], "NONE", "NONE")
call Hi("javascriptGlobalObjects", s:colors["white"], "NONE", "NONE")
call Hi("javascriptWebAPI", s:colors["white"], "NONE", "NONE")
call Hi("javascriptDOMDocMethod", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptQDimensions", s:colors["yellow"], "NONE", "NONE")
call Hi("javascriptQEvents", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptTemplateSubstitution", s:colors["dark_blue"], "NONE", "NONE")
call Hi("javascriptGlobal", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptEventListenerKeywords", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptAjaxMethods", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptDOMMethods", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptOpSymbols", s:colors["hot_pink"], "NONE", "NONE")
call Hi("javascriptParens", "NONE", "NONE", "NONE")
call Hi("javascriptBraces", "NONE", "NONE", "NONE")
call Hi("javascriptFuncEq", "NONE", "NONE", "NONE")
call Hi("javascriptEndColons", "NONE", "NONE", "NONE")

""""""""""""""""""""""""""""""""
"   Sass specific settings     "
"                              "
""""""""""""""""""""""""""""""""

"""sass settings"""

call Hi("sassInclude", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassMediaQuery", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassClass", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassFunctionDecl", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassControl", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassDebug", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassWarn", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassReturn", s:colors["hot_pink"], "NONE", "NONE")
call Hi("sassProperty", s:colors["light_purple"], "NONE", "NONE")
call Hi("sassCssAttribute", s:colors["dark_blue"], "NONE", "NONE")
call Hi("sassMixinName", s:colors["green"], "NONE", "NONE")
call Hi("sassAmpersand", s:colors["green"], "NONE", "NONE")
call Hi("sassMedia", s:colors["yellow"], "NONE", "NONE")
call Hi("sassPlaceholder", s:colors["yellow"], "NONE", "NONE")
call Hi("sassVariable", s:colors["dark_blue"], "NONE", "NONE")
call Hi("sassMixin", s:colors["light_purple"], "NONE", "NONE")
call Hi("sassMixing", s:colors["white"], "NONE", "NONE")
call Hi("sassClassChar", s:colors["white"], "NONE", "NONE")
call Hi("sassIdChar", s:colors["white"], "NONE", "NONE")
call Hi("sassId", s:colors["dark_blue"], "NONE", "NONE")

"""css settings"""

call Hi("cssFunctionName", s:colors["hot_pink"], "NONE", "NONE")
call Hi("cssSelectorOp", s:colors["hot_pink"], "NONE", "NONE")
call Hi("cssFontAttr", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssStringQ", s:colors["white"], "NONE", "NONE")
call Hi("cssStringQQ", s:colors["yellow"], "NONE", "NONE")
call Hi("cssColor", s:colors["yellow"], "NONE", "NONE")
call Hi("cssUnitDecorator", s:colors["yellow"], "NONE", "NONE")
call Hi("cssTagName", s:colors["yellow"], "NONE", "NONE")
call Hi("cssAttrComma", s:colors["white"], "NONE", "NONE")
call Hi("cssTextProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssBoxProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssIEUIProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssUIProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssPositioningProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssBackgroundProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssPageProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssListProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssFontProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssMultiColumnProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssAuralProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssAnimationProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssTableProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssDimensionProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssBorderProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssTransformProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssTransitionProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssMediaProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssFlexibleBoxProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssColorProp", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssPseudoClassId", s:colors["green"], "NONE", "NONE")
call Hi("cssTextAttr", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssMultiColumnAttr", s:colors["light_purple"], "NONE", "NONE")
call Hi("cssValueLength", s:colors["dark_blue"], "NONE", "NONE")
call Hi("cssValueNumber", s:colors["dark_blue"], "NONE", "NONE")


