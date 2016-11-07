" Theme: CandyPaper
" Author: DF_XYZ
" License: MIT
" Description: A dark theme inspired by PaperColor and CandyCode.

set background=dark
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = "CandyPaper"

" Color Palette: {{{
let s:white         = '#d3d9ce'  " 90 5 85
let s:grey          = '#70736d'  " 90 5 45
let s:mid_grey      = '#3e403d'  " 90 5 25
let s:dark_grey     = '#252624'  " 90 5 15
let s:black         = '#0c0d0c'  " 90 5 5
let s:red           = '#d94436'  " 5 75 85
let s:dark_red      = '#73140b'  " 5 90 45
let s:orange        = '#d98736'  " 30 75 85
let s:light_yellow  = '#d9c877'  " 50 45 85
let s:yellow        = '#d9be36'  " 50 75 85
let s:olive         = '#c0d977'  " 75 45 85
let s:light_green   = '#98d99d'  " 125 30 85
let s:green         = '#77d97f'  " 125 45 85
let s:dark_green    = '#3f7343'  " 125 45 45
let s:dim_green     = '#364037'  " 125 15 25
let s:sea_green     = '#0b7350'  " 160 90 45
let s:light_blue    = '#98c3d9'  " 200 30 85
let s:blue          = '#36a3d9'  " 200 75 85
let s:dark_blue     = '#08364d'  " 200 90 45
let s:purple        = '#b077d9'  " 275 45 85
let s:dark_purple   = '#5d3f73'  " 275 45 45
let s:pink          = '#d977b0'  " 325 45 85
" }}}

" Helper Functions: {{{
" returns an approximate grey index for the given grey level
function s:grey_number(x)
    if a:x < 14
        return 0
    else
        let l:n = (a:x - 8) / 10
        let l:m = (a:x - 8) % 10
        if l:m < 5
            return l:n
        else
            return l:n + 1
        endif
    endif
endfunction

" returns the actual grey level represented by the grey index
function s:grey_level(n)
    if a:n == 0
        return 0
    else
        return 8 + (a:n * 10)
    endif
endfunction

" returns the palette index for the given grey index
function s:grey_color(n)
    if a:n == 0
        return 16
    elseif a:n == 25
        return 231
    else
        return 231 + a:n
    endif
endfunction

" returns an approximate color index for the given color level
function s:rgb_number(x)
    if a:x < 75
        return 0
    else
        let l:n = (a:x - 55) / 40
        let l:m = (a:x - 55) % 40
        if l:m < 20
            return l:n
        else
            return l:n + 1
        endif
    endif
endfunction

" returns the actual color level for the given color index
function s:rgb_level(n)
    if a:n == 0
        return 0
    else
        return 55 + (a:n * 40)
    endif
endfunction

" returns the palette index for the given R/G/B color indices
function s:rgb_color(x, y, z)
    return 16 + (a:x * 36) + (a:y * 6) + a:z
endfunction

" returns the palette index to approximate the given R/G/B color levels
function s:_color(r, g, b)
    " get the closest grey
    let l:gx = s:grey_number(a:r)
    let l:gy = s:grey_number(a:g)
    let l:gz = s:grey_number(a:b)

    " get the closest color
    let l:x = s:rgb_number(a:r)
    let l:y = s:rgb_number(a:g)
    let l:z = s:rgb_number(a:b)

    if l:gx == l:gy && l:gy == l:gz
        " there are two possibilities
        let l:dgr = s:grey_level(l:gx) - a:r
        let l:dgg = s:grey_level(l:gy) - a:g
        let l:dgb = s:grey_level(l:gz) - a:b
        let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
        let l:dr = s:rgb_level(l:gx) - a:r
        let l:dg = s:rgb_level(l:gy) - a:g
        let l:db = s:rgb_level(l:gz) - a:b
        let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
        if l:dgrey < l:drgb
            " use the grey
            return s:grey_color(l:gx)
        else
            " use the color
            return s:rgb_color(l:x, l:y, l:z)
        endif
    else
        " only one possibility
        return s:rgb_color(l:x, l:y, l:z)
    endif
endfunction

" returns the palette index to approximate the '#rrggbb' hex string
function s:rgb(rgb)
  let l:r = ("0x" . strpart(a:rgb, 1, 2)) + 0
  let l:g = ("0x" . strpart(a:rgb, 3, 2)) + 0
  let l:b = ("0x" . strpart(a:rgb, 5, 2)) + 0
  return s:_color(l:r, l:g, l:b)
endfunction

" Sets the highlighting for the given group
function s:_hi(group, fg, bg, attr)
    if a:fg != ""
        exec "hi " . a:group . " guifg=" . a:fg . " ctermfg=" . s:rgb(a:fg)
    endif
    if a:bg != ""
        exec "hi " . a:group . " guibg=" . a:bg . " ctermbg=" . s:rgb(a:bg)
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    endif
endfunction
" }}}

