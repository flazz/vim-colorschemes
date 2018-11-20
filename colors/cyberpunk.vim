""" ===========================================================================
" File: cyberpunk.vim
" Description: A port of Emacs' Cyberpunk colorscheme for vim.
""" ===========================================================================

set background=dark

if version > 580
   hi clear
   if exists("syntax_on")
      syntax reset
   endif
endif

let colors_name = "cyberpunk"

" Cyberpunk theme colors {{{
let s:colors = {
    \ "cyberpunk-fg": "#dcdccc",
    \ "cyberpunk-bg-1": "#2b2b2b",
    \ "cyberpunk-bg-05": "#383838",
    \ "cyberpunk-bg": "#000000",
    \ "cyberpunk-bg+1": "#4f4f4f",
    \ "cyberpunk-bg+2": "#5f5f5f",
    \ "cyberpunk-bg+3": "#6f6f6f",
    \ "cyberpunk-red+1": "#dca3a3",
    \ "cyberpunk-red": "#ff0000",
    \ "cyberpunk-red-1": "#8b0000",
    \ "cyberpunk-red-2": "#8b0000",
    \ "cyberpunk-red-3": "#9c6363",
    \ "cyberpunk-red-4": "#8c5353",
    \ "cyberpunk-red-5": "#7F073F",
    \ "cyberpunk-pink": "#ff69b4",
    \ "cyberpunk-pink-1": "#ff1493",
    \ "cyberpunk-pink-2": "#cd1076",
    \ "cyberpunk-orange-2": "#FF6400",
    \ "cyberpunk-orange-1": "#ff8c00",
    \ "cyberpunk-orange": "#ffa500",
    \ "cyberpunk-yellow": "#ffff00",
    \ "cyberpunk-yellow-1": "#FBDE2D",
    \ "cyberpunk-yellow-2": "#d0bf8f",
    \ "cyberpunk-yellow-3": "#D8FA3C",
    \ "cyberpunk-yellow-4": "#E9C062",
    \ "cyberpunk-yellow-5": "#ffd700",
    \ "cyberpunk-green-2": "#006400",
    \ "cyberpunk-green-1": "#2e8b57",
    \ "cyberpunk-green": "#00ff00",
    \ "cyberpunk-green+1": "#61CE3C",
    \ "cyberpunk-green+2": "#9fc59f",
    \ "cyberpunk-green+3": "#afd8af",
    \ "cyberpunk-green+4": "#bfebbf",
    \ "cyberpunk-cyan": "#93e0e3",
    \ "cyberpunk-blue+1": "#94bff3",
    \ "cyberpunk-blue": "#0000ff",
    \ "cyberpunk-blue-1": "#7b68ee",
    \ "cyberpunk-blue-2": "#6a5acd",
    \ "cyberpunk-blue-3": "#add8e6",
    \ "cyberpunk-blue-4": "#b2dfee",
    \ "cyberpunk-blue-5": "#4c83ff",
    \ "cyberpunk-blue-6": "#96CBFE",
    \ "cyberpunk-blue-7": "#00ffff",
    \ "cyberpunk-blue-8": "#4F94CD",
    \ "cyberpunk-magenta": "#dc8cc3",
    \ "cyberpunk-black": "#000000",
    \ "cyberpunk-black-2": "#0C1021",
    \ "cyberpunk-black-3": "#0A0A0A",
    \ "cyberpunk-gray": "#d3d3d3",
    \ "cyberpunk-gray-2": "#8B8989",
    \ "cyberpunk-gray-3": "#919191",
    \ "cyberpunk-gray-4": "#999999",
    \ "cyberpunk-gray-5": "#333333",
    \ "cyberpunk-gray-6": "#1A1A1A",
    \ "cyberpunk-gray-7": "#4D4D4D",
    \ "cyberpunk-gray-8": "#262626",
    \ "cyberpunk-white": "#ffffff",
    \ "cyberpunk-white-2": "#F8F8F8",
    \ "cyberpunk-white-3": "#fffafa"
\ }


function! Hi(name, guifg, guibg)
    let l:cmd = "hi " . a:name . " guifg=" . a:guifg . " guibg=" . a:guibg
    exe l:cmd
endfunc

call Hi("Normal", s:colors["cyberpunk-fg"], s:colors["cyberpunk-black"])
call Hi("Cursor", s:colors["cyberpunk-fg"], s:colors["cyberpunk-yellow-1"])
call Hi("Visual", s:colors["cyberpunk-fg"], s:colors["cyberpunk-red-5"])
call Hi("Visual", s:colors["cyberpunk-fg"], s:colors["cyberpunk-red-5"])
call Hi("LineNr", s:colors["cyberpunk-green+2"], s:colors["cyberpunk-bg"])

call Hi("DiffAdd", s:colors["cyberpunk-green"], s:colors["cyberpunk-black"])
call Hi("DiffChange", s:colors["cyberpunk-yellow"], s:colors["cyberpunk-black"])
call Hi("DiffDelete", s:colors["cyberpunk-red"], s:colors["cyberpunk-black"])

call Hi("StatusLine", s:colors["cyberpunk-gray-5"], s:colors["cyberpunk-blue-5"])
call Hi("StatusLineNC", s:colors["cyberpunk-gray-6"], s:colors["cyberpunk-gray-7"])


exe "hi Warning guifg=" . s:colors["cyberpunk-pink"]
call Hi("VertSplit", s:colors["cyberpunk-gray-5"], s:colors["cyberpunk-gray-5"])

if version >= 700
    exe "hi CursorLine guibg=" . s:colors["cyberpunk-gray-5"]
endif

" Syntax highlighting {{{
exe "hi String guifg=" . s:colors["cyberpunk-green+1"]
exe "hi Type guifg=" . s:colors["cyberpunk-yellow-3"]
exe "hi Function guifg=" . s:colors["cyberpunk-pink-1"]
exe "hi Comment guifg=" . s:colors["cyberpunk-gray-2"] . " cterm=italic" 
exe "hi Keyword guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi Identifier guifg=" . s:colors["cyberpunk-yellow-3"]
exe "hi Conditional guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi Repeat guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi Operator guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi Label guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi Structure guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi StorageClass guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi Typedef guifg=" . s:colors["cyberpunk-yellow-1"]
exe "hi Constant guifg=" . s:colors["cyberpunk-blue-5"]
exe "hi PreProc guifg=" . s:colors["cyberpunk-gray-3"]

exe "hi Delimiter guifg=" . s:colors["cyberpunk-fg"]
" Numbers
exe "hi Number guifg=" . s:colors["cyberpunk-fg"]
exe "hi Float guifg=" . s:colors["cyberpunk-fg"]
" }}}

if has("gui_running")
   set guicursor+=n-v-i:blinkwait750-blinkon750-blinkoff750
endif

exe "hi Directory guifg=" . s:colors["cyberpunk-pink-1"]

exe "hi ExtraWhitespace guibg=" . s:colors["cyberpunk-red"]