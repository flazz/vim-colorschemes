" zerg colorscheme for vim
"
" Author: szorfein
" Url: https://github.com/szorfein/darkest-space

" Note:
" logic code inspired by: https://github.com/liuchengxu/space-vim-dark
" Colorscheme is build from scratch.

hi clear

if v:version > 580
    hi clear
    if exists('g:syntax_on')
        syntax reset
    endif
endif

let g:colors_name='zerg'

" refer to http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
let s:color256 = {
            \ 0 : '#000000',  1 : '#800000',  2 : '#008000',  3 : '#808000',  4 : '#000080',  5 : '#800080',  6 : '#008080' , 7 : '#c0c0c0',
            \ 8 : '#808080',  9 : '#ff0000', 10 : '#00ff00', 11 : '#ffff00', 12 : '#0000ff', 13 : '#ff00ff', 14 : '#00ffff', 15 : '#ffffff',
            \ 16 : '#000000',  17 : '#00005f',  18 : '#000087',  19 : '#0000af',  20 : '#0000d7',  21 : '#0000ff',
            \ 22 : '#005f00',  23 : '#005f5f',  24 : '#005f87',  25 : '#005faf',  26 : '#005fd7',  27 : '#005fff',
            \ 28 : '#008700',  29 : '#00875f',  30 : '#008787',  31 : '#0087af',  32 : '#0087d7',  33 : '#0087ff',
            \ 34 : '#00af00',  35 : '#00af5f',  36 : '#00af87',  37 : '#00afaf',  38 : '#00afd7',  39 : '#00afff',
            \ 40 : '#00d700',  41 : '#00d75f',  42 : '#00d787',  43 : '#00d7af',  44 : '#00d7d7',  45 : '#00d7ff',
            \ 46 : '#00ff00',  47 : '#00ff5f',  48 : '#00ff87',  49 : '#00ffaf',  50 : '#00ffd7',  51 : '#00ffff',
            \ 52 : '#5f0000',  53 : '#5f005f',  54 : '#5f0087',  55 : '#5f00af',  56 : '#5f00d7',  57 : '#5f00ff',
            \ 58 : '#5f5f00',  59 : '#5f5f5f',  60 : '#5f5f87',  61 : '#5f5faf',  62 : '#5f5fd7',  63 : '#5f5fff',
            \ 64 : '#5f8700',  65 : '#5f875f',  66 : '#5f8787',  67 : '#5f87af',  68 : '#5f87d7',  69 : '#5f87ff',
            \ 70 : '#5faf00',  71 : '#5faf5f',  72 : '#5faf87',  73 : '#5fafaf',  74 : '#5fafd7',  75 : '#5fafff',
            \ 76 : '#5fd700',  77 : '#5fd75f',  78 : '#5fd787',  79 : '#5fd7af',  80 : '#5fd7d7',  81 : '#5fd7ff',
            \ 82 : '#5fff00',  83 : '#5fff5f',  84 : '#5fff87',  85 : '#5fffaf',  86 : '#5fffd7',  87 : '#5fffff',
            \ 88 : '#870000',  89 : '#87005f',  90 : '#870087',  91 : '#8700af',  92 : '#8700d7',  93 : '#8700ff',
            \ 94 : '#875f00',  95 : '#875f5f',  96 : '#875f87',  97 : '#875faf',  98 : '#875fd7',  99 : '#875fff',
            \ 100 : '#878700', 101 : '#87875f', 102 : '#878787', 103 : '#8787af', 104 : '#8787d7', 105 : '#8787ff',
            \ 106 : '#87af00', 107 : '#87af5f', 108 : '#87af87', 109 : '#87afaf', 110 : '#87afd7', 111 : '#87afff',
            \ 112 : '#87d700', 113 : '#87d75f', 114 : '#87d787', 115 : '#87d7af', 116 : '#87d7d7', 117 : '#87d7ff',
            \ 118 : '#87ff00', 119 : '#87ff5f', 120 : '#87ff87', 121 : '#87ffaf', 122 : '#87ffd7', 123 : '#87ffff',
            \ 124 : '#af0000', 125 : '#af005f', 126 : '#af0087', 127 : '#af00af', 128 : '#af00d7', 129 : '#af00ff',
            \ 130 : '#af5f00', 131 : '#af5f5f', 132 : '#af5f87', 133 : '#af5faf', 134 : '#af5fd7', 135 : '#af5fff',
            \ 136 : '#af8700', 137 : '#af875f', 138 : '#af8787', 139 : '#af87af', 140 : '#af87d7', 141 : '#af87ff',
            \ 142 : '#afaf00', 143 : '#afaf5f', 144 : '#afaf87', 145 : '#afafaf', 146 : '#afafd7', 147 : '#afafff',
            \ 148 : '#afd700', 149 : '#afd75f', 150 : '#afd787', 151 : '#afd7af', 152 : '#afd7d7', 153 : '#afd7ff',
            \ 154 : '#afff00', 155 : '#afff5f', 156 : '#afff87', 157 : '#afffaf', 158 : '#afffd7', 159 : '#afffff',
            \ 160 : '#d70000', 161 : '#d7005f', 162 : '#d70087', 163 : '#d700af', 164 : '#d700d7', 165 : '#d700ff',
            \ 166 : '#d75f00', 167 : '#d75f5f', 168 : '#d75f87', 169 : '#d75faf', 170 : '#d75fd7', 171 : '#d75fff',
            \ 172 : '#d78700', 173 : '#d7875f', 174 : '#d78787', 175 : '#d787af', 176 : '#d787d7', 177 : '#d787ff',
            \ 178 : '#d7af00', 179 : '#d7af5f', 180 : '#d7af87', 181 : '#d7afaf', 182 : '#d7afd7', 183 : '#d7afff',
            \ 184 : '#d7d700', 185 : '#d7d75f', 186 : '#d7d787', 187 : '#d7d7af', 188 : '#d7d7d7', 189 : '#d7d7ff',
            \ 190 : '#d7ff00', 191 : '#d7ff5f', 192 : '#d7ff87', 193 : '#d7ffaf', 194 : '#d7ffd7', 195 : '#d7ffff',
            \ 196 : '#ff0000', 197 : '#ff005f', 198 : '#ff0087', 199 : '#ff00af', 200 : '#ff00d7', 201 : '#ff00ff',
            \ 202 : '#ff5f00', 203 : '#ff5f5f', 204 : '#ff5f87', 205 : '#ff5faf', 206 : '#ff5fd7', 207 : '#ff5fff',
            \ 208 : '#ff8700', 209 : '#ff875f', 210 : '#ff8787', 211 : '#ff87af', 212 : '#ff87d7', 213 : '#ff87ff',
            \ 214 : '#ffaf00', 215 : '#ffaf5f', 216 : '#ffaf87', 217 : '#ffafaf', 218 : '#ffafd7', 219 : '#ffafff',
            \ 220 : '#ffd700', 221 : '#ffd75f', 222 : '#ffd787', 223 : '#ffd7af', 224 : '#ffd7d7', 225 : '#ffd7ff',
            \ 226 : '#ffff00', 227 : '#ffff5f', 228 : '#ffff87', 229 : '#ffffaf', 230 : '#ffffd7', 231 : '#ffffff',
            \
            \ 232 : '#080808', 233 : '#121212', 234 : '#1c1c1c', 235 : '#262626', 236 : '#303030', 237 : '#3a3a3a',
            \ 238 : '#444444', 239 : '#4e4e4e', 240 : '#585858', 241 : '#606060', 242 : '#666666', 243 : '#767676',
            \ 244 : '#808080', 245 : '#8a8a8a', 246 : '#949494', 247 : '#9e9e9e', 248 : '#a8a8a8', 249 : '#b2b2b2',
            \ 250 : '#bcbcbc', 251 : '#c6c6c6', 252 : '#d0d0d0', 253 : '#dadada', 254 : '#e4e4e4', 255 : '#eeeeee',
            \ }

