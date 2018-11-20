set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="immortals"

" System colors
" 0 1 2  3  4  5  6  7
" 8 9 10 11 12 13 14 15
"
" 6x6x6 color cube
" 16 17 18 19 20 21 |  88 89  90  91  92  93  | 160 161 162 163 164 165
" 22 23 24 25 26 27 |  94 95  96  97  98  99  | 166 167 168 169 170 171
" 28 29 30 31 32 33 | 100 101 102 103 104 105 | 172 173 174 175 176 177
" 34 35 36 37 38 39 | 106 107 108 109 110 111 | 178 179 180 181 182 183
" 40 41 42 43 44 45 | 112 113 114 115 116 117 | 184 185 186 187 188 189
" 46 47 48 49 50 51 | 118 119 120 121 122 123 | 190 191 192 193 194 195
" 82 83 84 85 86 87 | 154 155 156 157 158 159 | 226 227 228 229 230 231
" 76 77 78 79 80 81 | 148 149 150 151 152 153 | 220 221 222 223 224 225
" 70 71 72 73 74 75 | 142 143 144 145 146 147 | 214 215 216 217 218 219
" 64 65 66 67 68 69 | 136 137 138 139 140 141 | 208 209 210 211 212 213
" 58 59 60 61 62 63 | 130 131 132 133 134 135 | 202 203 204 205 206 207
" 52 53 54 55 56 57 | 124 125 126 127 128 129 | 196 197 198 199 200 201
"
"
" Grayscale
" 232 233 234 235 236 237 238 239 240 241 242 243
" 244 245 246 247 248 249 250 251 252 253 254 255 256

" Color palette
" 255 238 239 138 150 251 236 66 101 29 88 58
let defaultBackground = 255
let defaultForeground = 238
let thermopylae       = 138
let xerxes            = 150
let smoke             = 251
let ephialtes         = 236
let persian           = 66
let messenger         = 101
let narrow            = 29
let arcadian          = 29
let leonidas          = 88
let dilios            = 58

let s:colormap={255: '#EEEEEE', 238: '#444444', 138: '#AF8787', 150: '#AFD787', 251: '#C6C6C6', 236: '#303030', 66: '#5F8787', 101: '#87875F', 29: '#00875F', 88: '#870000', 58: '#5F5F00', 'none': 'NONE'}

function! s:HL(item, fgColor, bgColor, style)
    execute 'hi ' . a:item . ' ctermfg=' . a:fgColor . ' ctermbg=' . a:bgColor . ' guifg= ' . s:colormap[a:fgColor] . ' guibg= ' . s:colormap[a:bgColor] . ' cterm=' . a:style
endfunction

call s:HL('Normal',       defaultForeground, defaultBackground, 'none')      " Normal text
call s:HL('Cursor',       defaultBackground, defaultForeground, 'none')      " The character under the cursor
call s:HL('CursorLine',   'none',            ephialtes,         'none')      " Line the cursor is on when 'cursorcolumn' set used in quickfix / unite
call s:HL('CursorColumn', 'none',            ephialtes,         'none')      " The screen column that the cursor is in when 'cursorcolumn' is set
call s:HL('SignColumn',   persian,           smoke,             'none')      " The gutter where signs are displayed
call s:HL('Folded',       defaultForeground, smoke,             'none')      " The coloring used for folded lines
call s:HL('VertSplit',    smoke,             smoke,             'none')      " The column separating vertically split windows
call s:HL('Search',       narrow,            'none',            'underline') " The highlighting for the last search pattern
call s:HL('IncSearch',    ephialtes,         arcadian,          'underline') " The highlighting for in criminal searching and for find and replace
call s:HL('StatusLine',   smoke,             messenger,         'reverse')   " The status line of the current window
call s:HL('StatusLineNC', smoke,             defaultForeground, 'reverse')   " The status line of the noncurrent windows
call s:HL('WildMenu',     ephialtes,         arcadian,          'none')      " The current match in wildmenu completion
call s:HL('MatchParen',   'none',            xerxes,            'none')      " The opening or closing sibling of the currently highlighted bracket
call s:HL('Visual',       'none',            xerxes,            'none')      " The visual mode selection
call s:HL('NonText',      ephialtes,         'none',            'none')      " For characters that did not really exist in the text
call s:HL('Todo',         ephialtes,         defaultBackground, 'bold')      " Keywords like; TODO, FIXME, XXX
call s:HL('Underlined',   persian,           'none',            'underline') " HTML anchor tag
call s:HL('Error',        narrow,            leonidas,          'none')      " Error highlighting
call s:HL('ErrorMsg',     narrow,            leonidas,          'none')      " Error messages on the command line
call s:HL('WarningMsg',   leonidas,          'none',            'none')      " Warning message used in status line
call s:HL('SpecialKey',   ephialtes,         'none',            'none')      " More for non- printable text tabs and such
call s:HL('LineNr',       dilios,            'none',            'none')      " Line number used in quick fix window

