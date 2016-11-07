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
" Version: 0.1.2
" ------------------------------------------------------------------------------

" global settings
" ------------------------------------------------------------------------------
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "welpe"
if !exists('g:welpe_all_bold')
    let g:welpe_all_bold = 0
endif
if !exists('g:welpe_use_italics')
    let g:welpe_use_italics = 0
endif

" highlighting function
" ------------------------------------------------------------------------------
function! s:H(group,fg,bg,style) 
" group = Syntax Group
" fg = Foreground Color
" bg = Background Color
" style = Font Style

    " foreground is NOT empty
    if !empty(a:fg)
        let l:gfg = a:fg[0]
        let l:cfg = a:fg[1]
    else
        let l:gfg = "NONE"
        let l:cfg = "NONE"
    endif

    " background is NOT empty
    if !empty(a:bg)
        let l:gbg = a:bg[0]
        let l:cbg = a:bg[1]
    " background IS empty
    else
        let l:gbg = "NONE"
        let l:cbg = "NONE"
    endif

    " all text is rendered bold
    if g:welpe_all_bold == 1
        let l:gstyle = "bold"
        let l:cstyle = "bold"
    else
        if !empty(a:style)
          " no italics should be used
            if a:style == "italic" && g:welpe_use_italics == 0
                let l:gstyle = "NONE"
                let l:cstyle = "NONE"
            " style is NOT empty
            else
                let l:gstyle = a:style
                let l:cstyle = a:style
            endif
        " style IS empty
        else
            let l:gstyle = "NONE"
            let l:cstyle = "NONE"
        endif
    endif

    execute "hi ".a:group." guifg=".l:gfg." ctermfg=".l:cfg." guibg=".l:gbg.
                \ " ctermbg=".l:cbg." gui=".l:gstyle." term=".l:cstyle
endfun

" Grayscale
" ------------------------------------------------------------------------------
" Because ConEmu is a special snowflake and does not care for 
" the xterm color sequence, it has an extra bit
" Schema: s:<name> = [ '<hex>', <256term>, <16term>, <8term> ]

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

" Colors 
" ------------------------------------------------------------------------------
" Important: DON'T USE THESE COLORNAMES IN THE SYNTAX GROUPS,
" use the generic color variables instead

let s:_darkblue      = [ '#000087', 18, 4, 4 ]
let s:_navy          = [ '#00005f', 17, 4, 4 ]
let s:_darkgreen     = [ '#005F00', 22, 2, 2 ]
let s:_mosque        = [ '#005f5f', 23, 10, 2 ]
let s:_lagoon        = [ '#005f87', 24, 12, 4 ]
let s:_green         = [ '#008700', 28, 10, 2 ]
let s:_forest        = [ '#00875F', 29, 10, 2 ]
let s:_jade          = [ '#00af5f', 35, 2, 2 ]
let s:_maroon        = [ '#5f0000', 52, 1, 7 ]
let s:_richblue      = [ '#5f5faf', 61, 5, 5 ]
let s:_laurel        = [ '#5f875f', 65, 2, 2 ]
let s:_chill         = [ '#5f8787', 66, 6, 6 ]
let s:_cornflower    = [ '#5f87ff', 69, 4, 4 ]
let s:_fern          = [ '#5faf5f', 71, 10, 2 ]
let s:_fountain      = [ '#5fafaf', 73, 4, 4 ]
let s:_turqoise      = [ '#5fd7ff', 81, 14, 6 ]
let s:_darkred       = [ '#870000', 88, 1, 1]
let s:_darkviolet    = [ '#8700df', 92, 5, 5 ]
let s:_manatee       = [ '#8787af', 103, 4, 4 ]
let s:_ziggurat      = [ '#87afaf', 109, 4, 4 ]
let s:_maya          = [ '#87afff', 111, 4, 4]
let s:_mantis        = [ '#87d75f', 113, 10, 2 ]
let s:_lightgreen    = [ '#87ff87', 120, 10, 2 ]
let s:_aquamarine    = [ '#87ffd7', 122, 6, 6 ]
let s:_freespeech    = [ '#af0000', 124, 9, 1 ]
let s:_darkviolet    = [ '#af00d7', 128, 5, 5 ]
let s:_goldenbrown   = [ '#af5f00', 130, 13, 5 ]
let s:_tapestry      = [ '#af5f87', 132, 13, 5 ]
let s:_mediumorchid  = [ '#af5fd7', 134, 13, 5]
let s:_londonhue     = [ '#af87af', 139, 5, 5 ]
let s:_biloba        = [ '#af87d7', 140, 5, 5 ]
let s:_citrus        = [ '#afaf00', 142, 3, 3 ]
let s:_olive         = [ '#afaf5f', 143, 10, 2 ]
let s:_lavender      = [ '#afafd7', 146, 13, 5 ]
let s:_moss          = [ '#afd7af', 151, 10, 2]
let s:_sinbad        = [ '#afd7d7', 152, 4, 4 ]
let s:_columbia      = [ '#afd7ff', 153, 12, 4 ]
let s:_mint          = [ '#afff87', 156, 10, 2 ]
let s:_celadon       = [ '#afffaf', 157, 10, 2 ]
let s:_paleturquoise = [ '#afffff', 159, 12, 4]
let s:_venetian      = [ '#d70000', 160, 9, 1 ]
let s:_roman         = [ '#d75f5f', 167, 1, 1]
let s:_thistle       = [ '#d7afd7', 182, 13, 5 ]
let s:_mauve         = [ '#d7afff', 183, 13, 5 ]
let s:_quartz        = [ '#d7d7ff', 189, 13, 5 ]
let s:_lightcyan     = [ '#d7ffff', 195, 14, 6 ]
let s:_bittersweet   = [ '#ff5f5f', 203, 9, 1 ]
let s:_darkorange    = [ '#ff8700', 208, 3, 3 ]
let s:_salmon        = [ '#ff8787', 210, 13, 5 ]
let s:_orange        = [ '#ffaf00', 214, 3, 3]
let s:_rajah         = [ '#ffaf5f', 215, 3, 3 ]
let s:_sundown       = [ '#ffafaf', 217, 9, 1 ]
let s:_lavenderrose  = [ '#ffafff', 219, 13, 5 ]
let s:_gold          = [ '#ffd700', 220, 11, 3 ]
let s:_cosmos        = [ '#ffd7d7', 224, 13, 5 ]
let s:_shalimar      = [ '#ffffaf', 229, 11, 3]

" Palette 
" ------------------------------------------------------------------------------

let s:lightfg  = s:_white         " #eeeeee
let s:fg       = s:_gray21        " #dadada
let s:darkfg   = s:_gray10        " #808080

let s:lightbg  = s:_gray4         " #3a3a3a
let s:bg       = s:_gray2         " #262626
let s:darkbg   = s:_gray0         " #121212

let s:darkred  = s:_maroon        " #5f0000
let s:lightred = s:_roman         " #d75f5f

let s:darkgreen= s:_darkgreen     " #005f00
let s:green    = s:_moss          " #afd7af

let s:orange   = s:_orange        " #ffaf00
let s:yellow   = s:_shalimar      " #ffffaf

let s:darkblue = s:_darkblue      " #000087
let s:blue     = s:_maya          " #87afff

let s:magenta  = s:_mediumorchid  " #af5fd7

let s:cyan     = s:_paleturquoise " #afffff

let s:positive = s:green
let s:neutral  = s:blue
let s:negative = s:darkred

" UI Defaults 
" ------------------------------------------------------------------------------
" Schema: see function s:H()
" s:h(<SyntaxGroup>!, <foreground>, <background>, <style>)
" Note: if you ommit fields with "", the default fg / bg will be inherited
" Note: entirely omitted groups fallback to their parent
" for example "Function" inherits "Identifier" by default

call s:H("Normal",       s:fg,        s:bg,       "")
" default values
" omitted values inherit this 

call s:H("ColorColumn",  "",          s:lightbg,  "")
" set colorcolumn = <column numbers>
" vertical colored line, used to align text or not go over a certain textwidth
call s:H("Conceal",      "",   "",         "")
" set conceallevel = <0-3>
call s:H("Cursor",  s:darkbg, s:fg,       "")
call s:H("iCursor", s:darkbg, s:fg,       "")
" Cursor
call s:H("CursorColumn", "",          s:lightbg,  "")
" vertical highlight of current cursor position
call s:H("CursorLine",   "",          s:lightbg,  "")
" horizontal highlight of current cursor position
call s:H("CursorLineNr", s:lightfg,   s:darkbg,   "bold")
" linenumber of cursor position

call s:H("DiffAdd",    "", s:darkgreen, "")
" Note: ignoring DiffChange, its irritating
call s:H("DiffChange", "", "", "")
call s:H("DiffDelete", "", s:darkred, "")
" Note: Using DiffText instead of DiffChange
call s:H("DiffText",   "", s:darkblue, "")
" diff mode
call s:H("Directory",    s:blue,  "",         "")
" directory names and other special names in listings

call s:H("ErrorMsg",     s:yellow,    s:negative, "")
" generic error message

call s:H("FoldColumn",   "",          s:bg,  "")
" set foldcolumn = 1
" gutter for folds
call s:H("Folded",       s:fg,   s:lightbg,  "")
" line highlight for closed folds

call s:H("IncSearch",    s:darkbg,     s:orange,         "")
" set incearch
" highlight for search queries

call s:H("LineNr",       s:darkfg,   s:darkbg,   "")
" set number, and/or set relativenumber
" number gutter

call s:H("MatchParen",   s:orange,     s:lightbg,   "bold")
" matching parenthesis
call s:H("ModeMsg",      s:blue,  s:darkbg,   "")
call s:H("MoreMsg",      s:blue,  s:darkbg,   "")
call s:H("NonText",      s:orange,     "",         "")
" set showbreak = <char>
" characters that visualize linebreaks, tabs etc.

call s:H("Pmenu",     s:blue,     s:lightbg,  "")
" popup menu
call s:H("PmenuSbar",    "",          s:lightbg,   "")
" popup menu scrollbar
call s:H("PmenuSel",     s:orange,     s:lightbg,  "")
" popup menu selected text
call s:H("PmenuThumb",   s:green,          "",         "")
" popup menu thumb of scrollbar 

call s:H("Question",     s:cyan, s:lightbg,   "bold")
" 'hit-enter' prompt and yes/no questions

call s:H("Search",       s:darkbg,    s:orange,         "")
" set hlsearch
" highlight of last search query
" also used for current line in quickfix
call s:H("SignColumn",   s:lightfg,          s:darkbg,   "")
" sign gutter
call s:H("SpecialKey",   s:orange,     "",         "")
" :help listchars
" non-text chars like mappings, eol-characters, nbsp etc.
call s:H("SpelBad",      s:negative,  "",         "undercurl")
" unrecognized by spellchecker
call s:H("SpellRare",    s:yellow,   "",         "undercurl")
" rare word
call s:H("SpellCap",     s:magenta, "",         "undercurl")
" should be starting with a capital letter
call s:H("SpellLocal",   s:green,    "",         "undercurl")
" recognized as from another locale
call s:H("StatusLine",   s:lightfg,   s:darkbg,  "")
" set lastshow = <0-2>
" statusline of current window
call s:H("StatusLineNC", s:darkfg,    s:bg,   "")
" statusline of non-current window

call s:H("TabLineSel",   s:bg,   s:cyan,   "")
" active tabpage label
call s:H("TabLine",      s:lightfg,   s:darkbg,  "")
" nonactive tabpage label
call s:H("TabLineFill",  s:fg,    s:bg,  "")
" background of tabline, no labels
call s:H("Title",        "",     "",         "bold")
" titles, i guess? no idea
" doc says 'titles for output from :set all, :autocmd etc.'

call s:H("VertSplit",    "",   s:darkbg,   "")
" column separating splits
call s:H("Visual",       s:lightfg,   s:blue,  "") 
" visually selected lines

call s:H("WildMenu",     s:magenta,    "",         "")
" current match in wildmenu completion
call s:H("WarningMsg",   s:yellow,  s:negative,         "bold")
" warning messages
" Default Syntax Groups 
" ------------------------------------------------------------------------------
" VIM classifes MAJOR and MINOR syntax groups
" by default, every MINOR inherits its MAJORS values
" uncomment the function call to specify the MINORS values

call s:H("Comment",        s:darkfg,        "",         "italic")

call s:H("Constant",       s:cyan,     "",         "")
"
call s:H("String",         s:green,         "",         "")
" any string
" inherits constant by default
"
hi! link Character String
" call s:H("Character",      s:character,      "",         "")
" any single character: 'c', '\n'
" inherits constant by default

call s:H("Number",         s:cyan,      "",         "bold")
" any number, including unit
" inherits constant by default

