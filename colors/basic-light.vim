" basic-light -- a simple light vim theme
"
" Maintainer: zcodes <zcodes@qq.com>
" Version: 1.0
"
" the theme file original copyed from Tomorrow theme.
" see: https://github.com/chriskempson/vim-tomorrow-theme.git for it.
"
" the colors choose from Google Material Desgin and some from Sublime Text
" LAZY theme.

" default gui colors
let s:foreground = "263238"
let s:background = "fbfbfb"
let s:selection = "e3fc8d"
let s:line = "f5f5f5"
let s:comment = "7c7c7c"
let s:red = "d62a28"
let s:orange = "ff7800"
let s:yellow = "eab700"
let s:green = "409b1c"
let s:aqua = "00897b"
let s:blue = "3b5bb5"
let s:purple = "673ab7"
let s:window = "cfd8dc"
let s:diff_red = "ff9999"
let s:diff_green = "99ff99"
let s:diff_yellow = "ffff99"
let s:diff_aqua = "9999ff"


set background=light
hi clear
syntax reset

let g:colors_name = "basic-light"

if has("gui_running") || &t_Co == 88 || &t_Co == 256
    " Returns an approximate grey index for the given grey level
    fun <SID>grey_number(x)
        if &t_Co == 88
            if a:x < 23
                return 0
            elseif a:x < 69
                return 1
            elseif a:x < 103
                return 2
            elseif a:x < 127
                return 3
            elseif a:x < 150
                return 4
            elseif a:x < 173
                return 5
            elseif a:x < 196
                return 6
            elseif a:x < 219
                return 7
            elseif a:x < 243
                return 8
            else
                return 9
            endif
        else
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
        endif
    endfun

    " Returns the actual grey level represented by the grey index
    fun <SID>grey_level(n)
        if &t_Co == 88
            if a:n == 0
                return 0
            elseif a:n == 1
                return 46
            elseif a:n == 2
                return 92
            elseif a:n == 3
                return 115
            elseif a:n == 4
                return 139
            elseif a:n == 5
                return 162
            elseif a:n == 6
                return 185
            elseif a:n == 7
                return 208
            elseif a:n == 8
                return 231
            else
                return 255
            endif
        else
            if a:n == 0
                return 0
            else
                return 8 + (a:n * 10)
            endif
        endif
    endfun

    " Returns the palette index for the given grey index
    fun <SID>grey_colour(n)
        if &t_Co == 88
            if a:n == 0
                return 16
            elseif a:n == 9
                return 79
            else
                return 79 + a:n
            endif
        else
            if a:n == 0
                return 16
            elseif a:n == 25
                return 231
            else
                return 231 + a:n
            endif
        endif
    endfun

    " Returns an approximate colour index for the given colour level
    fun <SID>rgb_number(x)
        if &t_Co == 88
            if a:x < 69
                return 0
            elseif a:x < 172
                return 1
            elseif a:x < 230
                return 2
            else
                return 3
            endif
        else
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
        endif
    endfun

    " Returns the actual colour level for the given colour index
    fun <SID>rgb_level(n)
        if &t_Co == 88
            if a:n == 0
                return 0
            elseif a:n == 1
                return 139
            elseif a:n == 2
                return 205
            else
                return 255
            endif
        else
            if a:n == 0
                return 0
            else
                return 55 + (a:n * 40)
            endif
        endif
    endfun

    " Returns the palette index for the given R/G/B colour indices
    fun <SID>rgb_colour(x, y, z)
        if &t_Co == 88
            return 16 + (a:x * 16) + (a:y * 4) + a:z
        else
            return 16 + (a:x * 36) + (a:y * 6) + a:z
        endif
    endfun

    " Returns the palette index to approximate the given R/G/B colour levels
    fun <SID>colour(r, g, b)
        " Get the closest grey
        let l:gx = <SID>grey_number(a:r)
        let l:gy = <SID>grey_number(a:g)
        let l:gz = <SID>grey_number(a:b)

        " Get the closest colour
        let l:x = <SID>rgb_number(a:r)
        let l:y = <SID>rgb_number(a:g)
        let l:z = <SID>rgb_number(a:b)

        if l:gx == l:gy && l:gy == l:gz
            " There are two possibilities
            let l:dgr = <SID>grey_level(l:gx) - a:r
            let l:dgg = <SID>grey_level(l:gy) - a:g
            let l:dgb = <SID>grey_level(l:gz) - a:b
            let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
            let l:dr = <SID>rgb_level(l:gx) - a:r
            let l:dg = <SID>rgb_level(l:gy) - a:g
            let l:db = <SID>rgb_level(l:gz) - a:b
            let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
            if l:dgrey < l:drgb
                " Use the grey
                return <SID>grey_colour(l:gx)
            else
                " Use the colour
                return <SID>rgb_colour(l:x, l:y, l:z)
            endif
        else
            " Only one possibility
            return <SID>rgb_colour(l:x, l:y, l:z)
        endif
    endfun

    " Returns the palette index to approximate the 'rrggbb' hex string
    fun <SID>rgb(rgb)
        let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
        let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
        let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

        return <SID>colour(l:r, l:g, l:b)
    endfun

    " Sets the highlighting for the given group
    fun <SID>X(group, fg, bg, attr)
        if a:fg != ""
            exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
        endif
        if a:bg != ""
            exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
        endif
        if a:attr != ""
            exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
        endif
    endfun

    " Vim Highlighting
    call <SID>X("Normal", s:foreground, s:background, "none")
    call <SID>X("LineNr", s:comment, "", "none")
    call <SID>X("NonText", s:foreground, "", "none")
    call <SID>X("SpecialKey", s:blue, "", "none")
    call <SID>X("Search", s:foreground, s:selection, "none")
    call <SID>X("TabLine", s:foreground, s:background, "reverse")
    call <SID>X("StatusLine", s:window, s:foreground, "reverse")
    call <SID>X("StatusLineNC", s:window, s:comment, "reverse")
    call <SID>X("VertSplit", s:window, s:window, "none")
    call <SID>X("Visual", "", s:selection, "none")
    call <SID>X("Directory", s:blue, "", "none")
    call <SID>X("ModeMsg", s:green, "", "none")
    call <SID>X("MoreMsg", s:green, "", "none")
    call <SID>X("Question", s:green, "", "none")
    call <SID>X("WarningMsg", s:red, "", "none")
    call <SID>X("MatchParen", "", s:selection, "none")
    call <SID>X("Folded", s:comment, s:background, "none")
    call <SID>X("FoldColumn", s:comment, s:background, "none")
    if version >= 700
        call <SID>X("CursorLine", "", s:line, "none")
        call <SID>X("CursorColumn", "", s:line, "none")
        call <SID>X("PMenu", s:foreground, s:selection, "none")
        call <SID>X("PMenuSel", s:foreground, s:selection, "reverse")
        call <SID>X("SignColumn", "", s:background, "none")
    end
    if version >= 703
        call <SID>X("ColorColumn", "", s:line, "none")
    end

    " Standard Highlighting
    call <SID>X("Comment", s:comment, "", "none")
    call <SID>X("Todo", s:red, s:background, "none")
    call <SID>X("Title", s:comment, "", "none")
    call <SID>X("Cursor", "", s:foreground, "none")
    call <SID>X("Identifier", s:aqua, "", "none")
    call <SID>X("Statement", s:foreground, "", "none")
    call <SID>X("Conditional", s:foreground, "", "none")
    call <SID>X("Repeat", s:foreground, "", "none")
    call <SID>X("Structure", s:purple, "", "none")
    call <SID>X("Function", s:blue, "", "none")
    call <SID>X("Constant", s:foreground, "", "none")
    call <SID>X("String", s:green, "", "none")
    call <SID>X("Special", s:foreground, "", "none")
    call <SID>X("PreProc", s:aqua, "", "none")
    call <SID>X("Operator", s:foreground, "", "none")
    call <SID>X("Type", s:blue, "", "none")
    call <SID>X("Define", s:purple, "", "none")
    call <SID>X("Include", s:blue, "", "none")
    call <SID>X("Number", s:orange, "", "none")

    " Vim Highlighting
    call <SID>X("vimCommand", s:blue, "", "none")

    " C Highlighting
    call <SID>X("cType", s:blue, "", "")
    call <SID>X("cStorageClass", s:blue, "", "")
    call <SID>X("cConditional", s:red, "", "")
    call <SID>X("cRepeat", s:red, "", "")

    " PHP Highlighting
    call <SID>X("phpVarSelector", s:aqua, "", "")
    call <SID>X("phpKeyword", s:blue, "", "")
    call <SID>X("phpRepeat", s:red, "", "")
    call <SID>X("phpConditional", s:blue, "", "")
    call <SID>X("phpStatement", s:blue, "", "")
    call <SID>X("phpMemberSelector", s:foreground, "", "")

    " Ruby Highlighting
    call <SID>X("rubySymbol", s:green, "", "")
    call <SID>X("rubyConstant", s:aqua, "", "")
    call <SID>X("rubyAttribute", s:blue, "", "")
    call <SID>X("rubyInclude", s:blue, "", "")
    call <SID>X("rubyLocalVariableOrMethod", s:orange, "", "")
    call <SID>X("rubyCurlyBlock", s:orange, "", "")
    call <SID>X("rubyStringDelimiter", s:green, "", "")
    call <SID>X("rubyInterpolationDelimiter", s:orange, "", "")
    call <SID>X("rubyConditional", s:purple, "", "")
    call <SID>X("rubyRepeat", s:purple, "", "")
    call <SID>X("rubyIdentifier", s:orange, "", "")

    " Python Highlighting
    call <SID>X("pythonInclude", s:red, "", "")
    call <SID>X("pythonStatement", s:aqua, "", "")
    call <SID>X("pythonConditional", s:blue, "", "")
    call <SID>X("pythonRepeat", s:blue, "", "")
    call <SID>X("pythonException", s:blue, "", "")
    call <SID>X("pythonFunction", s:purple, "", "")
    call <SID>X("pythonSelf", s:comment, "", "")
    call <SID>X("pythonOperator", s:blue, "", "")
    call <SID>X("pythonExtraOperator", s:blue, "", "")
    call <SID>X("pythonClass", s:blue, "", "")
    call <SID>X("pythonDecorator", s:yellow, "", "")
    call <SID>X("pythonDocstring", s:comment, "", "")
    call <SID>X("pythonBuiltinObj", s:red, "", "")
    call <SID>X("pythonBuiltinType", s:orange, "", "")
    call <SID>X("pythonNumber", s:orange, "", "")


    " Go Highlighting
    call <SID>X("goStatement", s:purple, "", "")
    call <SID>X("goConditional", s:purple, "", "")
    call <SID>X("goRepeat", s:purple, "", "")
    call <SID>X("goException", s:purple, "", "")
    call <SID>X("goDeclaration", s:blue, "", "")
    call <SID>X("goConstants", s:yellow, "", "")
    call <SID>X("goBuiltins", s:orange, "", "")

    " CoffeeScript Highlighting
    call <SID>X("coffeeKeyword", s:purple, "", "")
    call <SID>X("coffeeConditional", s:purple, "", "")

    " JavaScript Highlighting
    call <SID>X("javaScriptBraces", s:foreground, "", "")
    call <SID>X("javaScriptFunction", s:purple, "", "")
    call <SID>X("javaScriptConditional", s:purple, "", "")
    call <SID>X("javaScriptRepeat", s:purple, "", "")
    call <SID>X("javaScriptNumber", s:orange, "", "")
    call <SID>X("javaScriptMember", s:orange, "", "")

    " HTML Highlighting
    call <SID>X("htmlTag", s:blue, "", "")
    call <SID>X("htmlTagName", s:blue, "", "")
    call <SID>X("htmlArg", s:aqua, "", "")
    call <SID>X("htmlScriptTag", s:blue, "", "")

    " Diff Highlighting
    call <SID>X("diffAdded", "", s:green, "none")
    call <SID>X("diffRemoved", "", s:red, "none")
    call <SID>X("diffChanged", "", s:yellow, "none")
    call <SID>X("DiffAdd", "", s:diff_green, "none")
    call <SID>X("DiffDelete", s:diff_red, s:diff_red, "underline")
    call <SID>X("DiffChange", "", s:diff_yellow, "none")
    call <SID>X("DiffText", s:diff_aqua, s:background, "reverse")

    call <SID>X("GitGutterAdd", s:green, "", "")
    call <SID>X("GitGutterDelete", s:red, "", "")
    call <SID>X("GitGutterChange", s:yellow, "", "")
    call <SID>X("GitGutterChangeDelete", s:orange, "", "")

    " YAML
    call <SID>X("yamlBlockMappingKey", s:blue, "", "")

    " Delete Functions
    delf <SID>X
    delf <SID>rgb
    delf <SID>colour
    delf <SID>rgb_colour
    delf <SID>rgb_level
    delf <SID>rgb_number
    delf <SID>grey_colour
    delf <SID>grey_level
    delf <SID>grey_number
endif
