" 'contrastneed.vim' -- Vim color scheme.
" Maintainer:   acg (acg@albertocg.com)
" Description:  srcery theme fork. Dark colorscheme using 16 color palette

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='contrastneed'

if !has('gui_running') && &t_Co != 256
  finish
endif

" Palette {{{

let s:black          = ["#050505", 0]
let s:red            = ["#B81109", 1]
let s:green          = ["#1CB228", 2]
let s:yellow         = ["#BAA407", 3]
let s:blue           = ["#2C5FAD", 4]
let s:magenta        = ["#E35682", 5]
let s:cyan           = ["#16A085", 6]
let s:gray           = ["#D4CDCD", 7]
let s:bright_black   = ["#1C1B19", 8]
let s:bright_red     = ["#E8160C", 9]
let s:bright_green   = ["#24E534", 10]
let s:bright_yellow  = ["#FCDF09", 11]
let s:bright_blue    = ["#408AFC", 12]
let s:bright_magenta = ["#E02C6D", 13]
let s:bright_cyan    = ["#1ABC9C", 14]
let s:white          = ["#ffffff", 15]

" default xterm colors.
let s:orange        = ['#D75F00', 166]  
let s:bright_orange = ['#FF8700', 208]
let s:hard_black    = ['#080808', 232]
let s:gray_alt      = ['#4E4E4E', 239]

"}}}
" Setup Variables: {{{

let s:none = ['NONE', 'NONE']

if !exists('g:contrastneed_bold')
  let g:contrastneed_bold=1
endif

if !exists('g:contrastneed_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:contrastneed_italic=1
  else
    let g:contrastneed_italic=0
  endif
endif

if !exists('g:contrastneed_undercurl')
  let g:contrastneed_undercurl=1
endif

if !exists('g:contrastneed_underline')
  let g:contrastneed_underline=1
endif

if !exists('g:contrastneed_inverse')
  let g:contrastneed_inverse=1
endif

" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'
if g:contrastneed_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:contrastneed_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:contrastneed_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:contrastneed_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:contrastneed_inverse == 0
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
" contrastneed Hi Groups: {{{

" memoize common hi groups
call s:HL('contrastneedWhite', s:white)
call s:HL('contrastneedRed', s:red)
call s:HL('contrastneedGreen', s:green)
call s:HL('contrastneedYellow', s:yellow)
call s:HL('contrastneedBlue', s:blue)
call s:HL('contrastneedMagenta', s:magenta)
call s:HL('contrastneedCyan', s:cyan)

call s:HL('contrastneedRedbold', s:red, s:none, s:bold)
call s:HL('contrastneedGreenbold', s:green, s:none, s:bold)
call s:HL('contrastneedYellowbold', s:yellow, s:none, s:bold)
call s:HL('contrastneedBluebold', s:blue, s:none, s:bold)
call s:HL('contrastneedMagentabold', s:magenta, s:none, s:bold)
call s:HL('contrastneedCyanbold', s:cyan, s:none, s:bold)

call s:HL('contrastneedBrightRed', s:bright_red, s:none)
call s:HL('contrastneedBrightGreen', s:bright_green, s:none)
call s:HL('contrastneedBrightYellow', s:bright_yellow, s:none)
call s:HL('contrastneedBrightBlue', s:bright_blue, s:none)
call s:HL('contrastneedBrightMagenta', s:bright_magenta, s:none)
call s:HL('contrastneedBrightCyan', s:bright_cyan, s:none)

" special
call s:HL('contrastneedOrange', s:orange)
call s:HL('contrastneedOrangeBold', s:orange, s:none, s:bold)
call s:HL('contrastneedGrayAlt', s:gray_alt)
call s:HL('contrastneedHardBlack', s:hard_black)

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
  call s:HL('TabLineFill', s:black, s:black)
  " Active tab page label
  call s:HL('TabLineSel', s:black, s:black, s:bold)
  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:red, s:black, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:black)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:red, s:black)
endif

hi! link NonText contrastneedGrayAlt
hi! link SpecialKey contrastneedGrayAlt

call s:HL('Visual',    s:none,  s:black, s:inverse)
hi! link VisualNOS Visual

