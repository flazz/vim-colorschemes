" A simple dark vim colorscheme.
" Maintainer: zcodes <zcodes@qq.com>
" Version: 1.0
"
" The theme file original copyed from Tomorrow theme.
" See https://github.com/chriskempson/vim-tomorrow-theme.git for it.
" And hex color conversion functions borrowed from the theme "Desert256".
"
" Most of the colors based on Google Material Design.

" Default GUI colors
let s:foreground = "cfd8dc"
let s:background = "263238"
let s:selection = "546e7a"
let s:line = "37474f"
let s:comment = "78909c"
let s:red = "ee877d"
let s:orange = "ffb74d"
let s:yellow = "fff176"
let s:green = "88b888"
let s:aqua = "00b8d4"
let s:blue = "6699cc"
let s:purple = "ce93d8"
let s:window = "37474f"
let s:grey = "b0bec5"

if !has("gui_running")
    let s:background = "202020"
    let s:line = "303030"
endif

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "basic-dark"

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
    call <SID>X("LineNr", s:grey, "", "none")
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
    call <SID>X("Todo", s:red, s:background, "underline")
    call <SID>X("Title", s:comment, "", "none")
    call <SID>X("Cursor", "", s:foreground, "none")
    call <SID>X("Identifier", s:grey, "", "none")
    call <SID>X("Statement", s:yellow, "", "none")
    call <SID>X("Conditional", s:foreground, "", "none")
    call <SID>X("Repeat", s:yellow, "", "none")
    call <SID>X("Structure", s:purple, "", "none")
    call <SID>X("Function", s:aqua, "", "none")
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
    call <SID>X("vimCommand", s:blue, "", "")

    " C Highlighting
    call <SID>X("cType", s:blue, "", "")
    call <SID>X("cStorageClass", s:blue, "", "")
    call <SID>X("cConditional", s:red, "", "")
    call <SID>X("cRepeat", s:red, "", "")

    " PHP Highlighting
    call <SID>X("phpVarSelector", s:red, "", "")
    call <SID>X("phpIdentifier", s:red, "", "")
    call <SID>X("phpFCKeyword", s:purple, "", "")
    call <SID>X("phpSCKeyword", s:purple, "", "")
    call <SID>X("phpKeyword", s:purple, "", "")
    call <SID>X("phpType", s:purple, "", "")
    call <SID>X("phpRepeat", s:red, "", "")
    call <SID>X("phpDefine", s:purple, "", "")
    call <SID>X("phpDocTags", s:aqua, "", "")
    call <SID>X("phpDocParam", s:green, "", "")
    call <SID>X("phpFunction", s:blue, "", "")
    call <SID>X("phpFunctions", s:blue, "", "")
    call <SID>X("phpClass", s:blue, "", "")
    call <SID>X("phpClasses", s:orange, "", "")
    call <SID>X("phpMagicConstants", s:yellow, "", "")
    call <SID>X("phpMemberSelector", s:grey, "", "")

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
    call <SID>X("pythonStatement", s:blue, "", "")
    call <SID>X("pythonConditional", s:purple, "", "")
    call <SID>X("pythonRepeat", s:purple, "", "")
    call <SID>X("pythonException", s:purple, "", "")
    call <SID>X("pythonFunction", s:aqua, "", "")
    call <SID>X("pythonSelf", s:grey, "", "")
    call <SID>X("pythonOperator", s:purple, "", "")
    call <SID>X("pythonExtraOperator", s:purple, "", "")
    call <SID>X("pythonClass", s:aqua, "", "")
    call <SID>X("pythonDecorator", s:orange, "", "")
    call <SID>X("pythonDocstring", s:comment, "", "")
    call <SID>X("pythonBuiltinObj", s:yellow, "", "")
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
    call <SID>X("coffeeSpecialVar", s:orange, "", "")
    call <SID>X("coffeeSpecialIdent", s:red, "", "")
    call <SID>X("coffeeObject", s:orange, "", "")
    call <SID>X("coffeeObjAssign", s:blue, "", "")
    call <SID>X("coffeeArrow", s:purple, "", "")
    call <SID>X("coffeeBoolean", s:foreground, "", "")
    call <SID>X("coffeeGlobal", s:foreground, "", "")
    call <SID>X("coffeeModuleKeyword", s:aqua, "", "")
    call <SID>X("coffeeFuncCall", s:blue, "", "")

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

    " Blade Tempalte Highlight
    call <SID>X("bladeDelimiter", s:orange, "", "")
    call <SID>X("bladeKeyword", s:blue, "", "")

    " Diff Highlighting
    call <SID>X("diffAdded", "", s:green, "none")
    call <SID>X("diffRemoved", "", s:red, "none")
    call <SID>X("diffChanged", "", s:yellow, "none")
    call <SID>X("DiffAdd", s:green, s:background, "underline")
    call <SID>X("DiffDelete", s:red, s:red, "underline")
    call <SID>X("DiffChange", s:yellow, s:background, "underline")
    call <SID>X("DiffText", s:orange, s:background, "reverse")

    call <SID>X("GitGutterAdd", s:green, "", "")
    call <SID>X("GitGutterDelete", s:red, "", "")
    call <SID>X("GitGutterChange", s:yellow, "", "")
    call <SID>X("GitGutterChangeDelete", s:orange, "", "")

    call <SID>X("VimwikiHeader1", s:red, "", "")
    call <SID>X("VimwikiHeader2", s:green, "", "")
    call <SID>X("VimwikiHeader3", s:blue, "", "")
    call <SID>X("VimwikiHeader4", s:aqua, "", "")
    call <SID>X("VimwikiHeader5", s:orange, "", "")
    call <SID>X("VimwikiHeader6", s:yellow, "", "")

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