" Highlighting Groups for Various Occations : {{{
call s:_hi("SpecialKey", s:dark_green, "", "none")
call s:_hi("NonText", s:dark_green, "", "none")
call s:_hi("Directory", s:blue, "", "none")
call s:_hi("ErrorMsg", s:white, s:dark_red, "none")
call s:_hi("IncSearch", s:black, s:yellow, "none")
call s:_hi("Search", s:white, s:sea_green, "none")
call s:_hi("MoreMsg", s:olive, "", "none")
call s:_hi("ModeMsg", s:olive, "", "none")
call s:_hi("LineNr", s:grey, "", "none")
call s:_hi("CursorLineNr", s:light_yellow, s:dark_grey, "none")
call s:_hi("Question", s:green, "", "none")
call s:_hi("StatusLine", s:black, s:white, "none")
call s:_hi("StatusLineNC", s:white, s:mid_grey, "none")
call s:_hi("VertSplit", s:white, "", "none")
call s:_hi("Title", s:green, "", "none")
call s:_hi("Visual", s:white, s:dark_blue, "none")
call s:_hi("VisualNOS", s:white, s:dark_blue, "none")
call s:_hi("WarningMsg", s:olive, "", "none")
call s:_hi("WildMenu", s:black, s:yellow, "none")
call s:_hi("Folded", s:olive, s:dim_green, "none")
call s:_hi("FoldColumn", s:blue, s:black, "none")
call s:_hi("DiffAdd", s:black, s:green, "none")
call s:_hi("DiffChange", s:black, s:yellow, "none")
call s:_hi("DiffDelete", s:black, s:red, "none")
call s:_hi("DiffText", s:black, s:light_yellow, "none")
call s:_hi("SignColumn", s:blue, s:black, "none")
call s:_hi("SpellBad", "", s:dark_red, "none")
call s:_hi("SpellCap", "", s:dark_purple, "none")
call s:_hi("SpellRare", "", s:dark_green, "none")
call s:_hi("SpellLocal", "", s:dark_blue, "none")
call s:_hi("PMenu", s:black, s:white, "none")
call s:_hi("PMenuSel", "", s:dark_blue, "none")
call s:_hi("PMenuSbar", "", s:dark_grey, "none")
call s:_hi("PMenuThumb", "", s:grey, "none")
call s:_hi("TabLine", s:black, s:white, "none")
call s:_hi("TabLineSel", "", "", "none")
call s:_hi("TabLineFill", "", s:white, "none")
call s:_hi("CursorColumn", "", s:dark_grey, "none")
call s:_hi("CursorLine", "", s:dark_grey, "none")
call s:_hi("ColorColumn", "", s:dark_red, "none")
call s:_hi("Cursor", "", s:white, "none")
" }}}

" Syntax Highlighting Groups: {{{
call s:_hi("Normal", s:white, s:black, "none")
call s:_hi("Error", "", s:dark_red, "none")
call s:_hi("MatchParen", s:yellow, s:sea_green, "none")

call s:_hi("Comment", s:dark_green, "", "none")

call s:_hi("Constant", s:pink, "", "none")
call s:_hi("String", s:olive, "", "none")
call s:_hi("Character", s:orange, "", "none")
call s:_hi("Number", s:red, "", "none")
call s:_hi("Float", s:red, "", "none")
call s:_hi("Boolean", s:yellow, "", "none")

call s:_hi("Identifier", s:blue, "", "none")
call s:_hi("Function", s:blue, "", "none")

call s:_hi("Statement", s:green, "", "none")
call s:_hi("Conditional", s:green, "", "none")
call s:_hi("Repeat", s:green, "", "none")
call s:_hi("Label", s:blue, "", "none")
call s:_hi("Operator", s:light_blue, "", "none")
call s:_hi("Keyword", s:blue, "", "none")
call s:_hi("Exception", s:green, "", "none")

call s:_hi("PreProc", s:blue, "", "none")
call s:_hi("Include", s:green, "", "none")
call s:_hi("Define", s:blue, "", "none")
call s:_hi("Macro", s:blue, "", "none")
call s:_hi("PreCondit", s:green, "", "none")

call s:_hi("Type", s:green, "", "none")
call s:_hi("StorageClass", s:purple, "", "none")
call s:_hi("Structure", s:blue, "", "none")
call s:_hi("Typedef", s:green, "", "none")

call s:_hi("Special", s:yellow, "", "none")
call s:_hi("Tag", s:green, "", "none")
call s:_hi("Delimiter", s:light_blue, "", "none")
call s:_hi("SpecialComment", s:green, "", "none")
call s:_hi("Debug", s:red, "", "none")

call s:_hi("Underlined", s:purple, "", "underline")

call s:_hi("Todo", s:light_green, s:black, "none")
" }}}

