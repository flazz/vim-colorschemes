" bjorn's PHP/MySQL/JavaScript/HTML/CSS color scheme

" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #254bb8     #CEFFAB
" Yellow    #000000     #FFFFCB
" Blue      #00ff00     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #FFFFFF     #DFDFFE
" White     #EEEEEE     #FFFFFF


" ********************************************************************************
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "bjorn"


"hi Example         guifg=NONE        guibg=#ff0000        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" General colors
hi Normal           guifg=lightblue     guibg=black       gui=NONE      ctermfg=blue        ctermbg=black        cterm=NONE
hi NonText          guifg=#22ea43     guibg=black       gui=NONE      ctermfg=green       ctermbg=black        cterm=NONE

hi Cursor           guifg=black       guibg=white       gui=NONE      ctermfg=black       ctermbg=white       cterm=reverse
hi LineNr           guifg=#22ea43     guibg=black       gui=NONE      ctermfg=green    ctermbg=black        cterm=NONE

hi VertSplit        guifg=#202020     guibg=#202020     gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine       guifg=#CCCCCC     guibg=#202020     gui=italic    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     guifg=black       guibg=#202020     gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE  

hi Folded           guifg=#a0a8b0     guibg=#384048     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE


hi Visual           guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE

hi SpecialKey       guifg=#808080     guibg=#343434     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi WildMenu         guifg=#22ea43       guibg=cyan		gui=NONE      ctermfg=black       ctermbg=yellow      cterm=NONE
hi PmenuSbar        guifg=black       guibg=white       gui=NONE      ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore           guifg=gray        guibg=black       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl ctermfg=white       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=white       guibg=#FF6C60     gui=NONE      ctermfg=white       ctermbg=red         cterm=NONE
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=NONE      ctermfg=white       ctermbg=red         cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=black       guibg=#8e31c9    gui=NONE      ctermfg=black       ctermbg=cyan        cterm=NONE

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi MatchParen     guifg=#ffffff     guibg=#857b6f     gui=NONE      ctermfg=white       ctermbg=darkgray    cterm=NONE
  hi Pmenu          guifg=#ffffff     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi Search         guifg=NONE        guibg=NONE        gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting


" HTML titles (in header tags)
hi Title            guifg=white     guibg=NONE        gui=bold      ctermfg=white        ctermbg=NONE        cterm=bold

" Comments for all languages
hi Comment          guifg=white     guibg=#2263c3        gui=NONE      ctermfg=white    ctermbg=lightblue        cterm=NONE

" NON-css hex colors and all numbers for PHP, JS, and CSS   #53bcff is TURQOIS
hi Number           guifg=#53bcff     guibg=NONE        gui=underline      ctermfg=cyan     ctermbg=NONE        cterm=NONE
" CSS #hexdec color codes
hi Constant         guifg=#53bcff     guibg=NONE        gui=underline      ctermfg=cyan        ctermbg=NONE        cterm=NONE
" JS numbers only
hi javaScriptNumber  guifg=#53bcff     guibg=NONE        gui=underline      ctermfg=cyan       ctermbg=NONE        cterm=NONE

" PHP variables, JS 'var' and 'this'
hi Identifier  		guifg=#53bcff    guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE

" JS, event, null, window, location, etc.
hi Keyword          guifg=white     guibg=NONE        gui=NONE      ctermfg=white        ctermbg=NONE        cterm=NONE


" if, else, etc. for JS and PHP
hi Conditional      guifg=white     guibg=NONE        gui=BOLD      ctermfg=white        ctermbg=NONE        cterm=NONE
" PHP and JS loops for/while loops, etc
hi Repeat           guifg=white     guibg=NONE        gui=BOLD      ctermfg=white        ctermbg=NONE        cterm=NONE
" PHP <?php ?> {} [] 
hi Delimiter        guifg=white     guibg=NONE        gui=NONE      ctermfg=white        ctermbg=NONE        cterm=NONE


" all PHP/MySQL functions, JS 'function' {} and [], CSS #div and .class and {}   #22ea43 is GREEN 
hi Function  		guifg=#22ea43     guibg=NONE        gui=NONE      ctermfg=green        ctermbg=NONE        cterm=NONE
" PHP include function only
hi Include         guifg=#22ea43     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
" PHP echo function only
hi Define          guifg=#22ea43     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
" CSS :hover, HTML tab whitespace, 
hi PreProc          guifg=#22ea43     guibg=NONE        gui=NONE      ctermfg=green        ctermbg=NONE        cterm=NONE


" PHP == < > !=  
hi Statement        guifg=white     guibg=NONE        gui=BOLD      ctermfg=white   ctermbg=NONE        cterm=BOLD

" CSS !important, JS text and background in HTML pages that isn't a variable, string, etc.
hi Special          guifg=white     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE

" PHP $ = . ++ empty !, JS 'new'		#8e31c9 is PURPLE
hi Operator    		guifg=#8e31c9     guibg=NONE        gui=NONE      ctermfg=magenta       ctermbg=NONE        cterm=NONE
" CSS ATTRIBUTES
hi StorageClass    guifg=#8e31c9     guibg=NONE        gui=NONE      ctermfg=magenta       ctermbg=NONE        cterm=NONE
" HTML tags (rel, title, etc.), JS 'Date' 'Array', CSS attribute values (relative, absolute, etc.) 
hi Type             guifg=#8e31c9     guibg=NONE        gui=bold      ctermfg=magenta      ctermbg=NONE        cterm=NONE

" All strings
hi String           guifg=blue     guibg=NONE        gui=italic      ctermfg=blue       ctermbg=NONE        cterm=italic

" Special for HTML		#d2ff1c is YELLOW
hi htmlTag         guifg=white     guibg=NONE        gui=NONE      ctermfg=yellow       ctermbg=NONE        cterm=NONE
hi htmlEndTag      guifg=white     guibg=NONE        gui=NONE      ctermfg=yellow       ctermbg=NONE        cterm=NONE
hi htmlTagName     guifg=#d2ff1c     guibg=NONE        gui=NONE      ctermfg=yellow       ctermbg=NONE        cterm=NONE
" JS <script></script> only
hi Exception       guifg=#d2ff1c     guibg=NONE        gui=NONE      ctermfg=yellow       ctermbg=NONE        cterm=NONE

" JAVASCRIPT FALSE/TRUE statement
hi Boolean         guifg=white     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE





" COLOR DEFINITIONS BY ME

hi Blue_bg        guifg=#000000    guibg=#0000ff        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE
hi Green_bg        guifg=#000000     guibg=#00FF00        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE
hi Red_bg       guifg=#000000     guibg=#FF0000        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE
" END COLOR DEFS




" Special for XML
hi link xmlTag          Red_bg 
hi link xmlTagName      Green_bg
hi link xmlEndTag       Blue_bg




" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Red_bg 
hi link javaCommentTitle      Green_bg 
hi link javaDocTags           Blue_bg 
hi link javaDocParam          Red_bg 
hi link javaDocSeeTagParam    Green_bg 

hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE




" SEEMINGLY NOTHING
hi link Character       Red_bg 
hi link Label           Green_bg
hi link Macro           Blue_bg
hi link Float           Green_bg
hi link PreCondit       Blue_bg
hi link Structure       Green_bg
hi link Typedef         Blue_bg
hi link Tag             Red_bg
hi link SpecialChar     Red_bg
hi link SpecialComment  Green_bg
hi link Debug           Blue_bg

hi Todo             guifg=#ff0000     guibg=#ff0000        gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE
