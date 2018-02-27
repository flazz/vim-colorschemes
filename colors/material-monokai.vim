" File:       matrial-monokai.vim
" Maintainer: skielbasa
" URL:        https://github.com/skielbasa/vim-monokai
" License:    MIT
"
" A vim port of the Material Monokai Atom theme
" Uses the Monokai theme by crusoexia as a base

" Initialisation
" --------------

if !has("gui_running") && &t_Co < 256
  finish
endif

if ! exists("g:materialmonokai_gui_italic")
    let g:materialmonokai_gui_italic = 1
endif

if ! exists("g:materialmonokai_italic")
    let g:materialmonokai_italic = 0
endif

if ! exists("g:materialmonokai_subtle_spell")
    let g:materialmonokai_subtle_spell = 0
endif

if ! exists("g:materialmonokai_custom_lint_indicators")
    let g:materialmonokai_custom_lint_indicators = 1
endif

let g:materialmonokai_termcolors = 256 " does not support 16 color term right now.

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "material-monokai"

function! s:h(group, style)
  let s:ctermformat = "NONE"
  let s:guiformat = "NONE"
  if has_key(a:style, "format")
    let s:ctermformat = a:style.format
    let s:guiformat = a:style.format
  endif
  if g:materialmonokai_italic == 0
    let s:ctermformat = substitute(s:ctermformat, ",italic", "", "")
    let s:ctermformat = substitute(s:ctermformat, "italic,", "", "")
    let s:ctermformat = substitute(s:ctermformat, "italic", "", "")
  endif
  if g:materialmonokai_gui_italic == 0
    let s:guiformat = substitute(s:guiformat, ",italic", "", "")
    let s:guiformat = substitute(s:guiformat, "italic,", "", "")
    let s:guiformat = substitute(s:guiformat, "italic", "", "")
  endif
  if g:materialmonokai_termcolors == 16
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


let s:white       = { "gui": "#CDD3DE", "cterm": "253" }
let s:black       = { "gui": "#263238", "cterm": "235" }
let s:lightblack  = { "gui": "#2D2E27", "cterm": "234" }
let s:lightblack2 = { "gui": "#383a3e", "cterm": "236" }
let s:darkblack   = { "gui": "#1F292D", "cterm": "233" }
let s:grey        = { "gui": "#3F565F", "cterm": "238" }
let s:lightgrey   = { "gui": "#575b61", "cterm": "241" }
let s:darkgrey    = { "gui": "#232E33", "cterm": "236" }
let s:coolgrey    = { "gui": "#506E79", "cterm": "241" }

let s:pink        = { "gui": "#FC3488", "cterm": "197" }
let s:green       = { "gui": "#A6E22E", "cterm": "148" }
let s:aqua        = { "gui": "#66d9ef", "cterm": "81" }
let s:blue        = { "gui": "#82B1FF", "cterm": "81" }
let s:yellow      = { "gui": "#E6DB74", "cterm": "186" }
let s:orange      = { "gui": "#FD9720", "cterm": "208" }
let s:purple      = { "gui": "#ae81ff", "cterm": "141" }
let s:red         = { "gui": "#e73c50", "cterm": "196" }
let s:darkred     = { "gui": "#5f0000", "cterm": "52" }

let s:addfg       = { "gui": "#d7ffaf", "cterm": "193" }
let s:addbg       = { "gui": "#5f875f", "cterm": "65" }
let s:delbg       = { "gui": "#f75f5f", "cterm": "167" }
let s:changefg    = { "gui": "#d7d7ff", "cterm": "189" }
let s:changebg    = { "gui": "#5f5f87", "cterm": "60" }

" Highlighting
" ------------

