"   ________  _______   ________  ________  ________  ________  ___  ________     
"  |\   ___ \|\  ___ \ |\   ____\|\   __  \|\   __  \|\   ____\|\  \|\   __  \    
"  \ \  \_|\ \ \   __/|\ \  \___|\ \  \|\  \ \  \|\  \ \  \___|\ \  \ \  \|\  \   
"   \ \  \ \\ \ \  \_|/_\ \_____  \ \   ____\ \   __  \ \  \    \ \  \ \  \\\  \  
"    \ \  \_\\ \ \  \_|\ \|____|\  \ \  \___|\ \  \ \  \ \  \____\ \  \ \  \\\  \ 
"     \ \_______\ \_______\____\_\  \ \__\    \ \__\ \__\ \_______\ \__\ \_______\
"      \|_______|\|_______|\_________\|__|     \|__|\|__|\|_______|\|__|\|_______|
"                         \|_________|                                            

" A Terminal Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Despacio
" License:      MIT

"================================================================================
"COLOR PALETTE:
"================================================================================

"White:
"================================================================================
"Cloud          254      #e4e4e4      http://www.colorhexa.com/e4e4e4

"Black:
"================================================================================
"Abyss          16       #000000      http://www.colorhexa.com/000000
"Pitch          232      #080808      http://www.colorhexa.com/080808
"Midnight       233      #121212      http://www.colorhexa.com/121212
"Twilight       234      #1c1c1c      http://www.colorhexa.com/1c1c1c

"Gray:
"================================================================================
"Stars          188      #dfdfdf      http://www.colorhexa.com/dfdfdf
"Sunset         235      #262626      http://www.colorhexa.com/262626
"Day            236      #303030      http://www.colorhexa.com/303030
"Shade          237      #3a3a3a      http://www.colorhexa.com/3a3a3a
"Ash            238      #444444      http://www.colorhexa.com/444444
"Pebble         239      #4e4e4e      http://www.colorhexa.com/4e4e4e
"Graphite       240      #585858      http://www.colorhexa.com/585858
"Fog            241      #626262      http://www.colorhexa.com/626262
"Ash            243      #767676      http://www.colorhexa.com/767676
"Stone          245      #8a8a8a      http://www.colorhexa.com/8a8a8a

"Red:
"================================================================================
"Firecracker    131      #af5f5f      http://www.colorhexa.com/af5f5f
"Scarlet        160      #d70000      http://www.colorhexa.com/d70000
"Rose           167      #d75f5f      http://www.colorhexa.com/d75f5f
"Cherry         196      #ff0000      http://www.colorhexa.com/ff0000

"Green:
"================================================================================
"Marsh          108      #87af87      http://www.colorhexa.com/87af87
"Fern           65       #5f875f      http://www.colorhexa.com/5f875f

"Yellow:
"================================================================================
"Dune           187      #dfdfaf      http://www.colorhexa.com/dfdfaf
"Flats          144      #afaf87      http://www.colorhexa.com/afaf87
"Linen          222      #ffdf87      http://www.colorhexa.com/ffdf87
"Sand           223      #ffdfaf      http://www.colorhexa.com/ffdfaf
"Firefly        230      #ffffdf      http://www.colorhexa.com/ffffdf

"Cyan:
"================================================================================
"Lilac          60       #5f5f87      http://www.colorhexa.com/5f5f87
"Lake           66       #5f8787      http://www.colorhexa.com/5f8787
"Oasis          109      #87afaf      http://www.colorhexa.com/87afaf
"Robin          111      #87afff     http://www.colorhexa.com/87afff

"Blue:
"================================================================================
"Heather        103      #8787af      http://www.colorhexa.com/8787af

"Purple:
"================================================================================
"Lavender       146      #afafd7      http://www.colorhexa.com/afafd7

