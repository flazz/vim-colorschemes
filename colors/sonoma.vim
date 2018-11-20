" Vim color file
" An easy-breezy colorscheme that acts as a soothing balm for your eyes by capturing the
" look and feel of Xcode with a light background.

" Maintainer: Bidit Mazumder <Bidit [DOT] Mazumder [AT] ttualumni [DOT] org>

" Major Update:    April 23, 2015
" Tried to capture the look and feel of Xcode with a light background.

" Initial Upload:    May 16, 2012


set background=light


if version > 580
" remove existing highlighting and set the defaults
  hi clear
  if exists("syntax_on")
  " load syntax highlighting defaults, if it's enabled
    syntax reset
  endif
endif


let g:colors_name="sonoma"


" highlighting groups
hi SpecialKey                      guifg=#4169E1
hi NonText                         guifg=#999999
hi Directory                       guifg=#2BA3B8
hi ErrorMsg                        guifg=#F8F8FF  guibg=#FF0000
hi IncSearch     gui=reverse
hi Search                                         guibg=#E7E700
hi MoreMsg                         guifg=#429D41
hi ModeMsg                         guifg=#943A20
hi LineNr                          guifg=#CD853F  guibg=#D0D2B9
hi CursorLineNr                                   guibg=#D0D2B9
hi Question                        guifg=#429D41

hi StatusLine    gui=bold          guifg=bg       guibg=#943A20
hi StatusLineNC  gui=reverse
hi VertSplit     gui=reverse

hi Title                           guifg=#DAA520
hi Visual                          guifg=#FAEBD7  guibg=#74873B
" hi VisualNOS
hi WarningMsg                      guifg=#FF0000
hi WildMenu      gui=bold          guifg=#943A20  guibg=#E7E700

hi Folded                          guifg=#191970  guibg=#A9A9A9
hi FoldColumn                      guifg=#191970  guibg=#A9A9A9

hi DiffAdd                         guifg=bg       guibg=#483D8B
hi DiffChange                      guifg=bg       guibg=#00595A
hi DiffDelete                      guifg=bg       guibg=#FF4500
hi DiffText                        guifg=bg       guibg=#B03060
hi SignColumn                      guifg=#191970  guibg=#A9A9A9

hi SpellBad      gui=bold,underline                              guisp=#FF0000
hi SpellCap      gui=undercurl                                   guisp=#4169E1
hi SpellRare     gui=undercurl                                   guisp=#2E8B57
hi SpellLocal    gui=undercurl                                   guisp=#9400D3

hi Pmenu                                          guibg=#FDD7D6
hi PmenuSel                                       guibg=#C0C0C0
hi PmenuSbar                                      guibg=#A9A9A9
hi PmenuThumb    gui=reverse

hi TabLine                                        guibg=#C0C0C0
hi TabLineSel                      guifg=#943A20
hi TabLineFill   gui=reverse
" hi TabNum
" hi TabNumSel
" hi TabWinNum
" hi TabWinNumSel

hi CursorColumn                                   guibg=#D0D2B9
hi CursorLine                                     guibg=#D0D2B9
hi ColorColumn                                    guibg=#D0D2B9
hi Cursor                                         guibg=#4169E1

" cursor color when an Input Method is active
" hi CursorIM

set guicursor+=i-v:ver10-Cursor
set guicursor+=r:hor10-Cursor

set guicursor+=n-c:blinkwait400-iCursor

set guicursor+=ci:ver10-iCursor
set guicursor+=cr:hor10-iCursor

set guicursor+=sm:iCursor
set guicursor+=o:hor50-Error


" syntax highlighting groups
" cursor color when a keymap is active
hi lCursor                         guifg=#000000  guibg=#FFFFFF
hi MatchParen                                     guibg=#69D7FF
hi Normal                          guifg=#4D2F2D  guibg=#DFDBC3
hi iCursor                         guifg=bg       guibg=#943A20
hi Error                           guifg=#F8F8FF  guibg=#FF0000
" constant: character, float, number
hi Character     gui=NONE          guifg=#0B1699
hi Comment       gui=NONE          guifg=#708090
hi Identifier    gui=NONE          guifg=#C6199D
hi Ignore                          guifg=#F8F8FF
hi PreProc       gui=NONE          guifg=#7F4A35
hi Special       gui=NONE          guifg=#B91BC7
" keywords
hi Statement                       guifg=#C6199D
" constant: string
hi String        gui=NONE          guifg=#CA073D
hi Todo                                           guibg=#E7E700
hi Type          gui=NONE          guifg=#C6199D
hi Underlined    gui=underline     guifg=fg       guibg=bg


" linked groups
" explicitly define the color of a constant depending on its type: strings or characters,
" numbers and floats
" hi link Constant
hi link Float           Character
hi link Number          Character
hi link Function        Identifier
hi link Conditional     Statement
hi link Exception       Statement
hi link Keyword         Statement
hi link Label           Statement
hi link Operator        Statement
hi link Repeat          Statement
hi link Type            Statement
hi link Define          PreProc
hi link Include         PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link Boolean         Type
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Debug           Special
hi link Delimiter       Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Tag             Special


" (uncomment this to display spaces as .)
" set conceallevel=2 concealcursor=nciv
" syntax match spaceDots " " conceal cchar=·
" hi clear Conceal
" hi Conceal

