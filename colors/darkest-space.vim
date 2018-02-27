" darkest-space.vim
" Darkest Space - Colorscheme

" Author:  Szorfein <szorfein@gmail.com>
" Version: 1.0
" License: MIT
" Webpage: https://github.com/szorfein

if version > 580
    hi clear
    if exists('syntax_on')
        syntax reset
    endif
endif

set background=dark
set t_Co=256
let g:colors_name = 'darkest-space'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Normal

" Green
hi Delimiter ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi Statement ctermfg=010 ctermbg=none cterm=none guibg=NONE gui=NONE
hi Directory ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi Operator ctermfg=010 ctermbg=none cterm=none
hi Boolean ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi PreProc ctermfg=010 ctermbg=none cterm=none
hi Character ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi Keyword ctermfg=002 ctermbg=none cterm=none guibg=NONE gui=NONE
" Blue
hi Include ctermfg=012 ctermbg=none cterm=none
hi Function ctermfg=012 ctermbg=none cterm=none
" Yellow
hi Constant ctermfg=003 ctermbg=none cterm=none
hi Number ctermfg=011 ctermbg=none cterm=bold
" Orange (210,217)
" Red
hi Todo ctermfg=001 ctermbg=1 cterm=none
hi Exception ctermfg=009 ctermbg=none cterm=none
" Magenta
hi Normal ctermfg=253 ctermbg=none cterm=none
hi Identifier ctermfg=005 ctermbg=none cterm=none
hi Type ctermfg=013 cterm=none
" Grey (247,249,251)
"hi LineNr ctermfg=007 ctermbg=none cterm=none
hi LineNr ctermfg=007 ctermbg=none cterm=none guifg=#bdb8c1 guibg=NONE gui=NONE
hi Comment ctermfg=247 ctermbg=0 cterm=italic
hi String ctermfg=252 ctermbg=none cterm=none
hi Folded ctermfg=251 ctermbg=0 cterm=none
hi Visual ctermfg=007 ctermbg=000 cterm=none gui=none
" Brown (138,144,145)
hi Label ctermfg=138 ctermbg=none cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shell Linux

" Green
hi shOperator ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi shLoop ctermfg=010 ctermbg=none cterm=none guibg=NONE gui=NONE
hi shShellVariables ctermfg=010 ctermbg=none cterm=bold guibg=NONE gui=bold
" Yellow 
hi shStatement ctermfg=011 ctermbg=none cterm=none
" shDeref you can test -> 187,223,224,230
hi shDeref ctermfg=230 ctermbg=none cterm=none
" Magenta
hi shSetList ctermfg=013 ctermbg=none cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimL

hi vimGroup ctermfg=247 ctermbg=none cterm=bold
" Blue
hi vimHiAttrib ctermfg=012 ctermbg=none cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Typescript

" Green
hi typescriptBraces ctermfg=002 ctermbg=none cterm=bold guifg=#84ab7e guibg=NONE gui=bold
hi typescriptBracket ctermfg=010 ctermbg=none cterm=bold 
hi typescriptBlock ctermfg=010 ctermbg=none cterm=bold

" Blue
hi typescriptPropietaryMethods ctermfg=012 ctermbg=none cterm=none
hi typescriptEventListenerMethods ctermfg=012 ctermbg=none cterm=none
hi typescriptHtmlEvents ctermfg=012 ctermbg=none cterm=none

hi typescriptSource ctermfg=012 ctermbg=none cterm=none
hi typescriptFuncArg ctermfg=012 ctermbg=none cterm=none

hi typescriptFunc ctermfg=012 ctermbg=none cterm=none
hi typescriptAjaxProperties ctermfg=012 ctermbg=none cterm=none
hi typescriptHtmlElemProperties ctermfg=012 ctermbg=none cterm=none
" Magenta
hi typescriptSpecial ctermfg=013 ctermbg=none cterm=none
hi typescriptDocTags ctermfg=013 ctermbg=none cterm=none
hi typescriptDecorators ctermfg=013 ctermbg=none cterm=none
hi typescriptDOMProperties ctermfg=013 ctermbg=none cterm=none
hi typescriptIdentifier ctermfg=013 ctermbg=none cterm=bold
hi typescriptVar ctermfg=013 ctermbg=none cterm=none
hi angularRxjsComponent ctermfg=013 ctermbg=none cterm=bold 

" Yellow
hi typescriptInterface ctermfg=011 ctermfg=none cterm=none
hi typescriptNumber ctermfg=011 ctermfg=none cterm=bold

