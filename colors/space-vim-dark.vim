" Vim color file
"
" Author: Liu-Cheng Xu
" URL: https://github.com/liuchengxu/space-vim-dark
"
" Note: Inspired by spacemacs-dark theme

hi clear

if v:version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists('g:syntax_on')
        syntax reset
    endif
endif

let g:colors_name='space-vim-dark'

" refer to http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
let s:color_map = {
            \   16 : '#000000',  17 : '#00005f',  18 : '#000087',  19 : '#0000af',  20 : '#0000d7',  21 : '#0000ff',
            \   22 : '#005f00',  23 : '#005f5f',  24 : '#005f87',  25 : '#005faf',  26 : '#005fd7',  27 : '#005fff',
            \   28 : '#008700',  29 : '#00875f',  30 : '#008787',  31 : '#0087af',  32 : '#0087d7',  33 : '#0087ff',
            \   34 : '#00af00',  35 : '#00af5f',  36 : '#00af87',  37 : '#00afaf',  38 : '#00afd7',  39 : '#00afff',
            \   40 : '#00d700',  41 : '#00d75f',  42 : '#00d787',  43 : '#00d7af',  44 : '#00d7d7',  45 : '#00d7ff',
            \   46 : '#00ff00',  47 : '#00ff5f',  48 : '#00ff87',  49 : '#00ffaf',  50 : '#00ffd7',  51 : '#00ffff',
            \   52 : '#5f0000',  53 : '#5f005f',  54 : '#5f0087',  55 : '#5f00af',  56 : '#5f00d7',  57 : '#5f00ff',
            \   58 : '#5f5f00',  59 : '#5f5f5f',  60 : '#5f5f87',  61 : '#5f5faf',  62 : '#5f5fd7',  63 : '#5f5fff',
            \   64 : '#5f8700',  65 : '#5f875f',  66 : '#5f8787',  67 : '#5f87af',  68 : '#5f87d7',  69 : '#5f87ff',
            \   70 : '#5faf00',  71 : '#5faf5f',  72 : '#5faf87',  73 : '#5fafaf',  74 : '#5fafd7',  75 : '#5fafff',
            \   76 : '#5fd700',  77 : '#5fd75f',  78 : '#5fd787',  79 : '#5fd7af',  80 : '#5fd7d7',  81 : '#5fd7ff',
            \   82 : '#5fff00',  83 : '#5fff5f',  84 : '#5fff87',  85 : '#5fffaf',  86 : '#5fffd7',  87 : '#5fffff',
            \   88 : '#870000',  89 : '#87005f',  90 : '#870087',  91 : '#8700af',  92 : '#8700d7',  93 : '#8700ff',
            \   94 : '#875f00',  95 : '#875f5f',  96 : '#875f87',  97 : '#875faf',  98 : '#875fd7',  99 : '#875fff',
            \   100 : '#878700', 101 : '#87875f', 102 : '#878787', 103 : '#8787af', 104 : '#8787d7', 105 : '#8787ff',
            \   106 : '#87af00', 107 : '#87af5f', 108 : '#87af87', 109 : '#87afaf', 110 : '#87afd7', 111 : '#87afff',
            \   112 : '#87d700', 113 : '#87d75f', 114 : '#87d787', 115 : '#87d7af', 116 : '#87d7d7', 117 : '#87d7ff',
            \   118 : '#87ff00', 119 : '#87ff5f', 120 : '#87ff87', 121 : '#87ffaf', 122 : '#87ffd7', 123 : '#87ffff',
            \   124 : '#af0000', 125 : '#af005f', 126 : '#af0087', 127 : '#af00af', 128 : '#af00d7', 129 : '#af00ff',
            \   130 : '#af5f00', 131 : '#af5f5f', 132 : '#af5f87', 133 : '#af5faf', 134 : '#af5fd7', 135 : '#af5fff',
            \   136 : '#af8700', 137 : '#af875f', 138 : '#af8787', 139 : '#af87af', 140 : '#af87d7', 141 : '#af87ff',
            \   142 : '#afaf00', 143 : '#afaf5f', 144 : '#afaf87', 145 : '#afafaf', 146 : '#afafd7', 147 : '#afafff',
            \   148 : '#afd700', 149 : '#afd75f', 150 : '#afd787', 151 : '#afd7af', 152 : '#afd7d7', 153 : '#afd7ff',
            \   154 : '#afff00', 155 : '#afff5f', 156 : '#afff87', 157 : '#afffaf', 158 : '#afffd7', 159 : '#afffff',
            \   160 : '#d70000', 161 : '#d7005f', 162 : '#d70087', 163 : '#d700af', 164 : '#d700d7', 165 : '#d700ff',
            \   166 : '#d75f00', 167 : '#d75f5f', 168 : '#d75f87', 169 : '#d75faf', 170 : '#d75fd7', 171 : '#d75fff',
            \   172 : '#d78700', 173 : '#d7875f', 174 : '#d78787', 175 : '#d787af', 176 : '#d787d7', 177 : '#d787ff',
            \   178 : '#d7af00', 179 : '#d7af5f', 180 : '#d7af87', 181 : '#d7afaf', 182 : '#d7afd7', 183 : '#d7afff',
            \   184 : '#d7d700', 185 : '#d7d75f', 186 : '#d7d787', 187 : '#d7d7af', 188 : '#d7d7d7', 189 : '#d7d7ff',
            \   190 : '#d7ff00', 191 : '#d7ff5f', 192 : '#d7ff87', 193 : '#d7ffaf', 194 : '#d7ffd7', 195 : '#d7ffff',
            \   196 : '#ff0000', 197 : '#ff005f', 198 : '#ff0087', 199 : '#ff00af', 200 : '#ff00d7', 201 : '#ff00ff',
            \   202 : '#ff5f00', 203 : '#ff5f5f', 204 : '#ff5f87', 205 : '#ff5faf', 206 : '#ff5fd7', 207 : '#ff5fff',
            \   208 : '#ff8700', 209 : '#ff875f', 210 : '#ff8787', 211 : '#ff87af', 212 : '#ff87d7', 213 : '#ff87ff',
            \   214 : '#ffaf00', 215 : '#ffaf5f', 216 : '#ffaf87', 217 : '#ffafaf', 218 : '#ffafd7', 219 : '#ffafff',
            \   220 : '#ffd700', 221 : '#ffd75f', 222 : '#ffd787', 223 : '#ffd7af', 224 : '#ffd7d7', 225 : '#ffd7ff',
            \   226 : '#ffff00', 227 : '#ffff5f', 228 : '#ffff87', 229 : '#ffffaf', 230 : '#ffffd7', 231 : '#ffffff',
            \
            \   232 : '#080808', 233 : '#121212', 234 : '#1c1c1c', 235 : '#262626', 236 : '#303030', 237 : '#3a3a3a',
            \   238 : '#444444', 239 : '#4e4e4e', 240 : '#585858', 241 : '#606060', 242 : '#666666', 243 : '#767676',
            \   244 : '#808080', 245 : '#8a8a8a', 246 : '#949494', 247 : '#9e9e9e', 248 : '#a8a8a8', 249 : '#b2b2b2',
            \   250 : '#bcbcbc', 251 : '#c6c6c6', 252 : '#d0d0d0', 253 : '#dadada', 254 : '#e4e4e4', 255 : '#eeeeee',
            \   }

