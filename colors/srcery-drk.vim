" 'srcery.vim' -- Vim color scheme.
" Maintainer:   Roosta (mail@roosta.sh)
" Corruptor: Kudabux
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='srcery'

if !has('gui_running') && &t_Co != 256
  finish
endif

" Palette {{{

let s:black          = ["#1C1B19", 0]
let s:red            = ["#FF3128", 1]
let s:green          = ["#519F50", 2]
let s:yellow         = ["#FBB829", 3]
let s:blue           = ["#5573A3", 4]
let s:magenta        = ["#E02C6D", 5]
let s:cyan           = ["#0AAEB3", 6]
let s:gray           = ["#918175", 7]
let s:bright_black   = ["#2D2C29", 8]
let s:bright_red     = ["#F75341", 9]
let s:bright_green   = ["#98BC37", 10]
let s:bright_yellow  = ["#FED06E", 11]
let s:bright_blue    = ["#8EB2F7", 12]
let s:bright_magenta = ["#E35682", 13]
let s:bright_cyan    = ["#53FDE9", 14]
let s:white          = ["#FCE8C3", 15]

" default xterm colors.
let s:orange        = ['#D75F00', 166]  
let s:bright_orange = ['#FF8700', 208]
let s:hard_black    = ['#080808', 232]
let s:gray_alt      = ['#4E4E4E', 239]

"}}}
" Setup Variables: {{{

let s:none = ['NONE', 'NONE']

if !exists('g:srcery_bold')
  let g:srcery_bold=1
endif

if !exists('g:srcery_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:srcery_italic=1
  else
    let g:srcery_italic=0
  endif
endif

if !exists('g:srcery_undercurl')
  let g:srcery_undercurl=1
endif

if !exists('g:srcery_underline')
  let g:srcery_underline=1
endif

if !exists('g:srcery_inverse')
  let g:srcery_inverse=1
endif

" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'
if g:srcery_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:srcery_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:srcery_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:srcery_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:srcery_inverse == 0
  let s:inverse = ''
endif

" }}}
" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction
"}}}
" Srcery Hi Groups: {{{

" memoize common hi groups
call s:HL('SrceryWhite', s:white)
call s:HL('SrceryRed', s:red)
call s:HL('SrceryGreen', s:green)
call s:HL('SrceryYellow', s:yellow)
call s:HL('SrceryBlue', s:blue)
call s:HL('SrceryMagenta', s:magenta)
call s:HL('SrceryCyan', s:cyan)

call s:HL('SrceryRedbold', s:red, s:none, s:bold)
call s:HL('SrceryGreenbold', s:green, s:none, s:bold)
call s:HL('SrceryYellowbold', s:yellow, s:none, s:bold)
call s:HL('SrceryBluebold', s:blue, s:none, s:bold)
call s:HL('SrceryMagentabold', s:magenta, s:none, s:bold)
call s:HL('SrceryCyanbold', s:cyan, s:none, s:bold)

call s:HL('SrceryBrightRed', s:bright_red, s:none)
call s:HL('SrceryBrightGreen', s:bright_green, s:none)
call s:HL('SrceryBrightYellow', s:bright_yellow, s:none)
call s:HL('SrceryBrightBlue', s:bright_blue, s:none)
call s:HL('SrceryBrightMagenta', s:bright_magenta, s:none)
call s:HL('SrceryBrightCyan', s:bright_cyan, s:none)

" special
call s:HL('SrceryOrange', s:orange)
call s:HL('SrceryOrangeBold', s:orange, s:none, s:bold)
call s:HL('SrceryGrayAlt', s:gray_alt)
call s:HL('SrceryHardBlack', s:hard_black)

" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
call s:HL('Normal', s:white, s:black)

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:bright_black)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  " Tab pages line filler
  call s:HL('TabLineFill', s:green, s:black)
  " Active tab page label
  call s:HL('TabLineSel', s:red, s:black, s:bold)
  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:yellow, s:bright_black, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:bright_black)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:yellow, s:black)
endif

hi! link NonText SrceryGrayAlt
hi! link SpecialKey SrceryGrayAlt

call s:HL('Visual',    s:none,  s:black, s:inverse)
hi! link VisualNOS Visual

