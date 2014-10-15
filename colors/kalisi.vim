
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Name:           kalisi
" Author:         Arthur Jaron
" EMail:          hifreeo@gmail.com
" Version:        0.6.0
" Last Change:    30.07.2014 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:colors_name = "kalisi"

" default is 'light'
if &background == "dark"

  hi Normal 	      guifg=#b5b5b5    guibg=#404042  gui=none

  " Syntax ####################################################################

  hi Comment 	      guifg=#797772
  hi CommentURL       guifg=#6090c0    guibg=NONE     gui=underline
  hi CommentEmail     guifg=#6090c0    guibg=NONE     gui=underline

  hi Constant 	      guifg=#94be54                   gui=bold
  hi String 	      guifg=#ffc63f                   gui=none
  hi Character        guifg=#c85bff                   gui=none
  hi Number           guifg=#ffad3f
  hi Boolean 	      guifg=#94be54                   gui=none
  hi Float            guifg=#fff650
  
  " HTML Closing tags </...> 
  " Vim variables
  hi Identifier       guifg=#29a3ac                   gui=none
  " HTML Starting tags <...>
  hi Function         guifg=#7ad6ff                   gui=none

  hi Statement 	      guifg=#94be54                   gui=bold
  hi Conditional      guifg=#7aa6c2                   gui=bold
  hi Repeat           guifg=#7aa6c2   guibg=NONE      gui=bold
  hi Label            guifg=#409a50                   gui=bold
  " operator cpp: sizeof()
  hi Operator         guifg=#658aa5   guibg=NONE      gui=none
  "html: special keywords in jscript: window log 
  hi Keyword	      guifg=#adffdd                   gui=none
  hi Exception        guifg=#2080c0   guibg=NONE      gui=bold

  hi PreProc 	      guifg=#2288ee                   gui=bold
  hi Include 	      guifg=#2288ee                   gui=bold
  hi Define           guifg=#2288ee                   gui=bold
  hi Macro            guifg=#a68ad2                   gui=none
  hi PreCondit        guifg=#7aa6c2                   gui=none

  " vim: lots of links
  " c: int char void
  " html: class href id
  " txt: headline
  " hi Type             guifg=#5080b0 gui=none
  hi Type             guifg=#5d8fbe gui=none
  hi StorageClass     guifg=#55aa85 gui=italic
  " c: struct
  " py: and is not Error Exception
  hi Structure        guifg=#557a95 gui=none
  " py: 
  " cpp: static cast
  " hi Typedef          guifg=#658aa5                   gui=italic
  hi Typedef          guifg=#55aa85                   gui=none

  " hi Special		guifg=#adffdd gui=none
                            " #cae682
  hi Special	      guifg=#e7f6da gui=none
  hi SpecialChar      guifg=#6a96ff                    gui=none
  hi SpecialKey	      guifg=#d6f3d8 guibg=#343434 gui=none

  hi Tag              guifg=#00c0ff                   gui=bold
  hi Delimiter        guifg=#7a9acd   guibg=NONE      gui=none

  hi SpecialComment   guifg=#6090c0                   gui=bold
  hi Debug            guifg=#ddb800   guibg=NONE      gui=bold

  hi Underlined       guifg=#b5b5b5   guibg=NONE      gui=underline

  " Misc syntax ###############################################################
  
  " hi Todo         guifg=#fff63f    guibg=#61563b  gui=bold
  hi Todo             guifg=#fff63f    guibg=#736a3f  gui=bold

  hi Directory        guifg=#d0d0d0   guibg=NONE      gui=bold

  hi DiffAdd                  guibg=#384b38
  hi DiffChange               guibg=#383a4b
  hi DiffText         guifg=#e0e0e0 guibg=#484898
  hi DiffDelete       guifg=#766522 guibg=#3b3b3b

  hi SpellBad         guisp=#e83030 gui=undercurl
  hi SpellCap         guisp=#476afc gui=undercurl
  hi SpellLocal       guisp=#48b040 gui=undercurl
  hi SpellRare        guisp=#eeeeee gui=undercurl

  " User interface ############################################################
  
  hi Search           guifg=#000000 guibg=#b8ea00 gui=bold
  hi IncSearch        guifg=#f8cf00 guibg=#000000

  hi Error            guifg=#e5a5a5    guibg=#602020  gui=bold,underline
  hi ErrorMsg         guifg=#f5c5c5    guibg=#901010  gui=bold
  hi WarningMsg       guifg=#edc830    guibg=NONE     gui=none
  hi WildMenu         guifg=#000000   guibg=#A6DB29   gui=none
  hi Question         guifg=#000000   guibg=#A6DB29   gui=none
  hi MoreMsg          guifg=#000000   guibg=#A6DB29   gui=none
  hi ModeMsg          guifg=#000000   guibg=#A6DB29   

  hi Cursor           guibg=#d80000 guifg=#ffffff 
  hi CursorLine       guibg=#373737
  hi CursorLineNr     guifg=#d0d0d0 guibg=#482020     gui=bold
  hi CursorColumn     guibg=#373737
  hi MatchParen       guifg=#202020    guibg=#8fca24  gui=none

  hi Visual           guibg=#3a4d6e                   gui=none
  hi VisualNOS                         guibg=#4a4d4e  gui=none

  hi Pmenu 	      guifg=#b5b5b5    guibg=#303032
  hi PmenuSel         guifg=#222222    guibg=#A6DB29  gui=none
  hi PmenuSbar                         guibg=#a0a0a0
  hi PmenuThumb                        guibg=#555555

  hi SignColumn       guifg=#A6E22E    guibg=#303032
  hi FoldColumn       guifg=#b0b8c0    guibg=#373d43   gui=bold
  hi Folded 	      guifg=#b0b8c0    guibg=#373d43 gui=none


  hi NonText          guifg=#958b7f guibg=#303030 gui=none
  hi Conceal          guifg=#f6f3e8    guibg=#303030

  hi LineNr 	      guifg=#857b6f guibg=#303032 gui=none
  hi StatusLine       guifg=#f6f3e8 guibg=#222222 gui=none
  " hi StatusLineNC     guifg=#857b6f guibg=#2b2b2b gui=none
  hi StatusLineNC     guifg=#857b6f guibg=#3b3b3b gui=none

  hi VertSplit        guifg=#222222 guibg=#2b2b2b gui=none
  hi Title            guifg=#ffffff   guibg=NONE      gui=bold
  
  hi TabLine          guifg=#afd700  guibg=#005f00  gui=none
  hi TabLineSel       guifg=#005f00  guibg=#afd700  gui=none
  hi TabLineFill      guifg=#303030  guibg=#a0a0a0  gui=none

  " Language Specific ##########################################################
  
  " Python (non-default syntax file)
  hi PythonOperator      guifg=#7aa6c2 gui=none
  hi Docstring        guifg=#6a7a8d    guibg=NONE     gui=none

  " Embedded inside HTML <script>
  hi javaScript       guifg=#a5c5b5  guibg=NONE       gui=none

  " htmldjango
  hi DjangoBlock      guifg=#20ba50                   gui=none
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   SpecialChar

  " Plugins ####################################################################
  
  hi CtrlPMatch       guifg=#000000 guibg=#f8cf00 gui=none