" :help group-name
call s:HL('Consmessengert', 'none',            'none', 'none')
call s:HL('String',         messenger,         'none', 'none')
call s:HL('Character',      'none',            'none', 'none')
call s:HL('Number',         'none',            'none', 'none')
call s:HL('Boolean',        'none',            'none', 'none')
call s:HL('Float',          'none',            'none', 'none')
call s:HL('Identifier',     'none',            'none', 'none')
call s:HL('Function',       'none',            'none', 'none')
call s:HL('Statement',      'none',            'none', 'none')
call s:HL('Conditional',    'none',            'none', 'none')
call s:HL('Repeat',         'none',            'none', 'none')
call s:HL('Label',          'none',            'none', 'none')
call s:HL('Operator',       'none',            'none', 'none')
call s:HL('Keyword',        'none',            'none', 'none')
call s:HL('Exception',      'none',            'none', 'none')
call s:HL('Special',        'none',            'none', 'none')
call s:HL('SpecialChar',    'none',            'none', 'none')
call s:HL('Tag',            'none',            'none', 'none')
call s:HL('Delimiter',      'none',            'none', 'none')
call s:HL('SpecialComment', 'none',            'none', 'none')
call s:HL('Debug',          'none',            'none', 'none')
call s:HL('Directory',      persian,           'none', 'none')
call s:HL('Comment',        thermopylae,       'none', 'none')
call s:HL('PreProc',        persian,           'none', 'none')
call s:HL('Constant',       persian,           'none', 'none')
call s:HL('Type',           defaultForeground, 'none', 'none')

" Placeholder characters substituted for concealed text
call s:HL('Conceal', defaultForeground, thermopylae, 'none')

" Highlighting for VimDiff
call s:HL('DiffAdd',    persian,  smoke,       'bold')
call s:HL('DiffChange', 'none',   smoke,       'none')
call s:HL('DiffDelete', smoke,    thermopylae, 'none')
call s:HL('DiffText',   leonidas, smoke,       'bold')

" Popup menu styles
call s:HL('Pmenu',      defaultForeground, smoke,             'none')
call s:HL('PmenuSel',   xerxes,            defaultForeground, 'reverse')
call s:HL('PmenuSbar',  defaultForeground, 'none',            'none')
call s:HL('PmenuThumb', leonidas,          'none',            'none')

" Spelling
call s:HL('SpellBad',   narrow,  leonidas, 'underline')
call s:HL('SpellCap',   persian, smoke,    'underline')
call s:HL('SpellLocal', persian, smoke,    'underline')
call s:HL('SpellRare',  persian, smoke,    'underline')

" Python specific highlighting
call s:HL('pythonStatement',   defaultForeground, defaultBackground, 'none')
call s:HL('pythonFunction',    defaultForeground, defaultBackground, 'none')
call s:HL('pythonConditional', defaultForeground, defaultBackground, 'none')
call s:HL('pythonRepeat',      defaultForeground, defaultBackground, 'none')
call s:HL('pythonException',   defaultForeground, defaultBackground, 'none')
call s:HL('pythonInclude',     defaultForeground, defaultBackground, 'none')
call s:HL('pythonPreCondit',   defaultForeground, defaultBackground, 'none')
call s:HL('pythonExClass',     defaultForeground, defaultBackground, 'none')
call s:HL('pythonDecorator',   defaultForeground, defaultBackground, 'none')