" call s:H("Boolean",        s:boolean,        "",         "")
" any boolean: TRUE, false
" inherits constant by default

" call s:H("Float",          s:float,          "",         "")
hi! link Float Number
" a floating point constant: 2.3e10
" inherits constant by default

call s:H("Identifier",     s:magenta,        s:bg,         "")
" any variable name

call s:H("Function",       s:lightred,       "",         "")
" any function, method, class
" inherits identifier by default

call s:H("Statement",      s:blue,         "",         "")
" any statement

" call s:H("Conditional",    s:statement,      "",         "")
" if, then, else, endif, switch, etc.
" inherits statement by default

" call s:H("Repeat",         s:repeat,         "",         "")
" for, do, while, etc.
" inherits statement by default

" call s:H("Label",          s:label,          "",         "")
" case, default, etc.
" inherits statement by default

" call s:H("Operator",       s:operator,       "",         "")
" "sizeof", "+", "*", etc.
" inherits statement by default

" call s:H("Keyword",        s:keyword,        "",         "")
" any other keyword
" inherits statement by default

" call s:H("Exception",      s:exception,      "",         "")
" try, catch, throw
" inherits statement by default

call s:H("PreProc",        s:cyan,      "",         "italic")
" generic preprocessor

" call s:H("Include",        s:include,        "",         "")
" inherits preproc by default

" call s:H("Define",         s:define,         "",         "")
" inherits preproc by default

" call s:H("Macro",          s:macro,          "",         "")
" inherits preproc by default

" call s:H("PreCondit",      s:precondit,      "",         "")
" inherits preproc by default

call s:H("Type",           s:yellow,         "",         "")
" int, long, char, etc.

" call s:H("StorageClass",   s:storageclass,   "",         "")
" static, register, volatile, etc.
" inherits type by default

" call s:H("Structure",      s:structure,      "",         "")
" struct, union, enum, etc.
" inherits type by default

" call s:H("Typedef",        s:typedef,        "",         "")
" A typedef
" inherits type by default

call s:H("Special",        s:orange,          "",         "")
" any special symbol

" call s:H("SpecialChar",    s:specialchar,    "",         "")
" inherits special by default

" call s:H("Tag",            s:tag,            "",         "")
" inherits special by default

call s:H("Delimiter",      s:lightred,      "",         "")
" inherits special by default

" call s:H("SpecialComment", s:specialcomment, "",         "")
" inherits special by default

call s:H("Debug",          s:yellow,          "",         "")
" inherits special by default

call s:H("Underlined",     s:magenta,         "",         "")

call s:H("Ignore",         "",               "",         "")

call s:H("Error",          s:yellow,         s:negative, "bold")

call s:H("Todo",           s:lightfg,        s:lightbg,  "bold")

" vimscript
" ------------------------------------------------------------------------------
hi link vimSet Normal
hi link vimSetEqual Normal
hi link vimVar Identifier
hi link vimFunc Function
hi link vimUserFunc Function
hi link vimIsCommand Function
hi link vimOper Operator
hi link vimOperParen Statement
hi link helpSpecial Special
hi link vimCommentString String
hi link vimCommentTitle Title
" vimCommand       
" vimCmdSep        
" helpExample      
" helpOption       
" helpNote         
" helpVim          
" helpHyperTextJump
" helpHyperTextEntry
" vimIsCommand     
" vimSynMtchOpt    
" vimSynType       
" vimHiLink        
" vimHiGroup       
" vimGroup         

" HTML
call s:H("htmlBold",        "",               "",           "bold")
call s:H("htmlItalic",      "",               "",           "italic")
" htmlTag          
" htmlEndTag       
" htmlTagN         
" htmlTagName      
" htmlSpecialTagName
" htmlArg          
" javaScript       
" 
" CSS / SASS 
" ------------------------------------------------------------------------------
"HiLink cssComment Comment
hi link cssVendor cssProp
"HiLink cssHacks Comment
"HiLink cssTagName Statement
"HiLink cssDeprecated Error
"HiLink cssSelectorOp Special
"HiLink cssSelectorOp2 Special
"HiLink cssAttrComma Special

"HiLink cssAnimationProp cssProp
"HiLink cssBackgroundProp cssProp
"HiLink cssBorderProp cssProp
"HiLink cssBoxProp cssProp
"HiLink cssColorProp cssProp
"HiLink cssContentForPagedMediaProp cssProp
"HiLink cssDimensionProp cssProp
"HiLink cssFlexibleBoxProp cssProp
"HiLink cssFontProp cssProp
"HiLink cssGeneratedContentProp cssProp
"HiLink cssGridProp cssProp
"HiLink cssHyerlinkProp cssProp
"HiLink cssLineboxProp cssProp
"HiLink cssListProp cssProp
"HiLink cssMarqueeProp cssProp
"HiLink cssMultiColumnProp cssProp
"HiLink cssPagedMediaProp cssProp
"HiLink cssPositioningProp cssProp
"HiLink cssPrintProp cssProp
"HiLink cssRubyProp cssProp
"HiLink cssSpeechProp cssProp
"HiLink cssTableProp cssProp
"HiLink cssTextProp cssProp
"HiLink cssTransformProp cssProp
"HiLink cssTransitionProp cssProp
"HiLink cssUIProp cssProp
"HiLink cssIEUIProp cssProp
"HiLink cssAuralProp cssProp
"HiLink cssRenderProp cssProp
"HiLink cssMobileTextProp cssProp

"HiLink cssAnimationAttr cssAttr
"HiLink cssBackgroundAttr cssAttr
"HiLink cssBorderAttr cssAttr
"HiLink cssBoxAttr cssAttr
"HiLink cssContentForPagedMediaAttr cssAttr
"HiLink cssDimensionAttr cssAttr
"HiLink cssFlexibleBoxAttr cssAttr
"HiLink cssFontAttr cssAttr
"HiLink cssGeneratedContentAttr cssAttr
"HiLink cssGridAttr cssAttr
"HiLink cssHyerlinkAttr cssAttr
"HiLink cssLineboxAttr cssAttr
"HiLink cssListAttr cssAttr
"HiLink cssMarginAttr cssAttr
"HiLink cssMarqueeAttr cssAttr
"HiLink cssMultiColumnAttr cssAttr
"HiLink cssPaddingAttr cssAttr
"HiLink cssPagedMediaAttr cssAttr
"HiLink cssPositioningAttr cssAttr
"HiLink cssGradientAttr cssAttr
"HiLink cssPrintAttr cssAttr
"HiLink cssRubyAttr cssAttr
"HiLink cssSpeechAttr cssAttr
"HiLink cssTableAttr cssAttr
"HiLink cssTextAttr cssAttr
"HiLink cssTransformAttr cssAttr
"HiLink cssTransitionAttr cssAttr
"HiLink cssUIAttr cssAttr
"HiLink cssIEUIAttr cssAttr
"HiLink cssAuralAttr cssAttr
"HiLink cssRenderAttr cssAttr
"HiLink cssCommonAttr cssAttr

"HiLink cssPseudoClassId PreProc
"HiLink cssPseudoClassLang Constant
"HiLink cssValueLength Number
"HiLink cssValueInteger Number
"HiLink cssValueNumber Number
"HiLink cssValueAngle Number
"HiLink cssValueTime Number
"HiLink cssValueFrequency Number
"HiLink cssFunction Constant
"HiLink cssURL String
"HiLink cssFunctionName Function
"HiLink cssFunctionComma Function
"HiLink cssColor Constant
"HiLink cssIdentifier Function
"HiLink cssInclude Include
"HiLink cssIncludeKeyword atKeyword
"HiLink cssImportant Special
hi link cssBraces Delimiter
"HiLink cssBraceError Error
"HiLink cssError Error
"HiLink cssUnicodeEscape Special
"HiLink cssStringQQ String
"HiLink cssStringQ String
"HiLink cssAttributeSelector String
"HiLink cssMedia atKeyword
"HiLink cssMediaType Special
"HiLink cssMediaComma Normal
"HiLink cssMediaKeyword Statement
"HiLink cssMediaProp cssProp
"HiLink cssMediaAttr cssAttr
"HiLink cssPage atKeyword
"HiLink cssPagePseudo PreProc
"HiLink cssPageMargin atKeyword
"HiLink cssPageProp cssProp
"HiLink cssKeyFrame atKeyword
"HiLink cssKeyFrameSelector Constant
"HiLink cssFontDescriptor Special
"HiLink cssFontDescriptorFunction Constant
"HiLink cssFontDescriptorProp cssProp
"HiLink cssFontDescriptorAttr cssAttr
"HiLink cssUnicodeRange Constant
"HiLink cssClassName Function
"HiLink cssClassNameDot Function
"HiLink cssProp StorageClass
"HiLink cssAttr Constant
hi link cssUnitDecorators Delimiter
"HiLink cssNoise Noise
"HiLink atKeyword PreProc

" Php
" ------------------------------------------------------------------------------
hi link phpParent Delimiter

" vim-sneak
" ------------------------------------------------------------------------------
hi link SneakPluginTarget IncSearch
hi link SneakStreakTarget Identifier
hi link SneakPluginScope IncSearch
hi link SneakStreakMask SpecialKey
" hi! link SneakStreakStatusLine

" incsearch
" ------------------------------------------------------------------------------
" hi link IncSearchMatch
" hi link IncSearchMatchReverse
" hi link IncSearchOnCursor Search
hi link IncSearchCursor Visual
" hi link IncSearchUnderline

" JavaScript 
" ------------------------------------------------------------------------------
hi link jsFuncCall Function
hi link jsFunction Function
hi link javaScriptValue Constant
hi link javaScriptTemplateVar StringDelim
hi link javaScriptTemplateDelim Identifier
hi link javaScriptTemplateString String

" scss
" hi link scssNestedProperty cssProp
" hi link scssVariable  Identifier
" hi link scssGlobal    Special
" hi link scssNull      Constant
" hi link scssBoolean   Constant
" hi link scssBooleanOp Operator
" hi link scssMixin     PreProc
" hi link scssMixinName Function
hi link scssMixinParams Delimiter
" hi link scssContent   PreProc
" hi link scssFunctionDefinition  PreProc
" hi link scssFunctionName Function
" hi link scssReturn    Statement
" hi link scssInclude   PreProc
" hi link scssExtend    PreProc
" hi link scssOptional  Special
" hi link scssComment   Comment
" hi link scssStickyCommentChar Special
" hi link scssSelectorChar Special
" hi link scssSelectorName Identifier
" hi link scssAmpersand Character
" hi link scssDebug     Debug
" hi link scssWarn      Debug
" hi link scssError     Debug
" hi link scssDefault   Special
" hi link scssIf        Conditional
" hi link scssElse      Conditional
" hi link scssWhile     Repeat
" hi link scssForKeyword  Repeat
" hi link scssEachKeyword Repeat
" hi link scssInterpolationDelimiter Delimiter
" hi link scssImport    Include
" hi link scssTodo      Todo
" hi link scssAtRoot    Keyword
" hi link scssMapParens Delimiter
"
" Autohotkey 
" ------------------------------------------------------------------------------
" hi def link autohotkeyHotkey              Type
" hi def link autohotkeyKey                 Type
" hi def link autohotkeyDelimiter           Delimiter
" hi def link autohotkeyHotstringDefinition Type
" hi def link autohotkeyHotstring           Type
" hi def link autohotkeyHotstringDelimiter  autohotkeyDelimiter
" hi def link autohotkeyHotstringOptions    Special
" hi def link autohotkeyString              String
" hi def link autohotkeyStringDelimiter     autohotkeyString
hi def link autohotkeyVariable            Identifier
hi def link autohotkeyVariableDelimiter   Delimiter
hi def link autohotkeyBuiltinVariable     autohotkeyVariable            
" hi def link autohotkeyCommand             Keyword
" hi def link autohotkeyFunction            Function
" hi def link autohotkeyStatement           autohotkeyCommand
" hi def link autohotkeyRepeat              Repeat
" hi def link autohotkeyConditional         Conditional
" hi def link autohotkeyPreProcStart        PreProc
" hi def link autohotkeyInclude             Include
" hi def link autohotkeyPreProc             PreProc
" hi def link autohotkeyMatchClass          Typedef
" hi def link autohotkeyNumber              Number
" hi def link autohotkeyInteger             autohotkeyNumber
" hi def link autohotkeyFloat               autohotkeyNumber
" hi def link autohotkeyType                Type
" hi def link autohotkeyBoolean             Boolean