call s:HL('Search',    s:black, s:yellow)
call s:HL('IncSearch', s:black, s:yellow)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:red, s:black, s:bold)
call s:HL('StatusLineNC', s:gray, s:black, s:underline)

" The column separating vertically split windows
call s:HL('VertSplit', s:red, s:black)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:black, s:bold)

" Directory names, special names in listing
hi! link Directory contrastneedGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title contrastneedGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:white, s:red)
" More prompt: -- More --
hi! link MoreMsg contrastneedRedBold
" Current mode message: -- INSERT --
hi! link ModeMsg contrastneedRedBold
" 'Press enter' prompt and yes/no questions
hi! link Question contrastneedOrangeBold
" Warning messages
hi! link WarningMsg contrastneedRedBold

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

hi! link Special contrastneedOrange

call s:HL('Comment', s:gray, s:black, s:italic . s:bold)
call s:HL('Todo', s:white, s:black, s:bold . s:italic)
call s:HL('Error', s:red, s:black, s:bold . s:inverse)

" String constant: "this is a string"
call s:HL('String',  s:bright_green)

" Generic statement
hi! link Statement contrastneedRed
" if, then, else, endif, swicth, etc.
hi! link Conditional contrastneedRed
" for, do, while, etc.
hi! link Repeat contrastneedRed
" case, default, etc.
hi! link Label contrastneedRed
" try, catch, throw
hi! link Exception contrastneedRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword contrastneedRed

" Variable name
hi! link Identifier contrastneedBlue
" Function name
hi! link Function contrastneedGreenBold

" Generic preprocessor
hi! link PreProc contrastneedCyan
" Preprocessor #include
hi! link Include contrastneedCyan
" Preprocessor #define
hi! link Define contrastneedCyan
" Same as Define
hi! link Macro contrastneedCyan
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit contrastneedCyan

" Generic constant
hi! link Constant contrastneedBrightMagenta
" Character constant: 'c', '/n'
hi! link Character contrastneedBrightMagenta
" Boolean constant: TRUE, false
hi! link Boolean contrastneedBrightMagenta
" Number constant: 234, 0xff
hi! link Number contrastneedBrightMagenta
" Floating point constant: 2.3e10
hi! link Float contrastneedBrightMagenta

" Generic type
hi! link Type contrastneedYellow
" static, register, volatile, etc
hi! link StorageClass contrastneedOrange
" struct, union, enum, etc.
hi! link Structure contrastneedCyan
" typedef
hi! link Typedef contrastneedYellow

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

hi! link GitGutterAdd contrastneedGreen
hi! link GitGutterChange contrastneedCyan
hi! link GitGutterDelete contrastneedRed
hi! link GitGutterChangeDelete contrastneedCyan

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile contrastneedGreen
hi! link gitcommitDiscardedFile contrastneedRed

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded contrastneedGreen
hi! link diffRemoved contrastneedRed
hi! link diffChanged contrastneedCyan

hi! link diffFile contrastneedOrange
hi! link diffNewFile contrastneedYellow

hi! link diffLine contrastneedBlue

" }}}
" Html: {{{

hi! link htmlTag contrastneedBlue
hi! link htmlEndTag contrastneedBlue

hi! link htmlTagName contrastneedCyanBold
hi! link htmlArg contrastneedCyan

hi! link htmlScriptTag contrastneedMagenta
hi! link htmlTagN contrastneedFg1
hi! link htmlSpecialTagName contrastneedCyanBold

call s:HL('htmlLink', s:white, s:none, s:underline)

hi! link htmlSpecialChar contrastneedYellow

call s:HL('htmlBold', s:white, s:black, s:bold)
call s:HL('htmlBoldUnderline', s:white, s:black, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:white, s:black, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:white, s:black, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:white, s:black, s:underline)
call s:HL('htmlUnderlineItalic', s:white, s:black, s:underline . s:italic)
call s:HL('htmlItalic', s:white, s:black, s:italic)

" }}}
" Xml: {{{

hi! link xmlTag contrastneedBlue
hi! link xmlEndTag contrastneedBlue
hi! link xmlTagName contrastneedBlue
hi! link xmlEqual contrastneedBlue
hi! link docbkKeyword contrastneedCyanBold

hi! link xmlDocTypeDecl contrastneedGray
hi! link xmlDocTypeKeyword contrastneedMagenta
hi! link xmlCdataStart contrastneedGray
hi! link xmlCdataCdata contrastneedMagenta
hi! link dtdFunction contrastneedGray
hi! link dtdTagName contrastneedMagenta

hi! link xmlAttrib contrastneedCyan
hi! link xmlProcessingDelim contrastneedGray
hi! link dtdParamEntityPunct contrastneedGray
hi! link dtdParamEntityDPunct contrastneedGray
hi! link xmlAttribPunct contrastneedGray

hi! link xmlEntity contrastneedYellow
hi! link xmlEntityPunct contrastneedYellow
" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:white, s:none, s:bold . s:italic)

hi! link vimNotation contrastneedYellow
hi! link vimBracket contrastneedYellow
hi! link vimMapModKey contrastneedYellow
hi! link vimFuncSID contrastneedWhite
hi! link vimSetSep contrastneedWhite
hi! link vimSep contrastneedWhite
hi! link vimContinue contrastneedWhite

" }}}
" Clojure: {{{

hi! link clojureKeyword contrastneedBlue
hi! link clojureCond contrastneedOrange
hi! link clojureSpecial contrastneedOrange
hi! link clojureDefine contrastneedOrange

hi! link clojureFunc contrastneedYellow
hi! link clojureRepeat contrastneedYellow
hi! link clojureCharacter contrastneedCyan
hi! link clojureStringEscape contrastneedCyan
hi! link clojureException contrastneedRed

