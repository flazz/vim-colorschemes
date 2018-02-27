" Vim color file
"
" Port of gtksourceview babymate color scheme for 256-color terminals by Anton Bobrov (bobrov@vl.ru)

set background=dark

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

<%!
    name = 'babymate256'
    out = 'colors/' + name + '.vim'

    # light
    white     = 'e3e3e3'
    babygreen = 'cbf8b0'
    violet    = 'd0cffe'
    babypink  = 'ffc0cb'
    babyblue  = '9cbddd'
    ltgrey    = 'c7c7c7'

    # dark
    black    = '000000'
    asfalto  = '15171c'
    carbon   = '222429'
    ltcarbon = '3a3d45'
    slate    = '506681'
    grey     = '666666'

    background = carbon
%>

let colors_name = "${name}"

" General colors
hi Normal ${hi(white, carbon)}
hi Cursor ${hi(carbon, white)}
hi Visual ${hi(bg=slate)}
hi VisualNOS ${hi(white, grey)}
hi Search ${hi(white, slate)}
hi Folded ${hi(grey, carbon)}
" hi Title ${hi()}
hi StatusLine ${hi(black, ltgrey)}
hi StatusLineNC ${hi(grey, ltgrey)}
hi VertSplit ${hi(ltgrey, ltgrey)}
hi LineNr ${hi(grey, black)}
hi NonText ${hi(grey, carbon)}
" hi SpecialKey ${hi()}
" hi WarningMsg ${hi()}
hi ErrorMsg ${hi(white, bold=True)}
hi Error ${hi(white, bold=True)}

" Vim >= 7.0 specific colors
if version >= 700
    hi CursorLine ${hi(bg=ltcarbon)}
    hi MatchParen ${hi(white, black, bold=True)}
    hi Pmenu ${hi(white, ltcarbon)}
    hi PmenuSel ${hi(asfalto, ltgrey)}
    hi PmenuSbar ${hi(ltcarbon, ltcarbon)}
    hi PmenuThumb ${hi(grey, grey)}
endif

" Diff highlighting
hi DiffAdd ${hi(carbon, babygreen)}
hi DiffDelete ${hi(carbon, babypink)}
hi DiffChange ${hi(carbon, babyblue)}
hi DiffText ${hi(carbon, violet)}

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
hi Keyword ${hi(babypink, bold=True)}
" hi Statement ${hi(violet)}
hi Statement ${hi(babypink, bold=True)}
hi Constant ${hi(white)}
hi Number ${hi(babyblue)}
hi PreProc ${hi(babypink)}
hi Function ${hi(babygreen)}
hi Identifier ${hi(babyblue, bold=True)}
hi Builtin ${hi(babyblue, bold=True)}
hi Type ${hi(babygreen)}
hi Special ${hi(white, magenta)}
hi String ${hi(babyblue)}
hi Character ${hi(babypink)}
hi Comment ${hi(grey, italic=True)}
hi Todo ${hi(white, black, bold=True)}
hi Boolean ${hi(babyblue, bold=True)}


" Links
hi! link FoldColumn Folded
hi! link CursorColumn CursorLine
hi! link ColorColumn CursorLine

hi! link pythonBuiltin Builtin
hi! link pythonKeyword Statement

" xterm color fix:
" printf '${hi.xterm(background)}'

" urxvt color fix:
" urxvt -bg #${background}
" urxvt*background: #${background}
" printf '${hi.urxvt()}'
