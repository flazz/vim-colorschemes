"                 _               __      __ _____  __  __
"                | |              \ \    / /|_   _||  \/  |
" __      __ ___ | | _ __    ___   \ \  / /   | |  | \  / |
" \ \ /\ / // _ \| || '_ \  / _ \   \ \/ /    | |  | |\/| |
"  \ V  V /|  __/| || |_) ||  __/    \  /    _| |_ | |  | |
"   \_/\_/  \___||_|| .__/  \___|     \/    |_____||_|  |_|
"                   | |
"                   |_|
" ------------------------------------------------------------------------------
" File: welpe.vim
" Description: 16color scheme for vim
" Author: Timm Stelzer <timmstelzer@gmail.com>
" Source: https://github.com/tstelzer/welpe.vim
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" How this works:
"
" Every call to the highlight command is wrapped in the `s:H` function.
" The function is called like this:
"
" call s:H(<Group>, <foreground>, <background>, <style>, <special>)
"
"   <Group> is a String, like "Normal". See `:help 'highlight-groups'`.
"
"   <foreground> and <background> are names of the welpe palette, like s:bg.
"     Avoid using direct reference to library colors which start with an
"     underscore, like s:_darkred; instead bind those to one of the 16 palette
"     colors.
"
"   <style> is one of 'italic', 'bold', 'underline' or 'undercurl'
"     Note that 'undercurl' is only available in the GUI, and the other three
"     depend on your choice of font, and your terminal settings.
"
"   <special> is the color of 'underline' or 'undercurl' and works only in the
"     GUI
"
" To allow an identical experience between terminal and GUI, this colors
" scheme limits itself to using exclusively colors from the 256-term palette.
" For reference, this color chart may be of help:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
"
" Remembering each of those by hex is silly, so sounding names have been made
" up, roughly following existing palettes. Hex-values and the corresponding
" 256-term-values, and additionally 16- and 8-term-values for future
" reference, are locally available. See Library-section.
"
" Note: If you want to change assignments, change the palette by swapping the
" bound colors with existing colors from the library, or add new colors.
"
" For example, to use Venetian Red (#d70000) as a lightred, change the line
"
"   let s:lightred = s:_roman
"
" to
"
"   let s:lightred = s:_venetian
"
" Refrain from using library colors directly, to keep the layers separate and
" sane.
" ------------------------------------------------------------------------------

" GLOBAL SETTINGS
" ---------------

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "welpe"
if !exists('g:welpe_statusline')
  let g:welpe_statusline = 1
endif

" HIGHLIGHTING FUNCTION
" ---------------------

if !exists("*s:H")
  function s:H(group,fg,bg,style,special)

    " On gVim 'guisp' is used to colorize underline/undercurl.
    " To reduce visual redundancy, we void the foreground color
    " if it mirrors the special color.
    let l:guifg = empty(a:fg)
          \     || !empty(a:special) && a:special == a:fg
          \     && a:style == "undercurl" || a:style == "underline"
          \ ? "NONE"
          \ : a:fg[0]
    let l:ctermfg = empty(a:fg) ? "NONE" : a:fg[1]

    let l:guibg   = empty(a:bg) ? "NONE" : a:bg[0]
    let l:ctermbg = empty(a:bg) ? "NONE" : a:bg[1]

    let l:gstyle = empty(a:style) ? "NONE" : a:style
    let l:cstyle = empty(a:style) ? "NONE" : a:style

    let l:guisp   = empty(a:special) ? s:lightred[0] : a:special[0]

    execute "hi ".a:group
          \ ." guifg=".l:guifg." ctermfg=".l:ctermfg
          \ ." guibg=".l:guibg." ctermbg=".l:ctermbg
          \ ." gui=".l:gstyle." cterm=".l:cstyle
          \ ." guisp=".l:guisp
  endfunction
endif

" GRAYSCALE
" ---------