call s:HL('Search',    s:black, s:yellow)
call s:HL('IncSearch', s:black, s:yellow)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:white, s:bright_black)
call s:HL('StatusLineNC', s:white, s:bright_black, s:underline)

" The column separating vertically split windows
call s:HL('VertSplit', s:bright_black, s:bright_black)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:black, s:bold)

" Directory names, special names in listing
hi! link Directory SrceryGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title SrceryGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:white, s:red)
" More prompt: -- More --
hi! link MoreMsg SrceryYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg SrceryYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question SrceryOrangeBold
" Warning messages
hi! link WarningMsg SrceryRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:gray)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:black)

" Line used for closed folds
call s:HL('Folded', s:gray, s:black, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:black)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

hi! link Special SrceryOrange

call s:HL('Comment', s:gray, s:none, s:italic)
call s:HL('Todo', s:white, s:black, s:bold . s:italic)
call s:HL('Error', s:red, s:black, s:bold . s:inverse)

" String constant: "this is a string"
call s:HL('String',  s:bright_green)

" Generic statement
hi! link Statement SrceryRed
" if, then, else, endif, swicth, etc.
hi! link Conditional SrceryRed
" for, do, while, etc.
hi! link Repeat SrceryRed
" case, default, etc.
hi! link Label SrceryRed
" try, catch, throw
hi! link Exception SrceryRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword SrceryRed

" Variable name
hi! link Identifier SrceryBlue
" Function name
hi! link Function SrceryGreenBold

" Generic preprocessor
hi! link PreProc SrceryCyan
" Preprocessor #include
hi! link Include SrceryCyan
" Preprocessor #define
hi! link Define SrceryCyan
" Same as Define
hi! link Macro SrceryCyan
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit SrceryCyan

" Generic constant
hi! link Constant SrceryBrightMagenta
" Character constant: 'c', '/n'
hi! link Character SrceryBrightMagenta
" Boolean constant: TRUE, false
hi! link Boolean SrceryBrightMagenta
" Number constant: 234, 0xff
hi! link Number SrceryBrightMagenta
" Floating point constant: 2.3e10
hi! link Float SrceryBrightMagenta

" Generic type
hi! link Type SrceryYellow
" static, register, volatile, etc
hi! link StorageClass SrceryOrange
" struct, union, enum, etc.
hi! link Structure SrceryCyan
" typedef
hi! link Typedef SrceryYellow

" }}}
" Completion Menu: {{{

if version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:white, s:black)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:black, s:blue, s:bold)
  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, s:black)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:black)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:red, s:black, s:inverse)
call s:HL('DiffAdd',    s:green, s:black, s:inverse)
"call s:HL('DiffChange', s:black, s:blue)
"call s:HL('DiffText',   s:black, s:yellow)

" Alternative setting
call s:HL('DiffChange', s:cyan, s:black, s:inverse)
call s:HL('DiffText',   s:yellow, s:black, s:inverse)

" }}}
" Spelling: {{{

if has("spell")
  " Not capitalised word, or compile warnings
  call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:magenta)
endif

" }}}

" Plugin specific -------------------------------------------------------------
" Sneak: {{{

hi! link SneakPluginTarget Search
hi! link SneakStreakTarget Search
call s:HL('SneakStreakMask', s:yellow, s:yellow)
hi! link SneakStreakStatusLine Search

" }}}
" Rainbow Parentheses: {{{

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue', '#458588'], ['magenta', '#b16286'],
      \ ['red',  '#cc241d'], ['166',     '#d65d0e']
    \ ]
endif

let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

"}}}
" GitGutter: {{{

hi! link GitGutterAdd SrceryGreen
hi! link GitGutterChange SrceryCyan
hi! link GitGutterDelete SrceryRed
hi! link GitGutterChangeDelete SrceryCyan

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile SrceryGreen
hi! link gitcommitDiscardedFile SrceryRed

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded SrceryGreen
hi! link diffRemoved SrceryRed
hi! link diffChanged SrceryCyan

hi! link diffFile SrceryOrange
hi! link diffNewFile SrceryYellow

hi! link diffLine SrceryBlue

" }}}
" Html: {{{

hi! link htmlTag SrceryBlue
hi! link htmlEndTag SrceryBlue

