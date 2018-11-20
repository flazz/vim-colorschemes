" File:       turtles.vim
" Maintainer: Kade Killary
" URL:        https://github.com/beigebrucewayne/Turtles
" License:    MIT

" Initialisation
" --------------

if !has("gui_running") && &t_Co < 256
  finish
endif

if ! exists("g:turtles_gui_italic")
    let g:turtles_gui_italic = 1
endif

if ! exists("g:turtles_term_italic")
    let g:turtles_term_italic = 0
endif

let g:turtles_termcolors = 256 " does not support 16 color term right now.

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "turtles"

function! s:h(group, style)
  let s:ctermformat = "NONE"
  let s:guiformat = "NONE"
  if has_key(a:style, "format")
    let s:ctermformat = a:style.format
    let s:guiformat = a:style.format
  endif
  if g:turtles_term_italic == 0
    let s:ctermformat = substitute(s:ctermformat, ",italic", "", "")
    let s:ctermformat = substitute(s:ctermformat, "italic,", "", "")
    let s:ctermformat = substitute(s:ctermformat, "italic", "", "")
  endif
  if g:turtles_gui_italic == 0
    let s:guiformat = substitute(s:guiformat, ",italic", "", "")
    let s:guiformat = substitute(s:guiformat, "italic,", "", "")
    let s:guiformat = substitute(s:guiformat, "italic", "", "")
  endif
  if g:turtles_termcolors == 16
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm16 : "NONE")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm16 : "NONE")
  else
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
  end
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")      ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")      ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")      ? a:style.sp.gui   : "NONE")
    \ "gui="     (!empty(s:guiformat) ? s:guiformat   : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (!empty(s:ctermformat) ? s:ctermformat   : "NONE")
endfunction

" Palettes
" --------


let s:donatello    = { "gui": "#7482BC", "cterm": "173" }
let s:michelangelo = { "gui": "#EC9F41", "cterm": "136"}
let s:tender_beige = { "gui": "#CFB98D", "cterm": "204"}
let s:tender_red  = { "gui": "#DE4954", "cterm": "169" }
let s:spacemacs_type = { "gui": "#BE5A79", "cterm": "145" }
let s:spacemacs_var = { "gui": "#6E8FD4", "cterm": "104" }
let s:seafoam     = { "gui": "#4F99A1", "cterm": "101" }
let s:white       = { "gui": "#B3B3B3", "cterm": "252" }
let s:black       = { "gui": "#191919", "cterm": "234" }
let s:lightblack  = { "gui": "#111111", "cterm": "235" }
let s:lightblack2 = { "gui": "#272727", "cterm": "236" }
let s:darkblack   = { "gui": "#211F1C", "cterm": "233" }
let s:grey        = { "gui": "#2f2f2f", "cterm": "243" }
let s:lightgrey   = { "gui": "#575b61", "cterm": "237" }
let s:darkgrey    = { "gui": "#292B2E", "cterm": "239" }
let s:warmgrey    = { "gui": "#5e5e5e", "cterm": "59" }

let s:pink        = { "gui": "#B071BF", "cterm": "197" }
let s:green       = { "gui": "#98D750", "cterm": "148" }
let s:aqua        = { "gui": "#5E90C7", "cterm": "81" }
let s:yellow      = { "gui": "#E6DB74", "cterm": "186" }
let s:orange      = { "gui": "#E1AD3D", "cterm": "208" }
let s:purple      = { "gui": "#BE5A79", "cterm": "141" }
let s:red         = { "gui": "#DD4641", "cterm": "196" }

let s:addfg       = { "gui": "#d7ffaf", "cterm": "193" }
let s:addbg       = { "gui": "#5f875f", "cterm": "65" }
let s:delbg       = { "gui": "#f75f5f", "cterm": "167" }
let s:changefg    = { "gui": "#d7d7ff", "cterm": "189" }
let s:changebg    = { "gui": "#5f5f87", "cterm": "60" }

" Highlighting 
" ------------

" editor
call s:h("Normal",        { "fg": s:white,      "bg": s:black })
call s:h("ColorColumn",   {                     "bg": s:lightblack })
call s:h("CursorColumn",  {                     "bg": s:lightblack2 })
call s:h("CursorLine",    {                     "bg": s:lightblack2 })
call s:h("NonText",       { "fg": s:lightgrey })
call s:h("StatusLine",    { "fg": s:warmgrey,   "bg": s:black,        "format": "reverse" })
call s:h("StatusLineNC",  { "fg": s:darkgrey,   "bg": s:warmgrey,     "format": "reverse" })
call s:h("TabLine",       { "fg": s:white,      "bg": s:darkblack,    "format": "reverse" })
call s:h("Visual",        {                     "bg": s:lightgrey })
call s:h("Search",        { "fg": s:black,      "bg": s:green })
call s:h("MatchParen",    { "fg": s:black,      "bg": s:purple })
call s:h("Question",      { "fg": s:yellow })
call s:h("ModeMsg",       { "fg": s:yellow })
call s:h("MoreMsg",       { "fg": s:yellow })
call s:h("ErrorMsg",      { "fg": s:black,      "bg": s:red,          "format": "standout" })
call s:h("WarningMsg",    { "fg": s:red })
call s:h("VertSplit",     { "fg": s:lightblack,      "bg": s:lightblack })
call s:h("LineNr",        { "fg": s:lightgrey,       "bg": s:lightblack })
call s:h("CursorLineNr",  { "fg": s:michelangelo,     "bg": s:lightblack })
call s:h("SignColumn",    {                     "bg": s:lightblack })

" misc
call s:h("SpecialKey",    { "fg": s:pink })
call s:h("Title",         { "fg": s:yellow })
call s:h("Directory",     { "fg": s:aqua })

" diff
call s:h("DiffAdd",       { "fg": s:addfg,      "bg": s:addbg })
call s:h("DiffDelete",    { "fg": s:black,      "bg": s:delbg })
call s:h("DiffChange",    { "fg": s:changefg,   "bg": s:changebg })
call s:h("DiffText",      { "fg": s:black,      "bg": s:aqua })

" fold
call s:h("Folded",        { "fg": s:warmgrey,   "bg": s:darkblack })
call s:h("FoldColumn",    {                     "bg": s:darkblack })
"        Incsearch"

" popup menu
call s:h("Pmenu",         { "fg": s:aqua, "bg": s:lightblack })
call s:h("PmenuSel",      { "fg": s:aqua,       "bg": s:black,        "format": "reverse,bold" })
call s:h("PmenuThumb",    { "fg": s:lightblack, "bg": s:grey })
"        PmenuSbar"

" Generic Syntax Highlighting
" ---------------------------

call s:h("Constant",      { "fg": s:michelangelo })
call s:h("Number",        { "fg": s:michelangelo })
call s:h("Float",         { "fg": s:michelangelo })
call s:h("Boolean",       { "fg": s:purple })
call s:h("Character",     { "fg": s:yellow })
call s:h("String",        { "fg": s:aqua })

call s:h("Type",          { "fg": s:tender_red })
call s:h("Structure",     { "fg": s:aqua })
call s:h("StorageClass",  { "fg": s:aqua })
call s:h("Typedef",       { "fg": s:aqua })
    
call s:h("Identifier",    { "fg": s:green })
call s:h("Function",      { "fg": s:green })
                         
call s:h("Statement",     { "fg": s:pink })
call s:h("Operator",      { "fg": s:pink })
call s:h("Label",         { "fg": s:pink })
call s:h("Keyword",       { "fg": s:aqua, "format": "bold" })
"        Conditional"
call s:h("Conditional",   { "fg": s:spacemacs_var })
"        Repeat"
"        Exception"

call s:h("PreProc",       { "fg": s:green })
call s:h("Include",       { "fg": s:pink })
call s:h("Define",        { "fg": s:pink })
call s:h("Macro",         { "fg": s:green })
call s:h("PreCondit",     { "fg": s:green })
                           
call s:h("Special",       { "fg": s:red })
call s:h("SpecialChar",   { "fg": s:pink })
call s:h("Delimiter",     { "fg": s:pink })
call s:h("SpecialComment",{ "fg": s:aqua })
call s:h("Tag",           { "fg": s:pink })
"        Debug"

call s:h("Todo",          { "fg": s:orange,   "format": "bold,italic" })
call s:h("Comment",       { "fg": s:warmgrey, "format": "italic" })
                         
call s:h("Underlined",    { "fg": s:green })
call s:h("Ignore",        {})
call s:h("Error",         { "fg": s:black, "bg": s:red })

" NerdTree
" --------

call s:h("NERDTreeOpenable",        { "fg": s:green })
call s:h("NERDTreeClosable",        { "fg": s:green })
call s:h("NERDTreeHelp",            { "fg": s:green })
call s:h("NERDTreeBookmarksHeader", { "fg": s:pink })
call s:h("NERDTreeBookmarksLeader", { "fg": s:black })
call s:h("NERDTreeBookmarkName",    { "fg": s:yellow })
call s:h("NERDTreeCWD",             { "fg": s:pink })
call s:h("NERDTreeUp",              { "fg": s:white })
call s:h("NERDTreeDirSlash",        { "fg": s:pink })
call s:h("NERDTreeDir",             { "fg": s:aqua })

" Language highlight
" ------------------

" Java properties
call s:h("jpropertiesIdentifier",   { "fg": s:pink })

" Vim command
call s:h("vimCommand",              { "fg": s:pink })


" Python

call s:h("pythonParameters", { "fg": s:red })
call s:h("pythonParam",    { "fg": s:aqua })
call s:h("pythonDot",      { "fg": s:red })
call s:h("pythonBrackets", { "fg": s:spacemacs_type })
call s:h("pythonSelf",      { "fg": s:donatello })
call s:h("pythonBuiltinType",   { "fg": s:orange })
call s:h("pythonBuiltinObj",    { "fg": s:orange })
call s:h("pythonBuilinFunc",    { "fg": s:green })
"hi def link  pythonStatement    Statement
"hi def link  pythonLambdaExpr   Statement
"hi def link  pythonInclude      Include
"hi def link  pythonFunction     Function
"hi def link  pythonClass        Type
"hi def link  pythonParameters   Normal
"hi def link  pythonParam        Normal
"hi def link  pythonBrackets     Normal
"hi def link  pythonClassParameters Normala
"hi def link  pythonSelf         Identifier

"hi def link  pythonConditional  Conditional
"hi def link  pythonRepeat       Repeat
"hi def link  pythonException    Exception
"hi def link  pythonOperator     Operator
"hi def link  pythonExtraOperator        Operator
"hi def link  pythonExtraPseudoOperator  Operator

"hi def link  pythonDecorator    Define
"hi def link  pythonDottedName   Function
"hi def link  pythonDot          Normal

"hi def link  pythonComment      Comment
"hi def link  pythonCoding       Special
"hi def link  pythonRun          Special
"hi def link  pythonTodo         Todo

"hi def link  pythonError        Error
"hi def link  pythonIndentError  Error
"hi def link  pythonSpaceError   Error

"hi def link  pythonString       String
"hi def link  pythonDocstring    String
"hi def link  pythonUniString    String
"hi def link  pythonRawString    String
"hi def link  pythonUniRawString String

"hi def link  pythonEscape       Special
""    hi def link  pythonEscapeError  Error
"hi def link  pythonUniEscape    Special
"hi def link  pythonUniEscapeError Error
"hi def link  pythonUniRawEscape Special
"hi def link  pythonUniRawEscapeError Error

"hi def link  pythonStrFormatting Special
"hi def link  pythonStrFormat    Special
"hi def link  pythonStrTemplate  Special

"hi def link  pythonDocTest      Special
"hi def link  pythonDocTest2     Special

"hi def link  pythonNumber       Number
"hi def link  pythonHexNumber    Number
"hi def link  pythonOctNumber    Number
"hi def link  pythonBinNumber    Number
"hi def link  pythonFloat        Float
"hi def link  pythonOctError     Error
"hi def link  pythonHexError     Error
"hi def link  pythonBinError     Error

"hi def link  pythonBuiltinType  Type
"hi def link  pythonBuiltinObj   Structure
"hi def link  pythonBuiltinFunc  Function
"hi def link  pythonExClass      Structure

    
" Javascript
call s:h("jsFuncName",          { "fg": s:green })
call s:h("jsThis",              { "fg": s:pink })
call s:h("jsFunctionKey",       { "fg": s:green })
call s:h("jsPrototype",         { "fg": s:aqua })
call s:h("jsExceptions",        { "fg": s:aqua })
call s:h("jsFutureKeys",        { "fg": s:aqua })
call s:h("jsBuiltins",          { "fg": s:aqua })
call s:h("jsArgsObj",           { "fg": s:aqua })
call s:h("jsStatic",            { "fg": s:aqua })
call s:h("jsSuper",             { "fg": s:aqua })
call s:h("jsFuncArgRest",       { "fg": s:purple, "format": "italic" })                                 
call s:h("jsFuncArgs",          { "fg": s:orange, "format": "italic" })
call s:h("jsStorageClass",      { "fg": s:aqua })
call s:h("jsDocTags",           { "fg": s:aqua,   "format": "italic" })
                                 
" Html
call s:h("htmlTag",             { "fg": s:white })
call s:h("htmlEndTag",          { "fg": s:white })
call s:h("htmlTagName",         { "fg": s:pink })
call s:h("htmlArg",             { "fg": s:green })
call s:h("htmlSpecialChar",     { "fg": s:purple })

" Xml
call s:h("xmlTag",              { "fg": s:pink })
call s:h("xmlEndTag",           { "fg": s:pink })
call s:h("xmlTagName",          { "fg": s:orange })
call s:h("xmlAttrib",           { "fg": s:green })

" CSS
call s:h("cssProp",             { "fg": s:yellow })
call s:h("cssUIAttr",           { "fg": s:yellow })
call s:h("cssFunctionName",     { "fg": s:aqua })
call s:h("cssColor",            { "fg": s:purple })
call s:h("cssPseudoClassId",    { "fg": s:purple })
call s:h("cssClassName",        { "fg": s:green })
call s:h("cssValueLength",      { "fg": s:purple })
call s:h("cssCommonAttr",       { "fg": s:pink })
call s:h("cssBraces" ,          { "fg": s:white })
call s:h("cssClassNameDot",     { "fg": s:pink })
call s:h("cssURL",              { "fg": s:orange, "format": "underline,italic" })

" LESS
call s:h("lessVariable",        { "fg": s:green })

" ruby
call s:h("rubyInterpolationDelimiter",  {})
call s:h("rubyInstanceVariable",        {})
call s:h("rubyGlobalVariable",          {})
call s:h("rubyClassVariable",           {})
call s:h("rubyPseudoVariable",          {})
call s:h("rubyFunction",                { "fg": s:green })
call s:h("rubyStringDelimiter",         { "fg": s:yellow })
call s:h("rubyRegexp",                  { "fg": s:yellow })
call s:h("rubyRegexpDelimiter",         { "fg": s:yellow })
call s:h("rubySymbol",                  { "fg": s:purple })
call s:h("rubyEscape",                  { "fg": s:purple })
call s:h("rubyInclude",                 { "fg": s:pink })
call s:h("rubyOperator",                { "fg": s:pink })
call s:h("rubyControl",                 { "fg": s:pink })
call s:h("rubyClass",                   { "fg": s:pink })
call s:h("rubyDefine",                  { "fg": s:pink })
call s:h("rubyException",               { "fg": s:pink })
call s:h("rubyRailsARAssociationMethod",{ "fg": s:orange })
call s:h("rubyRailsARMethod",           { "fg": s:orange })
call s:h("rubyRailsRenderMethod",       { "fg": s:orange })
call s:h("rubyRailsMethod",             { "fg": s:orange })
call s:h("rubyConstant",                { "fg": s:aqua })
call s:h("rubyBlockArgument",           { "fg": s:orange })
call s:h("rubyBlockParameter",          { "fg": s:orange })

" eruby
call s:h("erubyDelimiter",              {})
call s:h("erubyRailsMethod",            { "fg": s:aqua })

" c
call s:h("cLabel",                      { "fg": s:pink })
call s:h("cStructure",                  { "fg": s:pink })
call s:h("cStorageClass",               { "fg": s:pink })
call s:h("cInclude",                    { "fg": s:green })
call s:h("cDefine",                     { "fg": s:green })
