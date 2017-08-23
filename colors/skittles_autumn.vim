" A warm, console-only variation on skittles berry. 
" @author Shawn Biddle <github.com/shawncplus>
set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="skittles_autumn"

hi SpecialKey     ctermfg=235
hi NonText        ctermfg=240
hi Directory      ctermfg=149
hi ErrorMsg       term=standout ctermfg=117
hi IncSearch      term=reverse ctermfg=186 ctermbg=0
hi Search         term=reverse ctermfg=15 ctermbg=66
hi MoreMsg        ctermfg=228
hi ModeMsg        ctermfg=228
hi LineNr         ctermfg=242 ctermbg=none
hi Question       term=standout ctermfg=80
hi StatusLine     term=reverse ctermfg=66
hi StatusLineNC   term=reverse ctermfg=8 ctermbg=232
hi VertSplit      term=reverse ctermfg=8 ctermbg=232
hi Title          ctermfg=212
hi Visual         term=reverse ctermfg=255 ctermbg=95
hi VisualNOS      ctermfg=255 ctermbg=95
hi WarningMsg     term=standout ctermfg=15 ctermbg=236
hi WildMenu       term=standout ctermfg=80 ctermbg=none
hi Folded         term=standout ctermfg=66 ctermbg=0
hi FoldColumn     term=standout ctermfg=66 ctermbg=none
hi DiffAdd        ctermfg=none ctermbg=234
hi DiffChange     term=bold ctermbg=238
hi DiffDelete     ctermfg=124 ctermbg=52
hi DiffText       cterm=bold ctermbg=240
hi SignColumn     term=standout ctermfg=149 ctermbg=none
hi Conceal        ctermfg=none ctermbg=none
hi SpellBad       term=reverse ctermfg=255 ctermbg=9  guisp=#ff0000
hi SpellCap       term=reverse ctermfg=255 ctermbg=12  guisp=#0000ff
hi SpellRare      term=reverse ctermfg=255 ctermbg=13  guisp=#ff00ff
hi SpellLocal     ctermfg=255 ctermbg=14  guisp=#00ffff
hi Pmenu          ctermfg=80 ctermbg=234
hi PmenuSel       ctermfg=80 ctermbg=8
hi PmenuSbar      ctermfg=80 ctermbg=0
hi PmenuThumb     ctermfg=80
hi TabLine        ctermfg=255 ctermbg=242
hi TabLineSel     ctermfg=255
hi TabLineFill    term=reverse ctermfg=255
hi CursorColumn   term=reverse ctermfg=255 ctermbg=none
hi CursorLine     cterm=none term=none ctermbg=235
hi CursorLineNr   cterm=bold ctermfg=125 ctermbg=none
hi clear ColorColumn
hi link ColorColumn CursorLine
hi MatchParen     cterm=bold ctermfg=0 ctermbg=208
hi Comment        ctermfg=66 cterm=italic
hi Constant       ctermfg=91 cterm=bold
hi Special        ctermfg=80 cterm=bold
hi Statement      ctermfg=196 ctermbg=none
hi PreProc        ctermfg=149
hi Type           ctermfg=80
hi Underlined     ctermfg=7
hi Ignore         ctermfg=8
hi Error          term=reverse  ctermfg=125 ctermbg=7
hi Todo           term=standout ctermfg=0 ctermbg=11
hi String         ctermfg=202
hi Character      ctermfg=11
hi Number         ctermfg=91
hi link Float Number
hi link Boolean Number
hi Function       ctermfg=42
hi Repeat         ctermfg=89 cterm=bold
hi link Conditional Repeat
hi Label          ctermfg=228
hi Operator       ctermfg=208
hi Keyword        ctermfg=117 cterm=bold
hi Exception      ctermfg=142 cterm=bold
hi Include        ctermfg=255
hi Define         ctermfg=30 cterm=bold
hi link Structure Define
hi Macro          ctermfg=186
hi PreCondit      ctermfg=149 cterm=bold
hi StorageClass   ctermfg=208
hi Typedef        ctermfg=80
hi Tag            ctermfg=117
hi SpecialChar    ctermfg=208 cterm=bold
hi Delimiter      ctermfg=245
hi SpecialComment ctermfg=66 cterm=bold
hi Debug          ctermfg=138 cterm=bold
hi Normal         ctermfg=222 ctermbg=235
hi Identifier     cterm=none term=none ctermfg=222
hi clear Cursor
hi Cursor         ctermbg=26 ctermfg=7


hi GitGutterChange ctermfg=202 ctermbg=none cterm=bold
hi GitGutterDelete ctermfg=125 ctermbg=none cterm=bold
hi GitGutterAdd    ctermfg=190 ctermbg=none cterm=bold
hi link TagbarSignature Type

