set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "diokai"


hi Normal		ctermfg=252		ctermbg=none	cterm=none		guifg=#d0d0d0	guibg=#272822	gui=none
hi NonText		ctermfg=252		ctermbg=none	cterm=none		guifg=#d0d0d0	guibg=#272822	gui=none
hi Cursor		ctermfg=234		ctermbg=252		cterm=none		guifg=#1c1c1c	guibg=#d0d0d0   gui=none
hi Visual		ctermfg=250		ctermbg=238		cterm=none		guifg=#bcbcbc	guibg=#444444	gui=none
hi VisualNOS	ctermfg=250		ctermbg=238		cterm=none		guifg=#bcbcbc	guibg=#444444	gui=none
hi Search		ctermfg=253		ctermbg=95		cterm=none		guifg=#dadada	guibg=#875f5f	gui=none
hi Folded		ctermfg=102		ctermbg=237		cterm=none		guifg=#878787	guibg=#3a3a3a	gui=none
hi Title		ctermfg=230						cterm=bold		guifg=#ffffd7					gui=bold
hi StatusLine	ctermfg=230		ctermbg=238		cterm=none		guifg=#ffffd7	guibg=#444444	gui=italic
hi VertSplit	ctermfg=236		ctermbg=236		cterm=none		guifg=#444444	guibg=#444444	gui=none
hi StatusLineNC	ctermfg=245		ctermbg=235		cterm=none		guifg=#857b6f	guibg=#444444	gui=none
hi LineNr		ctermfg=240		ctermbg=234		cterm=none		guifg=#585858	guibg=#1c1c1c	gui=none
hi SpecialKey	ctermfg=241		ctermbg=235		cterm=none		guifg=#626262	guibg=#2b2b2b	gui=none
hi WarningMsg	ctermfg=203										guifg=#ff5f55
hi ErrorMsg		ctermfg=196		ctermbg=none	cterm=bold		guifg=#ff2026	guibg=#272822	gui=bold
hi Directory    ctermfg=107                     cterm=none      guifg=#87af5f                   gui=none
hi DiffAdd						ctermbg=237										guibg=#3a3a3a
hi DiffDelete	ctermfg=241		ctermbg=236		cterm=none		guifg=#626262	guibg=#303030	gui=none
hi DiffText						ctermbg=52		cterm=none						guibg=#5f0000	gui=none
hi DiffChange					ctermbg=238										guibg=#444444

if version >= 700
hi CursorLine					ctermbg=236		cterm=none						guibg=#32322f
hi MatchParen	ctermfg=228		ctermbg=101		cterm=bold		guifg=#eae788	guibg=#857b6f	gui=bold
hi Pmenu		ctermfg=230		ctermbg=238						guifg=#ffffd7	guibg=#444444
hi PmenuSel		ctermfg=232		ctermbg=192						guifg=#080808	guibg=#cae982
endif
hi Todo			ctermfg=234		ctermbg=95		cterm=none      guifg=#1c1c1c 	guibg=#875f5f 	gui=italic


hi Keyword		ctermfg=221		cterm=none		guifg=#ffd75f	gui=none
hi Statement	ctermfg=221		cterm=none		guifg=#ffd75f	gui=none
hi Constant		ctermfg=173		cterm=none		guifg=#d7875f	gui=none
hi Number		ctermfg=173		cterm=none		guifg=#d7875f	gui=none
hi PreProc		ctermfg=161		cterm=none		guifg=#d7005f	gui=none
hi Function		ctermfg=102		cterm=none		guifg=#878787	gui=none
hi Identifier	ctermfg=192		cterm=none		guifg=#d7ff87	gui=none
hi Type			ctermfg=107		cterm=none		guifg=#87af5f	gui=none
hi Special		ctermfg=203		cterm=none		guifg=#ff5f5f	gui=none
hi String		ctermfg=144		cterm=none		guifg=#afaf87	gui=italic
hi Comment		ctermfg=96		cterm=none		guifg=#875f87	gui=italic
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine

