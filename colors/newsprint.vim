" =============================================================================
" File:        newsprint.vim
" Description: Vim color scheme file
" Maintainer:  Byron Ruth
" =============================================================================
set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "newsprint"

hi Normal       guifg=#333333          guibg=#EEEEEE   gui=NONE
hi CursorLine   guifg=NONE             guibg=#DDDDDD   gui=NONE
hi CursorColumn guifg=NONE             guibg=#E5E5E5   gui=NONE
hi LineNr       guifg=#AAAAAA          guibg=NONE      gui=NONE
hi Statement    guifg=#595959          guibg=NONE      gui=bold
hi Function     guifg=#111111          guibg=NONE      gui=bold
hi String       guifg=#7C7C7C          guibg=NONE      gui=NONE
hi Type         guifg=#111111          guibg=NONE      gui=bold
hi Conditional  guifg=#878787          guibg=NONE      gui=bold
hi Todo         guifg=#A42E2E          guibg=#FFDDDD   gui=underline
hi Comment      guifg=#888888          guibg=NONE      gui=NONE
hi PmenuSel     guifg=#FFFFFF          guibg=#565655   gui=bold
hi Special      guifg=#797A7A          guibg=NONE      gui=NONE
hi Identifier   guifg=#111111          guibg=NONE      gui=bold
hi Keyword      guifg=#999999          guibg=NONE      gui=bold
hi PreProc      guifg=#949494          guibg=NONE      gui=bold
hi Include      guifg=#1F1F1F          guibg=NONE      gui=NONE
hi Constant     guifg=#7C7C7C          guibg=#DDDDDD   gui=bold
hi Delimiter    guifg=#7C7C7C          guibg=NONE      gui=NONE

hi Visual       guifg=#000000          guibg=#AEAEAE   gui=NONE
hi ColorColumn  guifg=NONE             guibg=#DDDDDD
hi Cursor       guifg=bg               guibg=fg        gui=NONE
hi CursorIM     guifg=bg               guibg=fg        gui=NONE
hi lCursor      guifg=bg               guibg=fg        gui=NONE
hi iCursor			                   guibg=fg

hi DiffAdd      guifg=#FF33FF          guibg=#FFDDFF   gui=NONE
hi DiffChange   guifg=#0066AA          guibg=#FFDDDD   gui=NONE
hi DiffDelete   guifg=#A42E2E          guibg=#FFDDDD   gui=NONE
hi DiffText     guifg=#A42E2E          guibg=#FFDDDD   gui=NONE

hi Directory    guifg=#6D6D6D          guibg=bg        gui=NONE
hi ErrorMsg     guifg=#909090          guibg=NONE      gui=NONE
hi FoldColumn   guifg=#AAAAAA          guibg=#BEBEBE   gui=bold
hi Folded       guifg=#7D7D7D          guibg=#DEDEDE   gui=italic

hi IncSearch    guifg=#FFFFFF          guibg=#525252   gui=NONE
hi Search       guifg=#FFFFFF          guibg=#3A3C3C   gui=NONE
hi MatchParen   guifg=#FFFFFF          guibg=#575757   gui=bold
hi ModeMsg      guifg=#000000          guibg=#898989   gui=bold
hi MoreMsg      guifg=#838383          guibg=bg        gui=bold
hi NonText      guifg=#818181          guibg=bg        gui=bold

hi Pmenu        guifg=#9A9A9A          guibg=#C0C0C0   gui=NONE
hi PmenuSbar    guifg=fg               guibg=#A2A2A2   gui=NONE
hi PmenuThumb   guifg=fg               guibg=#888888   gui=NONE

hi Question     guifg=#BABABA          guibg=bg        gui=bold
hi SignColumn   guifg=#000000          guibg=#E7E7E7   gui=NONE

hi SpecialKey   guifg=#BABABA          guibg=#FFFFFF   gui=NONE

hi SpellBad     guisp=#000000          guibg=#FFFFFF   gui=undercurl    guisp=#003F3F
hi SpellCap     guisp=#A2A2A2                          gui=undercurl
hi SpellLocal   guisp=#BCBCBC                          gui=undercurl
hi SpellRare    guisp=#828282                          gui=undercurl
hi StatusLine   guifg=#FFFFFF          guibg=#8D8D8D   gui=bold
hi StatusLineNC guifg=#A5A6A6          guibg=#DDDDDD   gui=italic
hi TabLine      guifg=fg               guibg=#8A8A8A   gui=underline
hi TabLineFill  guifg=fg               guibg=bg        gui=reverse
hi TabLineSel   guifg=fg               guibg=bg        gui=bold
hi Title        guifg=#929292          guibg=bg        gui=bold
hi VertSplit    guifg=#DDDDDD          guibg=#DDDDDD
hi WarningMsg   guifg=#303030          guibg=#A4A4A4   gui=NONE
hi WildMenu     guifg=#FFFFFF          guibg=#7D7D7D   gui=NONE
hi Boolean      guifg=#9E9F9F          guibg=NONE      gui=bold
hi Ignore       guifg=bg               guibg=NONE      gui=NONE
hi Error        guifg=#008D8D          guibg=NONE      gui=undercurl guisp=#A42E2E

" -----------------------------------------------------------------------------
" Taglist
hi MyTagListFileName guifg=#000000      guibg=#BBBBBB
hi MyTagListTitle    guifg=#999999      guibg=bg        gui=bold

hi VimError         guifg=#494949      guibg=#CECECE   gui=bold
hi VimCommentTitle  guifg=#A3A3A3      guibg=bg        gui=bold,italic
hi qfFileName       guifg=#959595      guibg=NONE      gui=italic
hi qfLineNr         guifg=fg           guibg=NONE      gui=NONE
hi qfError          guifg=fg           guibg=#FFFFFF   gui=undercurl

