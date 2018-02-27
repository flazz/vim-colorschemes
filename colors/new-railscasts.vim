" Vim color scheme
"
" Name:        railscast.vim
" Maintainer:  Josh O'Rourke <joshorourke@me.com>
" Modified:    Carlos Ramos, carakan
" License:     public domain
"
" Theme Color scheme
" #00BBEF
" #8EA8FC
" #00A1EC
" #0095CB
" #00869A
" #9F7BC3
" #D7B0FC
" #DD75C9
" #4C8077
" #4C4452
" #FFFADE
" #FFF7D0
" #FFC66D this is the old
" #F9F871
" #C3A138
" #D38E39
" #FFBD96
" #FFA78D
" #F47454
" #CB725B
" #FFACC1
" #FFAAE7
" #30444E

let g:colors_name = 'new-railscasts'
hi clear
if exists('syntax_on')
  syntax reset
endif
highlight clear SignColumn
set background=dark

hi Normal                    guifg=#E6E1DC guibg=#212121 ctermfg=white ctermbg=234
hi Cursor                    guifg=#000000 guibg=#FFFFFF ctermfg=0 ctermbg=15
hi CursorLine                guibg=#282828 ctermbg=235 cterm=NONE
hi Search                    guifg=#FFC66D guibg=#072f95 gui=bold
hi Visual                    guibg=#004568 ctermbg=60
hi LineNr                    guifg=#707070 guibg=#2d2d2d  ctermfg=242
hi StatusLine                guifg=#e4e4e4 guibg=#606060 gui=NONE ctermfg=254 ctermbg=241 cterm=NONE
hi StatusLineNC              guifg=#585858 guibg=#303030 gui=NONE ctermfg=240 ctermbg=236 cterm=NONE

hi! link CursorColumn ColorColumn
hi VertSplit                 guibg=#212121 gui=bold guifg=#444444 ctermfg=white ctermbg=234
hi CursorLineNr              guifg=#d7b0fc guibg=#2d2d2d ctermfg=248
hi ColorColumn               guibg=#333435 ctermbg=235
highlight SignColumn guibg=#2d2d2d

" StatusLine
hi User1                     guifg=#eeeeee guibg=#606060 gui=bold
hi User2                     guifg=#FFAF00 guibg=#606060 gui=bold
hi User3                     guifg=#15d300 guibg=#606060 gui=bold
hi User4                     guifg=#870000 guibg=#606060 gui=bold
hi User5                     guifg=#e4e4e4 guibg=#606060 gui=bold
hi User6                     guifg=#e4e4e4 guibg=#606060 gui=bold
hi User7                     guifg=#e4e4e4 guibg=#606060 gui=bold
hi User8                     guifg=#e4e4e4 guibg=#606060 gui=bold
hi User9                     guifg=#e4e4e4 guibg=#606060 gui=bold

" Folds
" -----
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE

" Invisible Characters
" ------------------
hi NonText                   guifg=#777777 gui=NONE
hi SpecialKey                guifg=#777777 gui=NONE

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE

" Comment
hi Comment                   guifg=#bc7f23 guibg=NONE gui=italic ctermfg=137 cterm=italic
hi Todo                      guifg=#df5f5f guibg=NONE gui=bold,italic ctermfg=94