else
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Light
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

  hi Normal           guifg=#000000   guibg=#f5f7f5   gui=NONE


  " Syntax ####################################################################
  
  hi Comment          guifg=#70a0d0   guibg=NONE      gui=NONE
  hi CommentURL       guifg=#70a0ff    guibg=NONE     gui=underline
  hi CommentEmail     guifg=#70a0ff    guibg=NONE     gui=underline
  hi SpecialComment   guifg=#6090c0                   gui=bold

  hi Constant         guifg=#9054c7   guibg=NONE      gui=bold
  hi String           guifg=#0060a0   guibg=NONE
  hi Character        guifg=#9054c7   guibg=NONE      gui=none
  hi Number           guifg=#0070c0   guibg=NONE
  hi Boolean          guifg=#9054c7   guibg=NONE      gui=bold
  hi Float            guifg=#00a0a0   guibg=NONE

  hi Identifier       guifg=#202090   guibg=NONE      gui=none
  hi Function         guifg=#1177dd                   gui=none

  hi Statement        guifg=#66b600   guibg=NONE      gui=bold
  hi Conditional      guifg=#1177dd   guibg=NONE      gui=bold
  hi Repeat           guifg=#1177dd   guibg=NONE      gui=bold
  hi Label            guifg=#007700                   gui=bold
  hi Operator         guifg=#274aac   guibg=NONE      gui=none
  hi Exception        guifg=#005090   guibg=NONE      gui=bold

  hi PreProc          guifg=#d80050    guibg=NONE     gui=bold
  hi Include          guifg=#d80050    guibg=NONE     gui=bold
  hi Define           guifg=#03b192  guibg=NONE      gui=none
  hi Macro            guifg=#d80000   guibg=NONE      gui=bold
  hi PreCondit        guifg=#1177dd                   gui=none

  hi Type             guifg=#f47300   guibg=NONE      gui=none
  hi StorageClass     guifg=#f47300                   gui=italic,bold
  hi Structure        guifg=#274aac   guibg=NONE      gui=none
  hi Typedef          guifg=#274aac                   gui=italic

  hi Special          guifg=#99419a    guibg=NONE     gui=bold
  hi SpecialChar      guifg=#F92672                   gui=bold
  hi SpecialKey       guifg=#99419a    guibg=#e0e0e0  gui=bold
  hi Tag              guifg=#0010ff                   gui=bold
  hi Delimiter        guifg=#d80050   guibg=NONE      gui=none
  hi Debug            guifg=#ddb800   guibg=NONE      gui=bold

  hi Underlined       guifg=#202020   guibg=NONE      gui=underline

  hi Error            guifg=#d80000    guibg=#d8d0d0  gui=bold,underline
  hi ErrorMsg         guifg=#d80000    guibg=#d8d0d0  gui=bold


  " Misc syntax ###############################################################
  "
  hi Todo             guifg=#000000    guibg=#ffff00  gui=bold
  
  hi Directory        guifg=#0060a0   guibg=NONE      gui=bold
  " html: special keywords in jscript: window log 
  hi Keyword          guifg=#66b600                   gui=none
  hi Title            guifg=#1060a0   guibg=NONE      gui=bold
  hi NonText          guifg=#000000   guibg=#f0f0f0   gui=none
 
  hi Conceal          guifg=#303030    guibg=#e0e8e0

  hi DiffAdd                           guibg=#ddffdd 
  hi DiffChange                        guibg=#e8e8e8 
  hi DiffText         guifg=#000055    guibg=#ddddff
  hi DiffDelete       guifg=#eecccc    guibg=#ffdddd

  hi SpellBad         guisp=#d80000 gui=undercurl
  hi SpellCap         guisp=#274aac gui=undercurl
  hi SpellLocal       guisp=#006600 gui=undercurl
  hi SpellRare        guisp=#555555 gui=undercurl

  " User interface ############################################################

  hi Visual                           guibg=#d0eeff   gui=NONE
  hi VisualNOS                        guibg=#d8d8d8

  hi Cursor           guifg=#ffffff   guibg=#ff0000   gui=NONE
  hi CursorLineNr     guifg=#e0e0e0   guibg=#c9c4c4   gui=bold
  hi Cursorline                       guibg=#eaeaea
  hi CursorColumn                     guibg=#eaeaea
  hi MatchParen       guifg=#ffffff   guibg=#ffd030 gui=none

  hi Search           guifg=#000000   guibg=#b8ea00 gui=bold
  hi IncSearch        guifg=#f8cf00   guibg=#000000

  hi LineNr           guifg=#707070   guibg=#e0e0e0   gui=NONE

  hi StatusLine       guifg=#e0e0e0   guibg=#707070   gui=NONE
  hi StatusLineNC     guifg=#e0e0e0   guibg=#a0a0a0   gui=NONE
  hi VertSplit        guifg=#a0a0a0   guibg=#a0a0a0   gui=NONE
  hi Folded           guifg=#707070   guibg=#e8e8e8   gui=NONE
  hi FoldColumn       guifg=#707070   guibg=#b0b0b0   gui=bold


  hi WildMenu         guifg=#000000   guibg=#A6DB29   gui=none
  hi Question         guifg=#000000   guibg=#A6DB29   gui=none
  hi MoreMsg          guifg=#000000   guibg=#A6DB29   gui=none

  hi ModeMsg          guifg=#000000   guibg=#A6DB29
  hi WarningMsg       guifg=#d82020    guibg=NONE     gui=bold


  hi TabLine          guifg=#afd700    guibg=#005f00  gui=none
  hi TabLineSel       guifg=#005f00    guibg=#afd700  gui=none
  hi TabLineFill      guifg=#303030    guibg=#a0a0a0  gui=none

  hi SignColumn       guifg=#A6E22E guibg=#c9c4c4

  hi Pmenu            guifg=#000000    guibg=#e8e8e8  gui=NONE
  hi PmenuSel         guifg=#000000    guibg=#A6DB29  gui=bold
  hi PmenuSbar                         guibg=#a0a0a0
  hi PmenuThumb                        guibg=#555555


  " Language Specific ##########################################################
  
  " Python (non-default syntax file)
  hi PythonOperator   guifg=#0167dd                   gui=none
  hi Docstring        guifg=#004B84    guibg=NONE     gui=none

  " Embedded inside HTML <script>
  hi javaScript       guifg=#486050  guibg=NONE       gui=none

  " htmldjango
  hi DjangoBlock      guifg=#004a00                   gui=bold
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   Typedef          

  " Plugins ####################################################################
  " (more to come)
  
  " CtrlP
  hi link CtrlPMatch    Search

endif 

" old signature colors
" #9054c7
" #8b038d
" #ff00ae
" #fc548f 
" #20a033
" #2288ee
" #004eff
" #0006ff
" #274aac
" #3a5d8e
" #1060a0
" #ededed
" #d0eeff
" #c0deef
" #eeee00
" #66b600 
" #aaea00
" #202090
" #274aac
" #aaea00
" #005500
" #6090c0
" #6090ff
" #202090
" #005090 
" #20a040
" #d8ff00