hi! link htmlTagName SrceryCyanBold
hi! link htmlArg SrceryCyan

hi! link htmlScriptTag SrceryMagenta
hi! link htmlTagN SrceryFg1
hi! link htmlSpecialTagName SrceryCyanBold

call s:HL('htmlLink', s:white, s:none, s:underline)

hi! link htmlSpecialChar SrceryYellow

call s:HL('htmlBold', s:white, s:black, s:bold)
call s:HL('htmlBoldUnderline', s:white, s:black, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:white, s:black, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:white, s:black, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:white, s:black, s:underline)
call s:HL('htmlUnderlineItalic', s:white, s:black, s:underline . s:italic)
call s:HL('htmlItalic', s:white, s:black, s:italic)

" }}}
" Xml: {{{

hi! link xmlTag SrceryBlue
hi! link xmlEndTag SrceryBlue
hi! link xmlTagName SrceryBlue
hi! link xmlEqual SrceryBlue
hi! link docbkKeyword SrceryCyanBold

hi! link xmlDocTypeDecl SrceryGray
hi! link xmlDocTypeKeyword SrceryMagenta
hi! link xmlCdataStart SrceryGray
hi! link xmlCdataCdata SrceryMagenta
hi! link dtdFunction SrceryGray
hi! link dtdTagName SrceryMagenta

hi! link xmlAttrib SrceryCyan
hi! link xmlProcessingDelim SrceryGray
hi! link dtdParamEntityPunct SrceryGray
hi! link dtdParamEntityDPunct SrceryGray
hi! link xmlAttribPunct SrceryGray

hi! link xmlEntity SrceryYellow
hi! link xmlEntityPunct SrceryYellow
" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:white, s:none, s:bold . s:italic)

hi! link vimNotation SrceryYellow
hi! link vimBracket SrceryYellow
hi! link vimMapModKey SrceryYellow
hi! link vimFuncSID SrceryWhite
hi! link vimSetSep SrceryWhite
hi! link vimSep SrceryWhite
hi! link vimContinue SrceryWhite

" }}}
" Clojure: {{{

hi! link clojureKeyword SrceryBlue
hi! link clojureCond SrceryOrange
hi! link clojureSpecial SrceryOrange
hi! link clojureDefine SrceryOrange

hi! link clojureFunc SrceryYellow
hi! link clojureRepeat SrceryYellow
hi! link clojureCharacter SrceryCyan
hi! link clojureStringEscape SrceryCyan
hi! link clojureException SrceryRed