" git
" ------------------------------------------------------------------------------
" gitDateHeader
" gitIdentityHeader
" gitIdentityKeyword
" gitNotesHeader
" gitReflogHeader
" gitKeyword
" gitIdentity
" gitEmailDelimiter
" gitEmail
" gitDate
" gitMode
" gitHashAbbrev
" gitHash
" gitReflogMiddle
" gitReference
" gitStage
" gitType
hi link gitDiffAdded DiffAdded
hi link gitDiffRemoved DiffDelete
" gitcommit
" gitcommitSummary
" gitcommitComment
" gitcommitUntracked 
" gitcommitDiscarded 
" gitcommitSelected  
" gitcommitUnmerged
" gitcommitOnBranch
" gitcommitBranch
" gitcommitNoBranch
" gitcommitDiscardedType
" gitcommitSelectedType
" gitcommitUnmergedType
" gitcommitType
" gitcommitNoChanges
" gitcommitHeader
" gitcommitHeader
" gitcommitUntrackedFile
" gitcommitDiscardedFile
" gitcommitSelectedFile
" gitcommitUnmergedFile
" gitcommitFile
" gitcommitDiscardedArrow
" gitcommitSelectedArrow 
" gitcommitUnmergedArrow 
" gitcommitArrow
" gitcommitOverflow
" gitcommitBlank

" gitgutter 
" ------------------------------------------------------------------------------
call s:H("GitGutterAdd",s:positive,    s:darkbg,"")
call s:H("GitGutterChange",s:neutral,  s:darkbg,"")
call s:H("GitGutterDelete",s:lightred, s:darkbg,"")
hi link GitGutterChangeDelete GitGutterDelete

" dirvish
" ------------------------------------------------------------------------------
hi link DirvishPathTail Directory
hi link DirvishPathHead Comment

" syntastic
" ------------------------------------------------------------------------------
hi link SyntasticErrorSign ErrorMsg
hi link SyntasticWarningSign Debug
hi link SyntasticStyleErrorSign ErrorMsg
hi link SyntasticStyleWarningSign Debug

hi link SyntasticErrorLine ErrorMsg
hi link SyntasticWarningLine Debug
hi link SyntasticStyleErrorLine ErrorMsg
hi link SyntasticStyleWarningLine Debug

" CtrlP
" ------------------------------------------------------------------------------
" the prompt's cursor when moving over the text
hi link CtrlPPrtCursor SpecialKey
" the matched pattern
hi link CtrlPMatch SpecialKey
hi link CtrlPBufferPath Directory
hi link CtrlPBufferCurMod Title

" For the CtrlP buffer:
" CtrlPNoEntries : the message when no match is found (Error)
" CtrlPMatch     : the matched pattern (Identifier)
" CtrlPLinePre   : the line prefix '>' in the match window
" CtrlPPrtBase   : the prompt's base (Comment)
" CtrlPPrtText   : the prompt's text (|hl-Normal|)
" CtrlPPrtCursor : the prompt's cursor when moving over the text (Constant)

" Buffer explorer mode:
" CtrlPBufferNr     : buffer number
" CtrlPBufferInd    : '+', '-', '=' and '#' indicators (see |:buffers|)
" CtrlPBufferHid    : hidden buffer
" CtrlPBufferHidMod : hidden and modified buffer
" CtrlPBufferVis    : visible buffer
" CtrlPBufferVisMod : visible and modified buffer
" CtrlPBufferCur    : current buffer
" CtrlPBufferCurMod : current and modified buffer
" CtrlPBufferPath   : buffer path

" In extensions:
" CtrlPTabExtra  : the part of each line that's not matched against (Comment)
" CtrlPBufName   : the buffer name an entry belongs to (|hl-Directory|)
" CtrlPTagKind   : the kind of the tag in buffer-tag mode (|hl-Title|)
" CtrlPqfLineCol : the line and column numbers in quickfix mode (Comment)
" CtrlPUndoT     : the elapsed time in undo mode (|hl-Directory|)
" CtrlPUndoBr    : the square brackets [] in undo mode (Comment)
" CtrlPUndoNr    : the undo number inside [] in undo mode (String)
" CtrlPUndoSv    : the point where the file was saved (Comment)
" CtrlPUndoPo    : the current position in the undo tree (|hl-Title|)
" CtrlPBookmark  : the name of the bookmark (Identifier)

" Highlight groups:
" CtrlPMode1 : 'file' or 'path' or 'line', and the current mode (Character)
" CtrlPMode2 : 'prt' or 'win', 'regex', the working directory (|hl-LineNr|)
" CtrlPStats : the scanning status (Function)

" cleanup
" ------------------------------------------------------------------------------
" delf s:H
" delete highlight function
