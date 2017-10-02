" Vim color file
" Maintainer: James Tucker <jftucker@gmail.com>
" Last Change: Today :-P
" Version: 1.0
" Homepage: http://github.com/raggi/vim-color-raggi

" Started from the github conversion theme, but adjusted for practical
" authoring.  I switch between this and molokai, but primarily use this when in
" the sun!
" n.b. This is now deliberately very divergent from the original, and also
" divergent from the github theme, although it still has many similarities.
" Additional thanks to Andy Ferra for design and vim tooling assistance
" The original author of the github theme is:
" Bruno Michel <bmichel@menfin.info>
" http://github.com/nono/github_vim_theme/tree/master

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "raggi"

hi Normal                 term=NONE            cterm=NONE             ctermbg=NONE           ctermfg=16
hi NonText                term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=NONE
hi Boolean                term=NONE            cterm=bold             ctermbg=NONE          ctermfg=NONE
hi Character              term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=161
hi Comment                term=bold            cterm=NONE             ctermbg=NONE          ctermfg=242
hi Conditional            term=NONE            cterm=bold             ctermbg=NONE          ctermfg=NONE
hi Constant               term=NONE            cterm=bold             ctermbg=NONE          ctermfg=37
hi Debug                  term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=124
hi Define                 term=NONE            cterm=bold             ctermbg=NONE          ctermfg=16
hi Delimiter              term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=161
hi Error                  term=reverse         cterm=NONE             ctermbg=188           ctermfg=124
hi Exception              term=NONE            cterm=bold             ctermbg=NONE          ctermfg=124
hi Float                  term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=37
hi Function               term=NONE            cterm=bold             ctermbg=NONE          ctermfg=124
hi Identifier             term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=30
hi Ignore                 term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=231
hi Include                term=NONE            cterm=bold             ctermbg=NONE          ctermfg=38
hi Keyword                term=NONE            cterm=bold             ctermbg=NONE          ctermfg=NONE
hi Label                  term=NONE            cterm=bold             ctermbg=NONE          ctermfg=NONE
hi Macro                  term=NONE            cterm=bold             ctermbg=NONE          ctermfg=38
hi Number                 term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=37
hi Operator               term=NONE            cterm=bold             ctermbg=NONE          ctermfg=NONE
hi PreCondit              term=NONE            cterm=bold             ctermbg=NONE          ctermfg=38
hi PreProc                term=NONE            cterm=bold             ctermbg=NONE          ctermfg=38
hi Repeat                 term=NONE            cterm=bold             ctermbg=NONE          ctermfg=NONE
hi Special                term=bold            cterm=NONE             ctermbg=NONE          ctermfg=52
hi SpecialChar            term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=161
hi SpecialComment         term=NONE            cterm=bold             ctermbg=NONE          ctermfg=242
hi Statement              term=bold            cterm=bold             ctermbg=NONE          ctermfg=16
hi StorageClass           term=NONE            cterm=bold             ctermbg=NONE          ctermfg=16
hi String                 term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=161
hi Structure              term=NONE            cterm=bold             ctermbg=NONE          ctermfg=16
hi Tag                    term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=19
hi Todo                   term=NONE            cterm=NONE             ctermbg=226           ctermfg=145
hi Type                   term=NONE            cterm=bold             ctermbg=NONE          ctermfg=17
hi Typedef                term=NONE            cterm=bold             ctermbg=NONE          ctermfg=16
hi Underlined             term=underline       cterm=underline        ctermbg=NONE          ctermfg=104

hi ColorColumn            term=NONE            cterm=NONE             ctermbg=255           ctermfg=NONE
hi Conceal                term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=NONE
hi Cursor                 term=NONE            cterm=NONE             ctermbg=102           ctermfg=231
hi CursorColumn           term=NONE            cterm=NONE             ctermbg=254           ctermfg=NONE
hi CursorLine             term=NONE            cterm=NONE             ctermbg=255           ctermfg=NONE
hi DiffAdd                term=bold            cterm=NONE             ctermbg=194           ctermfg=16
hi DiffChange             term=bold            cterm=NONE             ctermbg=225           ctermfg=NONE
hi DiffDelete             term=bold            cterm=bold             ctermbg=224           ctermfg=16
hi DiffText               term=reverse         cterm=bold             ctermbg=102           ctermfg=NONE
hi Directory              term=bold            cterm=NONE             ctermbg=NONE          ctermfg=74
hi ErrorMsg               term=NONE            cterm=bold             ctermbg=188           ctermfg=124
hi FoldColumn             term=NONE            cterm=NONE             ctermbg=250           ctermfg=19
hi Folded                 term=NONE            cterm=NONE             ctermbg=252           ctermfg=19
hi IncSearch              term=reverse         cterm=reverse          ctermbg=NONE          ctermfg=fg
hi LineNr                 term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=250
hi MatchParen             term=reverse         cterm=NONE             ctermbg=51            ctermfg=fg
hi ModeMsg                term=bold            cterm=bold             ctermbg=NONE          ctermfg=fg
hi MoreMsg                term=bold            cterm=bold             ctermbg=NONE          ctermfg=72
hi Pmenu                  term=NONE            cterm=NONE             ctermbg=188           ctermfg=102
hi PmenuSbar              term=NONE            cterm=NONE             ctermbg=250           ctermfg=fg
hi PmenuSel               term=NONE            cterm=NONE             ctermbg=250           ctermfg=fg
hi PmenuThumb             term=NONE            cterm=reverse          ctermbg=NONE          ctermfg=fg
hi Question               term=NONE            cterm=bold             ctermbg=NONE          ctermfg=72
hi Search                 term=reverse         cterm=NONE             ctermbg=226           ctermfg=fg
hi SignColumn             term=NONE            cterm=NONE             ctermbg=250           ctermfg=19
hi SpecialKey             term=bold            cterm=NONE             ctermbg=NONE          ctermfg=188
hi SpellBad               term=reverse         cterm=undercurl        ctermbg=NONE          ctermfg=196
hi SpellCap               term=reverse         cterm=undercurl        ctermbg=NONE          ctermfg=21
hi SpellLocal             term=NONE            cterm=undercurl        ctermbg=NONE          ctermfg=37
hi SpellRare              term=reverse         cterm=undercurl        ctermbg=NONE          ctermfg=201
hi StatusLine             term=bold            cterm=bold             ctermbg=249           ctermfg=15
hi StatusLineNC           term=NONE            cterm=NONE             ctermbg=255           ctermfg=NONE
hi TabLine                term=NONE            cterm=NONE             ctermbg=255           ctermfg=NONE
hi TabLineFill            term=NONE            cterm=NONE             ctermbg=255           ctermfg=NONE
hi TabLineSel             term=bold            cterm=bold             ctermbg=249           ctermfg=15
hi Title                  term=bold            cterm=bold             ctermbg=NONE          ctermfg=NONE
hi VertSplit              term=reverse         cterm=reverse          ctermbg=102           ctermfg=255
hi Visual                 term=reverse         cterm=NONE             ctermbg=230           ctermfg=fg
hi VisualNOS              term=bold            cterm=bold             ctermbg=NONE          ctermfg=fg
hi WarningMsg             term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=196
hi WildMenu               term=NONE            cterm=NONE             ctermbg=226           ctermfg=16
hi lCursor                term=NONE            cterm=NONE             ctermbg=16            ctermfg=231

hi javascript             term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=fg

hi RubySymbol             term=NONE            cterm=NONE             ctermbg=NONE          ctermfg=90