hi! link clojureRegexp SrceryCyan
hi! link clojureRegexpEscape SrceryCyan
call s:HL('clojureRegexpCharClass', s:white, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen SrceryFg3
hi! link clojureAnonArg SrceryYellow
hi! link clojureVariable SrceryBlue
hi! link clojureMacro SrceryOrange

hi! link clojureMeta SrceryYellow
hi! link clojureDeref SrceryYellow
hi! link clojureQuote SrceryYellow
hi! link clojureUnquote SrceryYellow
" }}}
" C: {{{

hi! link cOperator SrceryMagenta
hi! link cStructure SrceryYellow

" }}}
" Python: {{{

hi! link pythonBuiltin SrceryYellow
hi! link pythonBuiltinObj SrceryYellow
hi! link pythonBuiltinFunc SrceryYellow
hi! link pythonFunction SrceryCyan
hi! link pythonDecorator SrceryRed
hi! link pythonInclude SrceryBlue
hi! link pythonImport SrceryBlue
hi! link pythonRun SrceryBlue
hi! link pythonCoding SrceryBlue
hi! link pythonOperator SrceryRed
hi! link pythonExceptions SrceryMagenta
hi! link pythonBoolean SrceryMagenta
hi! link pythonDot SrceryWhite

" }}}
" CSS: {{{

hi! link cssBraces SrceryBlue
hi! link cssFunctionName SrceryYellow
hi! link cssIdentifier SrceryYellow
hi! link cssClassName SrceryGreen
hi! link cssColor SrceryBlue
hi! link cssSelectorOp SrceryBlue
hi! link cssSelectorOp2 SrceryBlue
hi! link cssImportant SrceryGreen
hi! link cssVendor SrceryFg1

hi! link cssTextProp SrceryCyan
hi! link cssAnimationProp SrceryCyan
hi! link cssUIProp SrceryYellow
hi! link cssTransformProp SrceryCyan
hi! link cssTransitionProp SrceryCyan
hi! link cssPrintProp SrceryCyan
hi! link cssPositioningProp SrceryYellow
hi! link cssBoxProp SrceryCyan
hi! link cssFontDescriptorProp SrceryCyan
hi! link cssFlexibleBoxProp SrceryCyan
hi! link cssBorderOutlineProp SrceryCyan
hi! link cssBackgroundProp SrceryCyan
hi! link cssMarginProp SrceryCyan
hi! link cssListProp SrceryCyan
hi! link cssTableProp SrceryCyan
hi! link cssFontProp SrceryCyan
hi! link cssPaddingProp SrceryCyan
hi! link cssDimensionProp SrceryCyan
hi! link cssRenderProp SrceryCyan
hi! link cssColorProp SrceryCyan
hi! link cssGeneratedContentProp SrceryCyan

" }}}
" JavaScript: {{{

hi! link javaScriptBraces SrceryFg1
hi! link javaScriptFunction SrceryCyan
hi! link javaScriptIdentifier SrceryRed
hi! link javaScriptMember SrceryBlue
hi! link javaScriptNumber SrceryMagenta
hi! link javaScriptNull SrceryMagenta
hi! link javaScriptParens SrceryWhite

" }}}
" YAJS: {{{

hi! link javascriptImport SrceryCyan
hi! link javascriptExport SrceryCyan
hi! link javascriptClassKeyword SrceryCyan
hi! link javascriptClassExtends SrceryCyan
hi! link javascriptDefault SrceryCyan

hi! link javascriptClassName SrceryYellow
hi! link javascriptClassSuperName SrceryYellow
hi! link javascriptGlobal SrceryYellow

hi! link javascriptEndColons SrceryFg1
hi! link javascriptFuncArg SrceryFg1
hi! link javascriptGlobalMethod SrceryFg1
hi! link javascriptNodeGlobal SrceryFg1

" hi! link javascriptVariable SrceryYellow
hi! link javascriptVariable SrceryRed
" hi! link javascriptIdentifier SrceryYellow
" hi! link javascriptClassSuper SrceryYellow
hi! link javascriptIdentifier SrceryYellow
hi! link javascriptClassSuper SrceryYellow

" hi! link javascriptFuncKeyword SrceryYellow
" hi! link javascriptAsyncFunc SrceryYellow
hi! link javascriptFuncKeyword SrceryCyan
hi! link javascriptAsyncFunc SrceryCyan
hi! link javascriptClassStatic SrceryYellow

hi! link javascriptOperator SrceryRed
hi! link javascriptForOperator SrceryRed
hi! link javascriptYield SrceryRed
hi! link javascriptExceptions SrceryRed
hi! link javascriptMessage SrceryRed

hi! link javascriptTemplateSB SrceryCyan
hi! link javascriptTemplateSubstitution SrceryFg1

" hi! link javascriptLabel SrceryBlue
" hi! link javascriptObjectLabel SrceryBlue
" hi! link javascriptPropertyName SrceryBlue
hi! link javascriptLabel SrceryFg1
hi! link javascriptObjectLabel SrceryFg1
hi! link javascriptPropertyName SrceryFg1

hi! link javascriptLogicSymbols SrceryFg1
hi! link javascriptArrowFunc SrceryFg1

hi! link javascriptDocParamName SrceryFg4
hi! link javascriptDocTags SrceryFg4
hi! link javascriptDocNotation SrceryFg4
hi! link javascriptDocParamType SrceryFg4
hi! link javascriptDocNamedParamType SrceryFg4

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp SrceryWhite
hi! link coffeeSpecialOp SrceryWhite
hi! link coffeeCurly SrceryYellow
hi! link coffeeParen SrceryWhite
hi! link coffeeBracket SrceryYellow

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter SrceryGreen
hi! link rubyInterpolationDelimiter SrceryCyan

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier SrceryRed
hi! link objcDirective SrceryBlue

" }}}
" Go: {{{

hi! link goDirective SrceryCyan
hi! link goConstants SrceryMagenta
hi! link goDeclaration SrceryRed
hi! link goDeclType SrceryBlue
hi! link goBuiltins SrceryYellow

" }}}
" Lua: {{{

hi! link luaIn SrceryRed
hi! link luaFunction SrceryCyan
hi! link luaTable SrceryYellow

" }}}
" MoonScript: {{{

hi! link moonSpecialOp SrceryWhite
hi! link moonExtendedOp SrceryWhite
hi! link moonFunction SrceryWhite
hi! link moonObject SrceryYellow

" }}}
" Java: {{{

hi! link javaAnnotation SrceryBlue
hi! link javaDocTags SrceryCyan
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen SrceryWhite
hi! link javaParen1 SrceryWhite
hi! link javaParen2 SrceryWhite
hi! link javaParen3 SrceryWhite
hi! link javaParen4 SrceryWhite
hi! link javaParen5 SrceryWhite
hi! link javaOperator SrceryYellow

hi! link javaVarArg SrceryGreen

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter SrceryGreen
hi! link elixirInterpolationDelimiter SrceryCyan

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition SrceryFg1
hi! link scalaCaseFollowing SrceryFg1
hi! link scalaCapitalWord SrceryFg1
hi! link scalaTypeExtension SrceryFg1

hi! link scalaKeyword SrceryRed
hi! link scalaKeywordModifier SrceryRed

hi! link scalaSpecial SrceryCyan
hi! link scalaOperator SrceryFg1

hi! link scalaTypeDeclaration SrceryYellow
hi! link scalaTypeTypePostDeclaration SrceryYellow

hi! link scalaInstanceDeclaration SrceryFg1
hi! link scalaInterpolation SrceryCyan

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:white, s:none, s:italic)