let s:colors = {
            \ 16: '#292b2e', 24: '#3C8380', 28: '#c269fe', 30: '#2aa1ae', 36: '#20af81', 40: '#00ff00',
            \ 59: '#FF73B9', 68: '#4f97d7', 75: '#FF62B0', 76: '#86dc2f', 81: '#f9bb00', 88: '#330033',
            \ 104: '#df90ff', 114: '#67b11d', 128: '#e76a49', 135: '#B7B7FF', 136: '#dc752f', 139: '#d698fe',
            \ 140: '#b888e2', 141: '#9a9aba', 151: '#74BAAC', 160: '#e0211d', 161: '#E469FE', 167: '#ce537a',
            \ 168: '#ce537a', 169: '#bc6ec5', 171: '#6094DB', 173: '#e18254', 176: '#E697E6', 177: '#D881ED',
            \ 178: '#d1951d', 179: '#d4b261', 196: '#e0211d', 204: '#ce537a', 207: '#FF68DD', 214: '#FF4848',
            \ 218: '#d19a66', 225: '#FFC8C8', 229: '#fff06a', 233: '#303030', 234: '#212026', 235: '#292b2e',
            \ 236: '#34323e', 238: '#544a65', 241: '#534b5d', 244: '#b4d1b6',
            \ }

