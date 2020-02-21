" Color Scheme: CandyPaper
" Author: DF_XYZ
" License: MIT

highlight clear
set background=dark

if exists("syntax_on")
    syntax reset
endif

let colors_name = "CandyCode"

" Convert color from HSV to RGB as a hex string
" See: https://en.wikipedia.org/wiki/HSL_and_HSV#From_HSV
function s:hsv_to_rgb(h, s, v) "{
    let l:C = (a:s / 100.0) * (a:v / 100.0)
    let l:H = a:h / 60.0 | let l:H_mod_2 = float2nr(l:H) % 2 + l:H - float2nr(l:H)
    let l:X = l:C * (1 - abs(l:H_mod_2 - 1))

    if 0 <= l:H && l:H < 1
        let l:r = l:C
        let l:g = l:X
        let l:b = 0
    elseif 1 <= H && H < 2
        let l:r = l:X
        let l:g = l:C
        let l:b = 0
    elseif 2 <= l:H && l:H < 3
        let l:r = 0
        let l:g = l:C
        let l:b = l:X
    elseif 3 <= l:H && l:H < 4
        let l:r = 0
        let l:g = l:X
        let l:b = l:C
    elseif 4 <= l:H && l:H < 5
        let l:r = X
        let l:g = 0
        let l:b = C
    elseif 5 <= l:H && l:H < 6
        let l:r = C
        let l:g = 0
        let l:b = X
    else
        let l:r = 0
        let l:g = 0
        let l:b = 0
    endif

    let l:r += a:v / 100.0 - l:C
    let l:g += a:v / 100.0 - l:C
    let l:b += a:v / 100.0 - l:C
    let l:R = float2nr(round(l:r * 255))
    let l:G = float2nr(round(l:g * 255))
    let l:B = float2nr(round(l:b * 255))

    return printf("#%02x%02x%02x", l:R, l:G, l:B)
endfunction "}

" Return the approximate grey index with the given grey level
function s:grey_index(x) "{
    if a:x < 14
        return 0
    else
        let l:i = (a:x - 8) / 10
        let l:j = (a:x - 8) % 10
        return l:j < 5 ? l:i : l:i + 1
    endif
endfunction "}

" Return the actual grey level with the grey index
function s:grey_level(x) "{
    return a:x == 0 ? 0 : a:x * 10 + 8
endfunction "}

" Return the color index with the given grey index
function s:grey_color_index(x) "{
    if a:x == 0
        return 16
    elseif a:x == 25
        return 231
    else
        return 231 + a:x
    endif
endfunction "}

" Return the approximate color index with the given color level
function s:color_index(x) "{
    if a:x < 75
        return 0
    else
        let l:i = (a:x - 55) / 40
        let l:j = (a:x - 55) % 40
        return l:j < 20 ? l:i : l:i + 1
    endif
endfunction "}

" Return the actual color level with the color index
function s:color_level(x) "{
    return a:x == 0 ? 0 : a:x * 40 + 55
endfunction "}

" Return the color index with the given color indices
function s:rgb_color_index(x, y, z) "{
    return 16 + a:x * 36 + a:y * 6 + a:z
endfunction "}

" Return the color index with the given RGB hex string
function s:rgb_to_index(rgb) "{
    let l:r = str2nr(strpart(a:rgb, 1, 2), 16)
    let l:g = str2nr(strpart(a:rgb, 3, 2), 16)
    let l:b = str2nr(strpart(a:rgb, 5, 2), 16)

    let l:grey_x = s:grey_index(l:r)
    let l:grey_y = s:grey_index(l:g)
    let l:grey_z = s:grey_index(l:b)

    let l:x = s:color_index(l:r)
    let l:y = s:color_index(l:g)
    let l:z = s:color_index(l:b)

    if l:grey_x == l:grey_y && l:grey_y == l:grey_z
        let l:diff_grey_r = s:grey_level(l:grey_x) - l:r
        let l:diff_grey_g = s:grey_level(l:grey_y) - l:g
        let l:diff_grey_b = s:grey_level(l:grey_z) - l:b
        let l:diff_grey = l:diff_grey_r * l:diff_grey_r + l:diff_grey_g * l:diff_grey_g + l:diff_grey_b * l:diff_grey_b
        let l:diff_r = s:color_level(l:grey_x) - l:r
        let l:diff_g = s:color_level(l:grey_y) - l:g
        let l:diff_b = s:color_level(l:grey_z) - l:b
        let l:diff_color = l:diff_r * l:diff_r + l:diff_g * l:diff_g + l:diff_b * l:diff_b
        return l:diff_grey < l:diff_color ? s:grey_color_index(l:grey_x) : s:rgb_color_index(l:x, l:y, l:z)
    else
        return s:rgb_color_index(l:x, l:y, l:x)
    endif