function! s:hi(item, fg, bg, cterm_style, gui_style)
    if !empty(a:fg)
        execute printf('hi %s ctermfg=%d guifg=%s', a:item, a:fg, s:color_map[a:fg])
    endif
    if !empty(a:bg)
        execute printf('hi %s ctermbg=%d guibg=%s', a:item, a:bg, s:color_map[a:bg])
    endif
    execute printf('hi %s cterm=%s gui=%s', a:item, a:cterm_style, a:gui_style)
endfunction

" call s:hi(item, fg, bg, cterm_style, gui_style)

let s:bg = get(g:, 'space_vim_dark_background', 235)

let s:bias = s:bg - 235

let s:bg0 = s:bg - 1
let s:bg1 = s:bg + 1
let s:bg2 = s:bg + 2
let s:bg3 = s:bg + 3
let s:bg4 = s:bg + 4

let s:fg = 249

call s:hi('Normal' , 249 , s:bg , 'None' , 'None' )
hi Normal       guibg=#292b2e

call s:hi('Cursor' , 88 , 214 , 'bold' , 'bold')
hi Cursor       guifg=#330033 guibg=#FF9331

call s:hi('LineNr'       , 238+s:bias , s:bg0 , 'None' , 'None' )

call s:hi('CursorLine'   , ''  , s:bg0 , 'None' , 'None' )
call s:hi('CursorLineNr' , 134 , s:bg0 , 'None' , 'None' )
call s:hi('CursorColumn' , ''  , s:bg0 , 'None' , 'None')
call s:hi('ColorColumn' , ''  , s:bg0 , 'None' , 'None')
hi LineNr       guifg=#44505c guibg=#212026
hi CursorLine                 guibg=#212026
hi CursorLineNr               guibg=#212026
hi CursorColumn               guibg=#212026
hi ColorColumn               guibg=#212026