hi typescriptCommentSkip ctermfg=001 ctermbg=1 cterm=none
" Cyan
hi typescriptRef ctermfg=014 ctermbg=none cterm=none
hi typescriptRefD ctermfg=014 ctermbg=none cterm=none
hi typescriptRefS ctermfg=014 ctermbg=none cterm=none
" White
hi typescriptStringD ctermfg=007 ctermbg=none cterm=italic
hi typescriptStringS ctermfg=007 ctermbg=none cterm=italic
hi typescriptStringB ctermfg=007 ctermbg=none cterm=italic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML

" Green
hi Title ctermfg=012 ctermbg=none cterm=bold guibg=NONE gui=bold
hi htmlTag ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi htmlEndTag ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi htmlTagName ctermfg=004 ctermbg=none cterm=none
hi htmlLink ctermfg=009 ctermbg=none cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SASS - CSS

" Green
hi sassProperty ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi cssBraces ctermfg=002 ctermbg=none cterm=bold guibg=NONE gui=bold
hi sassClass ctermfg=010 ctermbg=none cterm=none
hi cssNoise ctermfg=010 ctermbg=none cterm=bold guibg=NONE gui=bold
" Magenta
hi cssTagName ctermfg=013 ctermbg=none cterm=none
hi cssAttr ctermfg=224 ctermbg=none cterm=none
hi cssColor ctermfg=247 ctermbg=none cterm=bold

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSON

" Green
hi jsonBraces ctermfg=002 ctermbg=none cterm=bold
hi jsonQuote ctermfg=006 ctermbg=none cterm=bold guibg=NONE gui=bold
hi jsonNoise ctermfg=015 ctermbg=none cterm=bold 
hi jsonKeywordMatch ctermfg=015 ctermbg=none cterm=none
hi jsonKeyword ctermfg=005 ctermbg=none cterm=bold
hi jsonString ctermfg=007 ctermbg=none cterm=italic
hi jsonNumber ctermfg=011 ctermbg=none cterm=bold
hi jsonBoolean ctermfg=002 ctermbg=none cterm=bold

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Xresource

hi xdefaultsPunct ctermfg=247 ctermbg=none cterm=bold

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python

" Green
hi pythonOperator ctermfg=002 ctermbg=none cterm=none
" Yellow
hi pythonBuiltin ctermfg=003 ctermbg=none cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
hi markdownValid ctermfg=005 ctermbg=none cterm=none
hi markdownLineStart ctermfg=006 ctermbg=none cterm=none
hi markdownCodeBlock ctermfg=014 ctermbg=none cterm=none
hi htmlValue ctermfg=002 ctermbg=none cterm=none
hi htmlPreAttr ctermfg=004 ctermbg=none cterm=none 
hi htmlBold ctermfg=003 ctermbg=none cterm=bold
hi markdownItalic ctermfg=006 ctermbg=none cterm=italic
hi markdownLineBreak ctermfg=012 ctermbg=none cterm=italic
hi markdownCode ctermfg=005 ctermbg=none cterm=italic
hi markdownLinkText ctermfg=012 ctermbg=none cterm=bold
hi markdownH1 ctermfg=015 ctermbg=none cterm=bold
hi markdownH2 ctermfg=015 ctermbg=none cterm=bold
hi markdownH3 ctermfg=015 ctermbg=none cterm=bold
hi markdownBlockquote ctermfg=001 ctermbg=000 cterm=italic
hi markdownUrl ctermfg=012 ctermbg=000 cterm=none
" markdown symbol
hi markdownUrlDelimiter ctermfg=002 ctermbg=none cterm=bold
hi markdownUrlTitleDelimiter ctermfg=002 ctermbg=none cterm=bold
hi markdownBoldDelimiter ctermfg=002 ctermbg=none cterm=bold
hi markdownBoldItalicDelimiter ctermfg=002 ctermbg=none cterm=bold
hi markdownItalicDelimiter ctermfg=002 ctermbg=none cterm=bold
hi markdownIdDelimiter ctermfg=002 ctermbg=none cterm=bold
hi markdownCodeDelimiter ctermfg=002 ctermbg=none cterm=bold
hi markdownListMarker ctermfg=002 ctermbg=none cterm=bold
hi markdownLinkTextDelimiter ctermbg=002 ctermbg=none cterm=bold
hi markdownLinkDelimiter ctermbg=002 ctermbg=none cterm=bold

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree

" Red
hi VertSplit ctermfg=001 ctermbg=none cterm=none
" Cyan
hi StatusLine ctermfg=014 ctermbg=000 cterm=none
hi StatusLineNC ctermfg=014 ctermbg=000 cterm=none
hi NERDTreeDir ctermfg=1 ctermbg=none cterm=bold
hi NERDTreeCWD ctermfg=011 ctermbg=none cterm=bold
