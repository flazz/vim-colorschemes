set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="thermopylae"

" === Color Palette ===
let bg1     = '#2F2D2D' " #2F2D2D
let fg1     = '#928374' " #928374
let green1  = '#596254' " #596254
let gray1   = '#3C3836' " #3C3836
let purple1 = '#625462' " #625462
let blue1   = '#3286BA' " #3286BA
let blue2   = '#025362' " #025362
let yellow1 = '#D79921' " #D79921
let red1    = '#9D0006' " #9D0006

function! s:HL(item, guiFgColor, guiBgColor, style)
    execute 'hi ' . a:item . ' guifg=' . a:guiFgColor . ' guibg=' . a:guiBgColor . ' cterm=' . a:style
endfunction

call s:HL('Normal',       fg1,     bg1,    'NONE')      " Normal text
call s:HL('Cursor',       bg1,     fg1,    'NONE')      " The character under the cursor, has no effect in the terminal
call s:HL('CursorLine',   'NONE',  gray1,  'NONE')      " Line the cursor is on when 'cursorcolumn' set used in quickfix / unite
call s:HL('CursorColumn', 'NONE',  gray1,  'NONE')      " The screen column that the cursor is in when 'cursorcolumn' is set
call s:HL('SignColumn',   blue1,   gray1,  'NONE')      " The gutter where signs are displayed
call s:HL('Folded',       fg1,     gray1,  'NONE')      " The coloring used for folded lines
call s:HL('VertSplit',    gray1,   gray1,  'NONE')      " The column separating vertically split windows
call s:HL('Search',       blue1,   'NONE', 'underline') " The highlighting for the last search pattern
call s:HL('IncSearch',    gray1,   blue1,  'underline') " The highlighting for in criminal searching and for find and replace
call s:HL('WildMenu',     gray1,   green1, 'NONE')      " The current match in wildmenu completion
call s:HL('MatchParen',   gray1,   green1, 'bold')      " The opening or closing sibling of the currently highlighted bracket
call s:HL('Visual',       bg1,     blue2,  'NONE')      " The visual mode selection
call s:HL('NonText',      gray1,   'NONE', 'NONE')      " For characters that did not really exist in the text
call s:HL('Todo',         yellow1, bg1,    'bold')      " Keywords like; TODO, FIXME, XXX
call s:HL('Underlined',   'NONE',  'NONE', 'underline') " HTML anchor tag
call s:HL('Error',        bg1,     red1,   'NONE')      " Error highlighting
call s:HL('ErrorMsg',     bg1,     red1,   'NONE')      " Error messages on the command line
call s:HL('WarningMsg',   bg1,     red1,   'NONE')      " Warning message used in status line
call s:HL('SpecialKey',   gray1,   'NONE', 'NONE')      " More for non- printable text tabs and such
call s:HL('LineNr',       fg1,     'NONE', 'NONE')      " Line number used in quick fix window

" :help group-name
call s:HL('String',         green1,  'NONE', 'NONE')
call s:HL('Character',      'NONE',  'NONE', 'NONE')
call s:HL('Number',         'NONE',  'NONE', 'NONE')
call s:HL('Boolean',        'NONE',  'NONE', 'NONE')
call s:HL('Float',          'NONE',  'NONE', 'NONE')
call s:HL('Identifier',     'NONE',  'NONE', 'NONE')
call s:HL('Function',       'NONE',  'NONE', 'NONE')
call s:HL('Statement',      'NONE',  'NONE', 'NONE')
call s:HL('Conditional',    'NONE',  'NONE', 'NONE')
call s:HL('Repeat',         'NONE',  'NONE', 'NONE')
call s:HL('Label',          'NONE',  'NONE', 'NONE')
call s:HL('Operator',       'NONE',  'NONE', 'NONE')
call s:HL('Keyword',        'NONE',  'NONE', 'NONE')
call s:HL('Exception',      'NONE',  'NONE', 'NONE')
call s:HL('Special',        'NONE',  'NONE', 'NONE')
call s:HL('SpecialChar',    'NONE',  'NONE', 'NONE')
call s:HL('Tag',            'NONE',  'NONE', 'NONE')
call s:HL('Delimiter',      'NONE',  'NONE', 'NONE')
call s:HL('SpecialComment', 'NONE',  'NONE', 'NONE')
call s:HL('Debug',          'NONE',  'NONE', 'NONE')
call s:HL('Directory',      purple1, 'NONE', 'NONE')
call s:HL('Comment',        purple1, 'NONE', 'NONE')
call s:HL('PreProc',        'NONE',  'NONE', 'NONE')
call s:HL('Constant',       'NONE',  'NONE', 'NONE')
call s:HL('Type',           fg1,     'NONE', 'NONE')