"rubyPseudoVariable: nil, self, symbols, etc
hi Constant                  guifg=#0095CB ctermfg=73
" rubyClass, rubyModule, rubyDefine def, end, include, etc
hi Define                    guifg=#D38E39 ctermfg=173
" Interpolation
hi Delimiter                 guifg=#519F50
hi WarningMsg                guifg=#DA4939 guibg=NONE gui=NONE
" Error, rubyInvalidVariable
hi Error                     guifg=#FFFFFF guibg=#990000 ctermfg=221 ctermbg=88
" Function
hi Function                  guifg=#FFC66D gui=NONE guibg=NONE ctermfg=221 cterm=NONE
" Identifier: @var, @@var, $var, etc
hi Identifier                guifg=#d7b0fc guibg=NONE ctermfg=73 cterm=NONE
" Include: include, autoload, extend, load, require
hi Include                   guifg=#F47454 guibg=NONE ctermfg=173 cterm=NONE
" Keyword, rubyKeywordAsMethod: alias, undef, super, yield, callcc, caller, lambda, proc
hi Keyword                   guifg=#FFA78D ctermfg=172 cterm=NONE
" same as define
hi Macro                     guifg=#F47454 guibg=NONE ctermfg=172
"rubyInteger
hi Number                    guifg=#A5C261 ctermfg=107
hi Boolean                   guifg=#47a3e5 ctermfg=107 gui=italic
" #if, #else, #endif
hi PreCondit                 guifg=#F47454 guibg=NONE ctermfg=172 cterm=NONE
" generic preprocessor
hi PreProc                   guifg=#F47454 guibg=NONE ctermfg=103
" Control, Access, Eval: case, begin, do, for, if unless, while, until else, etc.
hi Statement                 guifg=#F47454 guibg=NONE ctermfg=172 cterm=NONE
" String
hi String                    guifg=#74d155 guibg=NONE ctermfg=107
hi! Title                    guifg=#FFFFFF guibg=NONE ctermfg=15
" Constant
hi Type                      guifg=#F47454 guibg=NONE gui=NONE
hi PreProc                   guifg=#FFA78D guibg=NONE ctermfg=208
hi Special                   guifg=#FFA78D guibg=NONE ctermfg=22
hi Operator                  guifg=#FFC66D guibg=NONE ctermfg=73
hi Tag                       guifg=#F47454 guibg=NONE ctermfg=73
hi Label                     guifg=#6D9CBE ctermfg=221 gui=bold

" Indentation
hi IndentGuidesOdd  ctermbg=239 guibg=#282828
hi IndentGuidesEven ctermbg=237 guibg=#332717

" Diffs
hi DiffAdd                   guifg=#e4e4e4 guibg=#519F50 ctermfg=254 ctermbg=22
hi DiffDelete                guifg=#e4e4e4 guibg=#660000 gui=bold ctermfg=16 ctermbg=52 cterm=bold
hi DiffChange                guifg=#FFFFFF guibg=#870087 ctermfg=15 ctermbg=90
hi DiffText                  guifg=#FFC66D guibg=#FF0000 gui=bold ctermfg=15 ctermbg=9 cterm=bold

hi diffAdded                 guifg=#008700 ctermfg=28
hi diffRemoved               guifg=#800000 ctermfg=1
hi diffNewFile               guifg=#FFFFFF guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi diffFile                  guifg=#FFFFFF guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold

hi SignifySignAdd            guifg=#008700 guibg=#2d2d2d gui=NONE
hi SignifySignChange         guifg=#c643c6 guibg=#2d2d2d gui=NONE
hi SignifySignDelete         guifg=#ff5d4f guibg=#2d2d2d gui=NONE

" Ruby
" ----
hi rubyBlockParameter        guifg=#d7b0fc
hi rubyBoolean               guifg=#47a3e5 gui=italic
hi rubyClass                 guifg=#D38E39
hi rubyConstant              guifg=#F47454
hi rubyInstanceVariable      guifg=#d7b0fc
hi rubyInterpolation         guifg=#ea8c3f
hi rubyLocalVariableOrMethod guifg=#d7b0fc
hi rubyPredefinedConstant    guifg=#F47454
hi rubyPseudoVariable        guifg=#47a3e5 gui=italic,bold
hi rubyStringDelimiter       guifg=#87af5f
hi rubySymbol                guifg=#6D9CBE gui=bold
" JAVASCRIPT
"
hi jsArrowFunction            guifg=#FFA78D
hi jsFunction                 guifg=#FFA78D ctermfg=221 gui=italic
hi jsFunctionKey              guifg=#FFA78D gui=italic
hi jsNoise                    guifg=#CB725B gui=bold
hi jsNull                     guifg=#FFA78D gui=italic
hi jsObjectFuncName           guifg=#FFC66D gui=bold,italic guibg=NONE
hi jsObjectKey                guifg=#6D9CBE gui=bold
hi jsStorageClass             guifg=#F47454 gui=italic
hi jsThis                     guifg=#d7b0fc gui=bold,italic
hi link jsGlobalObjects       Type
hi link jsObjectProp          Type
" Typescript
"
hi typescriptArrowFunc              guifg=#FFA78D gui=italic
hi typescriptVariable               guifg=#d7b0fc gui=italic
hi typescriptAsyncFuncKeyword       guifg=#47a3e5 gui=italic
hi typescriptType                   guifg=#FFA78D gui=italic
hi typescriptPredefinedType         guifg=#FFA78D gui=italic
hi typescriptObjectLabel            guifg=#6D9CBE gui=bold
hi typescriptFuncName               guifg=#FFC66D gui=bold,italic guibg=NONE
hi typescriptMethodName             guifg=#FFC66D gui=bold,italic guibg=NONE
hi typescriptIdentifier             guifg=#d7b0fc gui=bold,italic
hi typescriptVariable               guifg=#CB725B gui=italic
hi typescriptAccessibilityModifier  guifg=#FFA78D gui=italic

