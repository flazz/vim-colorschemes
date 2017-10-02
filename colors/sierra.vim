
"    ███████╗██╗███████╗██████╗ ██████╗  █████╗
"    ██╔════╝██║██╔════╝██╔══██╗██╔══██╗██╔══██╗
"    ███████╗██║█████╗  ██████╔╝██████╔╝███████║
"    ╚════██║██║██╔══╝  ██╔══██╗██╔══██╗██╔══██║
"    ███████║██║███████╗██║  ██║██║  ██║██║  ██║
"    ╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝


" A Terminal Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Sierra
" License:      MIT

"================================================================================
"COLOR PALETTE:
"================================================================================

"White:
"================================================================================
"Salt           231      #ffffff      http://www.colorhexa.com/ffffff
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
"Charcoal       242      #6c6c6c      http://www.colorhexa.com/6c6c6c
"Slate          243      #767676      http://www.colorhexa.com/767676
"Stone          245      #8a8a8a      http://www.colorhexa.com/8a8a8a

"Red:
"================================================================================
"Dusk           95       #875f5f      http://www.colorhexa.com/875f5f
"Firecracker    131      #af5f5f      http://www.colorhexa.com/af5f5f
"Evening        138      #af8787      http://www.colorhexa.com/af8787
"Rose           167      #d75f5f      http://www.colorhexa.com/d75f5f
"Bellflower     174      #d78787      http://www.colorhexa.com/d78787
"Cherry         196      #ff0000     http://www.colorhexa.com/ff0000
"Claret         210      #ff8787      http://www.colorhexa.com/ff8787
"Daybreak       217      #ffafaf      http://www.colorhexa.com/ffafaf

"Green:
"================================================================================
"Cactus         64       #5f8700      http://www.colorhexa.com/5f8700
"Fern           65       #5f875f      http://www.colorhexa.com/5f875f
"Sage           107      #87af5f      http://www.colorhexa.com/87af5f
"Marsh          108      #87af87      http://www.colorhexa.com/87af87
"Agave          114      #87d787      http://www.colorhexa.com/87d787

"Yellow:
"================================================================================
"Flats          144      #afaf87      http://www.colorhexa.com/afaf87
"Dune           187      #dfdfaf      http://www.colorhexa.com/dfdfaf
"Firefly        230      #ffffdf      http://www.colorhexa.com/ffffdf

"Cyan:
"================================================================================
"Lilac          60       #5f5f87      http://www.colorhexa.com/5f5f87
"Lake           66       #5f8787      http://www.colorhexa.com/5f8787
"Oasis          109      #87afaf      http://www.colorhexa.com/87afaf
"Robin          111      #87afff      http://www.colorhexa.com/87afff
"Nolana         152      #afd7d7      http://www.colorhexa.com/afd7d7

"Blue:
"================================================================================
"Heather        103      #8787af      http://www.colorhexa.com/8787af
"Azure          110      #87afd7      http://www.colorhexa.com/87afd7

"Purple:
"================================================================================
"Lavender       146      #afafd7      http://www.colorhexa.com/afafd7

"Orange:
"================================================================================
"Bluebells      130     #af5f00       http://www.colorhexa.com/af5f00
"Mallow         179     #dfaf5f       http://www.colorhexa.com/dfaf5f
"Honeystrand    208     #ff8700       http://www.colorhexa.com/ff8700


set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif


"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================


let g:colors_name="sierra"


if !exists("g:sierra_Sunset")
    let g:sierra_Sunset = 0
endif


if !exists("g:sierra_Twilight")
    let g:sierra_Twilight = 0
endif


if !exists("g:sierra_Midnight")
    let g:sierra_Midnight = 0
endif


if !exists("g:sierra_Pitch")
    let g:sierra_Pitch = 0
endif


if !exists("g:sierra_Campfire")
    let g:sierra_Campfire = 0
endif


if !exists("g:sierra_Clear_Skies")
    let g:sierra_Clear_Skies = 0
endif


if !exists("g:sierra_Nevada")
    let g:sierra_Nevada = 0
endif

if !exists("g:sierra_Stargaze")
    let g:sierra_Stargaze = 0
endif


"================================================================================
" DAY:
"================================================================================

" Editor Settings:
hi Normal           ctermfg=254        guifg=#e4e4e4     ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
hi LineNr           ctermfg=241        guifg=#626262     ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
hi CursorLineNr     ctermfg=187        guifg=#dfdfaf     ctermbg=235     guibg=#262626         cterm=NONE     gui=NONE
hi CursorLine       ctermfg=NONE       guifg=NONE        ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE

" Number Column:
hi Folded           ctermfg=187        guifg=#dfdfaf     ctermbg=66       guibg=#5f8787      cterm=NONE     gui=NONE
hi FoldColumn       ctermfg=109        guifg=#87afaf     ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
hi SignColumn       ctermfg=108        guifg=#87af87     ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE


" WindowTab Delimiters:
hi TabLineFill      ctermfg=NONE       guifg=NONE        ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
hi ColorColumn      ctermfg=NONE       guifg=NONE        ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
hi VertSplit        ctermfg=237        guifg=#3a3a3a     ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
hi TabLine          ctermfg=243        guifg=#767676     ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
hi TabLineSel       ctermfg=235        guifg=#262626     ctermbg=144      guibg=#afaf87      cterm=NONE     gui=NONE

" File Navigation:
hi Directory        ctermfg=138       guifg=#af8787      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Search           ctermfg=187       guifg=#dfdfaf      ctermbg=95       guibg=#875f5f      cterm=NONE     gui=NONE


" Prompt Status:
hi Title             ctermfg=174      guifg=#d78787      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi ModeMsg           ctermfg=144      guifg=#afaf87      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi MoreMsg           ctermfg=179      guifg=#dfaf5f      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Question          ctermfg=179      guifg=#dfaf5f      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi StatusLine        ctermfg=235      guifg=#262626      ctermbg=144      guibg=#afaf87      cterm=NONE     gui=NONE
hi StatusLineNC      ctermfg=243      guifg=#767676      ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
hi WildMenu          ctermfg=187      guifg=#dfdfaf      ctermbg=95       guibg=#875f5f      cterm=NONE     gui=NONE

" Visual Aid:
hi NonText           ctermfg=243      guifg=#767676      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi SpecialKey        ctermfg=110      guifg=#87afd7      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Underlined        ctermfg=110      guifg=#87afd7      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi WarningMsg        ctermfg=130      guifg=#af5f00      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi MatchParen        ctermfg=233      guifg=#121212      ctermbg=245      guibg=#8a8a8a      cterm=NONE     gui=NONE
hi Visual            ctermfg=187      guifg=#dfdfaf      ctermbg=95       guibg=#875f5f      cterm=NONE     gui=NONE
hi Todo              ctermfg=144      guifg=#afaf87      ctermbg=234      guibg=#1c1c1c      cterm=italic   gui=italic
hi Error             ctermfg=131      guifg=#af5f5f      ctermbg=235      guibg=#262626      cterm=reverse  gui=reverse
hi ErrorMsg          ctermfg=131      guifg=#af5f5f      ctermbg=NONE      guibg=NONE      cterm=NONE  gui=NONE


" Variable Types:
hi Constant          ctermfg=210      guifg=#ff8787      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi String            ctermfg=217      guifg=#ffafaf      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Identifier        ctermfg=109      guifg=#87afaf      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Function          ctermfg=152      guifg=#afd7d7      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE


" Language Constructs:
hi Statement         ctermfg=66       guifg=#5f8787      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Operator          ctermfg=230      guifg=#ffffdf      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Comment           ctermfg=241      guifg=#626262      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Special           ctermfg=179      guifg=#dfaf5f      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

" C Like:
hi PreProc           ctermfg=167      guifg=#d75f5f      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi Type              ctermfg=138      guifg=#af8787      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE


" HTML:
hi htmlItalic        ctermfg=167      guifg=#d75f5f      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
hi htmlArg           ctermfg=230      guifg=#ffffdf      ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE


" Diff:
hi DiffAdd           ctermfg=234      guifg=#1c1c1c      ctermbg=146      guibg=#afafd7      cterm=NONE     gui=NONE
hi DiffChange        ctermfg=234      guifg=#1c1c1c      ctermbg=60       guibg=#5f5f87      cterm=NONE     gui=NONE
hi DiffText          ctermfg=234      guifg=#1c1c1c      ctermbg=103      guibg=#8787af      cterm=NONE     gui=NONE
hi DiffDelete        ctermfg=234      guifg=#1c1c1c      ctermbg=131      guibg=#af5f5f      cterm=NONE     gui=NONE

" Completion Menu:
hi Pmenu             ctermfg=236      guifg=#303030      ctermbg=245      guibg=#8a8a8a      cterm=NONE    gui=NONE
hi PmenuSel          ctermfg=187      guifg=#dfdfaf      ctermbg=95       guibg=#875f5f      cterm=NONE    gui=NONE
hi PmenuSbar         ctermfg=245    guifg=#8a8a8a        ctermbg=245      guibg=#8a8a8a      cterm=NONE    gui=NONE
hi PmenuThumb        ctermfg=245     guifg=#8a8a8a       ctermbg=245      guibg=#8a8a8a      cterm=NONE    gui=NONE


" Spelling:
hi SpellBad         ctermfg=196     guifg=#ff0000     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl
hi SpellLocal       ctermfg=65      guifg=#5f875f     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl
hi SpellCap         ctermfg=111     guifg=#87afff     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl
hi SpellRare        ctermfg=208     guifg=#ff8700     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl

"hi htmlTagName
"hi htmlTag
"hi htmlEndTag
"hi htmlSpecialTagName
"hi Include
"hi Define
"hi Macro
"hi PreCondit
"hi StorageClass
"hi Structure
"hi Typedef
"hi SpecialChar
"hi Tag
"hi Delimiter
"hi SpecialComment
"hi Debug
"hi Conditional
"hi Repeat
"hi Label
"hi Keyword
"hi Exception
"hi StringDelimiter
"hi Character
"hi Number
"hi Boolean
"hi Float
"hi Ignore
"hi VisualNOS
"hi IncSearch
"hi Cursor
"hi CursorColumn


"================================================================================
" SUNSET:
"================================================================================
if g:sierra_Sunset
    " Editor Settings:
    hi Normal           ctermfg=188        guifg=#dfdfdf     ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi LineNr           ctermfg=240        guifg=#585858     ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi CursorLineNr     ctermfg=187        guifg=#dfdfaf     ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi CursorLine       ctermfg=NONE       guifg=NONE        ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE

    " Number Column:
    hi SignColumn       ctermfg=108        guifg=#87af87     ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi FoldColumn       ctermfg=109        guifg=#87afaf     ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE

    " WindowTab Delimiters:
    hi ColorColumn      ctermfg=NONE       guifg=NONE        ctermbg=236      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi VertSplit        ctermfg=236        guifg=#303030     ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi TabLineFill      ctermfg=NONE       guifg=NONE        ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi TabLine          ctermfg=240        guifg=#585858     ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE

    " Prompt Status:
    hi StatusLineNC     ctermfg=240        guifg=#585858     ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE

    " Visual Aid:
    hi NonText          ctermfg=240        guifg=#585858     ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
    hi Error            ctermfg=131        guifg=#af5f5f     ctermbg=235      guibg=#262626      cterm=reverse  gui=reverse

    " Language Constructs:
    hi Comment          ctermfg=240        guifg=#585858     ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

    " Completion Menu:
    hi Pmenu            ctermfg=235        guifg=#262626     ctermbg=245      guibg=#8a8a8a      cterm=NONE     gui=NONE
end


"================================================================================
" TWILIGHT:
"================================================================================
if g:sierra_Twilight
    " Editor Settings:
    hi Normal           ctermfg=188        guifg=#dfdfdf     ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi LineNr           ctermfg=240        guifg=#585858     ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorLineNr     ctermfg=187        guifg=#dfdfaf     ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorLine       ctermfg=NONE       guifg=NONE        ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE

    " Number Column:
    hi SignColumn       ctermfg=108        guifg=#87af87     ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi FoldColumn       ctermfg=109        guifg=#87afaf     ctermbg=234      guibg=#1c1c1c      cterm=NONE    gui=NONE

    " WindowTab Delimiters:
    hi VertSplit        ctermfg=236        guifg=#303030     ctermbg=233      guibg=#262626      cterm=NONE    gui=NONE
    hi ColorColumn      ctermfg=NONE       guifg=NONE        ctermbg=235      guibg=#262626      cterm=NONE    gui=NONE
    hi TabLineFill      ctermfg=NONE       guifg=NONE        ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE
    hi TabLine          ctermfg=240        guifg=#585858     ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE

    " Prompt Status:
    hi StatusLineNC     ctermfg=240        guifg=#585858     ctermbg=233      guibg=#121212      cterm=NONE    gui=NONE

    " Visual Aid:
    hi NonText          ctermfg=239        guifg=#4e4e4e     ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE
    hi Error            ctermfg=131        guifg=#af5f5f     ctermbg=234      guibg=#1c1c1c      cterm=reverse gui=reverse

    " Language Constructs:
    hi Comment          ctermfg=240        guifg=#585858     ctermbg=NONE     guibg=NONE         cterm=NONE    gui=NONE

    " Completion Menu:
    hi Pmenu            ctermfg=234        guifg=#1c1c1c     ctermbg=245      guibg=#8a8a8a      cterm=NONE    gui=NONE
end