" Schema: s:<name> = [ '<hex>', <256term>, <16term>, <8term> ]
" 16 and 8 are currently unused

let s:_trueblack = [ '#000000', 0, 0, 0]
let s:_black     = [ '#080808', 232, 0, 0 ]
let s:_gray0     = [ '#121212', 233, 0, 0]
let s:_gray1     = [ '#1c1c1c', 234, 0, 0 ]
let s:_gray2     = [ '#262626', 235, 0, 0]
let s:_gray3     = [ '#303030', 236, 0, 0 ]
let s:_gray4     = [ '#3a3a3a', 237, 0, 0]
let s:_gray5     = [ '#444444', 238, 8, 0 ]
let s:_gray6     = [ '#4e4e4e', 239, 8, 0 ]
let s:_gray7     = [ '#606060', 241, 8, 0 ]
let s:_gray8     = [ '#666666', 242, 8, 0 ]
let s:_gray9     = [ '#767676', 243, 8, 0 ]
let s:_gray10    = [ '#808080', 244, 7, 7]
let s:_gray11    = [ '#8a8a8a', 245, 7, 7 ]
let s:_gray12    = [ '#949494', 245, 7, 7 ]
let s:_gray13    = [ '#9e9e9e', 246, 7, 7 ]
let s:_gray14    = [ '#9e9e9e', 247, 7, 7 ]
let s:_gray15    = [ '#a8a8a8', 248, 7, 7 ]
let s:_gray16    = [ '#b2b2b2', 249, 7, 7 ]
let s:_gray17    = [ '#bcbcbc', 250, 15, 7 ]
let s:_gray18    = [ '#c0c0c0', 7, 15, 7 ]
let s:_gray19    = [ '#c6c6c6', 251, 15, 7 ]
let s:_gray20    = [ '#d0d0d0', 252, 15, 7 ]
let s:_gray21    = [ '#dadada', 253, 15, 7]
let s:_gray22    = [ '#e4e4e4', 254, 15, 7 ]
let s:_white     = [ '#eeeeee', 255, 15, 7]
let s:_truewhite = [ '#FFFFFF', 15, 15, 7]

" COLOR LIBRARY
" -------------