" Placeholder characters substituted for concealed text
call s:HL('Conceal', fg1, bg1, 'NONE')

" Highlighting for VimDiff
call s:HL('DiffAdd',    blue2,  gray1, 'bold')
call s:HL('DiffChange', 'NONE', gray1, 'NONE')
call s:HL('DiffDelete', gray1,  fg1,   'NONE')
call s:HL('DiffText',   red1,   gray1, 'bold')

" Popup menu styles
call s:HL('Pmenu',      fg1,   gray1,  'NONE')
call s:HL('PmenuSel',   blue2, fg1,    'reverse')
call s:HL('PmenuSbar',  fg1,   'NONE', 'NONE')
call s:HL('PmenuThumb', red1,  'NONE', 'NONE')

" Python specific highlighting
call s:HL('pythonStatement',   fg1, bg1, 'NONE')
call s:HL('pythonFunction',    fg1, bg1, 'NONE')
call s:HL('pythonConditional', fg1, bg1, 'NONE')
call s:HL('pythonRepeat',      fg1, bg1, 'NONE')
call s:HL('pythonException',   fg1, bg1, 'NONE')
call s:HL('pythonInclude',     fg1, bg1, 'NONE')
call s:HL('pythonPreCondit',   fg1, bg1, 'NONE')
call s:HL('pythonExClass',     fg1, bg1, 'NONE')
call s:HL('pythonDecorator',   fg1, bg1, 'NONE')

" Javascript specific highlighting
call s:HL('jsFunction',     fg1, bg1, 'NONE')
call s:HL('jsFuncCall',     fg1, bg1, 'NONE')
call s:HL('jsConditional',  fg1, bg1, 'NONE')
call s:HL('jsRepeat',       fg1, bg1, 'NONE')
call s:HL('jsNumber',       fg1, bg1, 'NONE')
call s:HL('jsMember',       fg1, bg1, 'NONE')
call s:HL('jsModules',      fg1, bg1, 'NONE')
call s:HL('jsModuleWords',  fg1, bg1, 'NONE')

" Html specific highlighting
call s:HL('htmlTag',       fg1, bg1, 'NONE')
call s:HL('htmlTagName',   fg1, bg1, 'NONE')
call s:HL('htmlArg',       fg1, bg1, 'NONE')
call s:HL('htmlScriptTag', fg1, bg1, 'NONE')
call s:HL('htmlH',         fg1, bg1, 'NONE')
call s:HL('htmlH1',        fg1, bg1, 'NONE')
call s:HL('htmlH2',        fg1, bg1, 'NONE')
call s:HL('htmlH3',        fg1, bg1, 'NONE')
call s:HL('htmlH4',        fg1, bg1, 'NONE')
call s:HL('htmlHead',      fg1, bg1, 'NONE')
call s:HL('htmlTitle',     fg1, bg1, 'NONE')

" CSS specific highlighting
call s:HL('cssDefinition',      fg1, bg1, 'NONE')
call s:HL('cssAttrRegion',      fg1, bg1, 'NONE')
call s:HL('cssCommonAttr',      fg1, bg1, 'NONE')
call s:HL('cssAttr',            fg1, bg1, 'NONE')
call s:HL('lessDefinition',     fg1, bg1, 'NONE')
call s:HL('lessNestedSelector', fg1, bg1, 'NONE')
call s:HL('lessClass',          fg1, bg1, 'NONE')
call s:HL('cssPseudoClass',     fg1, bg1, 'NONE')
call s:HL('cssPseudoClassId',   fg1, bg1, 'NONE')
call s:HL('cssColor',           fg1, bg1, 'NONE')
call s:HL('lessVariableValue',  fg1, bg1, 'NONE')
call s:HL('cssInclude',         fg1, bg1, 'NONE')
call s:HL('cssIncludeKeyword',  fg1, bg1, 'NONE')
call s:HL('cssVendor',          fg1, bg1, 'NONE')

