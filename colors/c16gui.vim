" Vim syntax file
" Language:	none; auto-highlighting
" Maintainer:	Hideyuki Kobayashi <e27874_gmail_com>
" Last Change:	2007 Nov 04

" ----------- ------- ------- ------- ------- ---------
" 255   0   0 #ff0000 #ff0000 #ff0000 #ff0000 _red_____
"   0 255   0 #00ff00 #00ff00 #00ff00 #00ff00 _green___
"   0   0 255 #0000ff #0000ff #0000ff #0000ff _blue____
"   0 255 255 #00ffff #00ffff #00ffff #00ffff _cyan____
" 255   0 255 #ff00ff #ff00ff #ff00ff #ff00ff _magenta_
" 255 255   0 #ffff00 #ffff00 #ffff00 #ffff00 _yellow__
" ----------- ------- ------- ------- ------- ---------
" 128   0   0 #800000 #800000 #800000 #800000 _red_____
"   0 128   0 #008000 #008000 #008000 #008000 _green___
"   0   0 128 #000080 #000080 #000080 #000080 _blue____
"   0 128 128 #008080 #008080 #008080 #008080 _cyan____
" 128   0 128 #800080 #800080 #800080 #800080 _magenta_
" 128 128   0 #808000 #808000 #808000 #808000 _yellow__
" ----------- ------- ------- ------- ------- ---------
"   0   0   0 #000000 #000000 #000000 #000000 _black___
" 128 128 128 #808080 #808080 #808080 #808080 _gray____
" 192 192 192 #c0c0c0 #c0c0c0 #c0c0c0 #c0c0c0 _gray____
" 255 255 255 #ffffff #ffffff #ffffff #ffffff _white___

if exists("b:current_syntax")
  finish
endif

