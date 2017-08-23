" Name: pyCharm-darcula
" Purpose: pyCharm darcula colorscheme
" Maintainer: Christian Ohlin Jansson (john.christian.ohlin@gmail.com)
"
" @version: 1.0.0

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "py darcula"

if version >= 700
  hi CursorLine            cterm=NONE      ctermfg=NONE ctermbg=236  gui=NONE    guifg=NONE    guibg=#313335
  hi CursorLineNr          cterm=NONE      ctermfg=102  ctermbg=237  gui=NONE    guifg=#878787 guibg=#3a3a3a
  hi CursorColumn          cterm=NONE      ctermfg=NONE ctermbg=236  gui=NONE    guifg=NONE    guibg=#313335
  hi MatchParen            cterm=bold      ctermfg=226  ctermbg=238  gui=bold    guifg=#ffff00 guibg=#444444
  hi Pmenu                 cterm=NONE      ctermfg=249  ctermbg=238  gui=NONE    guifg=#b2b2b2 guibg=#444444
  hi PmenuSel              cterm=NONE      ctermfg=255  ctermbg=059  gui=NONE    guifg=#a9b7c6 guibg=#5f5f5f
endif

" General
hi Directory               cterm=NONE      ctermfg=255  ctermbg=NONE gui=NONE    guifg=#a9b7c6 guibg=NONE
hi Cursor                  cterm=NONE      ctermfg=255  ctermbg=240  gui=NONE    guifg=#a9b7c6 guibg=#585858
hi Normal                  cterm=NONE      ctermfg=145  ctermbg=235  gui=NONE    guifg=#a9b7c6 guibg=#2b2b2b
hi NonText                 cterm=NONE      ctermfg=235  ctermbg=235  gui=NONE    guifg=#2b2b2b guibg=#2b2b2b
hi LineNr                  cterm=NONE      ctermfg=102  ctermbg=236  gui=NONE    guifg=#878787 guibg=#313335
hi StatusLine              cterm=NONE      ctermfg=249  ctermbg=238  gui=NONE    guifg=#b2b2b2 guibg=#444444
hi StatusLineNC            cterm=NONE      ctermfg=241  ctermbg=249  gui=NONE    guifg=#626262 guibg=#b2b2b2
hi VertSplit               cterm=NONE      ctermfg=236  ctermbg=236  gui=NONE    guifg=#313335 guibg=#313335
hi Folded                  cterm=NONE      ctermfg=NONE ctermbg=235  gui=NONE    guifg=NONE    guibg=#2b2b2b
hi Foldcolumn              cterm=NONE      ctermfg=NONE ctermbg=236  gui=NONE    guifg=NONE    guibg=#313335
hi Title                   cterm=NONE      ctermfg=255  ctermbg=NONE gui=NONE    guifg=#a9b7c6 guibg=NONE
hi Visual                  cterm=NONE      ctermfg=NONE ctermbg=025  gui=NONE    guifg=NONE    guibg=#005faf
hi SpecialKey              cterm=NONE      ctermfg=163  ctermbg=153  gui=NONE    guifg=NONE    guibg=NONE
hi Error                   cterm=NONE      ctermfg=160  ctermbg=235  gui=NONE    guifg=NONE    guibg=#2b2b2b
hi ErrorMsg                cterm=NONE      ctermfg=255  ctermbg=124  gui=NONE    guifg=#a9b7c6 guibg=#af0000

" Syntax
hi Comment                 cterm=NONE      ctermfg=102  ctermbg=NONE gui=NONE    guifg=#878787 guibg=NONE
hi StorageClass            cterm=NONE      ctermfg=172  ctermbg=NONE gui=NONE    guifg=#d78700 guibg=NONE
hi Operator                cterm=bold      ctermfg=172  ctermbg=NONE gui=bold    guifg=#d78700 guibg=NONE
hi Todo                    cterm=NONE      ctermfg=148  ctermbg=NONE gui=NONE    guifg=#a8c023 guibg=NONE
hi Constant                cterm=NONE      ctermfg=172  ctermbg=NONE gui=NONE    guifg=#d78700 guibg=NONE
hi String                  cterm=NONE      ctermfg=030  ctermbg=NONE gui=NONE    guifg=#008787 guibg=NONE
hi Float                   cterm=NONE      ctermfg=067  ctermbg=NONE gui=NONE    guifg=#5f87af guibg=NONE
hi Identifier              cterm=NONE      ctermfg=172  ctermbg=NONE gui=NONE    guifg=#d78700 guibg=NONE
hi Function                cterm=bold      ctermfg=145  ctermbg=NONE gui=bold    guifg=#a9b7c6 guibg=NONE
hi Type                    cterm=NONE      ctermfg=172  ctermbg=NONE gui=NONE    guifg=#d78700 guibg=NONE
hi Statement               cterm=bold      ctermfg=172  ctermbg=NONE gui=bold    guifg=#d78700 guibg=NONE
hi Keyword                 cterm=NONE      ctermfg=172  ctermbg=NONE gui=NONE    guifg=#987692 guibg=NONE
hi PreProc                 cterm=bold      ctermfg=172  ctermbg=NONE gui=bold    guifg=#d78700 guibg=NONE
hi Number                  cterm=NONE      ctermfg=067  ctermbg=NONE gui=NONE    guifg=#5f87af guibg=NONE
hi Special                 cterm=NONE      ctermfg=172  ctermbg=NONE gui=NONE    guifg=#d78700 guibg=NONE
hi Search                  cterm=underline ctermfg=NONE ctermbg=023  gui=NONE    guifg=NONE    guibg=#32593d
hi Delimiter               cterm=NONE      ctermfg=91   ctermbg=NONE gui=NONE    guifg=#8700af guibg=NONE