" bug. opposite here.
call s:hi('StatusLine'   , 140 , s:bg2 , 'None' , 'None')
call s:hi('StatusLineNC' , 244 , s:bg1 , 'None' , 'None')
hi StatusLineNC guibg=#3a3a3a

call s:hi('TabLine'     , 66  , s:bg3 , 'None' , 'None')
call s:hi('TabLineSel'  , 178 , s:bg4 , 'None' , 'None')
call s:hi('TabLineFill' , 145 , s:bg2 , 'None' , 'None')

call s:hi('WildMenu' , 214 , s:bg3 , 'None' , 'None')
hi WildMenu guifg=#FF4848

call s:hi('Boolean'     , 207 , '' , 'None' , 'None')
call s:hi('Character'   , 75  , '' , 'None' , 'None')
call s:hi('Number'      , 176 , '' , 'None' , 'None')
call s:hi('Float'       , 135 , '' , 'None' , 'None')
call s:hi('String'      , 36  , '' , 'None' , 'None')
call s:hi('Conditional' , 68 , '' , 'bold' , 'bold')
call s:hi('Constant'    , 135 , '' , 'None' , 'None')
call s:hi('Debug'       , 225 , '' , 'None' , 'None')
call s:hi('Define'      , 177 , '' , 'None' , 'None')
call s:hi('Delimiter'   , 151 , '' , 'None' , 'None')
hi Boolean         guifg=#FF68DD
hi Character       guifg=#FF62B0
hi Number          guifg=#E697E6
hi Float           guifg=#B7B7FF
hi String          guifg=#20af81
hi Conditional     guifg=#4f97d7
hi Constant        guifg=#7BA7E1
hi Debug           guifg=#FFC8C8
hi Define          guifg=#D881ED
hi Delimiter       guifg=#74BAAC

call s:hi('DiffAdd'    , ''  , 24  , 'None' , 'None')
call s:hi('DiffChange' , 181 , 239 , 'None' , 'None')
call s:hi('DiffDelete' , 162 , 53  , 'None' , 'None')
call s:hi('DiffText'   , ''  , 102 , 'None' , 'None')

call s:hi('Directory'  , 67  , ''  , 'bold' , 'bold')
call s:hi('Exception'  , 203 , ''  , 'bold' , 'bold')
call s:hi('Function'   , 169 , ''  , 'bold' , 'bold')
call s:hi('Identifier' , 168 , ''  , 'None' , 'None')
call s:hi('Ignore'     , 244 , ''  , 'None' , 'None')
call s:hi('Operator'   , 213  , ''  , 'None' , 'None')
call s:hi('FoldColumn' , 67  , s:bg1 , 'None' , 'None')
call s:hi('Folded'     , 133 , s:bg1 , 'bold' , 'bold')
hi Ignore       guifg=#B4D1B6
hi Function     guifg=#bc6ec5

