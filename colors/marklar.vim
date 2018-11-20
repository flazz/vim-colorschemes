" ------------------------------------------------------------------
" Copyright:	2006,2018 SM Smithfield
" Author:	SM Smithfield (smDOTsmithfieldATgmailDOTcom)
" Description:  Vim colorscheme file.
" Filename:	marklar.vim
" Install:      Put this file in the users colors directory (~/.vim/colors)
"               load it with :colorscheme marklar
" Version:      0.7
" ------------------------------------------------------------------
hi clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "marklar"
" ------------------------------------------------------------------
" palette
" hi markred guifg=#d10037 guibg=#452a2b
" hi markorg guifg=#f9a500 guibg=#4f7232
" hi markyll guifg=#ffde00 guibg=#839925
" hi markgrn guifg=#27bd11 guibg=#148132
" hi marksky guifg=#00baff guibg=#047686
" hi markblu guifg=#0044ef guibg=#044f80
" hi markdgo guifg=#1e4bba guibg=#05495a
" hi markvio guifg=#91179b guibg=#36386f
" hi markfus guifg=#c52b9b guibg=#58436d
" hi markmgn guifg=#FF7070 guibg=#832a5b
" hi markpnk guifg=#e751ce guibg=#835293
" ------------------------------------------------------------------
" hi Red    guifg=#ff0000 guibg=NONE gui=bold
" hi White  guifg=#e0e0e0 guibg=NONE gui=bold
" hi Blue   guifg=#0000af guibg=NONE gui=bold
" hi Yellow guifg=#ffff40 guibg=NONE gui=bold
" ------------------------------------------------------------------
" hi link VimwikiHeader1 markred
" hi link VimwikiHeader2 markorg
" hi link VimwikiHeader3 markyll
" hi link VimwikiHeader4 markgrn
" hi link VimwikiHeader5 marksky
" hi link VimwikiHeader6 markblu
" ------------------------------------------------------------------
" let g:rainbow_levels = [
    " \{'guibg': '#452a2b'},
    " \{'guibg': '#4f7232'},
    " \{'guibg': '#839925'},
    " \{'guibg': '#148132'},
    " \{'guibg': '#047686'},
    " \{'guibg': '#044f80'},
    " \{'guibg': '#05495a'},
    " \{'guibg': '#36386f'},
    " \{'guibg': '#58436d'},
    " \{'guibg': '#832a5b'},
    " \{'guibg': '#835293'}]