"Orange:
"================================================================================
"Bluebells      130     #af5f00       http://www.colorhexa.com/af5f00
"Oak            137     #af875f       http://www.colorhexa.com/af875f
"Cider          166     #d75f00       http://www.colorhexa.com/d75f00
"Mallow         179     #dfaf5f       http://www.colorhexa.com/dfaf5f
"Cream          180     #dfaf87       http://www.colorhexa.com/dfaf87
"Honeystrand    208     #ff8700       http://www.colorhexa.com/ff8700
"Pomegranate    209     #ff875f       http://www.colorhexa.com/ff875f
"Yam            215     #ffaf5f       http://www.colorhexa.com/ffaf5f
"Sorbet         216     #ffaf87       http://www.colorhexa.com/ffaf87


set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================

let g:colors_name="despacio"

if !exists("g:despacio_Sunset")
    let g:despacio_Sunset = 0
endif

if !exists("g:despacio_Twilight")
    let g:despacio_Twilight = 0
endif

if !exists("g:despacio_Midnight") 
    let g:despacio_Midnight = 0
endif

if !exists("g:despacio_Pitch")
    let g:despacio_Pitch = 0
endif

if !exists("g:despacio_Clear_Skies")
    let g:despacio_Clear_Skies = 0
endif

if !exists("g:despacio_Campfire")
    let g:despacio_Campfire = 0
endif

"================================================================================
" DAY:
"================================================================================

hi Normal           ctermfg=254        guifg=#e4e4e4       ctermbg=236       guibg=#303030       cterm=NONE     gui=NONE
hi LineNr           ctermfg=241        guifg=#626262       ctermbg=235       guibg=#262626       cterm=NONE     gui=NONE
hi CursorLineNR     ctermfg=187        guifg=#dfdfaf       ctermbg=235       guibg=#262626       cterm=NONE     gui=NONE
hi CursorLine       ctermfg=NONE       guifg=NONE          ctermbg=237       guibg=#3a3a3a       cterm=NONE     gui=NONE

" Number Column:
hi Folded           ctermfg=187        guifg=#dfdfaf       ctermbg=NONE       guibg=NONE         cterm=NONE     gui=NONE
hi FoldColumn       ctermfg=109        guifg=#87afaf       ctermbg=236        guibg=#303030      cterm=NONE     gui=NONE
hi SignColumn       ctermfg=108        guifg=#87af87       ctermbg=236        guibg=#303030      cterm=NONE     gui=NONE

" WindowTab Delimiters:
hi TabLineFill      ctermfg=NONE        guifg=NONE          ctermbg=235       guibg=#262626      cterm=NONE     gui=NONE
hi ColorColumn      ctermfg=NONE        guifg=NONE          ctermbg=237       guibg=#3a3a3a      cterm=NONE     gui=NONE
hi VertSplit        ctermfg=137         guifg=#af875f       ctermbg=235       guibg=#262626      cterm=NONE     gui=NONE
hi TabLine          ctermfg=241         guifg=#626262       ctermbg=235       guibg=#262626      cterm=NONE     gui=NONE
hi TabLineSel       ctermfg=187         guifg=#dfdfaf       ctermbg=235       guibg=#262626      cterm=NONE     gui=NONE

" File Navigation:
hi Directory        ctermfg=216         guifg=#ffaf87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Search           ctermfg=130         guifg=#af5f00       ctermbg=187       guibg=#dfdfaf      cterm=NONE     gui=NONE

" Prompt Status:
hi Title             ctermfg=209        guifg=#ff875f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi ModeMsg           ctermfg=230        guifg=#ffffdf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi MoreMsg           ctermfg=137        guifg=#af875f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Question          ctermfg=137        guifg=#af875f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi StatusLine        ctermfg=230        guifg=#ffffdf       ctermbg=137       guibg=#af875f      cterm=NONE     gui=NONE
hi StatusLineNC      ctermfg=137        guifg=#af875f       ctermbg=NONE      guibg=NONE      cterm=underline gui=underline