" 256-color Terminal support
if &t_Co > 255
   hi  Normal             ctermfg=251        ctermbg=0          cterm=NONE
   hi  CursorLine         ctermfg=NONE       ctermbg=240        cterm=NONE
   hi  CursorColumn       ctermfg=NONE       ctermbg=234        cterm=NONE
   hi  LineNr             ctermfg=240        ctermbg=NONE       cterm=NONE
   hi  Statement          ctermfg=248        ctermbg=NONE       cterm=bold
   hi  Function           ctermfg=255        ctermbg=NONE       cterm=bold
   hi  String             ctermfg=244        ctermbg=NONE       cterm=NONE
   hi  Type               ctermfg=255        ctermbg=NONE       cterm=bold
   hi  Conditional        ctermfg=243        ctermbg=NONE       cterm=bold
   hi  Todo               ctermfg=9          ctermbg=NONE       cterm=underline
   hi  Comment            ctermfg=243        ctermbg=NONE       cterm=NONE
   hi  PmenuSel           ctermfg=0          ctermbg=248        cterm=bold
   hi  Special            ctermfg=244        ctermbg=NONE       cterm=NONE
   hi  Identifier         ctermfg=15         ctermbg=NONE       cterm=bold
   hi  Keyword            ctermfg=242        ctermbg=NONE       cterm=bold
   hi  PreProc            ctermfg=242        ctermbg=NONE       cterm=bold
   hi  Include            ctermfg=254        ctermbg=NONE       cterm=NONE
   hi  Constant           ctermfg=244        ctermbg=235        cterm=bold
   hi  Delimiter          ctermfg=244        ctermbg=NONE       cterm=NONE

   hi  Visual             ctermfg=15         ctermbg=239        cterm=NONE
   hi  ColorColumn        ctermfg=NONE       ctermbg=234
   hi  Cursor             ctermfg=bg         ctermbg=fg         cterm=NONE
   hi  CursorIM           ctermfg=bg         ctermbg=fg         cterm=NONE
   hi  lCursor            ctermfg=bg         ctermbg=fg         cterm=NONE

   hi  DiffAdd            ctermfg=40         ctermbg=22         cterm=NONE
   hi  DiffChange         ctermfg=209        ctermbg=52         cterm=NONE
   hi  DiffDelete         ctermfg=9          ctermbg=52         cterm=NONE
   hi  DiffText           ctermfg=9          ctermbg=52         cterm=NONE

   hi  Directory          ctermfg=246        ctermbg=bg         cterm=NONE
   hi  ErrorMsg           ctermfg=242        ctermbg=NONE       cterm=NONE
   hi  FoldColumn         ctermfg=240        ctermbg=237        cterm=bold
   hi  Folded             ctermfg=244        ctermbg=234        cterm=italic

   hi  IncSearch          ctermfg=0          ctermbg=248        cterm=NONE
   hi  Search             ctermfg=0          ctermbg=251        cterm=NONE
   hi  MatchParen         ctermfg=0          ctermbg=248        cterm=bold
   hi  ModeMsg            ctermfg=15         ctermbg=243        cterm=bold
   hi  MoreMsg            ctermfg=243        ctermbg=bg         cterm=bold
   hi  NonText            ctermfg=244        ctermbg=bg         cterm=bold

   hi  Pmenu              ctermfg=242        ctermbg=237        cterm=NONE
   hi  PmenuSbar          ctermfg=fg         ctermbg=241        cterm=NONE
   hi  PmenuThumb         ctermfg=fg         ctermbg=243        cterm=NONE

   hi  Question           ctermfg=238        ctermbg=bg         cterm=bold
   hi  SignColumn         ctermfg=15         ctermbg=233        cterm=NONE

   hi  SpecialKey         ctermfg=238        ctermbg=bg         cterm=NONE

   hi  SpellBad           ctermbg=0          cterm=NONE
   hi  SpellCap           ctermbg=0          cterm=NONE
   hi  SpellLocal         ctermbg=0          cterm=NONE
   hi  SpellRare          ctermbg=0          cterm=NONE
   hi  StatusLine         ctermfg=0          ctermbg=243        cterm=bold
   hi  StatusLineNC       ctermfg=241        ctermbg=235        cterm=NONE
   hi  TabLine            ctermfg=fg         ctermbg=243        cterm=underline
   hi  TabLineFill        ctermfg=fg         ctermbg=bg         cterm=reverse
   hi  TabLineSel         ctermfg=fg         ctermbg=bg         cterm=bold
   hi  Title              ctermfg=242        ctermbg=bg         cterm=bold
   hi  VertSplit          ctermfg=234        ctermbg=234
   hi  WarningMsg         ctermfg=252        ctermbg=240        cterm=NONE
   hi  WildMenu           ctermfg=0          ctermbg=244        cterm=NONE
   hi  Boolean            ctermfg=241        ctermbg=NONE       cterm=bold
   hi  Ignore             ctermfg=bg         ctermbg=NONE       cterm=NONE
   hi  Error              ctermfg=210        ctermbg=NONE       cterm=underline

   hi  VimError           ctermfg=250        ctermbg=236        cterm=bold
   hi  VimCommentTitle    ctermfg=244        ctermbg=236        cterm=bold
   hi  qfFileName         ctermfg=242        ctermbg=NONE       cterm=NONE
   hi  qfLineNr           ctermfg=fg         ctermbg=NONE       cterm=NONE
   hi  qfError            ctermfg=fg         ctermbg=0          cterm=underline

   " Taglist
   hi MyTagListFileName   ctermfg=15         ctermbg=238
   hi MyTagListTitle      ctermfg=241        ctermbg=bg         cterm=bold
end

