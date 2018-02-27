"      ___           ___           ___           ___           ___           ___           ___           ___         ___
"     /__/\         /  /\         /  /\         /__/\         /  /\         /  /\         /  /\         /  /\       /  /\
"    |  |::\       /  /::\       /  /::\        \  \:\       /  /:/_       /  /:/        /  /::\       /  /::\     /  /:/\
"    |  |:|:\     /  /:/\:\     /  /:/\:\        \  \:\     /  /:/ /\     /  /:/        /  /:/\:\     /  /:/\:\   /  /:/ /\
"  __|__|:|\:\   /  /:/  \:\   /  /:/  \:\   _____\__\:\   /  /:/ /::\   /  /:/  ___   /  /:/~/::\   /  /:/~/:/  /  /:/ /:/_
" /__/::::| \:\ /__/:/ \__\:\ /__/:/ \__\:\ /__/::::::::\ /__/:/ /:/\:\ /__/:/  /  /\ /__/:/ /:/\:\ /__/:/ /:/  /__/:/ /:/ /\
" \  \:\~~\__\/ \  \:\ /  /:/ \  \:\ /  /:/ \  \:\~~\~~\/ \  \:\/:/~/:/ \  \:\ /  /:/ \  \:\/:/__\/ \  \:\/:/   \  \:\/:/ /:/
"  \  \:\        \  \:\  /:/   \  \:\  /:/   \  \:\  ~~~   \  \::/ /:/   \  \:\  /:/   \  \::/       \  \::/     \  \::/ /:/
"   \  \:\        \  \:\/:/     \  \:\/:/     \  \:\        \__\/ /:/     \  \:\/:/     \  \:\        \  \:\      \  \:\/:/
"    \  \:\        \  \::/       \  \::/       \  \:\         /__/:/       \  \::/       \  \:\        \  \:\      \  \::/
"     \__\/         \__\/         \__\/         \__\/         \__\/         \__\/         \__\/         \__\/       \__\/
"
" A simple color sheme inspired by xero harrison's blaquemagick (https://github.com/xero/blaquemagick.vim)
"

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="moonscape"

hi Boolean          cterm=bold      ctermfg=66          ctermbg=NONE
hi Character        cterm=NONE      ctermfg=251         ctermbg=NONE
hi ColorColumn      cterm=NONE      ctermfg=NONE        ctermbg=242
hi Comment          cterm=NONE      ctermfg=245         ctermbg=NONE
hi Conditional      cterm=NONE      ctermfg=251         ctermbg=NONE
hi Constant         cterm=NONE      ctermfg=66          ctermbg=NONE
hi Cursor           cterm=NONE      ctermfg=242         ctermbg=NONE
hi CursorLine       cterm=bold      ctermfg=NONE        ctermbg=NONE
hi CursorLineNr     cterm=NONE      ctermfg=234         ctermbg=66
hi Define           cterm=NONE      ctermfg=66          ctermbg=NONE
hi Delimiter        cterm=bold      ctermfg=66          ctermbg=NONE
hi DiffAdd          cterm=NONE      ctermfg=106         ctermbg=NONE
hi DiffChange       cterm=NONE      ctermfg=130         ctermbg=NONE
hi DiffDelete       cterm=NONE      ctermfg=124         ctermbg=NONE
hi DiffText         cterm=NONE      ctermfg=251         ctermbg=NONE
hi Directory        cterm=NONE      ctermfg=244         ctermbg=NONE
hi Error            cterm=bold      ctermfg=124         ctermbg=234
hi ErrorMsg         cterm=bold      ctermfg=124         ctermbg=NONE
hi FoldColumn       cterm=NONE      ctermfg=238         ctermbg=NONE
hi Folded           cterm=NONE      ctermfg=238         ctermbg=NONE
hi Function         cterm=NONE      ctermfg=251         ctermbg=NONE
hi Identifier       cterm=bold      ctermfg=66          ctermbg=NONE
hi Include          cterm=NONE      ctermfg=66          ctermbg=NONE
hi IncSearch        cterm=NONE      ctermfg=247         ctermbg=247
hi LineNr           cterm=NONE      ctermfg=59          ctermbg=234
hi Macro            cterm=NONE      ctermfg=66          ctermbg=NONE
hi NonText          cterm=NONE      ctermfg=238         ctermbg=NONE
hi Normal           cterm=NONE      ctermfg=247         ctermbg=NONE
hi Operator         cterm=NONE      ctermfg=251         ctermbg=NONE
hi Pmenu            cterm=NONE      ctermfg=251         ctermbg=234
hi PmenuSel         cterm=NONE      ctermfg=234         ctermbg=66
hi PmenuSbar        cterm=NONE      ctermfg=251         ctermbg=NONE
hi PmenuThumb       cterm=NONE      ctermfg=251         ctermbg=NONE
hi PreProc          cterm=NONE      ctermfg=66          ctermbg=NONE
hi Search           cterm=NONE      ctermfg=234         ctermbg=66
hi Special          cterm=NONE      ctermfg=66          ctermbg=NONE
hi SpecialKey       cterm=NONE      ctermfg=66          ctermbg=NONE
hi SpellBad         cterm=NONE      ctermfg=124         ctermbg=NONE
hi SpellCap         cterm=NONE      ctermfg=66          ctermbg=NONE
hi SpellLocal       cterm=NONE      ctermfg=130         ctermbg=NONE
hi SpellRare        cterm=NONE      ctermfg=245         ctermbg=NONE
hi Statement        cterm=NONE      ctermfg=251         ctermbg=NONE
hi StatusLine       cterm=NONE      ctermfg=238         ctermbg=NONE
hi StatusLineNC     cterm=NONE      ctermfg=238         ctermbg=NONE
hi String           cterm=NONE      ctermfg=66          ctermbg=NONE
hi TabLine          cterm=NONE      ctermfg=251         ctermbg=NONE
hi TabLineFill      cterm=NONE      ctermfg=NONE        ctermbg=251
hi TabLineSel       cterm=NONE      ctermfg=251         ctermbg=NONE
hi Tag              cterm=NONE      ctermfg=66          ctermbg=NONE
hi Todo             cterm=NONE      ctermfg=234         ctermbg=66
hi Type             cterm=NONE      ctermfg=66          ctermbg=NONE
hi TypeDef          cterm=NONE      ctermfg=66          ctermbg=NONE
hi Underlined       cterm=underline ctermfg=NONE        ctermbg=NONE
hi VertSplit        cterm=NONE      ctermfg=234         ctermbg=NONE
hi Visual           cterm=NONE      ctermfg=234         ctermbg=251
hi WarningMsg       cterm=NONE      ctermfg=130         ctermbg=NONE
hi WildMenu         cterm=NONE      ctermfg=66          ctermbg=NONE