hi! link clojureRegexp contrastneedCyan
hi! link clojureRegexpEscape contrastneedCyan
call s:HL('clojureRegexpCharClass', s:white, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen contrastneedFg3
hi! link clojureAnonArg contrastneedYellow
hi! link clojureVariable contrastneedBlue
hi! link clojureMacro contrastneedOrange

hi! link clojureMeta contrastneedYellow
hi! link clojureDeref contrastneedYellow
hi! link clojureQuote contrastneedYellow
hi! link clojureUnquote contrastneedYellow
" }}}
" C: {{{

hi! link cOperator contrastneedMagenta
hi! link cStructure contrastneedYellow

" }}}
" Python: {{{

hi! link pythonBuiltin contrastneedYellow
hi! link pythonBuiltinObj contrastneedYellow
hi! link pythonBuiltinFunc contrastneedYellow
hi! link pythonFunction contrastneedCyan
hi! link pythonDecorator contrastneedRed
hi! link pythonInclude contrastneedBlue
hi! link pythonImport contrastneedBlue
hi! link pythonRun contrastneedBlue
hi! link pythonCoding contrastneedBlue
hi! link pythonOperator contrastneedRed
hi! link pythonExceptions contrastneedMagenta
hi! link pythonBoolean contrastneedMagenta
hi! link pythonDot contrastneedWhite

" }}}
" CSS: {{{

hi! link cssBraces contrastneedBlue
hi! link cssFunctionName contrastneedYellow
hi! link cssIdentifier contrastneedYellow
hi! link cssClassName contrastneedGreen
hi! link cssColor contrastneedBlue
hi! link cssSelectorOp contrastneedBlue
hi! link cssSelectorOp2 contrastneedBlue
hi! link cssImportant contrastneedGreen
hi! link cssVendor contrastneedFg1

hi! link cssTextProp contrastneedCyan
hi! link cssAnimationProp contrastneedCyan
hi! link cssUIProp contrastneedYellow
hi! link cssTransformProp contrastneedCyan
hi! link cssTransitionProp contrastneedCyan
hi! link cssPrintProp contrastneedCyan
hi! link cssPositioningProp contrastneedYellow
hi! link cssBoxProp contrastneedCyan
hi! link cssFontDescriptorProp contrastneedCyan
hi! link cssFlexibleBoxProp contrastneedCyan
hi! link cssBorderOutlineProp contrastneedCyan
hi! link cssBackgroundProp contrastneedCyan
hi! link cssMarginProp contrastneedCyan
hi! link cssListProp contrastneedCyan
hi! link cssTableProp contrastneedCyan
hi! link cssFontProp contrastneedCyan
hi! link cssPaddingProp contrastneedCyan
hi! link cssDimensionProp contrastneedCyan
hi! link cssRenderProp contrastneedCyan
hi! link cssColorProp contrastneedCyan
hi! link cssGeneratedContentProp contrastneedCyan

" }}}
" JavaScript: {{{

hi! link javaScriptBraces contrastneedFg1
hi! link javaScriptFunction contrastneedCyan
hi! link javaScriptIdentifier contrastneedRed
hi! link javaScriptMember contrastneedBlue
hi! link javaScriptNumber contrastneedMagenta
hi! link javaScriptNull contrastneedMagenta
hi! link javaScriptParens contrastneedWhite

" }}}
" YAJS: {{{

hi! link javascriptImport contrastneedCyan
hi! link javascriptExport contrastneedCyan
hi! link javascriptClassKeyword contrastneedCyan
hi! link javascriptClassExtends contrastneedCyan
hi! link javascriptDefault contrastneedCyan

hi! link javascriptClassName contrastneedYellow
hi! link javascriptClassSuperName contrastneedYellow
hi! link javascriptGlobal contrastneedYellow

hi! link javascriptEndColons contrastneedFg1
hi! link javascriptFuncArg contrastneedFg1
hi! link javascriptGlobalMethod contrastneedFg1
hi! link javascriptNodeGlobal contrastneedFg1

" hi! link javascriptVariable contrastneedYellow
hi! link javascriptVariable contrastneedRed
" hi! link javascriptIdentifier contrastneedYellow
" hi! link javascriptClassSuper contrastneedYellow
hi! link javascriptIdentifier contrastneedYellow
hi! link javascriptClassSuper contrastneedYellow

" hi! link javascriptFuncKeyword contrastneedYellow
" hi! link javascriptAsyncFunc contrastneedYellow
hi! link javascriptFuncKeyword contrastneedCyan
hi! link javascriptAsyncFunc contrastneedCyan
hi! link javascriptClassStatic contrastneedYellow

hi! link javascriptOperator contrastneedRed
hi! link javascriptForOperator contrastneedRed
hi! link javascriptYield contrastneedRed
hi! link javascriptExceptions contrastneedRed
hi! link javascriptMessage contrastneedRed

hi! link javascriptTemplateSB contrastneedCyan
hi! link javascriptTemplateSubstitution contrastneedFg1

" hi! link javascriptLabel contrastneedBlue
" hi! link javascriptObjectLabel contrastneedBlue
" hi! link javascriptPropertyName contrastneedBlue
hi! link javascriptLabel contrastneedFg1
hi! link javascriptObjectLabel contrastneedFg1
hi! link javascriptPropertyName contrastneedFg1

hi! link javascriptLogicSymbols contrastneedFg1
hi! link javascriptArrowFunc contrastneedFg1

hi! link javascriptDocParamName contrastneedFg4
hi! link javascriptDocTags contrastneedFg4
hi! link javascriptDocNotation contrastneedFg4
hi! link javascriptDocParamType contrastneedFg4
hi! link javascriptDocNamedParamType contrastneedFg4

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp contrastneedWhite
hi! link coffeeSpecialOp contrastneedWhite
hi! link coffeeCurly contrastneedYellow
hi! link coffeeParen contrastneedWhite
hi! link coffeeBracket contrastneedYellow

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter contrastneedGreen
hi! link rubyInterpolationDelimiter contrastneedCyan

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier contrastneedRed
hi! link objcDirective contrastneedBlue

" }}}
" Go: {{{

hi! link goDirective contrastneedCyan
hi! link goConstants contrastneedMagenta
hi! link goDeclaration contrastneedRed
hi! link goDeclType contrastneedBlue
hi! link goBuiltins contrastneedYellow

" }}}
" Lua: {{{

hi! link luaIn contrastneedRed
hi! link luaFunction contrastneedCyan
hi! link luaTable contrastneedYellow

" }}}
" MoonScript: {{{

hi! link moonSpecialOp contrastneedWhite
hi! link moonExtendedOp contrastneedWhite
hi! link moonFunction contrastneedWhite
hi! link moonObject contrastneedYellow

" }}}
" Java: {{{

hi! link javaAnnotation contrastneedBlue
hi! link javaDocTags contrastneedCyan
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen contrastneedWhite
hi! link javaParen1 contrastneedWhite
hi! link javaParen2 contrastneedWhite
hi! link javaParen3 contrastneedWhite
hi! link javaParen4 contrastneedWhite
hi! link javaParen5 contrastneedWhite
hi! link javaOperator contrastneedYellow

hi! link javaVarArg contrastneedGreen

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter contrastneedGreen
hi! link elixirInterpolationDelimiter contrastneedCyan

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition contrastneedFg1
hi! link scalaCaseFollowing contrastneedFg1
hi! link scalaCapitalWord contrastneedFg1
hi! link scalaTypeExtension contrastneedFg1

hi! link scalaKeyword contrastneedRed
hi! link scalaKeywordModifier contrastneedRed

hi! link scalaSpecial contrastneedCyan
hi! link scalaOperator contrastneedFg1

hi! link scalaTypeDeclaration contrastneedYellow
hi! link scalaTypeTypePostDeclaration contrastneedYellow

hi! link scalaInstanceDeclaration contrastneedFg1
hi! link scalaInterpolation contrastneedCyan

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:white, s:none, s:italic)

hi! link markdownH1 contrastneedGreenBold
hi! link markdownH2 contrastneedGreenBold
hi! link markdownH3 contrastneedYellowBold
hi! link markdownH4 contrastneedYellowBold
hi! link markdownH5 contrastneedYellow
hi! link markdownH6 contrastneedYellow

hi! link markdownCode contrastneedCyan
hi! link markdownCodeBlock contrastneedCyan
hi! link markdownCodeDelimiter contrastneedCyan

hi! link markdownBlockquote contrastneedGray
hi! link markdownListMarker contrastneedGray
hi! link markdownOrderedListMarker contrastneedGray
hi! link markdownRule contrastneedGray
hi! link markdownHeadingRule contrastneedGray

hi! link markdownUrlDelimiter contrastneedWhite
hi! link markdownLinkDelimiter contrastneedWhite
hi! link markdownLinkTextDelimiter contrastneedWhite

hi! link markdownHeadingDelimiter contrastneedYellow
hi! link markdownUrl contrastneedMagenta
hi! link markdownUrlTitleDelimiter contrastneedGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType contrastneedYellow
" hi! link haskellOperators contrastneedYellow
" hi! link haskellConditional contrastneedCyan
" hi! link haskellLet contrastneedYellow
"
hi! link haskellType contrastneedFg1
hi! link haskellIdentifier contrastneedFg1
hi! link haskellSeparator contrastneedFg1
hi! link haskellDelimiter contrastneedFg4
hi! link haskellOperators contrastneedBlue
"
hi! link haskellBacktick contrastneedYellow
hi! link haskellStatement contrastneedYellow
hi! link haskellConditional contrastneedYellow

hi! link haskellLet contrastneedCyan
hi! link haskellDefault contrastneedCyan
hi! link haskellWhere contrastneedCyan
hi! link haskellBottom contrastneedCyan
hi! link haskellBlockKeywords contrastneedCyan
hi! link haskellImportKeywords contrastneedCyan
hi! link haskellDeclKeyword contrastneedCyan
hi! link haskellDeriving contrastneedCyan
hi! link haskellAssocType contrastneedCyan

hi! link haskellNumber contrastneedMagenta
hi! link haskellPragma contrastneedMagenta

hi! link haskellString contrastneedGreen
hi! link haskellChar contrastneedGreen

" }}}
" Json: {{{

hi! link jsonKeyword contrastneedGreen
hi! link jsonQuote contrastneedGreen
hi! link jsonBraces contrastneedFg1
hi! link jsonString contrastneedFg1

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