"================================================================================
" MIDNIGHT:
"================================================================================
if g:sierra_Midnight
    " Editor Settings:
    hi Normal           ctermfg=188        guifg=#dfdfdf      ctermbg=233     guibg=#121212      cterm=NONE    gui=NONE
    hi LineNr           ctermfg=240        guifg=#585858      ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE
    hi CursorLineNr     ctermfg=187        guifg=#dfdfaf      ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE
    hi CursorLine       ctermfg=NONE       guifg=NONE         ctermbg=234     guibg=#1c1c1c      cterm=NONE    gui=NONE

    " Number Column:
    hi SignColumn       ctermfg=108        guifg=#87af87      ctermbg=233     guibg=#121212      cterm=NONE    gui=NONE
    hi FoldColumn       ctermfg=109        guifg=#87afaf      ctermbg=233     guibg=#121212      cterm=NONE    gui=NONE

    " WindowTab Delimiters:
    hi VertSplit        ctermfg=234        guifg=#1c1c1c      ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE
    hi ColorColumn      ctermfg=NONE       guifg=NONE         ctermbg=234     guibg=#1c1c1c      cterm=NONE    gui=NONE
    hi TabLineFill      ctermfg=NONE       guifg=NONE         ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE
    hi TabLine          ctermfg=240        guifg=#585858     ctermbg=232      guibg=#080808      cterm=NONE    gui=NONE

    " Prompt Status:
    hi StatusLineNC     ctermfg=240       guifg=#585858         ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE

    " Visual Aid:
    hi NonText          ctermfg=238        guifg=#444444      ctermbg=NONE    guibg=NONE         cterm=NONE    gui=NONE
    hi Error            ctermfg=131        guifg=#af5f5f      ctermbg=233     guibg=#121212      cterm=reverse gui=reverse

    " Language Constructs:
    hi Comment          ctermfg=240        guifg=#585858      ctermbg=NONE    guibg=NONE         cterm=NONE    gui=NONE

    " Completion Menu:
    hi Pmenu            ctermfg=233        guifg=#121212      ctermbg=245     guibg=#8a8a8a      cterm=NONE    gui=NONE
end


"--------------------------------------------------------------------
" PITCH:
"--------------------------------------------------------------------
if g:sierra_Pitch
    " Editor Settings:
    hi Normal           ctermfg=188        guifg=#dfdfdf      ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE
    hi LineNr           ctermfg=240        guifg=#585858      ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE
    hi CursorLineNr     ctermfg=187        guifg=#dfdfaf      ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE
    hi CursorLine       ctermfg=NONE       guifg=NONE         ctermbg=233     guibg=#121212      cterm=NONE    gui=NONE

    " Number Column:
    hi SignColumn       ctermfg=108        guifg=#87af87      ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE
    hi FoldColumn       ctermfg=109        guifg=#87afaf      ctermbg=232     guibg=#080808      cterm=NONE    gui=NONE

    " WindowTab Delimiters:
    hi VertSplit        ctermfg=234         guifg=#1c1c1c     ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE
    hi ColorColumn      ctermfg=NONE        guifg=NONE        ctermbg=233     guibg=#121212      cterm=NONE    gui=NONE
    hi TabLineFill      ctermfg=NONE        guifg=NONE        ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE
    hi TabLine          ctermfg=240         guifg=#585858     ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE

    " Prompt Status:
    hi StatusLineNC     ctermfg=240         guifg=#585858     ctermbg=16      guibg=#000000      cterm=NONE    gui=NONE

    " Visual Aid:
    hi NonText          ctermfg=238        guifg=#444444      ctermbg=NONE    guibg=NONE         cterm=NONE    gui=NONE
    hi Error            ctermfg=131         guifg=#af5f5f     ctermbg=16      guibg=#000000      cterm=reverse gui=reverse

    " Language Constructs:
    hi Comment          ctermfg=240        guifg=#585858      ctermbg=NONE    guibg=NONE         cterm=NONE    gui=NONE

    " Completion Menu:
    hi Pmenu            ctermfg=16          guifg=#000000     ctermbg=245     guibg=#8a8a8a      cterm=NONE    gui=NONE
end


"================================================================================
" NEVADA:
"================================================================================
if g:sierra_Nevada
    " Visual Aid:
    hi MatchParen       ctermfg=231         guifg=#ffffff     ctermbg=16      guibg=#080808      cterm=underline gui=underline
end

"================================================================================
" CLEAR SKIES:
"================================================================================
if g:sierra_Clear_Skies
    " Editor Settings:
    hi CursorLine       ctermfg=NONE        guifg=NONE        ctermbg=NONE    guibg=NONE        cterm=NONE gui=NONE
end

"================================================================================
" STARGAZE:
"================================================================================
if g:sierra_Stargaze
    "TODO
end

"================================================================================
" CAMPFIRE:
"================================================================================
if g:sierra_Campfire
    let sierra_Hour = strftime("%H")

    "Day: 7am - 5pm
    if 7 <= sierra_Hour && sierra_Hour < 17
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 0

    "Sunset: 5pm - 7pm
    elseif 17 <= sierra_Hour && sierra_Hour < 19
        let g:sierra_Sunset = 1
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 0

    "Twilight: 7pm - 9pm
    elseif 19 <= sierra_Hour && sierra_Hour < 21
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 1
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 0

    "Midnight: 9pm - 12am
    elseif 21 <= sierra_Hour && sierra_Hour < 24
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 1
        let g:sierra_Pitch = 0

    "Pitch: 12am - 7am
    else
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 1

    endif
end