endfunction "}

" Set foreground color
function s:fg(group, h, s, v) "{
    let l:rgb = s:hsv_to_rgb(a:h, a:s, a:v)
    let l:index = s:rgb_to_index(l:rgb)
    exec "highlight " . a:group . " guifg=" . l:rgb . " ctermfg=" . l:index
endfunction "}

" Set background color
function s:bg(group, h, s, v) "{
    let l:rgb = s:hsv_to_rgb(a:h, a:s, a:v)
    let l:index = s:rgb_to_index(l:rgb)
    exec "highlight " . a:group . " guibg=" . l:rgb . " ctermbg=" . l:index
endfunction "}

" Set attributions
function s:attr(group, attr) "{
    exec "highlight " . a:group . " gui=" . a:attr . " cterm=" . a:attr
endfunction "}

" Basic Highlighting Groups: 
" {
    call s:fg("SpecialKey", 60, 60, 75)
    call s:fg("NonText", 120, 15, 45) | call s:attr("NonText", "none")
    call s:fg("Directory", 210, 60, 75)
    call s:fg("IncSearch", 0, 0, 15) | call s:bg("IncSearch", 90, 45, 75) | call s:attr("IncSearch", "none")
    call s:fg("Search", 0, 0, 15) | call s:bg("Search", 60, 60, 75) | call s:attr("Search", "none")
    call s:fg("ErrorMsg", 0, 0, 75) | call s:bg("ErrorMsg", 0, 75, 60)
    call s:fg("WarningMsg", 0, 60, 75)
    call s:fg("MoreMsg", 120, 45, 75) | call s:attr("MoreMsg", "none")
    call s:attr("ModeMsg", "none")
    call s:fg("LineNr", 120, 15, 45)
    call s:fg("CursorLineNr", 120, 15, 60) | call s:attr("CursorLineNr", "none")
    call s:fg("Question", 120, 45, 75) | call s:attr("Question", "none")
    call s:fg("StatusLine", 0, 0, 15) | call s:bg("StatusLine", 120, 15, 75) | call s:attr("StatusLine", "none")
    call s:fg("StatusLineNC", 120, 15, 30) | call s:bg("StatusLineNC", 120, 15, 75) | call s:attr("StatusLine", "none") 
    call s:fg("Title", 120, 45, 75) | call s:attr("Title", "none")
    call s:bg("Visual", 210, 60, 30)
    call s:bg("VisualNOS", 210, 60, 30) | call s:attr("VisualNOS", "underline")
    call s:fg("WildMenu", 120, 15, 75) | call s:bg("WildMenu", 0, 0, 15)
    call s:fg("Folded", 90, 45, 75) | call s:bg("Folded", 150, 45, 30)
    call s:fg("FoldColumn", 90, 45, 75) | call s:bg("FoldColumn", 0, 0, 15)
    call s:bg("DiffAdd", 120, 45, 30)
    call s:bg("DiffChange", 210, 45, 30)
    call s:fg("DiffDelete", 120, 15, 75) | call s:bg("DiffDelete", 0, 0, 30) | call s:attr("DiffDelete", "none")
    call s:bg("DiffText", 0, 45, 30) | call s:attr("DiffText", "none")
    call s:fg("SignColumn", 90, 45, 75) | call s:bg("SignColumn", 0, 0, 15)
    call s:fg("Conceal", 210, 60, 75) | call s:bg("Conceal", 0, 0, 15)
    call s:fg("Pmenu", 0, 0, 15) | call s:bg("Pmenu", 120, 15, 60)
    call s:fg("PmenuSel", 120, 15, 75) | call s:bg("PmenuSel", 210, 60, 30)
    call s:bg("PmenuSbar", 120, 5, 45)
    call s:bg("PmenuThumb", 120, 5, 75)
    call s:fg("TabLine", 0, 0, 15) | call s:bg("TabLine", 120, 15, 75) | call s:attr("TabLine", "none")
    call s:attr("TabLineSel", "none")
    call s:bg("CursorLine", 120, 15, 20) | call s:attr("CursorLine", "none")
    call s:bg("CursorColumn", 120, 15, 20)
    call s:bg("ColorColumn", 120, 15, 30)