" Javascript specific highlighting
call s:HL('jsFunction',     defaultForeground, defaultBackground, 'none')
call s:HL('jsFuncCall',     defaultForeground, defaultBackground, 'none')
call s:HL('jsConditional',  defaultForeground, defaultBackground, 'none')
call s:HL('jsRepeat',       defaultForeground, defaultBackground, 'none')
call s:HL('jsNumber',       defaultForeground, defaultBackground, 'none')
call s:HL('jsMember',       defaultForeground, defaultBackground, 'none')
call s:HL('jsModules',      defaultForeground, defaultBackground, 'none')
call s:HL('jsModuleWords',  defaultForeground, defaultBackground, 'none')

" Html specific highlighting
call s:HL('htmlTag',       defaultForeground, defaultBackground, 'none')
call s:HL('htmlTagName',   defaultForeground, defaultBackground, 'none')
call s:HL('htmlArg',       defaultForeground, defaultBackground, 'none')
call s:HL('htmlScriptTag', defaultForeground, defaultBackground, 'none')
call s:HL('htmlH',         defaultForeground, defaultBackground, 'none')
call s:HL('htmlH1',        defaultForeground, defaultBackground, 'none')
call s:HL('htmlH2',        defaultForeground, defaultBackground, 'none')
call s:HL('htmlH3',        defaultForeground, defaultBackground, 'none')
call s:HL('htmlH4',        defaultForeground, defaultBackground, 'none')
call s:HL('htmlHead',      defaultForeground, defaultBackground, 'none')
call s:HL('htmlTitle',     defaultForeground, defaultBackground, 'none')

" CSS specific highlighting
call s:HL('cssDefinition',      defaultForeground, defaultBackground, 'none')
call s:HL('cssAttrRegion',      defaultForeground, defaultBackground, 'none')
call s:HL('cssCommonAttr',      defaultForeground, defaultBackground, 'none')
call s:HL('cssAttr',            defaultForeground, defaultBackground, 'none')
call s:HL('lessDefinition',     defaultForeground, defaultBackground, 'none')
call s:HL('lessNestedSelector', defaultForeground, defaultBackground, 'none')
call s:HL('lessClass',          defaultForeground, defaultBackground, 'none')
call s:HL('cssPseudoClass',     defaultForeground, defaultBackground, 'none')
call s:HL('cssPseudoClassId',   defaultForeground, defaultBackground, 'none')
call s:HL('cssColor',           defaultForeground, defaultBackground, 'none')
call s:HL('lessVariableValue',  defaultForeground, defaultBackground, 'none')
call s:HL('cssInclude',         defaultForeground, defaultBackground, 'none')
call s:HL('cssIncludeKeyword',  defaultForeground, defaultBackground, 'none')
call s:HL('cssVendor',          defaultForeground, defaultBackground, 'none')