hi WildMenu          ctermfg=230        guifg=#ffffdf       ctermbg=66        guibg=#5f8787      cterm=NONE     gui=NONE

" Visual Aid:
hi NonText           ctermfg=239        guifg=#4e4e4e       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi SpecialKey        ctermfg=66         guifg=#5f8787       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Underlined        ctermfg=66         guifg=#5f8787       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi WarningMsg        ctermfg=209        guifg=#ff875f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi MatchParen        ctermfg=230        guifg=#ffffdf       ctermbg=66        guibg=#5f8787      cterm=NONE     gui=NONE
hi Visual            ctermfg=230        guifg=#ffffdf       ctermbg=66        guibg=#5f8787      cterm=NONE     gui=NONE
hi Todo              ctermfg=209        guifg=#ff875f       ctermbg=236       guibg=#303030      cterm=reverse  gui=reverse
hi Error             ctermfg=167        guifg=#d75f5f       ctermbg=233       guibg=#121212      cterm=reverse  gui=reverse
hi ErrorMsg          ctermfg=167        guifg=#d75f5f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE 

" Variable Types:
hi Constant          ctermfg=166        guifg=#d75f00       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi String            ctermfg=230        guifg=#ffffdf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Identifier        ctermfg=223        guifg=#ffdfaf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Function          ctermfg=223        guifg=#ffdfaf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi StorageClass      ctermfg=180        guifg=#dfaf87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" Language Constructs:
hi Label             ctermfg=180        guifg=#dfaf87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Statement         ctermfg=137        guifg=#af875f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Operator          ctermfg=180        guifg=#dfaf87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Comment           ctermfg=241        guifg=#626262       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Special           ctermfg=216        guifg=#ffaf87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" C Like:
hi PreProc           ctermfg=209        guifg=#ff875f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Type              ctermfg=223        guifg=#ffdfaf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" HTML:
hi htmlStatement     ctermfg=223        guifg=#ffdfaf        ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi htmlItalic        ctermfg=209        guifg=#ff875f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi htmlArg           ctermfg=166        guifg=#d75f00        ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

"FIXME:
" Diff:
hi DiffAdd           ctermfg=234        guifg=#1c1c1c        ctermbg=223      guibg=#ffdfaf      cterm=NONE     gui=NONE
hi DiffChange        ctermfg=234        guifg=#1c1c1c        ctermbg=137      guibg=#af875f      cterm=NONE     gui=NONE
hi DiffText          ctermfg=234        guifg=#1c1c1c        ctermbg=180      guibg=#dfaf87      cterm=NONE     gui=NONE
hi DiffDelete        ctermfg=187        guifg=#dfdfaf        ctermbg=131      guibg=#af5f5f      cterm=NONE     gui=NONE

" Completion Menu:
hi Pmenu             ctermfg=187        guifg=#dfdfaf        ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
hi PmenuSel          ctermfg=230        guifg=#ffffdf        ctermbg=66       guibg=#5f8787      cterm=NONE     gui=NONE
hi PmenuSbar         ctermfg=235        guifg=#262626        ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
hi PmenuThumb        ctermfg=235        guifg=#262626        ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE

" Spelling:
hi SpellBad          ctermfg=167        guifg=#d75f5f        ctermbg=NONE     guibg=NONE         cterm=undercurl gui=undercurl
hi SpellLocal        ctermfg=65         guifg=#5f875f        ctermbg=NONE     guibg=NONE         cterm=undercurl gui=undercurl
hi SpellCap          ctermfg=111        guifg=#87afff        ctermbg=NONE     guibg=NONE         cterm=undercurl gui=undercurl
hi SpellRare         ctermfg=208        guifg=#ff8700        ctermbg=NONE     guibg=NONE         cterm=undercurl gui=undercurl