let s:_maroon        = [ '#5f0000', 52,  1,  1 ]
let s:_darkred       = [ '#870000', 88,  1,  1 ]
let s:_roman         = [ '#d75f5f', 167, 1,  1 ]
let s:_darkgreen     = [ '#005F00', 22,  2,  2 ]
let s:_jade          = [ '#00af5f', 35,  2,  2 ]
let s:_laurel        = [ '#5f875f', 65,  2,  2 ]
let s:_citrus        = [ '#afaf00', 142, 3,  3 ]
let s:_darkorange    = [ '#ff8700', 208, 3,  3 ]
let s:_rajah         = [ '#ffaf5f', 215, 3,  3 ]
let s:_orange        = [ '#ffaf00', 214, 3,  3 ]
let s:_navy          = [ '#00005f', 17,  4,  4 ]
let s:_darkblue      = [ '#000087', 18,  4,  4 ]
let s:_cornflower    = [ '#5f87ff', 69,  4,  4 ]
let s:_fountain      = [ '#5fafaf', 73,  4,  4 ]
let s:_manatee       = [ '#8787af', 103, 4,  4 ]
let s:_ziggurat      = [ '#87afaf', 109, 4,  4 ]
let s:_maya          = [ '#87afff', 111, 4,  4 ]
let s:_sinbad        = [ '#afd7d7', 152, 4,  4 ]
let s:_richblue      = [ '#5f5faf', 61,  5,  5 ]
let s:_darkviolet2   = [ '#8700df', 92,  5,  5 ]
let s:_darkviolet    = [ '#af00d7', 128, 5,  5 ]
let s:_londonhue     = [ '#af87af', 139, 5,  5 ]
let s:_biloba        = [ '#af87d7', 140, 5,  5 ]
let s:_chill         = [ '#5f8787', 66,  6,  6 ]
let s:_aquamarine    = [ '#87ffd7', 122, 6,  6 ]
let s:_freespeech    = [ '#af0000', 124, 9,  1 ]
let s:_venetian      = [ '#d70000', 160, 9,  1 ]
let s:_bittersweet   = [ '#ff5f5f', 203, 9,  1 ]
let s:_sundown       = [ '#ffafaf', 217, 9,  1 ]
let s:_mosque        = [ '#005f5f', 23,  10, 2 ]
let s:_green         = [ '#008700', 28,  10, 2 ]
let s:_forest        = [ '#00875F', 29,  10, 2 ]
let s:_fern          = [ '#5faf5f', 71,  10, 2 ]
let s:_mantis        = [ '#87d75f', 113, 10, 2 ]
let s:_lightgreen    = [ '#87ff87', 120, 10, 2 ]
let s:_olive         = [ '#afaf5f', 143, 10, 2 ]
let s:_moss          = [ '#afd7af', 151, 10, 2 ]
let s:_mint          = [ '#afff87', 156, 10, 2 ]
let s:_celadon       = [ '#afffaf', 157, 10, 2 ]
let s:_gold          = [ '#ffd700', 220, 11, 3 ]
let s:_shalimar      = [ '#ffffaf', 229, 11, 3 ]
let s:_lagoon        = [ '#005f87', 24,  12, 4 ]
let s:_columbia      = [ '#afd7ff', 153, 12, 4 ]
let s:_paleturquoise = [ '#afffff', 159, 12, 4 ]
let s:_goldenbrown   = [ '#af5f00', 130, 13, 5 ]
let s:_tapestry      = [ '#af5f87', 132, 13, 5 ]
let s:_mediumorchid  = [ '#af5fd7', 134, 13, 5 ]
let s:_lavender      = [ '#afafd7', 146, 13, 5 ]
let s:_darkpink      = [ '#d75f87', 168, 13, 5 ]
let s:_hopbush       = [ '#d75faf', 169, 13, 5 ]
let s:_171           = [ '#d75fff', 171, 13, 5 ]
let s:_thistle       = [ '#d7afd7', 182, 13, 5 ]
let s:_mauve         = [ '#d7afff', 183, 13, 5 ]
let s:_quartz        = [ '#d7d7ff', 189, 13, 5 ]
let s:_hotpink       = [ '#ff5faf', 205, 13, 5 ]
let s:_salmon        = [ '#ff8787', 210, 13, 5 ]
let s:_palepink      = [ '#ff87af', 211, 13, 5 ]
let s:_213           = [ '#ff87ff', 213, 13, 5 ]
let s:_lavenderrose  = [ '#ffafff', 219, 13, 5 ]
let s:_cosmos        = [ '#ffd7d7', 224, 13, 5 ]
let s:_turquoise     = [ '#5fd7ff', 81,  14, 6 ]
let s:_lightcyan     = [ '#d7ffff', 195, 14, 6 ]

" PALETTE
" -------

let s:lightfg    = s:_truewhite     " #ffffff
let s:fg         = s:_gray20        " #d0d0d0

let s:neutral    = s:_gray10        " #808080

let s:lightbg    = s:_gray4         " #3a3a3a
let s:bg         = s:_gray2         " #262626
let s:darkbg     = s:_gray1         " #1c1c1c

let s:darkred    = s:_maroon        " #5f0000
let s:lightred   = s:_roman         " #d75f5f

let s:darkgreen  = s:_darkgreen     " #005f00
let s:lightgreen = s:_moss          " #afd7af

let s:orange     = s:_orange        " #ffaf00
let s:yellow     = s:_shalimar      " #ffffaf

let s:darkblue   = s:_darkblue      " #000087
let s:lightblue  = s:_maya          " #87afff

let s:magenta    = s:_palepink      " #ff87af

let s:cyan       = s:_paleturquoise " #afffff

" INTERFACE
" ---------

call s:H("Normal",       s:fg,         s:bg,         "",          "")

call s:H("ColorColumn",  "",           s:lightbg,    "",          "")
call s:H("Conceal",      "",           "",           "",          "")
call s:H("Cursor",       s:darkbg,     s:fg,         "",          "")
call s:H("iCursor",      s:darkbg,     s:fg,         "",          "")
call s:H("CursorColumn", "",           s:lightbg,    "",          "")
call s:H("CursorLine",   "",           s:lightbg,    "",          "")
call s:H("CursorLineNr", s:lightfg,    s:darkbg,     "",          "")

call s:H("DiffAdd",      "",           s:darkgreen,  "",          "")
call s:H("DiffChange",   "",           "",           "",          "")
call s:H("DiffDelete",   "",           s:darkred,    "",          "")
call s:H("DiffText",     "",           s:darkblue,   "",          "")

call s:H("Directory",    s:lightblue,  "",           "",          "")

call s:H("ErrorMsg",     s:lightred,   "",           "bold",      "")

call s:H("FoldColumn",   "",           s:bg,         "",          "")
call s:H("Folded",       s:fg,         s:lightbg,    "",          "")

call s:H("IncSearch",    s:darkbg,     s:orange,     "",          "")

call s:H("LineNr",       s:neutral,    s:darkbg,     "",          "")

call s:H("MatchParen",   s:orange,     s:lightbg,    "bold",      "")
call s:H("ModeMsg",      s:lightblue,  s:bg,         "",          "")
call s:H("MoreMsg",      s:lightblue,  s:bg,         "",          "")

call s:H("NonText",      s:neutral,    "",           "",          "")

call s:H("Pmenu",        s:lightblue,  s:lightbg,    "",          "")
call s:H("PmenuSbar",    "",           s:lightbg,    "",          "")
call s:H("PmenuSel",     s:orange,     s:lightbg,    "",          "")
call s:H("PmenuThumb",   s:lightgreen, "",           "",          "")

call s:H("Question",     s:cyan,       "",           "bold",      "")

call s:H("Search",       s:darkbg,     s:yellow,     "",          "")
call s:H("SignColumn",   s:lightfg,    s:darkbg,     "",          "")
call s:H("SpecialKey",   s:orange,     "",           "",          "")
call s:H("SpellBad",     s:lightred,   "",           "undercurl", s:lightred)
call s:H("SpellRare",    s:lightgreen, "",           "undercurl", s:lightgreen)
call s:H("SpellCap",     s:lightblue,  "",           "undercurl", s:lightblue)
call s:H("SpellLocal",   "",           "",           "undercurl", "")

call s:H("StatusLine",   s:darkbg,     s:lightgreen, "",          "")
call s:H("StatusLineNC", s:neutral,    s:darkbg,     "",          "")

call s:H("TabLineSel",   s:fg,         s:darkbg,     "",          "")
call s:H("TabLine",      s:neutral,    s:fg,         "",          "")
call s:H("TabLineFill",  s:darkbg,     s:fg,         "",          "")
call s:H("Title",        "",           "",           "bold",      "")

call s:H("VertSplit",    s:neutral,    "",           "",          "")
call s:H("Visual",       s:lightfg,    s:lightblue,  "",          "")

call s:H("WildMenu",     s:magenta,    "",           "",          "")
call s:H("WarningMsg",   s:lightred,   "",           "",          "")

" SYNTAX
" ------

call s:H("Comment",          s:neutral,        "",        "",          "")

call s:H("Constant",         s:cyan,           "",        "",          "")
" the following groups inherit constant if commented out
call s:H("String",           s:lightgreen,     "",        "",          "")
call s:H("Character",        "",               "",        "bold",      "")
call s:H("Number",           "",               "",        "bold",      "")
" call s:H("Boolean",        s:boolean,        "",        "")
call s:H("Float",            "",               "",        "bold",      "")

