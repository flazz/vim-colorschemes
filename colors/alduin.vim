
"  "        ___                                 "
"  "       -   -_, ,,  |\                       "
"  "      (  ~/||  ||   \\         '            "
"  "      (  / ||  ||  / \\ \\ \\ \\ \\/\\      "
"  "       \/==||  || || || || || || || ||      "
"  "       /_ _||  || || || || || || || ||      "
"  "      (  - \\, \\  \\/  \\/\\ \\ \\ \\      "



" A Terminal Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Alduin
" License:      MIT

"================================================================================
"COLOR PALETTE:
"================================================================================

"White:
"================================================================================
"Whiterun        187      #dfdfaf      http://www.colorhexa.com/dfdfaf
"Ivory           255      #eeeeee      http://www.colorhexa.com/eeeeee

"Black:
"================================================================================
"Abyss           16       #000000     http://www.colorhexa.com/000000
"Ethereal        232      #080808     http://www.colorhexa.com/080808
"Aspect          233      #121212     http://www.colorhexa.com/121212

"Gray:
"================================================================================
"Relonikiv       102      #878787      http://www.colorhexa.com/878787
"Skyrim          234      #1c1c1c      http://www.colorhexa.com/1c1c1c
"Ivarstead       235      #262626      http://www.colorhexa.com/262626
"Riften          236      #303030      http://www.colorhexa.com/303030
"Rorikstead      237      #3a3a3a      http://www.colorhexa.com/3a3a3a
"Helgen          238      #444444      http://www.colorhexa.com/444444
"Nightingale     240      #585858      http://www.colorhexa.com/585858

"Red:
"================================================================================
"Durnehviir      95       #875f5f     http://www.colorhexa.com/875f5f
"Krosulhah       52       #5f0000     http://www.colorhexa.com/5f0000
"Windhelm        131      #af5f5f     http://www.colorhexa.com/af5f5f
"Kruziikrel      138      #af8787     http://www.colorhexa.com/af8787
"Redoran         196      #ff0000     http://www.colorhexa.com/ff0000
"Sahloknir       124      #af0000     http://www.colorhexa.com/af0000

"Green:
"================================================================================
"windpeak        108      #87af87     http://www.colorhexa.com/87af87
"cragslane       65       #5f875f     http://www.colorhexa.com/5f875f

"Yellow:
"================================================================================
"Paarthurnax     222      #ffdf87     http://www.colorhexa.com/ffdf87
 "Winterhold     101      #87875f     http://www.colorhexa.com/87875f

"Cyan:
"================================================================================
"Riverwood       152      #afd7d7     http://www.colorhexa.com/afd7d7
"Mirmulnir       109      #87afaf     http://www.colorhexa.com/87afaf
"Dawnstar        66       #5f8787     http://www.colorhexa.com/5f8787
"Chillwind       111      #87afff     http://www.colorhexa.com/87afff

"Blue:
"================================================================================
"Falkreath       103      #8787af     http://www.colorhexa.com/8787af
"Morthal         60       #5f5f87     http://www.colorhexa.com/5f5f87

"Orange:
"================================================================================
"Sahrotaar       180      #dfaf87     http://www.colorhexa.com/dfaf87
"Odahviing       130      #af5f00     http://www.colorhexa.com/af5f00
"Viinturuth      137      #af875f     http://www.colorhexa.com/af875f
"Honeystrand     208      #ff8700     http://www.colorhexa.com/ff8700

"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="alduin"

if !exists("g:alduin_Shout_Clear_Skies")
    let g:alduin_Shout_Clear_Skies = 0
endif

if !exists( "g:alduin_Shout_Aura_Whisper")
    let g:alduin_Shout_Aura_Whisper = 0
endif

if !exists( "g:alduin_Shout_Fire_Breath" )
    let g:alduin_Shout_Fire_Breath = 0
endif

if !exists("g:alduin_Shout_Animal_Allegiance")
    let g:alduin_Shout_Animal_Allegiance = 0
endif

if !exists( "g:alduin_Shout_Become_Ethereal" )
    let g:alduin_Shout_Become_Ethereal = 0
endif

if !exists( "g:alduin_Contract_Vampirism")
    let g:alduin_Contract_Vampirism = 0
endif


"================================================================================
" ALDUIN:
"================================================================================

" Editor Settings:
hi Normal           ctermfg=187     guifg=#dfdfaf     ctermbg=233      guibg=#121212     cterm=NONE     gui=NONE
hi CursorLine       ctermfg=NONE    guifg=NONE        ctermbg=234      guibg=#1c1c1c     cterm=NONE     gui=NONE
hi LineNr           ctermfg=236     guifg=#303030     ctermbg=232      guibg=#080808     cterm=NONE     gui=NONE
hi CursorLineNR     ctermfg=240     guifg=#585858     ctermbg=232      guibg=#080808     cterm=NONE     gui=NONE

" Number Column:
hi Folded           ctermfg=101     guifg=#87875f     ctermbg=16       guibg=#000000     cterm=NONE     gui=NONE
hi FoldColumn       ctermfg=109     guifg=#87afaf     ctermbg=233      guibg=#121212     cterm=NONE     gui=NONE
hi SignColumn       ctermfg=101     guifg=#87875f     ctermbg=232      guibg=#080808     cterm=NONE     gui=NONE

" WindowTab Delimiters:
hi VertSplit        ctermfg=101     guifg=#87875f     ctermbg=234      guibg=#1c1c1c     cterm=NONE     gui=NONE
hi TabLine          ctermfg=101     guifg=#87875f     ctermbg=232       guibg=#080808     cterm=NONE     gui=NONE
hi TabLineFill      ctermfg=101     guifg=#87875f     ctermbg=232      guibg=#080808     cterm=NONE     gui=NONE
hi TabLineSel       ctermfg=233     guifg=#121212     ctermbg=101      guibg=#87875f     cterm=NONE      gui=NONE
hi ColorColumn      ctermfg=NONE    guifg=NONE        ctermbg=234      guibg=#1c1c1c     cterm=NONE     gui=NONE

" File Navigation:
hi Search           ctermfg=187     guifg=#dfdfaf     ctermbg=52       guibg=#5f0000     cterm=NONE      gui=NONE
hi Directory        ctermfg=131     guifg=#af5f5f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi IncSearch        ctermfg=131     guifg=#af5f5f     ctermbg=NONE     guibg=NONE        cterm=reverse   gui=reverse

" Prompt Status:
hi StatusLine       ctermfg=233     guifg=#121212     ctermbg=101      guibg=#87875f     cterm=NONE      gui=NONE
hi StatusLineNC     ctermfg=101     guifg=#87875f     ctermbg=236      guibg=#303030     cterm=NONE      gui=NONE
hi WildMenu         ctermfg=187     guifg=#dfdfaf     ctermbg=52       guibg=#5f0000     cterm=NONE      gui=NONE
hi Title            ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi ModeMsg          ctermfg=109     guifg=#87afaf     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Question         ctermfg=95      guifg=#875f5f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi MoreMsg          ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE

" Visual Aid:
hi MatchParen       ctermfg=234     guifg=#1c1c1c     ctermbg=137      guibg=#af875f     cterm=NONE      gui=NONE
hi Visual           ctermfg=187     guifg=#dfdfaf     ctermbg=52       guibg=#5f0000     cterm=NONE      gui=NONE
hi NonText          ctermfg=101     guifg=#87875f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi SpecialKey       ctermfg=109     guifg=#87afaf     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Underlined       ctermfg=152     guifg=#afd7d7     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi WarningMsg       ctermfg=131     guifg=#af5f5f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Todo             ctermfg=130     guifg=#af5f00     ctermbg=233      guibg=#121212     cterm=reverse    gui=reverse
hi Error            ctermfg=131     guifg=#af5f5f     ctermbg=233      guibg=#121212     cterm=reverse   gui=reverse
hi ErrorMsg         ctermfg=131     guifg=#af5f5f     ctermbg=233      guibg=#121212     cterm=reverse   gui=reverse
hi VisualNOS        ctermfg=NONE    guifg=NONE        ctermbg=NONE     guibg=NONE        cterm=underline gui=underline

" Variable Types:
hi Constant         ctermfg=138     guifg=#af8787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi String           ctermfg=222     guifg=#ffdf87     ctermbg=234      guibg=#1c1c1c     cterm=NONE      gui=NONE
hi Identifier       ctermfg=109     guifg=#87afaf     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Function         ctermfg=95      guifg=#875f5f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Character        ctermfg=130     guifg=#af5f00     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Boolean          ctermfg=130     guifg=#af5f00     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Float            ctermfg=130     guifg=#af5f00     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE

" Language Constructs:
hi Statement        ctermfg=102     guifg=#878787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Operator         ctermfg=102     guifg=#878787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Comment          ctermfg=101     guifg=#87875f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi SpecialComment   ctermfg=101     guifg=#87875f     ctermbg=233      guibg=#121212     cterm=reverse   gui=reverse
hi Special          ctermfg=131     guifg=#af5f5f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Conditional      ctermfg=102     guifg=#878787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Repeat    	    ctermfg=102     guifg=#878787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Label		    ctermfg=102     guifg=#878787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Keyword		    ctermfg=102     guifg=#878787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Exception        ctermfg=102     guifg=#878787     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE

" C Like:
hi PreProc          ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Type             ctermfg=137     guifg=#af875f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Include          ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Define           ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Macro            ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi PreCondit        ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Number           ctermfg=130     guifg=#af5f00     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi StorageClass     ctermfg=137     guifg=#af875f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Structure        ctermfg=137     guifg=#af875f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi Typedef          ctermfg=137     guifg=#af875f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE

" HTML:
hi htmlItalic       ctermfg=180     guifg=#dfaf87     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE
hi htmlArg          ctermfg=95      guifg=#875f5f     ctermbg=NONE     guibg=NONE        cterm=NONE      gui=NONE

" Diff:
hi DiffAdd          ctermfg=235     guifg=#262626     ctermbg=108      guibg=#87af87     cterm=NONE      gui=NONE
hi DiffChange       ctermfg=235     guifg=#262626     ctermbg=60       guibg=#5f5f87     cterm=NONE      gui=NONE
hi DiffText         ctermfg=235     guifg=#262626     ctermbg=103      guibg=#8787af     cterm=NONE      gui=NONE
hi DiffDelete       ctermfg=235     guifg=#262626     ctermbg=131      guibg=#af5f5f     cterm=NONE      gui=NONE

" Completion Menu:
hi Pmenu            ctermfg=101     guifg=#87875f     ctermbg=232      guibg=#080808     cterm=NONE      gui=NONE
hi PmenuSel         ctermfg=187     guifg=#dfdfaf     ctermbg=52       guibg=#5f0000     cterm=NONE      gui=NONE
hi PmenuSbar        ctermfg=232     guifg=#080808     ctermbg=232      guibg=#080808     cterm=NONE      gui=NONE
hi PmenuThumb       ctermfg=232     guifg=#080808     ctermbg=232      guibg=#080808     cterm=NONE      gui=NONE

" Spelling:
hi SpellBad         ctermfg=196     guifg=#ff0000     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl
hi SpellLocal       ctermfg=65      guifg=#5f875f     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl
hi SpellCap         ctermfg=111     guifg=#87afff     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl
hi SpellRare        ctermfg=208     guifg=#ff8700     ctermbg=NONE     guibg=NONE        cterm=undercurl gui=undercurl


"hi Ignore
"hi StringDelimiter
"hi SpecialChar
"hi Tag
"hi Delimiter
"hi Debug
"hi Cursor
"hi CursorColumn

"===================================================================================================================
" AURA WHISPER:
"===================================================================================================================
if g:alduin_Shout_Aura_Whisper
    " Visual Aid:
    hi MatchParen     ctermfg=255     guifg=#eeeeee     ctermbg=234      guibg=#1c1c1c      cterm=underline gui=underline
end

"===================================================================================================================
" FIRE BREATH:
"===================================================================================================================
if g:alduin_Shout_Fire_Breath
    " Language Constructs:
    hi Special        ctermfg=124     guifg=#af0000     ctermbg=NONE     guibg=NONE     cterm=NONE       gui=NONE
    hi Title          ctermfg=131     guifg=#af5f5f     ctermbg=NONE     guibg=NONE     cterm=NONE       gui=NONE
end

"===================================================================================================================
" BECOME ETHEREAL:
"===================================================================================================================
if g:alduin_Shout_Become_Ethereal
    " Editor Settings:
    hi Normal         ctermfg=187     guifg=#dfdfaf     ctermbg=232      guibg=#080808     cterm=NONE     gui=NONE
    hi LineNr         ctermfg=236     guifg=#303030     ctermbg=16       guibg=#000000     cterm=NONE     gui=NONE
    hi CursorLine     ctermfg=NONE    guifg=NONE        ctermbg=233      guibg=#121212     cterm=NONE     gui=NONE
    hi ColorColumn    ctermfg=NONE    guifg=NONE        ctermbg=233      guibg=#121212     cterm=NONE     gui=NONE
    hi CursorLineNR   ctermfg=240     guifg=#585858     ctermbg=16       guibg=#000000     cterm=NONE     gui=NONE

    " Variable Types:
    hi String         ctermfg=222     guifg=#ffdf87     ctermbg=233      guibg=#121212        cterm=NONE      gui=NONE

    " WindowTab Delimiters:
    hi TabLineFill    ctermfg=101     guifg=#87875f     ctermbg=16       guibg=#000000     cterm=NONE     gui=NONE
    hi TabLine        ctermfg=101     guifg=#87875f     ctermbg=16       guibg=#000000     cterm=NONE     gui=NONE
    hi VertSplit      ctermfg=101     guifg=#87875f     ctermbg=233      guibg=#121212     cterm=NONE     gui=NONE

    " Number Column:
    hi SignColumn     ctermfg=101     guifg=#87875f     ctermbg=16       guibg=#000000     cterm=NONE     gui=NONE
    hi FoldColumn     ctermfg=109     guifg=#87afaf     ctermbg=232      guibg=#080808     cterm=NONE     gui=NONE

    " Visual Aid:
    hi Todo             ctermfg=130     guifg=#af5f00     ctermbg=232      guibg=#080808     cterm=reverse    gui=reverse

    " Completion Menu:
    hi Pmenu            ctermfg=101    guifg=#87875f     ctermbg=16      guibg=#000000     cterm=NONE      gui=NONE
    hi PmenuSel         ctermfg=187    guifg=#dfdfaf     ctermbg=52      guibg=#5f0000     cterm=NONE      gui=NONE
    hi PmenuSbar        ctermfg=16     guifg=#000000     ctermbg=16      guibg=#000000     cterm=NONE      gui=NONE
    hi PmenuThumb       ctermfg=16     guifg=#000000     ctermbg=16      guibg=#000000     cterm=NONE      gui=NONE
end



"===================================================================================================================
" CLEAR SKIES:
"===================================================================================================================
if g:alduin_Shout_Clear_Skies
    " Editor Settings:
    hi CursorLine     ctermfg=NONE    guifg=NONE        ctermbg=NONE     guibg=NONE        cterm=NONE     gui=NONE
end

"===================================================================================================================
" ANIMAL ALLEGIANCE:
"===================================================================================================================
if g:alduin_Shout_Animal_Allegiance
    " Variable Types:
    hi String       ctermfg=222     guifg=#ffdf87     ctermbg=NONE      guibg=NONE        cterm=NONE      gui=NONE
end

"===================================================================================================================
" CONTRACT VAMPIRISM:
"===================================================================================================================
if g:alduin_Contract_Vampirism
    let alduin_Hour = strftime("%H")

    "Day: 7am - 5pm
    if 7 <= alduin_Hour && alduin_Hour < 17
        let g:alduin_Shout_Become_Ethereal = 0

    "Ethereal: 5pm - 7am
    else 
        let g:alduin_Shout_Become_Ethereal = 1
    endif
end