" Python
hi pythonBuiltin           cterm=NONE      ctermfg=104  ctermbg=NONE gui=NONE    guifg=#8787d7 guibg=NONE
hi pythonInstances         cterm=NONE      ctermfg=133  ctermbg=NONE gui=NONE    guifg=#af5faf guibg=NONE
hi pythonBoolean           cterm=bold      ctermfg=172  ctermbg=NONE gui=bold    guifg=#d78700 guibg=NONE
hi pythonStatement         cterm=bold      ctermfg=172  ctermbg=NONE gui=bold    guifg=#d78700 guibg=NONE
hi docstring               cterm=NONE      ctermfg=71   ctermbg=NONE gui=NONE    guifg=#5faf5f guibg=NONE

autocmd Filetype python call SetColors()
function SetColors()
    syn keyword pythonBoolean     True False
    syn keyword pythonStatement   as nonlocal None
    syn keyword pythonInstances   self cls
    syn match pythonStatement /,/
    syn match docstring /"""\_.\{-}"""/
endfunction

" Javascript
hi javaScriptStringS        cterm=NONE     ctermfg=065  ctermbg=NONE gui=NONE    guifg=#6a8759 guibg=NONE
hi javascriptString         cterm=NONE     ctermfg=065  ctermbg=NONE gui=NONE    guifg=#6a8759 guibg=NONE
hi javaScriptNumber         cterm=NONE     ctermfg=71   ctermbg=NONE gui=NONE    guifg=#5faf5f guibg=NONE
hi javascriptObjectLabel    cterm=NONE     ctermfg=097  ctermbg=NONE gui=NONE    guifg=#9876aa guibg=NONE
hi javascriptMethodName     cterm=NONE     ctermfg=221  ctermbg=NONE gui=NONE    guifg=#e8bf6a guibg=NONE
hi javascriptClassName      cterm=NONE     ctermfg=145  ctermbg=NONE gui=NONE    guifg=#a9b7c6 guibg=NONE

hi link                     javascriptClassSuperName    javascriptClassName

hi link                     javascriptProp              javascriptObjectLabel
hi link                     javascriptBOMHistoryProp    javascriptObjectLabel

hi link                     javascriptFunctionMethod    javascriptMethodName
hi link                     javascriptMethod            javascriptMethodName

" HTML
hi htmlArg                 cterm=NONE      ctermfg=145  ctermbg=NONE gui=NONE    guifg=#a9b7c6 guibg=NONE
hi htmlString              cterm=NONE      ctermfg=71   ctermbg=NONE gui=NONE    guifg=#5faf5f guibg=NONE
hi htmlComment             cterm=NONE      ctermfg=242  ctermbg=NONE gui=NONE    guifg=#6c6c6c guibg=NONE
hi htmlTitle               cterm=NONE      ctermfg=145  ctermbg=NONE gui=NONE    guifg=#a9b7c6 guibg=NONE
hi htmlTag                 cterm=NONE      ctermfg=221  ctermbg=NONE gui=NONE    guifg=#e8bf6a guibg=NONE

hi link                    htmlCommentPart    htmlComment
hi link                    htmlTagN           htmlTag
hi link                    htmlEndTag         htmlTag
hi link                    htmlTagName        htmlTag
hi link                    htmlSpecialTagName htmlTag

" CSS
hi cssDefinition           cterm=NONE     ctermfg=145  ctermbg=NONE gui=NONE    guifg=#a9b7c6 guibg=NONE
hi cssClassName            cterm=NONE
hi link                    lessProperty cssDefinition

" NerdTree
hi NERDTreeDirSlash        cterm=NONE      ctermfg=235  ctermbg=NONE gui=NONE    guifg=#2b2b2b guibg=NONE
hi NERDTreeExecFile        cterm=NONE      ctermfg=107  ctermbg=NONE gui=NONE    guifg=#87af5f guibg=NONE