call s:H("Identifier",       s:lightred,       "",        "",          "")
" the following groups inherit identifier if commented out
call s:H("Function",         s:orange,         "",        "",          "")

call s:H("Statement",        s:lightblue,      "",        "",          "")
" the following groups inherit statement if commented out
" call s:H("Conditional",    s:statement,      "",        "")
" call s:H("Repeat",         s:repeat,         "",        "")
" call s:H("Label",          s:label,          "",        "")
call s:H("Operator",         "",               "",        "",          "")
call s:H("Keyword",          s:magenta,           "",        "",          "")
" call s:H("Exception",      s:exception,      "",        "")

call s:H("PreProc",          s:cyan,           "",        "",          "")
" the following groups inherit preproc if commented out
" call s:H("Include",        s:include,        "",        "")
" call s:H("Define",         s:define,         "",        "")
" call s:H("Macro",          s:macro,          "",        "")
" call s:H("PreCondit",      s:precondit,      "",        "")

call s:H("Type",             s:yellow,         "",        "",          "")
" the following groups inherit type if commented out
" call s:H("StorageClass",   s:storageclass,   "",        "")
" call s:H("Structure",      s:structure,      "",        "")
" call s:H("Typedef",        s:typedef,        "",        "")

call s:H("Special",          s:magenta,         "",        "",          "")
" the following groups inherit special if commented out
" call s:H("SpecialChar",    s:neutral,        "",        "")
" call s:H("Tag",            s:tag,            "",        "")
call s:H("Delimiter",        "",               "",        "",          "")
" call s:H("SpecialComment", s:specialcomment, "",        "")
call s:H("Debug",            s:yellow,         s:darkbg,  "",          "")

call s:H("Underlined",       s:lightblue,      "",        "underline", "")

call s:H("Ignore",           "",               "",        "",          "")

call s:H("Error",            s:yellow,         s:darkred, "",          "")

call s:H("Todo",             s:lightfg,        s:lightbg, "bold",      "")

" HELPER SYNTAX
" -------------

hi link Noise Normal
hi link OptionalParameters Normal

call s:H("User1", s:darkbg, s:yellow, "", "")
call s:H("User2", s:darkbg, s:lightblue, "", "")

" --- QUICKFIX
" ------------

hi! link qfLineNr LineNr
hi! link qfFileName Directory
hi! link qfError ErrorMsg
hi! link qfSeparator VertSplit

" --- VIMSCRIPT
" -------------

hi! link vimSet Normal
hi! link vimSetSep Delimiter
hi! link vimFunc Function
hi! link vimFuncSID vimFunc
hi! link vimFunction vimFunc
hi! link vimUserFunc vimFunc
hi! link vimIsCommand Statement
hi! link vimOperParen Delimiter
hi! link vimCommentTitle Title
hi! link vimHiBang Special
hi! link vimCmdSep Delimiter

" --- HTML
" --------
" recommended https://github.com/othree/html5.vim

call s:H("htmlBold", "", "", "bold", "")
call s:H("htmlItalic", "", "", "italic", "")
hi! link htmlTag Statement
hi! link htmlTagName htmlTag
hi! link htmlTagN htmlTag
hi! link htmlEndTag htmlTag
hi! link htmlSpecialChar Character

" --- MARKDOWN
" ------------

call s:H("markdownCode", s:lightfg, s:lightbg, "", "")
hi! link markdownCodeBlock markdownCode
hi! link markdownItalicDelimiter Noise
hi! link markdownBoldDelimiter Noise
hi! link markdownUrl String
hi! link markdownItalic htmlItalic

" --- ASCIIDOC
" ------------

hi! link asciidocQuotedEmphasized2 String
hi! link asciidocQuotedEmphasized1 String

" --- PANDOC
" ----------

hi! link pandocNoFormatted Function
hi! link pandocEmphasis htmlItalic
hi! link pandocUListItemBullet Special