call s:hi('PreCondit' , 139 , '' , 'None' , 'None')
call s:hi('PreProc'   , 176 , '' , 'None' , 'None')
call s:hi('Question'  , 81  , '' , 'None' , 'None')
call s:hi('Repeat'    , 68  , '' , 'bold' , 'bold')
hi PreCondit    guifg=#D698FE
hi PreProc      guifg=#DD75DD
hi Question     guifg=#F9BB00
hi Repeat       guifg=#4f97d7

call s:hi('Keyword' , 68  , '' , 'bold' , 'bold')
call s:hi('Label'   , 104 , '' , 'None' , 'None')
call s:hi('Macro'   , 141 , '' , 'None' , 'None')
hi Label        guifg=#DFB0FF

call s:hi('Type'       , 168 , '' , 'None'      , 'None')
call s:hi('Typedef'    , 204 , '' , 'None'      , 'None')
call s:hi('Underlined' , '' , '' , 'underline' , 'underline')
hi Type         guifg=#ce537a
hi Typedef      guifg=#ce537a

call s:hi('Statement' , 68 , '' , 'None' , 'None')
hi Statement guifg=#4f97d7

call s:hi('Search'    , 16 , 76 , 'bold' , 'bold')
call s:hi('IncSearch' , 16 , 76 , 'bold' , 'bold')
call s:hi('MatchParen', 40 , s:bg0, 'bold,underline', 'bold,underline')
hi Search       guifg=#292b2e guibg=#86dc2f
hi MatchParen   guifg=#00ff00 guibg=NONE

call s:hi('ModeMsg'  , 229 , '' , 'None' , 'None')
hi ModeMsg guifg=#FFF06A

" Popup menu
call s:hi('Pmenu'      , 141 , s:bg1 , 'None' , 'None')
call s:hi('PmenuSel'   , 251 , 97  , 'None' , 'None')
call s:hi('PmenuSbar'  , 28  , 233 , 'None' , 'None')
call s:hi('PmenuThumb' , 160 , 97  , 'None' , 'None')
hi Pmenu        guifg=#9a9aba guibg=#34323e
hi PmenuSbar    guifg=#C269FE guibg=#303030

" SignColumn may relate to ale sign
call s:hi('SignColumn' , 118 , s:bg , 'None' , 'None')
call s:hi('Todo'       , 172 , s:bg , 'bold' , 'bold')
hi Todo         guibg=NONE
hi SignColumn   guibg=NONE

" VertSplit consistent with normal background to hide it
call s:hi('VertSplit' , s:bg0 , '' , 'None' , 'None')
hi VertSplit    guibg=NONE

call s:hi('Warning'    , 136 , '' , 'bold' , 'bold')
call s:hi('WarningMsg' , 136 , '' , 'bold' , 'bold')
hi Warning      guifg=#dc752f guibg=NONE
hi WarningMsg   guifg=#dc752f guibg=NONE

call s:hi('Error'    , 160 , s:bg , 'bold' , 'bold')
call s:hi('ErrorMsg' , 196 , s:bg , 'bold' , 'bold')
hi Error        guifg=#e0211d guibg=NONE
hi ErrorMsg     guifg=#e0211d guibg=NONE

call s:hi('Special'        , 169 , '' , 'None' , 'None')
call s:hi('SpecialKey'     , 59  , '' , 'None' , 'None')
call s:hi('SpecialChar'    , 171 , '' , 'bold' , 'bold')
call s:hi('SpecialComment' , 245 , '' , 'bold' , 'bold')
hi Special        guifg=#DD75DD
hi SpecialKey     guifg=#FF73B9
hi SpecialChar    guifg=#6094DB
hi SpecialComment guifg=#ED9EFE

" marks column
call s:hi('SpellBad'   , 168 , '' , 'underline'    , 'undercurl')
call s:hi('SpellCap'   , 110 , '' , 'underline'    , 'undercurl')
call s:hi('SpellLocal' , 253 , '' , 'underline'    , 'undercurl')
call s:hi('SpellRare'  , 218 , '' , 'underline'    , 'undercurl')