"================================================================================
" SUNSET:
"================================================================================
if g:despacio_Sunset
    " Editor Settings:
    hi Normal            ctermfg=188        guifg=#dfdfdf         ctermbg=235      guibg=#262626      cterm=NONE    gui=NONE
    hi LineNr            ctermfg=240        guifg=#585858         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=236      guibg=#303030      cterm=NONE    gui=NONE
    hi CursorLineNR      ctermfg=187        guifg=#dfdfaf         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE

    " Number Column:
    hi SignColumn        ctermfg=108        guifg=#87af87         ctermbg=235      guibg=#262626      cterm=NONE    gui=NONE
    hi Folded            ctermfg=187        guifg=#dfdfaf         ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE
    hi FoldColumn        ctermfg=109        guifg=#87afaf         ctermbg=235      guibg=#262626      cterm=NONE    gui=NONE

    " WindowTab Delimiters:
    hi VertSplit         ctermfg=137        guifg=#af875f         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi ColorColumn       ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi TabLineFill       ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi TabLine           ctermfg=240        guifg=#585858         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi TabLineSel        ctermfg=187        guifg=#dfdfaf         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE

    "Visual Aid:
    hi Todo              ctermfg=209        guifg=#ff875f         ctermbg=235      guibg=#262626      cterm=reverse  gui=reverse

    " Language Constructs:
    hi Comment           ctermfg=240        guifg=#585858         ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE

    " Completion Menu:
    hi Pmenu             ctermfg=187        guifg=#dfdfaf         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi PmenuSbar         ctermfg=234        guifg=#1c1c1c         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi PmenuThumb        ctermfg=234        guifg=#1c1c1c         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
end

"================================================================================
" TWILIGHT:
"================================================================================
if g:despacio_Twilight
    " Editor Settings:
    hi Normal            ctermfg=188        guifg=#dfdfdf         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi LineNr            ctermfg=240        guifg=#585858         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi TabLine           ctermfg=240        guifg=#585858         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=235      guibg=#262626      cterm=NONE    gui=NONE
    hi CursorLineNR      ctermfg=187        guifg=#dfdfaf         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE

    " Number Column:
    hi SignColumn        ctermfg=108        guifg=#87af87         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi Folded            ctermfg=187        guifg=#dfdfaf         ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE
    hi FoldColumn        ctermfg=109        guifg=#87afaf         ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE

    " WindowTab Delimiters:
    hi VertSplit         ctermfg=137        guifg=#af875f         ctermbg=233      guibg=#262626      cterm=NONE    gui=NONE
    hi ColorColumn       ctermfg=NONE       guifg=NONE            ctermbg=235      guibg=#262626      cterm=NONE    gui=NONE
    hi TabLineFill       ctermfg=NONE       guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi TabLine           ctermfg=240        guifg=#585858         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi TabLineSel        ctermfg=187        guifg=#dfdfaf         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE

    "Visual Aid:
    hi Todo              ctermfg=209        guifg=#ff875f         ctermbg=234      guibg=#1c1c1c      cterm=reverse  gui=reverse
    
    " Language Constructs:
    hi Comment           ctermfg=240        guifg=#585858         ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE

    " Completion Menu:
    hi Pmenu             ctermfg=187        guifg=#dfdfaf         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi PmenuSbar         ctermfg=233        guifg=#121212         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi PmenuThumb        ctermfg=233        guifg=#121212         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
end

