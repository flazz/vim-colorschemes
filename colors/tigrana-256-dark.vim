" Tigrana 256 Dark
"  Author: Joseph Carter
"     URL: https://github.com/iKarith/tigrana
" Created: 2017
" Version: 0.3
"
" Based on https://github.com/baskerville/bubblegum

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="tigrana-256-dark"

" Main
hi Normal ctermfg=252 ctermbg=234 cterm=none guifg=#D0D0D0 guibg=#1c1c1c gui=none
hi Comment ctermfg=244 cterm=none guifg=#808080 gui=none

" Constant
hi Constant ctermfg=229 cterm=none guifg=#FFFFAF gui=none
hi link String Constant
hi Character ctermfg=187 cterm=none guifg=#D7D7AF gui=none
hi Number ctermfg=180 cterm=none guifg=#D7AF87 gui=none
hi Boolean ctermfg=187 cterm=none guifg=#D7D7AF gui=none
hi Float ctermfg=180 cterm=none guifg=#D7AF87 gui=none

" Variable Name
hi Identifier ctermfg=182 cterm=none guifg=#D7AFD7 gui=none
hi Function ctermfg=182 cterm=none guifg=#D7AFD7 gui=none

" Statement
hi Statement ctermfg=110 cterm=none guifg=#87AFD7 gui=none
hi Conditional ctermfg=110 cterm=none guifg=#87AFD7 gui=none
hi Repeat ctermfg=110 cterm=none guifg=#87AFD7 gui=none
hi Label ctermfg=110 cterm=none guifg=#87AFD7 gui=none
hi Operator ctermfg=110 cterm=none guifg=#87AFD7 gui=none
hi Keyword ctermfg=110 cterm=none guifg=#87AFD7 gui=none
hi Exception ctermfg=110 cterm=none guifg=#87AFD7 gui=none

" Preprocessor
hi PreProc ctermfg=150 cterm=none guifg=#AFD787 gui=none
hi Include ctermfg=150 cterm=none guifg=#AFD787 gui=none
hi Define ctermfg=150 cterm=none guifg=#AFD787 gui=none
hi Macro ctermfg=150 cterm=none guifg=#AFD787 gui=none
hi PreCondit ctermfg=150 cterm=none guifg=#AFD787 gui=none

" Type
hi Type ctermfg=146 cterm=none guifg=#AFAFD7 gui=none
hi StorageClass ctermfg=146 cterm=none guifg=#AFAFD7 gui=none
hi Structure ctermfg=146 cterm=none guifg=#AFAFD7 gui=none
hi Typedef ctermfg=146 cterm=none guifg=#AFAFD7 gui=none

" Special
hi Special ctermfg=174 cterm=none guifg=#D78787 gui=none
hi SpecialChar ctermfg=174 cterm=none guifg=#D78787 gui=none
hi Tag ctermfg=174 cterm=none guifg=#D78787 gui=none
hi Delimiter ctermfg=174 cterm=none guifg=#D78787 gui=none
hi SpecialComment ctermfg=174 cterm=none guifg=#D78787 gui=none
hi Debug ctermfg=174 cterm=none guifg=#D78787 gui=none
hi Underlined ctermfg=249 cterm=underline guifg=#B2B2B2 gui=underline
hi Ignore ctermfg=235 cterm=none guifg=#262626 gui=none
hi Error ctermfg=231 ctermbg=167 cterm=none guifg=#FFFFFF guibg=#D75F5F gui=none
hi Todo ctermfg=16 cterm=none guifg=#000000 ctermbg=184 guibg=#dfdf00 gui=none

" Window
hi StatusLine ctermfg=231 ctermbg=237 cterm=none guifg=#B2B2B2 guibg=#FFFFFF gui=none
hi StatusLineNC ctermfg=244 ctermbg=237 cterm=none guifg=#808080 guibg=#3A3A3A gui=none
hi TabLine ctermfg=249 ctermbg=237 cterm=none guifg=#B2B2B2 guibg=#3A3A3A gui=none
hi TabLineSel ctermfg=253 ctermbg=238 cterm=none guifg=#DADADA guibg=#444444 gui=none
hi TabLineFill ctermbg=237 cterm=none guibg=#3A3A3A gui=none
hi VertSplit ctermfg=237 ctermbg=237 cterm=none guifg=#3A3A3A guibg=#3A3A3A gui=none

" Menu
hi Pmenu ctermfg=249 ctermbg=237 cterm=none guifg=#B2B2B2 guibg=#3A3A3A gui=none
hi PmenuSel ctermfg=231 ctermbg=244 cterm=none guifg=#FFFFFF guibg=#808080 gui=none
hi PmenuSbar ctermbg=59 cterm=none guibg=#5F5F5F gui=none
hi PmenuThumb ctermbg=246 cterm=none guibg=#949494 gui=none
hi WildMenu ctermfg=232 ctermbg=98 cterm=none guifg=#080808 guibg=#875FD7 gui=none

" Selection
hi Visual ctermfg=235 ctermbg=117 cterm=none guifg=#262626 guibg=#87D7FF gui=none
hi VisualNOS ctermfg=235 ctermbg=80 cterm=none guifg=#262626 guibg=#5FD7D7 gui=none