syn match c16guiIgnore /^"/
syn match c16guiIgnore /^[^"].*/

syn match c16guiff0000_0 /255   0   0/ nextgroup=c16guiff0000_1 skipwhite
syn match c16gui00ff00_0 /  0 255   0/ nextgroup=c16gui00ff00_1 skipwhite
syn match c16gui0000ff_0 /  0   0 255/ nextgroup=c16gui0000ff_1 skipwhite
syn match c16gui00ffff_0 /  0 255 255/ nextgroup=c16gui00ffff_1 skipwhite
syn match c16guiff00ff_0 /255   0 255/ nextgroup=c16guiff00ff_1 skipwhite
syn match c16guiffff00_0 /255 255   0/ nextgroup=c16guiffff00_1 skipwhite

syn match c16gui800000_0 /128   0   0/ nextgroup=c16gui800000_1 skipwhite
syn match c16gui008000_0 /  0 128   0/ nextgroup=c16gui008000_1 skipwhite
syn match c16gui000080_0 /  0   0 128/ nextgroup=c16gui000080_1 skipwhite
syn match c16gui008080_0 /  0 128 128/ nextgroup=c16gui008080_1 skipwhite
syn match c16gui800080_0 /128   0 128/ nextgroup=c16gui800080_1 skipwhite
syn match c16gui808000_0 /128 128   0/ nextgroup=c16gui808000_1 skipwhite

syn match c16gui000000_0 /  0   0   0/ nextgroup=c16gui000000_1 skipwhite
syn match c16gui808080_0 /128 128 128/ nextgroup=c16gui808080_1 skipwhite
syn match c16guic0c0c0_0 /192 192 192/ nextgroup=c16guic0c0c0_1 skipwhite
syn match c16guiffffff_0 /255 255 255/ nextgroup=c16guiffffff_1 skipwhite

syn match c16guiff0000_1 /#ff0000/ contained nextgroup=c16guiff0000_2 skipwhite
syn match c16gui00ff00_1 /#00ff00/ contained nextgroup=c16gui00ff00_2 skipwhite
syn match c16gui0000ff_1 /#0000ff/ contained nextgroup=c16gui0000ff_2 skipwhite
syn match c16gui00ffff_1 /#00ffff/ contained nextgroup=c16gui00ffff_2 skipwhite
syn match c16guiff00ff_1 /#ff00ff/ contained nextgroup=c16guiff00ff_2 skipwhite
syn match c16guiffff00_1 /#ffff00/ contained nextgroup=c16guiffff00_2 skipwhite

syn match c16gui800000_1 /#800000/ contained nextgroup=c16gui800000_2 skipwhite
syn match c16gui008000_1 /#008000/ contained nextgroup=c16gui008000_2 skipwhite
syn match c16gui000080_1 /#000080/ contained nextgroup=c16gui000080_2 skipwhite
syn match c16gui008080_1 /#008080/ contained nextgroup=c16gui008080_2 skipwhite
syn match c16gui800080_1 /#800080/ contained nextgroup=c16gui800080_2 skipwhite
syn match c16gui808000_1 /#808000/ contained nextgroup=c16gui808000_2 skipwhite

syn match c16gui000000_1 /#000000/ contained nextgroup=c16gui000000_2 skipwhite
syn match c16gui808080_1 /#808080/ contained nextgroup=c16gui808080_2 skipwhite
syn match c16guic0c0c0_1 /#c0c0c0/ contained nextgroup=c16guic0c0c0_2 skipwhite
syn match c16guiffffff_1 /#ffffff/ contained nextgroup=c16guiffffff_2 skipwhite

syn match c16guiff0000_2 /#ff0000/ contained nextgroup=c16guiff0000_3 skipwhite
syn match c16gui00ff00_2 /#00ff00/ contained nextgroup=c16gui00ff00_3 skipwhite
syn match c16gui0000ff_2 /#0000ff/ contained nextgroup=c16gui0000ff_3 skipwhite
syn match c16gui00ffff_2 /#00ffff/ contained nextgroup=c16gui00ffff_3 skipwhite
syn match c16guiff00ff_2 /#ff00ff/ contained nextgroup=c16guiff00ff_3 skipwhite
syn match c16guiffff00_2 /#ffff00/ contained nextgroup=c16guiffff00_3 skipwhite

syn match c16gui800000_2 /#800000/ contained nextgroup=c16gui800000_3 skipwhite
syn match c16gui008000_2 /#008000/ contained nextgroup=c16gui008000_3 skipwhite
syn match c16gui000080_2 /#000080/ contained nextgroup=c16gui000080_3 skipwhite
syn match c16gui008080_2 /#008080/ contained nextgroup=c16gui008080_3 skipwhite
syn match c16gui800080_2 /#800080/ contained nextgroup=c16gui800080_3 skipwhite
syn match c16gui808000_2 /#808000/ contained nextgroup=c16gui808000_3 skipwhite

syn match c16gui000000_2 /#000000/ contained nextgroup=c16gui000000_3 skipwhite
syn match c16gui808080_2 /#808080/ contained nextgroup=c16gui808080_3 skipwhite
syn match c16guic0c0c0_2 /#c0c0c0/ contained nextgroup=c16guic0c0c0_3 skipwhite
syn match c16guiffffff_2 /#ffffff/ contained nextgroup=c16guiffffff_3 skipwhite

syn match c16guiff0000_3 /#ff0000/ contained nextgroup=c16guiff0000_4 skipwhite
syn match c16gui00ff00_3 /#00ff00/ contained nextgroup=c16gui00ff00_4 skipwhite
syn match c16gui0000ff_3 /#0000ff/ contained nextgroup=c16gui0000ff_4 skipwhite
syn match c16gui00ffff_3 /#00ffff/ contained nextgroup=c16gui00ffff_4 skipwhite
syn match c16guiff00ff_3 /#ff00ff/ contained nextgroup=c16guiff00ff_4 skipwhite
syn match c16guiffff00_3 /#ffff00/ contained nextgroup=c16guiffff00_4 skipwhite

syn match c16gui800000_3 /#800000/ contained nextgroup=c16gui800000_4 skipwhite
syn match c16gui008000_3 /#008000/ contained nextgroup=c16gui008000_4 skipwhite
syn match c16gui000080_3 /#000080/ contained nextgroup=c16gui000080_4 skipwhite
syn match c16gui008080_3 /#008080/ contained nextgroup=c16gui008080_4 skipwhite
syn match c16gui800080_3 /#800080/ contained nextgroup=c16gui800080_4 skipwhite
syn match c16gui808000_3 /#808000/ contained nextgroup=c16gui808000_4 skipwhite

syn match c16gui000000_3 /#000000/ contained nextgroup=c16gui000000_4 skipwhite
syn match c16gui808080_3 /#808080/ contained nextgroup=c16gui808080_4 skipwhite
syn match c16guic0c0c0_3 /#c0c0c0/ contained nextgroup=c16guic0c0c0_4 skipwhite
syn match c16guiffffff_3 /#ffffff/ contained nextgroup=c16guiffffff_4 skipwhite

syn match c16guiff0000_4 /#ff0000/ contained nextgroup=c16guiff0000_9 skipwhite
syn match c16gui00ff00_4 /#00ff00/ contained nextgroup=c16gui00ff00_9 skipwhite
syn match c16gui0000ff_4 /#0000ff/ contained nextgroup=c16gui0000ff_9 skipwhite
syn match c16gui00ffff_4 /#00ffff/ contained nextgroup=c16gui00ffff_9 skipwhite
syn match c16guiff00ff_4 /#ff00ff/ contained nextgroup=c16guiff00ff_9 skipwhite
syn match c16guiffff00_4 /#ffff00/ contained nextgroup=c16guiffff00_9 skipwhite

syn match c16gui800000_4 /#800000/ contained nextgroup=c16gui800000_9 skipwhite
syn match c16gui008000_4 /#008000/ contained nextgroup=c16gui008000_9 skipwhite
syn match c16gui000080_4 /#000080/ contained nextgroup=c16gui000080_9 skipwhite
syn match c16gui008080_4 /#008080/ contained nextgroup=c16gui008080_9 skipwhite
syn match c16gui800080_4 /#800080/ contained nextgroup=c16gui800080_9 skipwhite
syn match c16gui808000_4 /#808000/ contained nextgroup=c16gui808000_9 skipwhite

syn match c16gui000000_4 /#000000/ contained nextgroup=c16gui000000_9 skipwhite
syn match c16gui808080_4 /#808080/ contained nextgroup=c16gui808080_9 skipwhite
syn match c16guic0c0c0_4 /#c0c0c0/ contained nextgroup=c16guic0c0c0_9 skipwhite
syn match c16guiffffff_4 /#ffffff/ contained nextgroup=c16guiffffff_9 skipwhite

syn match c16guiff0000_9 /\S\+/ contained
syn match c16gui00ff00_9 /\S\+/ contained
syn match c16gui0000ff_9 /\S\+/ contained
syn match c16gui00ffff_9 /\S\+/ contained
syn match c16guiff00ff_9 /\S\+/ contained
syn match c16guiffff00_9 /\S\+/ contained

syn match c16gui800000_9 /\S\+/ contained
syn match c16gui008000_9 /\S\+/ contained
syn match c16gui000080_9 /\S\+/ contained
syn match c16gui008080_9 /\S\+/ contained
syn match c16gui800080_9 /\S\+/ contained
syn match c16gui808000_9 /\S\+/ contained

syn match c16gui000000_9 /\S\+/ contained
syn match c16gui808080_9 /\S\+/ contained
syn match c16guic0c0c0_9 /\S\+/ contained
syn match c16guiffffff_9 /\S\+/ contained

hi c16guiIgnore guibg=NONE guifg=#808080 gui=NONE

hi c16guiff0000_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui00ff00_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui0000ff_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui00ffff_0 guibg=NONE guifg=NONE gui=NONE
hi c16guiff00ff_0 guibg=NONE guifg=NONE gui=NONE
hi c16guiffff00_0 guibg=NONE guifg=NONE gui=NONE

hi c16gui800000_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui008000_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui000080_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui008080_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui800080_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui808000_0 guibg=NONE guifg=NONE gui=NONE

hi c16gui000000_0 guibg=NONE guifg=NONE gui=NONE
hi c16gui808080_0 guibg=NONE guifg=NONE gui=NONE
hi c16guic0c0c0_0 guibg=NONE guifg=NONE gui=NONE
hi c16guiffffff_0 guibg=NONE guifg=NONE gui=NONE

hi c16guiff0000_1 guibg=NONE guifg=#ff0000 gui=NONE
hi c16gui00ff00_1 guibg=NONE guifg=#00ff00 gui=NONE
hi c16gui0000ff_1 guibg=NONE guifg=#0000ff gui=NONE
hi c16gui00ffff_1 guibg=NONE guifg=#00ffff gui=NONE
hi c16guiff00ff_1 guibg=NONE guifg=#ff00ff gui=NONE
hi c16guiffff00_1 guibg=NONE guifg=#ffff00 gui=NONE

hi c16gui800000_1 guibg=NONE guifg=#800000 gui=NONE
hi c16gui008000_1 guibg=NONE guifg=#008000 gui=NONE
hi c16gui000080_1 guibg=NONE guifg=#000080 gui=NONE
hi c16gui008080_1 guibg=NONE guifg=#008080 gui=NONE
hi c16gui800080_1 guibg=NONE guifg=#800080 gui=NONE
hi c16gui808000_1 guibg=NONE guifg=#808000 gui=NONE

hi c16gui000000_1 guibg=NONE guifg=#000000 gui=NONE
hi c16gui808080_1 guibg=NONE guifg=#808080 gui=NONE
hi c16guic0c0c0_1 guibg=NONE guifg=#c0c0c0 gui=NONE
hi c16guiffffff_1 guibg=NONE guifg=#ffffff gui=NONE

hi c16guiff0000_2 guibg=#ff0000 guifg=NONE gui=NONE
hi c16gui00ff00_2 guibg=#00ff00 guifg=NONE gui=NONE
hi c16gui0000ff_2 guibg=#0000ff guifg=NONE gui=NONE
hi c16gui00ffff_2 guibg=#00ffff guifg=NONE gui=NONE
hi c16guiff00ff_2 guibg=#ff00ff guifg=NONE gui=NONE
hi c16guiffff00_2 guibg=#ffff00 guifg=NONE gui=NONE

hi c16gui800000_2 guibg=#800000 guifg=NONE gui=NONE
hi c16gui008000_2 guibg=#008000 guifg=NONE gui=NONE
hi c16gui000080_2 guibg=#000080 guifg=NONE gui=NONE
hi c16gui008080_2 guibg=#008080 guifg=NONE gui=NONE
hi c16gui800080_2 guibg=#800080 guifg=NONE gui=NONE
hi c16gui808000_2 guibg=#808000 guifg=NONE gui=NONE

hi c16gui000000_2 guibg=#000000 guifg=NONE gui=NONE
hi c16gui808080_2 guibg=#808080 guifg=NONE gui=NONE
hi c16guic0c0c0_2 guibg=#c0c0c0 guifg=NONE gui=NONE
hi c16guiffffff_2 guibg=#ffffff guifg=NONE gui=NONE

hi c16guiff0000_3 guibg=#ff0000 guifg=NONE gui=reverse
hi c16gui00ff00_3 guibg=#00ff00 guifg=NONE gui=reverse
hi c16gui0000ff_3 guibg=#0000ff guifg=NONE gui=reverse
hi c16gui00ffff_3 guibg=#00ffff guifg=NONE gui=reverse
hi c16guiff00ff_3 guibg=#ff00ff guifg=NONE gui=reverse
hi c16guiffff00_3 guibg=#ffff00 guifg=NONE gui=reverse

hi c16gui800000_3 guibg=#800000 guifg=NONE gui=reverse
hi c16gui008000_3 guibg=#008000 guifg=NONE gui=reverse
hi c16gui000080_3 guibg=#000080 guifg=NONE gui=reverse
hi c16gui008080_3 guibg=#008080 guifg=NONE gui=reverse
hi c16gui800080_3 guibg=#800080 guifg=NONE gui=reverse
hi c16gui808000_3 guibg=#808000 guifg=NONE gui=reverse

hi c16gui000000_3 guibg=#000000 guifg=NONE gui=reverse
hi c16gui808080_3 guibg=#808080 guifg=NONE gui=reverse
hi c16guic0c0c0_3 guibg=#c0c0c0 guifg=NONE gui=reverse
hi c16guiffffff_3 guibg=#ffffff guifg=NONE gui=reverse

hi c16guiff0000_4 guibg=NONE guifg=#ff0000 gui=reverse
hi c16gui00ff00_4 guibg=NONE guifg=#00ff00 gui=reverse
hi c16gui0000ff_4 guibg=NONE guifg=#0000ff gui=reverse
hi c16gui00ffff_4 guibg=NONE guifg=#00ffff gui=reverse
hi c16guiff00ff_4 guibg=NONE guifg=#ff00ff gui=reverse
hi c16guiffff00_4 guibg=NONE guifg=#ffff00 gui=reverse

hi c16gui800000_4 guibg=NONE guifg=#800000 gui=reverse
hi c16gui008000_4 guibg=NONE guifg=#008000 gui=reverse
hi c16gui000080_4 guibg=NONE guifg=#000080 gui=reverse
hi c16gui008080_4 guibg=NONE guifg=#008080 gui=reverse
hi c16gui800080_4 guibg=NONE guifg=#800080 gui=reverse
hi c16gui808000_4 guibg=NONE guifg=#808000 gui=reverse

hi c16gui000000_4 guibg=NONE guifg=#000000 gui=reverse
hi c16gui808080_4 guibg=NONE guifg=#808080 gui=reverse
hi c16guic0c0c0_4 guibg=NONE guifg=#c0c0c0 gui=reverse
hi c16guiffffff_4 guibg=NONE guifg=#ffffff gui=reverse

hi c16guiff0000_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui00ff00_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui0000ff_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui00ffff_9 guibg=NONE guifg=NONE gui=reverse
hi c16guiff00ff_9 guibg=NONE guifg=NONE gui=reverse
hi c16guiffff00_9 guibg=NONE guifg=NONE gui=reverse

hi c16gui800000_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui008000_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui000080_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui008080_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui800080_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui808000_9 guibg=NONE guifg=NONE gui=reverse

hi c16gui000000_9 guibg=NONE guifg=NONE gui=reverse
hi c16gui808080_9 guibg=NONE guifg=NONE gui=reverse
hi c16guic0c0c0_9 guibg=NONE guifg=NONE gui=reverse
hi c16guiffffff_9 guibg=NONE guifg=NONE gui=reverse

let b:current_syntax = "c16gui"

" vim: sw=2 ts=8 syn=c16gui