" ------------------------------------------------------------------
if !exists("s:main")

    " OPTIONS: 
    " default values
    " use globals to override. 
    " only access for version <700
    if !exists("g:marklar_bold_opt")
     let g:marklar_bold_opt = 0
     let g:marklar_ignore_opt = 1
     let g:marklar_underline_opt = 0
     let g:marklar_conceal_opt = 1
    endif

    function! s:main()

        " globals determine script values
        " script values are used in defining the highlights

        let s:bold = 'none'
        if g:marklar_bold_opt==1
            let s:bold = 'bold'
        endif

        " nearly invisible
        let s:ignore = '#467C5C'
        if g:marklar_ignore_opt==1
            " completely invisible
            let s:ignore = 'bg'
        endif

        let s:underline = 'none'
        if g:marklar_underline_opt==1
            let s:underline = 'underline'
            if s:bold == 'bold'
                let s:underline = 'bold,underline'
            endif
        else
            if s:bold == 'bold'
                let s:underline = 'bold'
            endif
        endif

        let s:conceal = 'Comment'
        if g:marklar_conceal_opt==1
            let s:conceal = 'Ignore'
        endif

        " if s:heat_opt && s:heat_opt == 1
            " execute "hi PreProc         guifg=#e751ce guibg=NONE    gui=".s:bold
            " execute "hi Statement       guifg=#f9a500 guibg=NONE    gui=".s:bold
            " execute "hi Type            guifg=#ffde00 guibg=NONE    gui=".s:bold
            " execute "hi Special         guifg=#27bd11 guibg=NONE    gui=".s:bold
            " execute "hi Identifier      guifg=#00baff guibg=NONE    gui=".s:bold
            " execute "hi MatchParen      guifg=#0044ef guibg=#044f80 gui=".s:bold
            " execute "hi Constant        guifg=#00baff guibg=NONE    gui=".s:bold
            " execute "hi Underlined      guifg=#01288a guibg=NONE    gui=".s:underline
            " execute "hi Bleached        guifg=#b76181 guibg=#480920 gui=".s:bold
        " elseif  s:cold_opt && s:cold_opt == 1
            " execute "hi PreProc         guifg=#25B9F8 guibg=bg      gui=".s:bold." ctermfg=2"
            " execute "hi Statement       guifg=#00FFFF guibg=NONE    gui=".s:bold." ctermfg=3  cterm=bold"
            " execute "hi Type            guifg=#FFFF00 guibg=NONE    gui=".s:bold." ctermfg=6  cterm=bold"
            " execute "hi Special         guifg=#acac27 guibg=bg      gui=".s:bold." ctermfg=33 cterm=bold"
            " execute "hi Identifier      guifg=#38FF56 guibg=NONE    gui=".s:bold." ctermfg=8  cterm=bold"
            " execute "hi MatchParen      guifg=#38ff56 guibg=#0000ff gui=".s:bold." ctermbg=4"
            " execute "hi Constant        guifg=#FFFFFF guibg=NONE                   ctermfg=7  cterm=NONE"
            " execute "hi Underlined      guifg=#FF80FF guibg=NONE    gui=".s:underline." ctermfg=2  cterm=".s:underline
            " execute "hi Bleached        guifg=#b9eece guibg=NONE    gui=".s:bold
        " apple 16-color terminal
        if &term=="xterm-color"
            execute "hi PreProc         guifg=#25B9FF guibg=bg      gui=NONE              ctermfg=2"
            execute "hi Statement       guifg=#FFa000 guibg=NONE    gui=".s:bold."        ctermfg=6 cterm=".s:bold
            execute "hi Type            guifg=#FFFF00 guibg=NONE    gui=".s:bold."        ctermfg=3 cterm=".s:bold
            execute "hi Special         guifg=#38FF56 guibg=bg      gui=".s:bold."        ctermfg=2 cterm=".s:bold
            execute "hi Identifier      guifg=#00FFFF guibg=NONE    gui=".s:bold."        ctermfg=8 cterm=".s:bold
            execute "hi Constant        guifg=#FFFFFF guibg=NONE                          ctermfg=7 cterm=NONE"
            execute "hi Underlined      guifg=#FF7070 guibg=NONE    gui=".s:underline."   ctermfg=8 cterm=".s:underline
            execute "hi Bleached        guifg=#b9eece guibg=NONE    gui=".s:bold."        ctermfg=2 cterm=".s:bold
        else
            execute "hi PreProc         guifg=#25B9FF guibg=bg      gui=NONE              ctermfg=75"
            execute "hi Statement       guifg=#FFa000 guibg=NONE    gui=".s:bold."        ctermfg=214 cterm=".s:bold
            execute "hi Type            guifg=#FFFF00 guibg=NONE    gui=".s:bold."        ctermfg=11  cterm=".s:bold
            execute "hi Special         guifg=#38FF56 guibg=bg      gui=".s:bold."        ctermfg=10  cterm=".s:bold
            execute "hi Identifier      guifg=#00FFFF guibg=NONE    gui=".s:bold."        ctermfg=14  cterm=".s:bold
            execute "hi Constant        guifg=#FFFFFF guibg=NONE                          ctermfg=15  cterm=NONE"
            execute "hi Underlined      guifg=#FF7070 guibg=NONE    gui=".s:underline."  ctermfg=203 cterm=".s:underline
            execute "hi Bleached        guifg=#b9eece guibg=NONE    gui=".s:bold."        ctermfg=158 cterm=".s:bold
        endif
                     hi Comment         guifg=#00BBBB guibg=NONE                   ctermfg=36 cterm=none
                     hi Tag             guifg=#7CFC94 guibg=NONE    gui=bold       ctermfg=42 cterm=bold
                     hi Todo            guifg=#FF0000 guibg=#880000                ctermfg=6 ctermbg=4 cterm=NONE
                     hi! link Delimiter PreProc
                     hi! link Bold Tag

        execute "hi Ignore           guifg=".s:ignore." guibg=NONE               ctermfg=36"

        hi Cursor           guifg=NONE    guibg=#FF0000                      ctermbg=1
        hi DiffAdd          guifg=NONE    guibg=#136769            ctermfg=4 ctermbg=7 cterm=NONE
        hi DiffDelete       guifg=NONE    guibg=#50694A            ctermfg=1 ctermbg=7 cterm=NONE
        hi DiffChange       guifg=fg      guibg=#00463c gui=NONE   ctermfg=4 ctermbg=2 cterm=NONE
        hi DiffText         guifg=#7CFC94 guibg=#00463c gui=bold   ctermfg=4 ctermbg=3 cterm=NONE
        hi Directory        guifg=#25B9F8 guibg=NONE               ctermfg=2
        hi Error            guifg=#f9a500 guibg=#4f7232            ctermfg=178 ctermbg=130 cterm=bold
        hi ErrorMsg         guifg=#8eff2e guibg=#204d40
        hi FoldColumn       guifg=#00BBBB guibg=#204d40
        hi Folded           guifg=#44DDDD guibg=#204d40            ctermfg=6 ctermbg=23 cterm=bold
        hi IncSearch                      guibg=#52891f gui=bold
        hi LineNr           guifg=#38ff56 guibg=#204d40
        hi ModeMsg          guifg=#FFFFFF guibg=#0000FF            ctermfg=29 ctermbg=4 cterm=bold
        hi MoreMsg          guifg=#FFFFFF guibg=#00A261            ctermfg=7  ctermbg=2 cterm=bold
        hi NonText          guifg=#00bbbb guibg=#204d40            ctermfg=2
        hi Normal           guifg=#71C293 guibg=#06544a
        hi Question         guifg=#FFFFFF guibg=#00A261
        hi Search           guifg=NONE    guibg=#0f374c            ctermfg=3 ctermbg=0 cterm=bold
        hi SignColumn       guifg=#00BBBB guibg=#204d40
        hi SpecialKey       guifg=#00FFFF guibg=#266955
        hi StatusLine       guifg=#245748 guibg=#71C293 gui=NONE   cterm=reverse
        hi StatusLineNC     guifg=#245748 guibg=#689C7C gui=NONE
        hi Title            guifg=#7CFC94 guibg=NONE    gui=bold   ctermfg=2 cterm=bold
        hi Visual                         guibg=#0B7260 gui=NONE   ctermbg=29 cterm=Reverse
        hi WarningMsg       guifg=#FFFFFF guibg=#FF0000            ctermfg=7 ctermbg=1 cterm=bold
        hi WildMenu         guifg=#20012e guibg=#00a675 gui=bold   ctermfg=NONE ctermbg=NONE cterm=bold
        "
        if version >= 700
            hi SpellBad     guisp=#FF0000                          ctermfg=0 cterm=reverse 
            hi SpellCap     guisp=#0000FF                          ctermfg=0 cterm=reverse 
            hi SpellRare    guisp=#ff4046                          ctermfg=0 cterm=reverse 
            hi SpellLocal   guisp=#000000                          ctermbg=0
            hi Pmenu        guifg=#00ffff guibg=#000000            ctermbg=0 ctermfg=6
            hi PmenuSel     guifg=#ffff00 guibg=#000000 gui=bold   ctermfg=3 cterm=bold 
            hi PmenuSbar    guifg=#000000 guibg=#0000ff                      ctermbg=6
            hi PmenuThumb   guifg=#000000 guibg=#ff0000                      ctermfg=3
            hi ColorColumn  guibg=#096354                                    ctermbg=30
            hi CursorColumn guibg=#096354                                    ctermbg=30
            hi CursorLine   guibg=#096354                                    ctermbg=30
            hi CursorLineNr guifg=#ffde00 guibg=#839925
            hi Tabline      guifg=bg      guibg=fg      gui=NONE              cterm=reverse,bold ctermfg=NONE ctermbg=NONE
            hi TablineSel   guifg=#20012e guibg=#00a675 gui=bold
            hi TablineFill  guifg=#689C7C
        endif
        if version >= 800
            execute "hi! link Conceal ".s:conceal
        endif
        if version >= 801
            hi Terminal         guifg=#71C293 guibg=#06544a
            hi StatusLineTerm   guifg=#0044ef guibg=#044f80
            hi StatusLineTermNC guifg=#1e4bba guibg=#05495a
            hi ToolbarLine      guifg=#0044ef guibg=#044f80
            hi ToolbarButton    guifg=#00baff guibg=#047686
            hi QuickfixLine     guifg=#00baff guibg=#047686
            " hi debugPC 
            " hi debugBreakpoint 
        endif
    endfunction                       
                                      
    if version >= 700                 
                                      
        " initialize from global values
        let s:opts = {'bold': g:marklar_bold_opt,
                    \ 'ignore': g:marklar_ignore_opt,
                    \ 'underline': g:marklar_underline_opt,
                    \ 'conceal': g:marklar_conceal_opt,
                    \ 'heat': 0,
                    \ 'cold': 0 }
        
        " push dict back to globals
        function! s:push_to_global()
            let g:marklar_bold_opt      = s:opts['bold']
            let g:marklar_ignore_opt    = s:opts['ignore']
            let g:marklar_underline_opt = s:opts['underline']
            let g:marklar_conceal_opt   = s:opts['conceal']
        endfunction

        function! s:print_opts(...)
            let d = a:000
            if len(a:000) == 0
                let d = keys(s:opts)
            endif
            for k in d
                echo k.': '.s:opts[k]
            endfor
            " echo 'bold: '.s:bold
            " echo 'ignore: '.s:ignore
            " echo 'underline: '.s:underline
            " echo 'conceal: '.s:conceal
        endfunction

        function! s:Marklar(...)
            let args = a:000
            if len(args) == 0
                call s:print_opts()
            else
                while len(args)>0
                    " take first arg
                    let k = args[0]
                    let args = args[1:]
                    " process key
                    if k =~ '\a\+!'
                        " is bang
                        let k = strpart(k,0,strlen(k)-1)
                        let s:opts[k] = !s:opts[k]
                        call s:push_to_global()
                        call s:main()
                    elseif k =~ '\a\+?'
                        " is quiz
                        let k = strpart(k,0,strlen(k)-1)
                        call s:print_opts(k)
                    " another arg?
                    elseif len(args)
                        " presume value
                        let v = args[0]
                        let args = args[1:]
                        " legal value?
                        if v == 0 || v == 1
                            " assign key<-val
                            let s:opts[k] = v
                            call s:push_to_global()
                            call s:main()
                        else
                            echoerr "(".v.") Bad value. Expected 0 or 1."
                        endif
                    else
                    endif
                endwhile
            endif
        endfunction
        " uses dict.
        if version >= 700                 
            command! -nargs=*  Marklar  :call s:Marklar(<f-args>)
        endif
    endif
endif

call s:main()
