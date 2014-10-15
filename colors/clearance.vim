" ----------------------------------------------------------------------------
" Vim color scheme Clearance
" ----------------------------------------------------------------------
" Created by Chris Seelus (@cseelus)
"
" Please use something like the 'CSApprox' plugin to dynamically set the
" colors for 16/88/256 color terminals
"
"  normal:                             #e6eef5
"  string:                             #c1f360
"    string Delimiter                  #00a0a0
"  number:                             #cf8688
"  comments:                           #657380
"  nontext:                            #3d4449
"  keywords:                           #7dbffe
"  operators:                          #ffffff
"  class:                              #ffffb6
"  method declaration name:            #ffd2a7
"  regular expression:                 #e9c062
"    regexp alternate:                 #ff8000
"    regexp alternate 2:               #B18A3D
"  variable:                           #d3c4f7
"
" Misc colors:
"  red:                                #ff6c60
"  light red:                          #ffb6b0
"  brown:                              #e18964
"
" Interface colors:
"  background color:                   black
"  cursor (where underscore is used):  #ffa560
"  cursor (where block is used):       #b8c2cc
"  visual selection:                   #e0d689
"  current line:                       black
"  search selection:                   #e0d689
"  line number:                        #484e52


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "clearance"


" Interface
hi Normal         guifg=#e6eef5    guibg=#151616    gui=NONE
hi NonText        guifg=#3d4449    guibg=NONE       gui=NONE
hi Cursor         guifg=#151616    guibg=#b8c2cc    gui=NONE
hi LineNr         guifg=#484e52    guibg=#151616    gui=NONE
hi VertSplit      guifg=#202020    guibg=#151616    gui=NONE
hi StatusLine     guifg=#b8c2cc    guibg=#222324    gui=NONE
hi StatusLineNC   guifg=#b8c2cc    guibg=#222324    gui=NONE
hi Folded         guifg=NONE       guibg=NONE       gui=NONE
hi FoldColumn     guifg=NONE       guibg=NONE       gui=NONE
hi Title          guifg=#e6eef5    guibg=NONE       gui=NONE
hi Visual         guifg=#151616    guibg=#ffffb6    gui=NONE
hi SpecialKey     guifg=#808080    guibg=#343434    gui=NONE
hi WildMenu       guifg=#c1f360    guibg=yellow   gui=NONE
hi PmenuSbar      guifg=black      guibg=white      gui=NONE
"hi Ignore        guifg=gray       guibg=black      gui=NONE
hi Error          guifg=NONE       guibg=NONE       gui=undercurl
hi ErrorMsg       guifg=white      guibg=#ff6c60    gui=NONE
hi WarningMsg     guifg=white      guibg=#ff6c60    gui=NONE
hi Question       guifg=#c1f360    guibg=NONE       gui=NONE
" --INSERT-- etc.
hi ModeMsg        guifg=black      guibg=#b8c2cc    gui=NONE

" Vim 7.x specific colors
if version >= 700
  hi CursorLine                    guibg=#222324    gui=NONE
  hi CursorLineNR guifg=#484e52    guibg=#151616    gui=NONE
  hi CursorColumn guifg=NONE       guibg=#121212    gui=NONE
  hi MatchParen   guifg=#151616    guibg=#7dbffe    gui=NONE
  hi Pmenu        guifg=#e6eef5    guibg=#2e3132    gui=NONE
  hi PmenuSel     guifg=#151616    guibg=#7dbffe    gui=NONE
  hi Search       guifg=NONE       guibg=NONE       gui=underline
endif

" Syntax highlighting
hi Comment        guifg=#657380    guibg=NONE       gui=italic
hi String         guifg=#c1f360    guibg=#21271b    gui=NONE
hi Number         guifg=#cf8688    guibg=NONE       gui=NONE

hi Keyword        guifg=#8fc4fd    guibg=NONE       gui=bold
hi PreProc        guifg=#8fc4fd    guibg=NONE       gui=NONE
hi Conditional    guifg=#6d90d1    guibg=NONE       gui=bold

hi Todo           guifg=#8f8f8f    guibg=NONE       gui=NONE
hi Constant       guifg=#b1f7e0    guibg=NONE       gui=NONE

hi Identifier     guifg=#d3c4f7    guibg=NONE       gui=NONE
hi Function       guifg=#FFD2A7    guibg=NONE       gui=NONE
hi Type           guifg=#ffffb6    guibg=NONE       gui=NONE
hi Statement      guifg=#6d90d1    guibg=NONE       gui=NONE

hi Special        guifg=#eb7a4b    guibg=NONE       gui=NONE
hi Delimiter      guifg=#00a0a0    guibg=NONE       gui=NONE
hi Operator       guifg=#ffffff    guibg=NONE       gui=NONE

hi link Character                  Constant
hi link Boolean                    Constant
hi link Float                      Number
hi link Repeat                     Statement
hi link Label                      Statement
hi link Exception                  Statement
hi link Include                    PreProc
hi link Define                     PreProc
hi link Macro                      PreProc
hi link PreCondit                  PreProc
hi link StorageClass               Type
hi link Structure                  Type
hi link Typedef                    Type
hi link Tag                        Special
hi link SpecialChar                Special
hi link SpecialComment             Special
hi link Debug                      Special

" HTML
hi link htmlTag                   Normal
hi link htmlTagName               Keyword
hi link htmlEndTag                Identifier

" Javascript
hi link javaScriptNumber          Number

" CSS
hi link cssBraces			            Normal
hi link cssTagName		            Keyword
hi link StorageClass	            Normal
hi link cssClassName	            Type
hi link cssIdentifier	            Identifier
hi link cssColor			            Constant
hi link cssValueInteger           Number
hi link cssValueNumber            Number
hi link cssValueLength            Number
"
" Ruby
hi link rubyRegexpDelimiter       Special
hi link rubyInterpolationDelimiter Delimiter
hi link rubyStringDelimiter       Delimiter
hi link rubyClass                 Keyword
hi link rubyModule                Keyword
hi link rubyKeyword               Keyword
hi link rubyOperator              Operator
hi link rubyIdentifier            Identifier
hi link rubyInstanceVariable      Identifier
hi link rubyGlobalVariable        Identifier
hi link rubyClassVariable         Identifier
hi link rubyConstant              Type

" Slim
hi link           slimBegin             Normal
hi link           slimRubyOutputChar    Identifier

" XML
hi link xmlTag                    Keyword
hi link xmlTagName                Conditional
hi link xmlEndTag                 Identifier