" Clojure specific highlighting
call s:HL('clojureBoolean',   fg1,    bg1, 'NONE')
call s:HL('clojureCharacter', fg1,    bg1, 'NONE')
call s:HL('clojureKeyword',   fg1,    bg1, 'NONE')
call s:HL('clojureNumber',    fg1,    bg1, 'NONE')
call s:HL('clojureString',    green1, bg1, 'NONE')
call s:HL('clojureRegexp',    green1, bg1, 'NONE')
call s:HL('clojureParen',     fg1,    bg1, 'NONE')
call s:HL('clojureVariable',  fg1,    bg1, 'NONE')
call s:HL('clojureCond',      fg1,    bg1, 'NONE')
call s:HL('clojureException', fg1,    bg1, 'NONE')
call s:HL('clojureFunc',      fg1,    bg1, 'NONE')
call s:HL('clojureMacro',     fg1,    bg1, 'NONE')
call s:HL('clojureRepeat',    fg1,    bg1, 'NONE')
call s:HL('clojureSpecial',   fg1,    bg1, 'NONE')
call s:HL('clojureQuote',     fg1,    bg1, 'NONE')
call s:HL('clojureUnquote',   fg1,    bg1, 'NONE')
call s:HL('clojureMeta',      fg1,    bg1, 'NONE')
call s:HL('clojureAnonArg',   fg1,    bg1, 'NONE')
call s:HL('clojureConstant',  fg1,    bg1, 'NONE')
call s:HL('clojureDefine',    fg1,    bg1, 'NONE')

" Ruby specific highlighting
call s:HL('rubyClass',      fg1, bg1, 'NONE')
call s:HL('rubyKeyword',    fg1, bg1, 'NONE')
call s:HL('rubyOperator',   fg1, bg1, 'NONE')
call s:HL('rubyDefine',     fg1, bg1, 'NONE')
call s:HL('rubyIdentifier', fg1, bg1, 'NONE')
call s:HL('rubyInclude',    fg1, bg1, 'NONE')
call s:HL('rubySymbol',     fg1, bg1, 'NONE')
call s:HL('rubyKeyword',    fg1, bg1, 'NONE')

" SQL specific highlighting
call s:HL('sqlKeyword',   fg1, bg1, 'NONE')
call s:HL('sqlFunction',  fg1, bg1, 'NONE')
call s:HL('sqlStatement', fg1, bg1, 'NONE')
call s:HL('sqlSpecial',   fg1, bg1, 'NONE')

" Bash specific highlighting
call s:HL('shIf',             fg1, bg1, 'NONE')
call s:HL('shDerefSimple',    fg1, bg1, 'NONE')
call s:HL('shDeref',          fg1, bg1, 'NONE')
call s:HL('zshDeref',         fg1, bg1, 'NONE')
call s:HL('shShellVariables', fg1, bg1, 'NONE')
call s:HL('zshString',        fg1, bg1, 'NONE')
call s:HL('zshSubst',         fg1, bg1, 'NONE')
call s:HL('zshSubstDelim',    fg1, bg1, 'NONE')

" Used for wiki plugin
call s:HL('WikiLink',         blue2, 'NONE', 'underline')
call s:HL('markdownLinkText', red1,  'NONE', 'underline')

" Markdown
call s:HL('markdownH1', blue2, 'NONE', 'NONE')
call s:HL('markdownH2', blue2, 'NONE', 'NONE')
call s:HL('markdownH3', blue2, 'NONE', 'NONE')
call s:HL('markdownH4', blue2, 'NONE', 'NONE')
call s:HL('markdownH5', blue2, 'NONE', 'NONE')
call s:HL('markdownH6', blue2, 'NONE', 'NONE')

" Vimfiler
call s:HL('vimfilerOpenedFile',    purple1, 'NONE', 'NONE')
call s:HL('vimfilerClosedFile',    purple1, 'NONE', 'NONE')
call s:HL('uniteExrenameModified', fg1,     bg1,    'NONE')

" Sneak plugin specific highlighting
call s:HL('SneakPluginTarget', blue2, bg1,   'underline')
call s:HL('SneakStreakTarget', gray1, blue2, 'NONE')
call s:HL('SneakStreakMask',   blue2, blue2, 'NONE')

" Spelling
call s:HL('SpellBad',   red1,    'NONE', 'underline')
call s:HL('SpellCap',   yellow1, 'NONE', 'underline')
call s:HL('SpellLocal', yellow1, 'NONE', 'underline')
call s:HL('SpellRare',  yellow1, 'NONE', 'underline')

" Sneak plugin specific highlighting
call s:HL('SneakPluginTarget', yellow1, green1, 'underline')
call s:HL('SneakStreakTarget', yellow1, green1, 'none')
call s:HL('SneakStreakMask',   green1,  green1, 'none')