hi! link markdownH1 SrceryGreenBold
hi! link markdownH2 SrceryGreenBold
hi! link markdownH3 SrceryYellowBold
hi! link markdownH4 SrceryYellowBold
hi! link markdownH5 SrceryYellow
hi! link markdownH6 SrceryYellow

hi! link markdownCode SrceryCyan
hi! link markdownCodeBlock SrceryCyan
hi! link markdownCodeDelimiter SrceryCyan

hi! link markdownBlockquote SrceryGray
hi! link markdownListMarker SrceryGray
hi! link markdownOrderedListMarker SrceryGray
hi! link markdownRule SrceryGray
hi! link markdownHeadingRule SrceryGray

hi! link markdownUrlDelimiter SrceryWhite
hi! link markdownLinkDelimiter SrceryWhite
hi! link markdownLinkTextDelimiter SrceryWhite

hi! link markdownHeadingDelimiter SrceryYellow
hi! link markdownUrl SrceryMagenta
hi! link markdownUrlTitleDelimiter SrceryGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType SrceryYellow
" hi! link haskellOperators SrceryYellow
" hi! link haskellConditional SrceryCyan
" hi! link haskellLet SrceryYellow
"
hi! link haskellType SrceryFg1
hi! link haskellIdentifier SrceryFg1
hi! link haskellSeparator SrceryFg1
hi! link haskellDelimiter SrceryFg4
hi! link haskellOperators SrceryBlue
"
hi! link haskellBacktick SrceryYellow
hi! link haskellStatement SrceryYellow
hi! link haskellConditional SrceryYellow

hi! link haskellLet SrceryCyan
hi! link haskellDefault SrceryCyan
hi! link haskellWhere SrceryCyan
hi! link haskellBottom SrceryCyan
hi! link haskellBlockKeywords SrceryCyan
hi! link haskellImportKeywords SrceryCyan
hi! link haskellDeclKeyword SrceryCyan
hi! link haskellDeriving SrceryCyan
hi! link haskellAssocType SrceryCyan

hi! link haskellNumber SrceryMagenta
hi! link haskellPragma SrceryMagenta

hi! link haskellString SrceryGreen
hi! link haskellChar SrceryGreen

" }}}
" Json: {{{

hi! link jsonKeyword SrceryGreen
hi! link jsonQuote SrceryGreen
hi! link jsonBraces SrceryFg1
hi! link jsonString SrceryFg1

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