" --- CSS
" -------
" recommended https://github.com/JulesWang/css.vim
"             hail2u/vim-css3-syntax

hi! link cssVendor cssProp
hi! link cssSelectorOp Noise
hi! link cssSelectorOp2 Noise
hi! link cssAttrComma Noise
hi! link cssBraces Noise
hi! link cssUnitDecorators Delimiter

" --- PHP
" -------
" recommended https://github.com/StanAngeloff/php.vim
"             https://github.com/Seb-C/better-indent-support-for-php-with-html

hi! link phpVarSelector Identifier
hi! link phpParent Delimiter
hi! link phpFunction Normal

" --- VIM-SNEAK
" -------------

hi! link Sneak Search
hi! link SneakLabel IncSearch
hi! link SneakScope IncSearch

" --- INCSEARCH
" -------------

hi! link IncSearchCursor Visual

" --- JAVASCRIPT
" --------------
" recommended https://github.com/pangloss/vim-javascript

hi! link jsFuncCall Function
hi! link jsFunction Function
hi! link jsParens Delimiter
hi! link jsVariableDef Identifier
hi! link javaScriptValue Constant
hi! link javaScriptTemplateVar StringDelim
hi! link javaScriptTemplateDelim Identifier
hi! link javaScriptTemplateString String

" --- PYTHON
" ----------
" recommended https://github.com/purpleP/python-syntax

hi! link pythonStrTemplate String
hi! link pythonInstanceVariable Keyword
hi! link pythonNone Keyword
hi! link pythonBoolean Keyword

" --- SCSS
" --------
" recommended https://github.com/cakebaker/scss-syntax.vim

hi! link scssMixinParams Delimiter
hi! link scssSelectorChar Noise
hi! link scssAmpersand Noise

" --- AUTOHOTKEY
" --------------

hi! def link autohotkeyVariable            Identifier
hi! def link autohotkeyVariableDelimiter   Delimiter
hi! def link autohotkeyBuiltinVariable     autohotkeyVariable

" --- GIT
" -------

hi! link gitDiffAdded DiffAdded
hi! link gitDiffRemoved DiffDelete

" --- GITGUTTER
" -------------

call s:H("GitGutterAdd",    s:lightgreen, s:darkbg, "", "")
call s:H("GitGutterChange", s:lightblue,  s:darkbg, "", "")
call s:H("GitGutterDelete", s:lightred,   s:darkbg, "", "")
hi! link GitGutterChangeDelete GitGutterDelete

" --- PUG
" -------

hi! link pugClassChar Noise
hi! link pugAttributesDelimiter Delimiter
hi! link pugClass Identifier

" --- DIRVISH
" -----------

hi! link DirvishPathTail Directory
hi! link DirvishPathHead Comment

" --- SYNTASTIC
" -------------
hi! link SyntasticErrorSign ErrorMsg
hi! link SyntasticWarningSign Debug
hi! link SyntasticStyleErrorSign ErrorMsg
hi! link SyntasticStyleWarningSign Debug

hi! link SyntasticErrorLine ErrorMsg
hi! link SyntasticWarningLine Debug
hi! link SyntasticStyleErrorLine ErrorMsg
hi! link SyntasticStyleWarningLine Debug

" --- CTRLP
" ---------

" the prompt's cursor when moving over the text
hi! link CtrlPPrtCursor SpecialKey
" the matched pattern
hi! link CtrlPMatch SpecialKey
hi! link CtrlPBufferPath Directory
hi! link CtrlPBufferCurMod Title

" --- NEOMAKE
" -----------

hi! link NeomakeError Error
hi! link NeomakeWarning Debug
hi! link NeomakeInfo Question
hi! link NeomakeMessage Normal

" --- ULTISNIPS
" -------------

hi! link snipLeadingSpaces Noise

" --- DIFF
" --------

hi! link DiffAdded DiffAdd
hi! link diffRemoved DiffDelete