" Python
" ------
hi pythonExceptions            guifg=#ffaf87 ctermfg=216
hi pythonDoctest               guifg=#8787ff ctermfg=105
hi pythonDoctestValue          guifg=#87d7af ctermfg=115

" Elixir
"
hi elixirAtom                 guifg=#6D9CBE gui=bold
hi elixirMapDelimiter         guifg=#D38E39 gui=bold
hi elixirTupleDelimiter       guifg=#D38E39 gui=bold
hi elixirMap                  guifg=#FFA78D gui=bold
hi elixirTuple                guifg=#FFA78D gui=bold
hi elixirOperator             guifg=#FFC66D
hi elixirDefine               guifg=#D38E39 gui=bold
hi elixirPrivateDefine        guifg=#D38E39 gui=bold,italic
hi elixirModuleDefine         guifg=#D38E39 gui=bold

" CSS
hi cssClassName                 guifg=#FFC66D gui=italic
hi cssIdentifier                guifg=#47a3e5 gui=italic
hi cssProp                      guifg=#6D9CBE gui=bold
hi cssVendor                    guifg=#6D9CBE gui=bold,italic
hi cssIncludeKeyword            guifg=#d7b0fc gui=bold,italic
hi cssImportant                 guifg=#47a3e5 gui=italic

" JSON
hi jsonBoolean                 guifg=#47a3e5 gui=italic
hi jsonNull                    guifg=#47a3e5 gui=italic

" yaml
hi yamlKey                    guifg=#d7b0fc ctermfg=189 gui=bold

" Mail
" ----
hi mailEmail                 guifg=#87af5f ctermfg=107 gui=italic cterm=underline
hi mailHeaderKey             guifg=#FFC66D ctermfg=221
hi! link mailSubject mailHeaderKey

" Spell
" ----
hi SpellBad                  guibg=#420101 gui=NONE guisp=red
hi SpellRare                 guibg=#420101 gui=NONE
hi SpellCap                  guibg=#420101 gui=NONE
hi SpellLocal                guibg=#420101 gui=NONE
hi MatchParen                guifg=#FFC66D guibg=#072f95 gui=bold
hi Question                  guibg=#420101 gui=NONE

" XML
" ---
hi xmlTag                    guifg=#FFC66D ctermfg=179
hi xmlTagName                guifg=#FFC66D ctermfg=179
hi xmlEndTag                 guifg=#FFC66D ctermfg=179

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag
hi htmlArg                   guifg=#ff8700 gui=italic

" HBS
" ---
hi hbsHandles               guifg=#D38E39 gui=bold
hi hbsArg                   guifg=#F47454 gui=italic
hi hbsKeyword               guifg=#0095CB gui=italic
hi hbsMustacheName          guifg=#FFC66D gui=NONE
hi hbsPencilName            guifg=#D38E39 gui=bold

hi checkbox                 guifg=#3a3a3a guibg=NONE gui=NONE
hi checkboxDone             guifg=#15d300 guibg=NONE gui=BOLD
hi checkboxNotDone          guifg=#005fdf guibg=NONE gui=BOLD
