" Vim color file - lyla
" (c) Copyright 2015 Jacob Lindahl
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "lyla"

hi Normal           guifg=#ffffff   guibg=#191a21   guisp=#191a21   gui=NONE        ctermfg=15      ctermbg=234     cterm=NONE

hi Boolean          guifg=#a1a6a8   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=248     ctermbg=NONE    cterm=NONE
hi Character        guifg=#a1a6a8   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=248     ctermbg=NONE    cterm=NONE
hi Comment          guifg=#707070   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=242     ctermbg=NONE    cterm=NONE
hi Conditional      guifg=#5f5fff   guibg=NONE      guisp=NONE      gui=bold        ctermfg=63      ctermbg=NONE    cterm=bold
hi Constant         guifg=#00ff84   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=48      ctermbg=NONE    cterm=NONE
hi Cursor           guifg=#00d5ff   guibg=#ffffff   guisp=#ffffff   gui=NONE        ctermfg=45      ctermbg=15      cterm=NONE
hi CursorColumn     guifg=NONE      guibg=#222e30   guisp=#222e30   gui=NONE        ctermfg=NONE    ctermbg=236     cterm=NONE
hi CursorLine       guifg=NONE      guibg=#222e30   guisp=#222e30   gui=NONE        ctermfg=NONE    ctermbg=236     cterm=NONE
hi CursorLineNr     guifg=#00ff1e   guibg=NONE      guisp=NONE      gui=bold        ctermfg=10      ctermbg=NONE    cterm=bold
hi Debug            guifg=#bd9800   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=11      ctermbg=NONE    cterm=NONE
hi Define           guifg=#bd9800   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=11      ctermbg=NONE    cterm=NONE
hi Delimiter        guifg=#ffffff   guibg=#191a21   guisp=#191a21   gui=NONE        ctermfg=15      ctermbg=234     cterm=NONE
hi DiffAdd          guifg=NONE      guibg=#004d21   guisp=#004d21   gui=NONE        ctermfg=NONE    ctermbg=22      cterm=NONE
hi DiffChange       guifg=NONE      guibg=#492224   guisp=#492224   gui=NONE        ctermfg=NONE    ctermbg=52      cterm=NONE
hi DiffDelete       guifg=NONE      guibg=#192224   guisp=#192224   gui=NONE        ctermfg=NONE    ctermbg=235     cterm=NONE
hi DiffText         guifg=NONE      guibg=#492224   guisp=#492224   gui=NONE        ctermfg=NONE    ctermbg=52      cterm=NONE
hi Directory        guifg=#005eff   guibg=NONE      guisp=NONE      gui=bold        ctermfg=27      ctermbg=NONE    cterm=bold
hi Error            guifg=#a1a6a8   guibg=#912c00   guisp=#912c00   gui=NONE        ctermfg=248     ctermbg=88      cterm=NONE
hi ErrorMsg         guifg=#ffffff   guibg=#ff0000   guisp=#ff0000   gui=NONE        ctermfg=15      ctermbg=196     cterm=NONE
hi Exception        guifg=#bd9800   guibg=NONE      guisp=NONE      gui=bold        ctermfg=11      ctermbg=NONE    cterm=bold
hi Float            guifg=#a1a6a8   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=248     ctermbg=NONE    cterm=NONE
hi FoldColumn       guifg=#192224   guibg=#a1a6a8   guisp=#a1a6a8   gui=italic      ctermfg=235     ctermbg=248     cterm=NONE
hi Folded           guifg=#192224   guibg=#a1a6a8   guisp=#a1a6a8   gui=italic      ctermfg=235     ctermbg=248     cterm=NONE
hi Function         guifg=#005eff   guibg=NONE      guisp=NONE      gui=bold        ctermfg=27      ctermbg=NONE    cterm=bold
hi Identifier       guifg=#ffffff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=15      ctermbg=NONE    cterm=NONE
hi IncSearch        guifg=#ffffff   guibg=#5b008f   guisp=#5b008f   gui=NONE        ctermfg=15      ctermbg=54      cterm=NONE
hi Include          guifg=#bd9800   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=11      ctermbg=NONE    cterm=NONE
hi Keyword          guifg=#00ff1e   guibg=NONE      guisp=NONE      gui=bold        ctermfg=10      ctermbg=NONE    cterm=bold
hi Label            guifg=#5f5fff   guibg=NONE      guisp=NONE      gui=bold        ctermfg=63      ctermbg=NONE    cterm=bold
hi LineNr           guifg=#ffffff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=15      ctermbg=NONE    cterm=NONE
hi Macro            guifg=#4cccff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=81      ctermbg=NONE    cterm=NONE
hi MatchParen       guifg=#bd9800   guibg=NONE      guisp=NONE      gui=bold        ctermfg=11      ctermbg=NONE    cterm=bold
hi ModeMsg          guifg=#f9f9f9   guibg=#192224   guisp=#192224   gui=bold        ctermfg=15      ctermbg=235     cterm=bold
hi MoreMsg          guifg=#bd9800   guibg=NONE      guisp=NONE      gui=bold        ctermfg=11      ctermbg=NONE    cterm=bold
hi NonText          guifg=#707070   guibg=NONE      guisp=NONE      gui=italic      ctermfg=242     ctermbg=NONE    cterm=NONE
hi Number           guifg=#d90048   guibg=NONE      guisp=NONE      gui=bold        ctermfg=161     ctermbg=NONE    cterm=bold
hi Operator         guifg=#0088ff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=33      ctermbg=NONE    cterm=NONE
hi PMenu            guifg=#8f8f8f   guibg=#000000   guisp=#282f36   gui=NONE        ctermfg=245     ctermbg=0       cterm=NONE
hi PMenuSbar        guifg=NONE      guibg=#848688   guisp=#848688   gui=NONE        ctermfg=NONE    ctermbg=102     cterm=NONE
hi PMenuSel         guifg=#ffffff   guibg=#005eff   guisp=#005eff   gui=NONE        ctermfg=15      ctermbg=27      cterm=NONE
hi PMenuThumb       guifg=NONE      guibg=#a4a6a8   guisp=#a4a6a8   gui=NONE        ctermfg=NONE    ctermbg=248     cterm=NONE
hi PreCondit        guifg=#5f5fff   guibg=NONE      guisp=NONE      gui=bold        ctermfg=63      ctermbg=NONE    cterm=bold
hi PreProc          guifg=#00ff1e   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=10      ctermbg=NONE    cterm=NONE
hi Repeat           guifg=#5f5fff   guibg=NONE      guisp=NONE      gui=bold        ctermfg=63      ctermbg=NONE    cterm=bold
hi Search           guifg=#ffffff   guibg=#53007d   guisp=#53007d   gui=NONE        ctermfg=15      ctermbg=54      cterm=NONE
hi SignColumn       guifg=#192224   guibg=#536991   guisp=#536991   gui=NONE        ctermfg=235     ctermbg=60      cterm=NONE
hi Special          guifg=#0088ff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=33      ctermbg=NONE    cterm=NONE
hi SpecialChar      guifg=#ffffff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=15      ctermbg=NONE    cterm=NONE
hi SpecialComment   guifg=#bd9800   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=11      ctermbg=NONE    cterm=NONE
hi SpecialKey       guifg=#5e6c70   guibg=NONE      guisp=NONE      gui=italic      ctermfg=66      ctermbg=NONE    cterm=NONE
hi SpellBad         guifg=#f9f9ff   guibg=#192224   guisp=#192224   gui=underline   ctermfg=189     ctermbg=235     cterm=underline
hi SpellCap         guifg=#f9f9ff   guibg=#192224   guisp=#192224   gui=underline   ctermfg=189     ctermbg=235     cterm=underline
hi SpellLocal       guifg=#f9f9ff   guibg=#192224   guisp=#192224   gui=underline   ctermfg=189     ctermbg=235     cterm=underline
hi SpellRare        guifg=#f9f9ff   guibg=#192224   guisp=#192224   gui=underline   ctermfg=189     ctermbg=235     cterm=underline
hi Statement        guifg=#008a00   guibg=NONE      guisp=NONE      gui=bold        ctermfg=28      ctermbg=NONE    cterm=bold
hi StatusLine       guifg=#ffffff   guibg=#005eff   guisp=#005eff   gui=bold        ctermfg=15      ctermbg=27      cterm=bold
hi StatusLineNC     guifg=#1b1b24   guibg=#707070   guisp=#707070   gui=bold        ctermfg=235     ctermbg=242     cterm=bold
hi StorageClass     guifg=#536991   guibg=NONE      guisp=NONE      gui=bold        ctermfg=60      ctermbg=NONE    cterm=bold
hi String           guifg=#4cccff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=81      ctermbg=NONE    cterm=NONE
hi Structure        guifg=#536991   guibg=NONE      guisp=NONE      gui=bold        ctermfg=60      ctermbg=NONE    cterm=bold
hi TabLine          guifg=#1b1b24   guibg=#707070   guisp=#707070   gui=bold        ctermfg=235     ctermbg=242     cterm=bold
hi TabLineFill      guifg=#192224   guibg=#707070   guisp=#707070   gui=bold        ctermfg=235     ctermbg=242     cterm=bold
hi TabLineSel       guifg=#ffffff   guibg=#005eff   guisp=#005eff   gui=bold        ctermfg=15      ctermbg=27      cterm=bold
hi Tag              guifg=#bd9800   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=11      ctermbg=NONE    cterm=NONE
hi Title            guifg=#f9f9ff   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=189     ctermbg=NONE    cterm=NONE
hi Todo             guifg=#ffffff   guibg=#0050d9   guisp=#0050d9   gui=NONE        ctermfg=15      ctermbg=26      cterm=NONE
hi Type             guifg=#00e1dd   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=44      ctermbg=NONE    cterm=NONE
hi Typedef          guifg=#536991   guibg=NONE      guisp=NONE      gui=bold        ctermfg=60      ctermbg=NONE    cterm=bold
hi Underlined       guifg=#f9f9ff   guibg=#192224   guisp=#192224   gui=underline   ctermfg=189     ctermbg=235     cterm=underline
hi VertSplit        guifg=#1b1b24   guibg=#707070   guisp=#707070   gui=bold        ctermfg=235     ctermbg=242     cterm=bold
hi Visual           guifg=#192224   guibg=#f9f9ff   guisp=#f9f9ff   gui=NONE        ctermfg=235     ctermbg=189     cterm=NONE
hi VisualNOS        guifg=#192224   guibg=#f9f9ff   guisp=#f9f9ff   gui=underline   ctermfg=235     ctermbg=189     cterm=underline
hi WarningMsg       guifg=#a1a6a8   guibg=#912c00   guisp=#912c00   gui=NONE        ctermfg=248     ctermbg=88      cterm=NONE
hi WildMenu         guifg=NONE      guibg=#a1a6a8   guisp=#a1a6a8   gui=NONE        ctermfg=NONE    ctermbg=248     cterm=NONE
hi cursorim         guifg=#192224   guibg=#536991   guisp=#536991   gui=NONE        ctermfg=235     ctermbg=60      cterm=NONE