"================================================================================
" MIDNIGHT:
"================================================================================
if g:despacio_Midnight
    " Editor Settings:
    hi Normal            ctermfg=188        guifg=#dfdfdf         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi LineNr            ctermfg=240        guifg=#585858         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi CursorLineNR      ctermfg=187        guifg=#dfdfaf         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE

    " Number Column:
    hi SignColumn       ctermfg=108         guifg=#87af87         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi Folded           ctermfg=187         guifg=#dfdfaf         ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE
    hi FoldColumn       ctermfg=109         guifg=#87afaf         ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE

    " WindowTab Delimiters:
    hi VertSplit        ctermfg=137         guifg=#af875f         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi ColorColumn      ctermfg=NONE        guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi TabLineFill      ctermfg=NONE        guifg=NONE            ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi TabLine          ctermfg=240         guifg=#585858         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi TabLineSel       ctermfg=187         guifg=#dfdfaf         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE

    "Visual Aid:
    hi Todo              ctermfg=209        guifg=#ff875f         ctermbg=233      guibg=#121212      cterm=reverse  gui=reverse

    " Language Constructs:
    hi Comment          ctermfg=240         guifg=#585858         ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE

    " Completion Menu:
    hi Pmenu            ctermfg=187         guifg=#dfdfaf         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi PmenuSbar        ctermfg=232         guifg=#080808         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi PmenuThumb       ctermfg=232         guifg=#080808         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
end

"================================================================================
" PITCH:
"================================================================================
if g:despacio_Pitch
    " Editor Settings:
    hi Normal           ctermfg=188         guifg=#dfdfdf         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi LineNr           ctermfg=240         guifg=#585858         ctermbg=16       guibg=#000000      cterm=NONE    gui=NONE
    hi CursorLine       ctermfg=NONE        guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi CursorLineNR     ctermfg=187         guifg=#dfdfaf         ctermbg=16       guibg=#000000      cterm=NONE    gui=NONE

    " Number Column:
    hi SignColumn       ctermfg=108         guifg=#87af87         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE
    hi Folded           ctermfg=187         guifg=#dfdfaf         ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE
    hi FoldColumn       ctermfg=109         guifg=#87afaf         ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE

    " WindowTab Delimiters:
    hi VertSplit        ctermfg=137         guifg=#af875f         ctermbg=16       guibg=#000000      cterm=NONE     gui=NONE
    hi ColorColumn      ctermfg=NONE        guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi TabLineFill      ctermfg=NONE        guifg=NONE            ctermbg=16       guibg=#000000      cterm=NONE     gui=NONE
    hi TabLine          ctermfg=240         guifg=#585858         ctermbg=16       guibg=#000000      cterm=NONE     gui=NONE
    hi TabLineSel       ctermfg=187         guifg=#dfdfaf         ctermbg=16       guibg=#000000      cterm=NONE     gui=NONE

    "Visual Aid:
    hi Todo              ctermfg=209        guifg=#ff875f         ctermbg=232      guibg=#080808      cterm=reverse  gui=reverse

    " Language Constructs:
    hi Comment          ctermfg=240         guifg=#585858         ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

    " Completion Menu:
    hi Pmenu            ctermfg=187         guifg=#dfdfaf         ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE
    hi PmenuSbar        ctermfg=16          guifg=#000000         ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE
    hi PmenuThumb       ctermfg=16          guifg=#000000         ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE
end

if g:despacio_Clear_Skies
    " Editor Settings:
    hi CursorLine       ctermfg=NONE        guifg=NONE            ctermbg=NONE    guibg=NONE         cterm=NONE    gui=NONE
end

"================================================================================
" CAMPFIRE:
"================================================================================
if g:despacio_Campfire
    let despacio_Hour = strftime("%H")

    "Day: 7am - 5pm
    if 7 <= despacio_Hour && despacio_Hour < 17
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 0

    "Sunset: 5pm - 7pm
    elseif 17 <= despacio_Hour && despacio_Hour < 19
        let g:despacio_Sunset = 1
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 0

    "Twilight: 7pm - 9pm
    elseif 19 <= despacio_Hour && despacio_Hour < 21
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 1
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 0

    "Midnight: 9pm - 12am
    elseif 21 <= despacio_Hour && despacio_Hour < 24
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 1
        let g:despacio_Pitch = 0

    "Pitch: 12am - 7am
    else
        let g:despacio_Sunset = 0
        let g:despacio_Twilight = 0
        let g:despacio_Midnight = 0
        let g:despacio_Pitch = 1

    endif
end