" Clojure specific highlighting
call s:HL('clojureConsmessengert', defaultForeground, defaultBackground, 'none')
call s:HL('clojureBoolean',        defaultForeground, defaultBackground, 'none')
call s:HL('clojureCharacter',      defaultForeground, defaultBackground, 'none')
call s:HL('clojureKeyword',        defaultForeground, defaultBackground, 'none')
call s:HL('clojureNumber',         defaultForeground, defaultBackground, 'none')
call s:HL('clojureString',         messenger,         defaultBackground, 'none')
call s:HL('clojureRegexp',         messenger,         defaultBackground, 'none')
call s:HL('clojureParen',          defaultForeground, defaultBackground, 'none')
call s:HL('clojureVariable',       defaultForeground, defaultBackground, 'none')
call s:HL('clojureCond',           defaultForeground, defaultBackground, 'none')
call s:HL('clojuleonidasefine',    defaultForeground, defaultBackground, 'none')
call s:HL('clojureException',      defaultForeground, defaultBackground, 'none')
call s:HL('clojureFunc',           defaultForeground, defaultBackground, 'none')
call s:HL('clojureMacro',          defaultForeground, defaultBackground, 'none')
call s:HL('clojureRepeat',         defaultForeground, defaultBackground, 'none')
call s:HL('clojureSpecial',        defaultForeground, defaultBackground, 'none')
call s:HL('clojureQuote',          defaultForeground, defaultBackground, 'none')
call s:HL('clojureUnquote',        defaultForeground, defaultBackground, 'none')
call s:HL('clojureMeta',           defaultForeground, defaultBackground, 'none')
call s:HL('clojuleonidaseref',     defaultForeground, defaultBackground, 'none')
call s:HL('clojureAnonArg',        defaultForeground, defaultBackground, 'none')
call s:HL('clojuleonidasispatch',  defaultForeground, defaultBackground, 'none')
call s:HL('clojureConstant',       defaultForeground, defaultBackground, 'none')
call s:HL('clojureDefine',         defaultForeground, defaultBackground, 'none')

" Ruby specific highlighting
call s:HL('rubyClass',      defaultForeground, defaultBackground, 'none')
call s:HL('rubyKeyword',    defaultForeground, defaultBackground, 'none')
call s:HL('rubyOperator',   defaultForeground, defaultBackground, 'none')
call s:HL('rubyDefine',     defaultForeground, defaultBackground, 'none')
call s:HL('rubyIdentifier', defaultForeground, defaultBackground, 'none')
call s:HL('rubyInclude',    defaultForeground, defaultBackground, 'none')
call s:HL('rubySymbol',     defaultForeground, defaultBackground, 'none')
call s:HL('rubyKeyword',    defaultForeground, defaultBackground, 'none')

" SQL specific highlighting
call s:HL('sqlKeyword',   defaultForeground, defaultBackground, 'none')
call s:HL('sqlFunction',  defaultForeground, defaultBackground, 'none')
call s:HL('sqlStatement', defaultForeground, defaultBackground, 'none')
call s:HL('sqlSpecial',   defaultForeground, defaultBackground, 'none')

" Bash specific highlighting
call s:HL('shIf',             defaultForeground, defaultBackground, 'none')
call s:HL('shDerefSimple',    defaultForeground, defaultBackground, 'none')
call s:HL('shDeref',          defaultForeground, defaultBackground, 'none')
call s:HL('zshDeref',         defaultForeground, defaultBackground, 'none')
call s:HL('shShellVariables', defaultForeground, defaultBackground, 'none')
call s:HL('zshString',        defaultForeground, defaultBackground, 'none')
call s:HL('zshSubst',         defaultForeground, defaultBackground, 'none')
call s:HL('zshSubstDelim',    defaultForeground, defaultBackground, 'none')


" Used for wiki plugin
call s:HL('WikiLink',         persian,  'none', 'underline')
call s:HL('markdownLinkText', leonidas, 'none', 'underline')

" Markdown
call s:HL('markdownH1', persian, 'none', 'none')
call s:HL('markdownH2', persian, 'none', 'none')
call s:HL('markdownH3', persian, 'none', 'none')
call s:HL('markdownH4', persian, 'none', 'none')
call s:HL('markdownH5', persian, 'none', 'none')
call s:HL('markdownH6', persian, 'none', 'none')

" Vimfiler
call s:HL('vimfilerOpenedFile',    persian,           'none',            'none')
call s:HL('vimfilerClosedFile',    persian,           'none',            'none')
call s:HL('uniteExrenameModified', defaultForeground, defaultBackground, 'none')

" Sneak plugin specific highlighting
call s:HL('SneakPluginTarget', persian, defaultBackground, 'underline')
call s:HL('SneakStreakTarget', smoke,   persian,           'none')
call s:HL('SneakStreakMask',   persian, persian,           'none')