" }

" Basic Syntax Groups:
" {
    call s:fg("MatchParen", 90, 45, 75) | call s:bg("MatchParen", 150, 45, 30)
    call s:fg("Normal", 120, 15, 75) | call s:bg("Normal", 0, 0, 15)
    call s:fg("Comment", 120, 30, 60)
    call s:fg("Constant", 300, 30, 75)
    call s:fg("String", 90, 45, 75)
    call s:fg("Character", 90, 45, 75)
    call s:fg("Boolean", 120, 45, 75)
    call s:fg("Identifier", 210, 60, 75)
    call s:fg("Function", 210, 30, 75)
    call s:fg("Statement", 120, 45, 75) | call s:attr("Statement", "none")
    call s:fg("Operator", 210, 30, 75)
    call s:fg("PreProc", 120, 45, 75)
    call s:fg("Type", 120, 45, 75) | call s:attr("Type", "none")
    call s:fg("Special", 60, 60, 75)
    call s:fg("Tag", 120, 45, 75)
    call s:fg("SpecialComment", 120, 45, 75)
    call s:fg("Underlined", 210, 45, 75)
    call s:fg("Ignore", 120, 15, 45)
    highlight clear Error | call s:fg("Error", 0, 60, 75)
    highlight clear Todo | call s:fg("Todo", 60, 60, 60)
" }

" Java Syntax:
" {
    call s:fg("javaOperator", 120, 45, 75)
    call s:fg("javaCommentTitle", 120, 30, 60)
    call s:fg("javaDocTags", 120, 45, 75)
    call s:fg("javaDocParam", 120, 15, 75)
    call s:fg("javaConstant", 120, 45, 75)
    call s:fg("javaAnnotation", 270, 30, 75)
" }

" Python:
" {
    call s:fg("pythonOperator", 120, 45, 75)
    call s:fg("pythonDecorator", 270, 30, 75)
    call s:fg("pythonDecoratorName", 270, 30, 75)
    call s:fg("pythonExceptions", 210, 60, 75)
" }

" Markdown:
" {
    call s:fg("markdownHeadingDelimiter", 120, 45, 75)
    call s:fg("markdownCodeDelimiter", 90, 45, 75)
    call s:fg("markdownCode", 90, 45, 75)
    call s:fg("markdownCodeBlock", 90, 45, 75)
" }

" Vim Syntax:
" {
    call s:fg("vimOption", 270, 30, 75)
    call s:fg("vimParenSep", 210, 30, 75)
" }

" XML Syntax:
" {
    call s:fg("xmlEntity", 270, 30, 75)
    call s:fg("xmlAttrib", 210, 60, 75)
    call s:fg("xmlTagName", 120, 45, 75)
    call s:fg("xmlTag", 120, 45, 75)
    call s:fg("xmlEndTag", 120, 45, 75)
" }

" HTML Syntax:
" {
    call s:fg("htmlTag", 120, 45, 75)
    call s:fg("htmlEndTag", 120, 45, 75)
    call s:fg("htmlArg", 210, 60, 75)
    call s:fg("htmlSpecialChar", 270, 30, 75)
    call s:fg("javascript", 120, 15, 75)
" }

" Delete Functions: 
" {
    delfunction s:hsv_to_rgb
    delfunction s:grey_index
    delfunction s:grey_level
    delfunction s:grey_color_index
    delfunction s:color_index
    delfunction s:color_level
    delfunction s:rgb_color_index
    delfunction s:rgb_to_index
    delfunction s:fg
    delfunction s:bg
    delfunction s:attr
" }

" vim: cc=120 foldmethod=marker foldmarker={,}