" Message
hi ErrorMsg ctermfg=210 cterm=none guifg=#FF8787 gui=none
hi WarningMsg ctermfg=140 cterm=none guifg=#AF87D7 gui=none
hi MoreMsg ctermfg=72 cterm=none guifg=#5FAF87 gui=none
hi ModeMsg ctermfg=222 cterm=bold guifg=#FFD787 gui=bold
hi Question ctermfg=38 cterm=none guifg=#00AFD7 gui=none

" Mark
hi Folded ctermfg=244 cterm=none guifg=#808080 gui=none
hi FoldColumn ctermfg=79 ctermbg=233 cterm=none guifg=#5FD7AF guibg=#121212 gui=none
hi SignColumn ctermfg=184 ctermbg=233 cterm=none guifg=#D7D700 guibg=#121212 gui=none
hi ColorColumn ctermbg=233 cterm=none guibg=#121212 gui=none
hi LineNr ctermfg=244 ctermbg=233 cterm=none guifg=#808080 guibg=#121212 gui=none
hi MatchParen ctermfg=16 ctermbg=215 cterm=none guifg=#000000 guibg=#FFAF5F gui=none

" Cursor
hi CursorColumn ctermbg=237 cterm=none guibg=#3A3A3A gui=none
hi CursorLine ctermbg=237 cterm=none guibg=#3A3A3A gui=none
hi CursorLineNr ctermfg=249 ctermbg=237 cterm=none guifg=#B2B2B2 guibg=#3A3A3A gui=none

" Search
hi Search ctermfg=16 ctermbg=179 cterm=none guifg=#000000 guibg=#D7AF5F gui=none
hi IncSearch ctermfg=231 ctermbg=168 cterm=none guifg=#FFFFFF guibg=#D75F87 gui=none

" Diff Mode
hi DiffAdd ctermfg=16 ctermbg=149 cterm=none guifg=#000000 guibg=#AFD75F gui=none
hi DiffChange ctermfg=16 ctermbg=217 cterm=none guifg=#000000 guibg=#FFAFAF gui=none
hi DiffText ctermfg=16 ctermbg=211 cterm=bold guifg=#000000 guibg=#FF87AF gui=bold
hi DiffDelete ctermfg=16 ctermbg=249 cterm=none guifg=#000000 guibg=#B2B2B2 gui=none

" Spell
hi SpellBad ctermfg=217 ctermbg=bg cterm=underline guifg=#FFAFAF guibg=bg gui=underline
hi SpellCap ctermfg=189 ctermbg=bg cterm=underline guifg=#DFDFFF guibg=bg gui=underline
hi SpellRare ctermfg=168 ctermbg=bg cterm=underline guifg=#D75F87 guibg=bg gui=underline
hi SpellLocal ctermfg=98 ctermbg=bg cterm=underline guifg=#875FD7 guibg=bg gui=underline

" Misc
hi SpecialKey ctermfg=114 cterm=none guifg=#87D787 gui=none
hi NonText ctermfg=244 cterm=none guifg=#808080 gui=none
hi Directory ctermfg=103 cterm=none guifg=#8787AF gui=none
hi Title ctermfg=109 cterm=none guifg=#87AFAF gui=none
hi Conceal ctermfg=77 cterm=none guifg=#5FD75F gui=none
hi Noise ctermfg=247 cterm=none guifg=#9E9E9E gui=none
hi helpHyperTextJump ctermfg=74 cterm=none guifg=#5FAFD7 gui=none
hi perlSharpBang ctermfg=244 cterm=none guifg=#808080 gui=none
hi rubySharpBang ctermfg=244 cterm=none guifg=#808080 gui=none
hi jsFuncCall ctermfg=116 cterm=none guifg=#87D7D7 gui=none

" Html
hi javaScriptNumber ctermfg=179 cterm=none guifg=#D7AF5F gui=none
hi htmlTag ctermfg=147 cterm=none guifg=#AFAFFF gui=none
hi htmlEndTag ctermfg=147 cterm=none guifg=#AFAFFF gui=none
hi htmlTagName ctermfg=175 cterm=none guifg=#D787AF gui=none
hi htmlString ctermfg=187 cterm=none guifg=#D7D7AF gui=none

" Vim
hi vimFold ctermfg=244 cterm=none guifg=#808080 gui=none
hi vimCommentTitle ctermfg=249 cterm=none guifg=#B2B2B2 gui=none

" Diff File
hi diffFile ctermfg=244 cterm=none guifg=#808080 gui=none
hi diffLine ctermfg=186 cterm=none guifg=#D7D787 gui=none
hi diffAdded ctermfg=107 cterm=none guifg=#87AF5F gui=none
hi diffRemoved ctermfg=175 cterm=none guifg=#D787AF gui=none
hi diffChanged ctermfg=179 cterm=none guifg=#D7AF5F gui=none
hi diffSubname ctermfg=252 cterm=none guifg=#D0D0D0 gui=none
hi diffOldLine ctermfg=104 cterm=none guifg=#8787D7 gui=none

" Mail
hi mailSubject ctermfg=109 cterm=none guifg=#87AFAF gui=none
hi mailSignature ctermfg=244 cterm=none guifg=#808080 gui=none

" Markdown
hi markdownCode ctermfg=244 cterm=none guifg=#808080 gui=none
hi markdownCodeBlock ctermfg=244 cterm=none guifg=#808080 gui=none
hi markdownItalic ctermfg=252 cterm=none guifg=#D0D0D0 gui=none