function! s:hi(item, fg, bg, cterm, gui)
    let l:fg = empty(a:fg) ? '' : printf('ctermfg=%d guifg=%s', a:fg, get(s:colors, a:fg, s:color256[a:fg]))
    let l:bg = empty(a:bg) ? '' : printf('ctermbg=%d guibg=%s', a:bg, get(s:colors, a:bg, s:color256[a:bg]))
    let l:style = printf('cterm=%s gui=%s', a:cterm, a:gui)
    execute 'hi '.a:item.' '.l:fg.' '.l:bg.' '.l:style
endfunction

" foreground:   230
" background:   8
" grey:         59,60,240,241,244
" red:          95,131,137,138,173,174,182,203,204,216
" yellow:       185,186,193,194,217,222,223,224,228,229
" green:        29,35,42,85,86,108,115,121,150,157
" blue:         24,31,60,61,66,81,103,109,146,145,243
" magenta:      61,96,102,145,146,161,225,245
" cyan:         23,29,30,72,73,78,79,86,115
" white:        151,188,230,231,252,194

" normal Green
" call s:hi('Normal' , 114, '', 'None', 'None')
" Normal Magenta
" call s:hi('Normal' , 132, '', 'None', 'None')
" Normal Blue
" call s:hi('Normal' , 147, '', 'None', 'None')
" normal Red
"call s:hi('Normal' , 188, '', 'None', 'None')
" Normal Cyan
"call s:hi('Normal' , 194, '', 'None', 'None')
" Normal Orange | 216 | 210
call s:hi('Normal' , 216, '', 'None', 'None')
call s:hi('angular2HTML' , 61, '', 'None', 'None')
call s:hi('angularType' , 97, '', 'None', 'None')
call s:hi('Boolean' , 194, '', 'None', 'None')
call s:hi('cIncluded' , 61, '', 'None', 'None')
call s:hi('Comment' , 31, '', 'italic', 'italic')
call s:hi('Conditional' , 79, '', 'None', 'None')
call s:hi('Constant' , 231, '', 'None', 'None')
call s:hi('cssAttr', '61', '', 'None', 'None')
call s:hi('cssBraces' , 108, '', 'None', 'None')
call s:hi('cssProp', '30', '', 'None', 'None')
call s:hi('cssTagName', '81', '', 'None', 'None')
call s:hi('CursorLine' , '252', '', 'None', 'None')
call s:hi('Delimiter' , 194, '', 'bold', 'bold')
call s:hi('EbuildFunctions' , 79, '', 'None', 'None')
call s:hi('EbuildCoreKeyword' , 30, '', 'None', 'None')
call s:hi('Error' , 186, '131', 'None', 'None')
call s:hi('ErrorMsg' , 230, '131', 'None', 'None')
call s:hi('Folded' , 152, 8, 'None', 'None')
call s:hi('FoldColumn' , 152, 8, 'None', 'None')
call s:hi('Function' , 79, '', 'None', 'None')
call s:hi('htmlArg' , 146, '', 'None', 'None')
call s:hi('htmlBold' , '', '', 'Bold', 'Bold')
call s:hi('htmlH1' , '231', '', 'Bold', 'Bold')
call s:hi('htmlH2' , '230', '', 'Bold', 'Bold')
call s:hi('htmlH3' , '229', '', 'None', 'None')
call s:hi('htmlItalic' , '', '', 'Italic', 'Italic')
call s:hi('htmlLink' , '146', '', 'None', 'None')
call s:hi('htmlString' , '96', '', 'None', 'None')
call s:hi('Identifier' , 116, '', 'None', 'None')
call s:hi('javascriptKeyword' , 30, '', 'None', 'None')
call s:hi('jsonKeyword' , 73, '', 'None', 'None')
call s:hi('Keyword' , '109', '', 'None', 'None')
call s:hi('LineNr' , 24, '', 'None', 'None')
call s:hi('markdownCode' , 225, '', 'None', 'None')
call s:hi('markdownCodeBlock' , 97, '', 'None', 'None')
call s:hi('markdownLinkDelimiter' , 108, '', 'bold', 'bold')
call s:hi('markdownLinkTextDelimiter' , 109, '', 'bold', 'bold')
call s:hi('markdownUrl' , 30, '', 'none', 'none')
call s:hi('markdownLineStart' , 115, '', 'none', 'none')
call s:hi('NERDTreeDir' , 5, '', 'bold', 'bold')
call s:hi('NERDTreeFile' , 6, '', 'bold', 'bold')
call s:hi('Noise', '109', '', 'None', 'None')
call s:hi('Number' , 193, '', 'None', 'None')
call s:hi('Operator' , 157, '', 'None', 'None')
call s:hi('PreProc' , 121, '', 'None', 'None')
call s:hi('pythonBuiltin' , 30, '', 'None', 'None')
call s:hi('pythonEscape' , 102, '', 'None', 'None')
call s:hi('pythonQuotes' , 121, '', 'None', 'None')
call s:hi('pythonString' , 229, '', 'None', 'None')
call s:hi('Repeat' , 79, '', 'None', 'None')
call s:hi('rubyArrayDelimiter' , 108, '', 'Bold', 'Bold')
call s:hi('rubyBeginEnd', 121, '', 'None', 'None')
call s:hi('rubyConditionalExpression' , 60, '', 'None', 'None')
call s:hi('rubyConstant' , 80, '', 'None', 'None')
call s:hi('rubyControl', 121, '', 'None', 'None')
call s:hi('rubyCurlyBlockDelimiter' , 115, '', 'Bold', 'Bold')
call s:hi('rubyDoBlock' , 96, '', 'None', 'None')
call s:hi('rubyIdentifier', 23, '', 'Bold', 'Bold')
call s:hi('rubyInterpolation' , 60, '', 'None', 'None')
call s:hi('rubyInterpolationDelimiter' , 115, '', 'None', 'None')
call s:hi('rubySharpBang', 31, '', 'None', 'None')
call s:hi('sassControlLine', '81', '', 'None', 'None')
call s:hi('sassClass', '79', '', 'None', 'None')
call s:hi('sassCssAttribute', '121', '', 'None', 'None')
call s:hi('sassDefinition', '109', '', 'Bold', 'Bold')
call s:hi('sassProperty', '121', '', 'None', 'None')
call s:hi('shColon' , '109', '', 'None', 'None')
call s:hi('shDeref' , 60, '', 'None', 'None')
call s:hi('Special' , 96, '', 'None', 'None')
call s:hi('Statement' , 30, '', 'None', 'None')
call s:hi('StatusLine' , 152, 8, 'None', 'None')
call s:hi('StatusLineNC' , 152, 8, 'None', 'None')
call s:hi('String' , 229, '', 'italic', 'italic')
call s:hi('symbol' , 157, '', 'None', 'None')
call s:hi('Type' , 243, '', 'None', 'None')
call s:hi('typescriptBraces' , 108, '', 'bold', 'bold')
call s:hi('typescriptReserved' , 23, '', 'Bold', 'Bold')
call s:hi('typescriptVar' , 60, '', 'None', 'None')
call s:hi('VertSplit' , 13, '', 'None', 'None')
call s:hi('vimGroup' , '14', '', 'None', 'None')
call s:hi('Visual' , 152, 8, 'None', 'None')
call s:hi('xdefaultsLabel' , 108, '', 'None', 'None')
call s:hi('zshDeref' , 60, '', 'None', 'None')
call s:hi('zshVariable' , 109, '', 'None', 'None')
call s:hi('xdefaultsLabel' , 30, '', 'None', 'None')
call s:hi('xdefaultsPunct' , 159, '', 'None', 'None')
