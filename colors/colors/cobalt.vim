" Vim Color Scheme
"
" Name: Cobalt
" Maintainer: David Terei<dave.terei@gmail.com>
" Version: 1.0
" Last Change: 28 October 2009
"
" Note: Based on the Cobalt color scheme for TextMate
"

set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="cobalt"

hi Normal         guifg=#FFFFFF           guibg=#002240
hi NonText        guifg=#FFFFFF           guibg=#002240
hi Cursor         guifg=#F8F8F8           guibg=#A7A7A7
hi CursorIM       guifg=#F8F8F8           guibg=#5F5A60
hi Directory      guifg=#8F9D6A           guibg=#141414
hi ErrorMsg       guifg=#CF6A4C           guibg=#420E09
hi VertSplit      guifg=#AC885B           guibg=#FFFFFF
hi Folded         guifg=#F9EE98           guibg=#494949
hi IncSearch      guifg=#000000           guibg=#CF6A4C
hi LineNr         guifg=#7587A6           guibg=#000000
hi ModeMsg        guifg=#CF7D34           guibg=#E9C062
hi MoreMsg        guifg=#CF7D34           guibg=#E9C062
hi Question       guifg=#7587A6           guibg=#0E2231
hi Search         guifg=#420E09           guibg=#CF6A4C
hi SpecialKey     guifg=#CF7D34           guibg=#141414
hi StatusLine     guifg=#0E2231           guibg=#8693A5
hi StatusLineNC   guifg=#7587A6           guibg=#F8F8F8
hi Title          guifg=#8B98AB           guibg=#0E2231
hi Visual         guifg=#0E2231           guibg=#AFC4DB
hi WarningMsg     guifg=#CF6A4C           guibg=#420E09
hi WildMenu       guifg=#AFC4DB           guibg=#0E2231

"Syntax highlight groups

hi Comment        guifg=#999999
hi Constant       guifg=#E77E6E
hi String         guifg=#3AD900
hi Character      guifg=#E9C062
hi Number         guifg=#FF627E
hi Boolean        guifg=#CF6A4C
hi Float          guifg=#F05A73
hi Identifier     guifg=#7587a6
hi Function       guifg=#FFAD51
hi Statement      guifg=#FF9D00
hi Conditional    guifg=#FF9D00
hi Repeat         guifg=khaki
hi Label          guifg=#E9C062
hi Operator       guifg=#FFB054
hi Keyword        guifg=#E9C062
hi Exception      guifg=khaki
hi PreProc        guifg=khaki4
hi Include        guifg=#A9C4D5 "Import
hi Define         guifg=khaki1
hi Macro          guifg=#9B703F
hi PreCondit      guifg=khaki3
hi Type           guifg=#80FFBB "Filepath, IO, Maybe
hi StorageClass   guifg=tan
hi Structure      guifg=#FF9D00 "module
hi Typedef        guifg=khaki3
hi Special        guifg=#F2DD00
hi SpecialChar    guifg=DarkGoldenrod
hi Tag            guifg=DarkKhaki
hi Delimiter      guifg=DarkGoldenrod
hi SpecialComment guifg=cornsilk
hi Debug          guifg=brown
hi Underlined     guifg=#Cf6A4C
hi Ignore         guifg=#666666
hi Error          guifg=#CF6A4C    guibg=#420E09
hi Todo           guifg=#7587A6    guibg=#0E2231
hi Pmenu          guifg=#141414    guibg=#CDA869
hi PmenuSel       guifg=#F8F8F8    guibg=#9B703F
hi PmenuSbar      guibg=#DAEFA3
hi PmenuThumb     guifg=#8F9D6A