" editor
call s:h("Normal",        { "fg": s:white,      "bg": s:black })
call s:h("ColorColumn",   {                     "bg": s:lightgrey })
call s:h("CursorColumn",  {                     "bg": s:lightblack2 })
call s:h("CursorLine",    {                     "bg": s:darkblack })
call s:h("NonText",       { "fg": s:lightgrey })
call s:h("StatusLine",    { "fg": s:white,      "bg": s:darkblack })
call s:h("StatusLineNC",  { "fg": s:darkgrey,   "bg": s:coolgrey,     "format": "reverse" })
call s:h("WildMenu",      { "fg": s:white,      "bg": s:pink })
call s:h("TabLine",       { "fg": s:white,      "bg": s:darkblack,    "format": "reverse" })
call s:h("Visual",        {                     "bg": s:lightgrey })
call s:h("Search",        { "fg": s:black,      "bg": s:yellow })
call s:h("MatchParen",    { "fg": s:black,      "bg": s:purple })
call s:h("Question",      { "fg": s:yellow })
call s:h("ModeMsg",       { "fg": s:yellow })
call s:h("MoreMsg",       { "fg": s:yellow })
call s:h("ErrorMsg",      { "fg": s:black,      "bg": s:red,          "format": "standout" })
call s:h("WarningMsg",    { "fg": s:red })
call s:h("VertSplit",     { "fg": s:grey,       "bg": s:darkgrey })
call s:h("LineNr",        { "fg": s:grey,       "bg": s:darkgrey })
call s:h("CursorLineNr",  { "fg": s:aqua,       "bg": s:darkblack })
call s:h("SignColumn",    {                     "bg": s:lightblack })
call s:h("SpellCap",      {                                           "format": "underline"})
call s:h("SpellLocal",    { "fg": s:yellow,                           "format": "underline"})
if g:materialmonokai_subtle_spell == 1
  call s:h("SpellBad",    {                                           "format": "underline"})
else
  call s:h("SpellBad",    { "fg": s:red,        "bg": s:yellow })
endif

" misc
call s:h("SpecialKey",    { "fg": s:grey })
call s:h("Title",         { "fg": s:yellow })
call s:h("Directory",     { "fg": s:aqua })

" diff
call s:h("DiffAdd",       { "fg": s:addfg,      "bg": s:addbg })
call s:h("DiffDelete",    { "fg": s:black,      "bg": s:delbg })
call s:h("DiffChange",    { "fg": s:changefg,   "bg": s:changebg })
call s:h("DiffText",      { "fg": s:black,      "bg": s:aqua })

" fold
call s:h("Folded",        { "fg": s:coolgrey,   "bg": s:darkblack })
call s:h("FoldColumn",    {                     "bg": s:darkblack })
"        Incsearch"

" popup menu
call s:h("Pmenu",         { "fg": s:white,      "bg": s:darkblack })
call s:h("PmenuSel",      { "fg": s:pink,       "bg": s:white,      "format": "reverse,bold" })
call s:h("PmenuThumb",    { "fg": s:lightblack, "bg": s:grey })
"        PmenuSbar"

" Generic Syntax Highlighting
" ---------------------------

call s:h("Constant",      { "fg": s:purple })
call s:h("Number",        { "fg": s:purple })
call s:h("Float",         { "fg": s:purple })
call s:h("Boolean",       { "fg": s:purple })
call s:h("Character",     { "fg": s:yellow })
call s:h("String",        { "fg": s:yellow })

call s:h("Type",          { "fg": s:aqua })
call s:h("Structure",     { "fg": s:aqua })
call s:h("StorageClass",  { "fg": s:aqua })
call s:h("Typedef",       { "fg": s:aqua })

call s:h("Identifier",    { "fg": s:green })
call s:h("Function",      { "fg": s:green })

call s:h("Statement",     { "fg": s:pink })
call s:h("Operator",      { "fg": s:pink })
call s:h("Label",         { "fg": s:pink })
call s:h("Keyword",       { "fg": s:aqua })
"        Conditional"
"        Repeat"
"        Exception"