call s:hi('Tag'          , 161 , ''  , 'None' , 'None')
call s:hi('Title'        , 176 , ''  , 'None' , 'None')
call s:hi('Structure'    , 68  , ''  , 'bold' , 'bold')
call s:hi('StorageClass' , 178 , ''  , 'bold' , 'bold')
hi Tag          guifg=#E469FE
hi Title        guifg=#DD75DD
hi Structure    guifg=#4f97d7
hi StorageClass guifg=#d1951d

call s:hi('Visual'    , '' , s:bg3 , 'None' , 'None')
call s:hi('VisualNOS' , '' , 238      , 'None' , 'None')
hi Visual guibg=#544A65

call s:hi('Comment'  , 30  , ''  , 'None' , 'italic')
hi Comment guifg=#2aa1ae

" tilde group
call s:hi('NonText' , 241 , '' , 'None' , 'None')
hi NonText guifg=#534B5D

hi link qfLineNr Type

hi SVDNormal  guifg=#b2b2b2 ctermfg=249
hi SVDDark1   guifg=#3c3836 ctermfg=237
hi SVDDark2   guifg=#504945 ctermfg=239
hi SVDDark3   guifg=#665c54 ctermfg=241
hi SVDDark4   guifg=#7c6f64 ctermfg=243

hi SVDAqua    guifg=#2d9574 ctermfg=72
hi SVDRed     guifg=#f2241f ctermfg=160
hi SVDBlue    guifg=#4f97d7 ctermfg=68
hi SVDGreen   guifg=#20af81 ctermfg=36
hi SVDYellow  guifg=#67b11d ctermfg=114
hi SVDOrange  guifg=#d1951d ctermfg=178
hi SVDMagenta guifg=#a31db1 ctermfg=128

hi SVDAquaBold   guifg=#2d9574 ctermfg=72  gui=bold cterm=bold
hi SVDBlueBold   guifg=#4f97d7 ctermfg=68  gui=bold cterm=bold
hi SVDGreenBold  guifg=#20af81 ctermfg=36  gui=bold cterm=bold
hi SVDYellowBold guifg=#67b11d ctermfg=114 gui=bold cterm=bold
hi SVDOrangeBold guifg=#b1951d ctermfg=137 gui=bold cterm=bold

"""""""""""""""""""""""""""""""""""""""""""
" Language
"""""""""""""""""""""""""""""""""""""""""""
" markdown
hi link markdownH1 SVDBlueBold
hi link markdownH2 SVDGreenBold
hi link markdownH3 SVDYellowBold
hi link markdownH4 SVDOrangeBold
hi link markdownH5 SVDBlue
hi link markdownH6 SVDGreen
hi link mkdCode    SVDYellow
hi link mkdItalic  String

" c
hi link cConstant  SVDOrange

" cpp
hi cppExceptions       ctermfg=207 guifg=#CC3366 cterm=bold gui=bold
hi link cppSTLexception cppExceptions

" css
hi link cssTagName SVDBlueBold
hi link cssProp    Function

" dot
hi link dotKeyChar Number
hi link dotType StorageClass

" sh
hi link shSet         SVDBlueBold
hi link shLoop        SVDBlueBold
hi link shFunctionKey SVDBlueBold
hi link shTestOpr     SVDOrange

" solidity
hi link solContract  SVDOrangeBold

" vimL
hi link vimLet     SVDBlueBold
hi link vimFuncKey SVDBlueBold
hi link vimCommand SVDBlueBold
hi link vimGroup   Directory
hi link vimHiGroup Directory

" rust
hi link rustKeyword SVDBlueBold
hi link rustModPath SVDBlue
call s:hi('rustTrait'       , 168 , '' , 'bold'      , 'bold')
hi Type         guifg=#ce537a

" json
hi link jsonStringSQError SVDRed

" xml
hi link xmlTag     Identifier
hi link xmlEndTag  Identifier
hi link xmlTagName Identifier