" VimL Highlighting: {{{
call s:_hi("vimAutoEvent", s:blue, "", "none")
call s:_hi("vimBracket", s:blue, "", "none")
call s:_hi("vimCommentTitle", s:green, "", "none")
call s:_hi("vimCommand", s:green, "", "none")
call s:_hi("vimFuncName", s:purple, "", "none")
call s:_hi("vimGroup", s:orange, "", "none")
call s:_hi("vimNotation", s:blue, "", "none")
call s:_hi("vimVar", s:orange, "", "none")
" }}}

" C/C++ Highlighting: {{{
call s:_hi("cOctalZero", s:dark_green, "", "none")
call s:_hi("cppStructure", s:green, "", "none")
" }}}

" HTML Highlighting: {{{
call s:_hi("htmlArg", s:blue, "", "none")
call s:_hi("htmlTag", s:green, "", "none")
call s:_hi("htmlEndTag", s:green, "", "none")
call s:_hi("htmlTagN", s:green, "", "none")
call s:_hi("htmlSpecialTagName", s:green, "", "none")
call s:_hi("htmlBold", s:light_yellow, "", "none")
call s:_hi("htmlItalic", s:light_green, "", "none")
call s:_hi("htmlBoldItalic", s:orange, "", "none")
" }}}

" Javascript Highlighting: {{{
call s:_hi("javaScriptBraces", s:light_blue, "", "none")
call s:_hi("javaScriptParens", s:light_blue, "", "none")
call s:_hi("javaScriptIdentifier", s:green, "", "none")
call s:_hi("javaScriptBranch", s:green, "", "none")
call s:_hi("javaScriptGlobal", s:purple, "", "none")
call s:_hi("javaScriptMember", s:purple, "", "none")
call s:_hi("javaScriptNumber", s:red, "", "none")
call s:_hi("javaScriptNull", s:pink, "", "none")
" }}}

" CSS Highlighting: {{{
call s:_hi("cssBraces", s:light_blue, "", "none")
call s:_hi("cssIdentifier", s:blue, "", "none")
call s:_hi("cssClassName", s:blue, "", "none")
call s:_hi("cssPseudoClassId", s:yellow, "", "none")
" }}}

" Markdown Highlighting: {{{
call s:_hi("markdownRule", s:green, "", "none")
call s:_hi("markdownUrl", s:blue, "", "none")
call s:_hi("markdownCode", s:blue, "", "none")
call s:_hi("markdownCodeBlock", s:blue, "", "none")
call s:_hi("markdownCodeDelimiter", s:dark_green, "", "none")
call s:_hi("markdownLinkDelimiter", s:green, "", "none")
call s:_hi("markdownLinkTextDelimiter", s:green, "", "none")
" }}}

" Python Highlighting: {{{
call s:_hi("pythonBuiltin", s:purple, "", "none")
call s:_hi("pythonExceptions", s:purple, "", "none")
call s:_hi("pythonRawString", s:yellow, "", "none")
" }}}

" Java Highlighting: {{{
call s:_hi("javaClassDecl", s:green, "", "none")
call s:_hi("javaScopeDecl", s:blue, "", "none")
call s:_hi("javaOperator", s:green, "", "none")
call s:_hi("javaDocTags", s:green, "", "none")
" }}}

" Ruby Highlighting: {{{
call s:_hi("rubyDefine", s:green, "", "none")
call s:_hi("rubyIdentifier", s:purple, "", "none")
" }}}

" PHP Highlighting: {{{
call s:_hi("phpVarSelector", s:green, "", "none")
call s:_hi("phpIdentifier", s:white, "", "none")
call s:_hi("phpStructure", s:green, "", "none")
call s:_hi("phpFunctions", s:purple, "", "none")
call s:_hi("phpSpecialFunction", s:purple, "", "none")
" }}}

" XML Highlighting: {{{
call s:_hi("xmlTag", s:green, "", "none")
call s:_hi("xmlEndTag", s:green, "", "none")
call s:_hi("xmlTagName", s:green, "", "none")
call s:_hi("xmlNameSpace", s:pink, "", "none")
call s:_hi("xmlEntity", s:purple, "", "none")
call s:_hi("xmlEntityPunct", s:purple, "", "none")
call s:_hi("xmlAttrib", s:blue, "", "none")
call s:_hi("xmlAttribPunct", s:blue, "", "none")
call s:_hi("xmlDocTypeDecl", s:dark_green, "", "none")
call s:_hi("xmlDocTypeKeyword", s:dark_green, "", "none")
call s:_hi("xmlCdataCdata", s:dark_green, "", "none")
call s:_hi("xmlCdataStart", s:dark_green, "", "none")
call s:_hi("xmlCdataEnd", s:dark_green, "", "none")
" }}}

" Delete Helper Functions: {{{
delfunction s:_hi
delfunction s:rgb
delfunction s:_color
delfunction s:rgb_color
delfunction s:rgb_level
delfunction s:rgb_number
delfunction s:grey_color
delfunction s:grey_level
delfunction s:grey_number
" }}}

" vim: fdm=marker