call s:h("PreProc",       { "fg": s:green })
call s:h("Include",       { "fg": s:pink })
call s:h("Define",        { "fg": s:pink })
call s:h("Macro",         { "fg": s:green })
call s:h("PreCondit",     { "fg": s:green })

call s:h("Special",       { "fg": s:aqua })
call s:h("SpecialChar",   { "fg": s:pink })
call s:h("Delimiter",     { "fg": s:red })
call s:h("SpecialComment",{ "fg": s:aqua })
call s:h("Tag",           { "fg": s:pink })
"        Debug"

call s:h("Todo",          { "fg": s:aqua,     "format": "bold,italic" })
call s:h("Comment",       { "fg": s:coolgrey, "format": "italic" })

call s:h("Underlined",    { "fg": s:green })
call s:h("Ignore",        {})
call s:h("Error",         { "fg": s:red, "bg": s:darkred })

" ALE
" ---

if g:materialmonokai_custom_lint_indicators == 1
  call s:h("ALEErrorSign",   { "fg": s:red,    "bg": s:darkgrey })
  call s:h("ALEWarningSign", { "fg": s:yellow, "bg": s:darkgrey })

  let g:ale_sign_error = '●'
  let g:ale_sign_warning = '●'
endif

" Git Gutter
" ---------

call s:h("GitGutterAdd",          { "fg": s:green,  "bg": s:darkgrey})
call s:h("GitGutterChange",       { "fg": s:yellow, "bg": s:darkgrey })
call s:h("GitGutterDelete",       { "fg": s:red,    "bg": s:darkgrey })
call s:h("GitGutterChangeDelete", { "fg": s:yellow, "bg": s:darkgrey })

" NerdTree
" --------

call s:h("NERDTreeOpenable",        { "fg": s:pink })
call s:h("NERDTreeClosable",        { "fg": s:pink })
call s:h("NERDTreeHelp",            { "fg": s:yellow })
call s:h("NERDTreeBookmarksHeader", { "fg": s:aqua })
call s:h("NERDTreeBookmarksLeader", { "fg": s:black })
call s:h("NERDTreeBookmarkName",    { "fg": s:yellow })
call s:h("NERDTreeCWD",             { "fg": s:pink })
call s:h("NERDTreeUp",              { "fg": s:white })
call s:h("NERDTreeDirSlash",        { "fg": s:grey })
call s:h("NERDTreeDir",             { "fg": s:coolgrey })

" Syntastic
" ---------

hi! link SyntasticErrorSign Error
call s:h("SyntasticWarningSign",    { "fg": s:lightblack, "bg": s:orange })

" Language highlight
" ------------------

" Java properties
call s:h("jpropertiesIdentifier",   { "fg": s:pink })

" Vim command
call s:h("vimCommand",              { "fg": s:pink })

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
call s:h("jsVariableDef",       { "fg": s:purple })
call s:h("jsDocTags",           { "fg": s:aqua,   "format": "italic" })
" pangloss/vim-javascript
call s:h('jsArrowFunction',      { "fg": s:green, })
call s:h('jsAsyncKeyword',       { "fg": s:aqua, })
call s:h('jsExtendsKeyword',     { "fg": s:purple, })
call s:h('jsClassKeyword',       { "fg": s:purple, })
call s:h('jsDocParam',           { "fg": s:aqua, })
call s:h('jsDocTags',            { "fg": s:green, })
call s:h('jsForAwait',           { "fg": s:purple, })
call s:h('jsFlowArgumentDef',    { "fg": s:yellow, })
call s:h('jsFrom',               { "fg": s:purple, })
call s:h('jsImport',             { "fg": s:pink, })
call s:h('jsExport',             { "fg": s:pink, })
call s:h('jsExportDefault',      { "fg": s:orange, })
call s:h('jsFuncCall',           { "fg": s:green, })
call s:h('jsGlobalObjects',      { "fg": s:orange, })
call s:h('jsGlobalNodeObjects',  { "fg": s:yellow, })
call s:h('jsModuleAs',           { "fg": s:purple, })
call s:h('jsNoise',              { "fg": s:pink, })
call s:h('jsNull',               { "fg": s:orange, })
call s:h('jsObjectProp',         { "fg": s:orange, })
call s:h('jsTemplateBraces',     { "fg": s:orange, })
call s:h('jsTemplateExpression', { "fg": s:orange, })
call s:h('jsThis',               { "fg": s:orange, })
call s:h('jsUndefined',          { "fg": s:orange, })