" go
hi link goFunctionCall    Function
hi link goMethodCall      Function
hi link goTypeName        Function
hi link goReceiverType    SVDYellow
hi link goTypeConstructor SVDOrange
hi link goType            PreProc
hi link goFloats          Float

" make
hi link makeCommands      SVDBlue
hi link makeSpecTarget    SVDBlueBold

" java
hi link javaScopeDecl keyword
hi link javaClassDecl Function

" scala
hi link scalaKeyword SVDBlueBold
hi link scalaNameDefinition SVDBlueBold

" ruby
hi link rubyClass SVDBlueBold
hi link rubyDefine SVDBlueBold
hi link rubyInterpolationDelimiter Number

" html
hi link htmlSpecialTagName Tag
hi link htmlItalic String

" python-mode
hi pythonLambdaExpr      ctermfg=105 guifg=#8787ff
hi pythonInclude         ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold
hi pythonClass           ctermfg=207 guifg=#FF62B0 cterm=bold gui=bold
hi pythonParameters      ctermfg=147 guifg=#AAAAFF
hi pythonParam           ctermfg=108 guifg=#67b11d
hi pythonBrackets        ctermfg=183 guifg=#d7afff
hi pythonClassParameters ctermfg=111 guifg=#FF5353
hi pythonSelf            ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold

hi link pythonOperator  SVDBlueBold
hi link pythonStatement SVDBlueBold

hi pythonDottedName      ctermfg=74  guifg=#5fafd7

hi pythonError           ctermfg=196 guifg=#ff0000
hi pythonIndentError     ctermfg=197 guifg=#ff005f
hi pythonSpaceError      ctermfg=198 guifg=#ff0087

hi pythonBuiltinType     ctermfg=170  guifg=#D54FD5 cterm=bold gui=bold
hi pythonBuiltinObj      ctermfg=71  guifg=#5faf5f cterm=bold gui=bold
hi pythonBuiltinFunc     ctermfg=169 guifg=#d75faf cterm=bold gui=bold

hi pythonException       ctermfg=161 guifg=#CC3366 cterm=bold gui=bold

"""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""
"ALE {
hi link ALEErrorSign    Error
hi link ALEWarningSign  Warning
"}

" vim-indent-guides {
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=#708090 ctermbg=237
hi IndentGuidesEven guibg=#696969 ctermbg=239
" }

" vim-gitgutter {
hi link GitGutterAdd          SVDGreen
hi link GitGutterChange       SVDOrange
hi link GitGutterDelete       SVDRed
hi link GitGutterChangeDelete SVDMagenta
" }

" vim-markdown {
hi link htmlH1 SVDBlueBold
hi link htmlH2 SVDGreenBold
hi link htmlH3 SVDYellowBold
hi link htmlH4 SVDOrangeBold
hi link htmlH5 SVDBlue
hi link htmlH6 SVDGreen
" }

" vim-signify {
hi link SignifySignAdd    SVDGreen
hi link SignifySignChange SVDAqua
hi link SignifySignDelete SVDRed
" }

" vim-startify {
hi link StartifyFile    Normal
hi link StartifyHeader  Define
hi link StartifySection SVDBlueBold
" }

" YouCompleteMe {
hi YcmErrorSection   guibg=#800080 guifg=#b2b2b2 ctermbg=5  ctermfg=249
hi YcmWarningSection guibg=#5f5f87 guifg=#b2b2b2 ctermbg=60 ctermfg=249
" }

" vim-leader-guide {
hi link LeaderGuideKeys     Function
hi link LeaderGuideDesc     SVDNormal
hi link LeaderGuideBrackets SVDGreen
" }

" NERDTree {
hi link NERDTreeCWD       Function
hi link NERDTreeUp        SVDBlueBold
hi link NERDTreeDir       SVDBlueBold
hi link NERDTreeDirSlash  SVDBlueBold
hi link NERDTreeOpenable  SVDBlueBold
hi link NERDTreeClosable  SVDBlueBold
" }

" Tagbar {
call s:hi('TagbarHighlight'    , 16 , 36 , 'bold' , 'bold')
" }

delf s:hi
unlet s:color_map s:bg

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