" Html
call s:h("htmlTag",             { "fg": s:aqua })
call s:h("htmlEndTag",          { "fg": s:aqua })
call s:h("htmlTagName",         { "fg": s:pink })
call s:h("htmlArg",             { "fg": s:green })
call s:h("htmlSpecialChar",     { "fg": s:purple })
call s:h("htmlh1",              { "fg": s:blue })
call s:h("htmlh2",              { "fg": s:blue })
call s:h("htmlh3",              { "fg": s:blue })
call s:h("htmlh4",              { "fg": s:blue })
call s:h("htmlh5",              { "fg": s:blue })
call s:h("htmlh6",              { "fg": s:blue })

" PHP
call s:h("phpIdentifier",       { "fg": s:orange })
call s:h("phpRegion",           { "fg": s:green })
call s:h("phpKeyword",          { "fg": s:aqua })
call s:h("phpParent",           { "fg": s:white })

" Xml
call s:h("xmlTag",              { "fg": s:pink })
call s:h("xmlEndTag",           { "fg": s:pink })
call s:h("xmlTagName",          { "fg": s:orange })
call s:h("xmlAttrib",           { "fg": s:green })

" CSS
call s:h("cssProp",             { "fg": s:aqua, "format": "italic" })
call s:h("cssUIAttr",           { "fg": s:yellow })
call s:h("cssUnitDecorators",   { "fg": s:yellow })
call s:h("cssFunctionName",     { "fg": s:aqua })
call s:h("cssColor",            { "fg": s:purple })
call s:h("cssPseudoClassId",    { "fg": s:purple })
call s:h("cssClassName",        { "fg": s:green })
call s:h("cssValueLength",      { "fg": s:purple })
call s:h("cssCommonAttr",       { "fg": s:pink })
call s:h("cssBraces" ,          { "fg": s:white })
call s:h("cssClassNameDot",     { "fg": s:pink })
call s:h("cssURL",              { "fg": s:orange, "format": "underline,italic" })
call s:h("cssAttributeSelector",{ "fg": s:orange })

" SCSS
call s:h("scssAmpersand",       { "fg": s:pink })
call s:h("scssAttribute",       { "fg": s:yellow })
call s:h("scssDefinition",      { "fg": s:white })
call s:h("scssInclude",         { "fg": s:pink })
call s:h("scssVariable",        { "fg": s:orange })

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

" Markdown
call s:h("mkdDelimiter",                { "fg": s:blue })
call s:h("mkdCode",                     { "fg": s:white })
call s:h("mkdLink",                     { "fg": s:green })
call s:h("mkdListItem",                 { "fg": s:orange })
call s:h("mkdURL",                      { "fg": s:pink })

" Jinja
call s:h("jinjaVarBlock",               { "fg": s:orange })
call s:h("jinjaTagBlock",               { "fg": s:pink })

" Org-mode
call s:h("org_heading2",                { "fg": s:green })
call s:h("org_heading3",                { "fg": s:purple })
call s:h("org_heading7",                { "fg": s:yellow })
call s:h("org_shade_stars",             { "fg": s:grey })
call s:h("org_list_unordered",          { "fg": s:orange })
call s:h("org_list_ordered",            { "fg": s:orange })
call s:h("org_timestamp",               { "fg": s:pink })
