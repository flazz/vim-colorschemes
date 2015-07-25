" euphrasia3
" colour scheme for Vim
" Author:  bohoomil
" Date:    October, 2013
" Release: 1.0
"
" This theme is supposed to be used
" with the variation .Xdefaults colour settings.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="euphrasia3"

if &t_Co > 255
  hi Normal                  ctermfg=none
  hi Boolean                 ctermfg=13
  hi Character               ctermfg=15
  hi Comment                 ctermfg=8    ctermbg=none cterm=none
  hi Conditional             ctermfg=12
  hi Constant                ctermfg=3
  hi Cursor                               ctermbg=2
  hi Debug                   ctermfg=13
  hi Define                  ctermfg=11
  hi Delimiter               ctermfg=8
  hi DiffLine                ctermfg=4
  hi DiffOldLine             ctermfg=1    ctermbg=none
  hi DiffOldFile             ctermfg=1    ctermbg=none
  hi DiffNewFile             ctermfg=2    ctermbg=none
  hi DiffAdd                 ctermfg=10   ctermbg=none
  hi DiffAdded               ctermfg=10   ctermbg=none
  hi DiffDelete              ctermfg=1    ctermbg=none
  hi DiffRemoved             ctermfg=1    ctermbg=none
  hi DiffChange              ctermfg=6    ctermbg=none
  hi DiffChanged             ctermfg=6    ctermbg=none
  hi DiffText                ctermfg=4    ctermbg=none
  hi Directory               ctermfg=2
  hi Error                   ctermfg=9    ctermbg=none
  hi ErrorMsg                ctermfg=9    ctermbg=none
  hi Exception               ctermfg=13
  hi Float                   ctermfg=14
  hi FoldColumn              ctermfg=4    ctermbg=none
  hi Folded                  ctermfg=12   ctermbg=0
  hi Function                ctermfg=13
  hi Identifier              ctermfg=11                cterm=none
  hi IncSearch               ctermfg=15   ctermbg=1
  hi Keyword                 ctermfg=4
  hi Label                   ctermfg=5
  hi LineNr                  ctermfg=8
  hi CursorLine              ctermfg=15   ctermbg=0    cterm=bold
  hi CursorLineNr            ctermfg=15   ctermbg=4
  hi Macro                   ctermfg=3                 cterm=none
  hi MatchParen              ctermfg=0    ctermbg=14
  hi ModeMsg                 ctermfg=11
  hi MoreMsg                 ctermfg=14
  hi NonText                 ctermfg=0  ctermbg=none
  hi Number                  ctermfg=10
  hi Operator                ctermfg=13
  hi PreCondit               ctermfg=13   ctermbg=none cterm=none
  hi PreProc                 ctermfg=14
  hi Question                ctermfg=14
  hi Repeat                  ctermfg=14
  hi Search                  ctermfg=15   ctermbg=1
  hi SpecialChar             ctermfg=13
  hi SpecialComment          ctermfg=8
  hi Special                 ctermfg=5
  hi SpecialKey              ctermfg=10
  hi Statement               ctermfg=4    ctermbg=none
  hi StorageClass            ctermfg=4
  hi String                  ctermfg=2    ctermbg=none
  hi Structure               ctermfg=67
  hi Tag                     ctermfg=5
  hi Title                   ctermfg=7    ctermbg=none cterm=bold
  hi Todo                    ctermfg=10   ctermbg=0
  hi Typedef                 ctermfg=4
  hi Type                    ctermfg=5
  hi Underlined              ctermfg=7
  hi VendorPrefix            ctermfg=9
  hi VertSplit               ctermfg=0    ctermbg=11
  hi Visual                  ctermfg=15   ctermbg=8
  hi VisualNOS               ctermfg=10   ctermbg=8    cterm=bold
  hi WarningMsg              ctermfg=9
  hi WildMenu                ctermfg=0    ctermbg=11

  " statusline
  hi StatusLine              ctermfg=7    ctermbg=0    cterm=none
  hi StatusLineNC            ctermfg=0    ctermbg=7
  hi StatusModFlag           ctermfg=9    ctermbg=0    cterm=none
  hi StatusRO                ctermfg=13   ctermbg=0    cterm=none
  hi StatusHLP               ctermfg=10   ctermbg=0    cterm=none
  hi StatusPRV               ctermfg=11   ctermbg=0    cterm=none
  hi StatusFTP               ctermfg=6    ctermbg=0    cterm=none

  " spellchecking
  hi SpellLocal              ctermfg=0    ctermbg=5    cterm=none
  hi SpellBad                ctermfg=15   ctermbg=1    cterm=none
  hi SpellCap                ctermfg=0    ctermbg=12   cterm=none
  hi SpellRare               ctermfg=0    ctermbg=13   cterm=none

  " pmenu
  hi Pmenu                   ctermfg=7    ctermbg=0
  hi PmenuSel                ctermfg=none ctermbg=8
  hi PmenuSbar               ctermfg=8    ctermbg=15

  " css
  hi cssIdentifier           ctermfg=9
  hi cssClassName            ctermfg=14
  hi cssTagName              ctermfg=2
  hi cssPseudoClass          ctermfg=13
  hi cssMediaBlock           ctermfg=1

  " html
  hi htmlConstant            ctermfg=3
  hi htmlComment             ctermfg=8
  hi htmlTag                 ctermfg=12
  hi htmlEndTag              ctermfg=12
  hi htmlTagName             ctermfg=11
  hi htmlTitle               ctermfg=9
  hi htmlPreProc             ctermfg=14
  hi htmlBold                ctermfg=2   ctermbg=0    cterm=none
  hi htmlBoldUnderline       ctermfg=2   ctermbg=0    cterm=underline
  hi htmlBoldItalic          ctermfg=10  ctermbg=0    cterm=none
  hi htmlBoldUnderlineItalic ctermfg=10  ctermbg=0    cterm=none
  hi htmlUnderline                                     cterm=underline
  hi htmlUnderlineItalic     ctermfg=12  ctermbg=none  cterm=underline
  hi htmlItalic              ctermfg=12  ctermbg=none  cterm=none
  hi htmlSpecial             ctermfg=66

  " mediawiki
  hi wikiParaFormatChar      ctermfg=10
  hi wikiLink                ctermfg=14

  " xml
  hi xmlTag                  ctermfg=4
  hi xmlEndTag               ctermfg=4
  hi xmlTagName              ctermfg=3

  " perl
  hi perlStatement           ctermfg=13
  hi perlStatementStorage    ctermfg=1
  hi perlVarPlain            ctermfg=6
  hi perlVarPlain2           ctermfg=11

  " mini buffer explorer
  hi MBENormal               ctermfg=8
  hi MBEChanged              ctermfg=1
  hi MBEVisibleNormal        ctermfg=5
  hi MBEVisibleNormalActive  ctermfg=13
  hi MBEVisibleChanged       ctermfg=7
  hi MBEVisibleChangedActive ctermfg=9

  " rst
  hi rstEmphasis             ctermfg=7                 cterm=underline
  hi rstLiteralBlock         ctermfg=3
  hi rstInlineLiteral        ctermfg=11
  hi rstSections             ctermfg=1
  hi rstHyperlinkTarget      ctermfg=6
  hi rstStandaloneHyperlink  ctermfg=10
  hi rstInterpretedTextOrHyperlinkReference ctermfg=10
  hi rstCitation             ctermfg=7
  hi rstQuotedLiteralBlock   ctermfg=11
  hi rstLineBlock            ctermfg=6

else "linux console settings

  hi Normal                  ctermfg=white
  hi Boolean                 ctermfg=magenta                 term=bold
  hi Character               ctermfg=white
  hi Comment                 ctermfg=black   ctermbg=none    term=bold
  hi Conditional             ctermfg=cyan
  hi Constant                ctermfg=yellow
  hi Debug                   ctermfg=magenta                 term=bold
  hi Define                  ctermfg=yellow                  term=bold
  hi Delimiter               ctermfg=black                   term=bold
  hi DiffLine                ctermfg=blue
  hi DiffOldLine             ctermfg=red     ctermbg=none
  hi DiffOldFile             ctermfg=red     ctermbg=none
  hi DiffNewFile             ctermfg=green   ctermbg=none
  hi DiffAdd                 ctermfg=green   ctermbg=none    term=bold
  hi DiffAdded               ctermfg=green   ctermbg=none    term=bold
  hi DiffDelete              ctermfg=red     ctermbg=none
  hi DiffRemoved             ctermfg=red     ctermbg=none
  hi DiffChange              ctermfg=cyan    ctermbg=none
  hi DiffChanged             ctermfg=cyan    ctermbg=none
  hi DiffText                ctermfg=blue    ctermbg=none    term=bold
  hi Directory               ctermfg=green
  hi Error                   ctermfg=red     ctermbg=none    term=bold
  hi ErrorMsg                ctermfg=red     ctermbg=none    term=bold
  hi Exception               ctermfg=magenta                 term=bold
  hi Float                   ctermfg=cyan                    term=bold
  hi FoldColumn              ctermfg=blue    ctermbg=none    term=bold,underline
  hi Folded                  ctermfg=blue    ctermbg=none    term=bold
  hi Function                ctermfg=yellow
  hi Identifier              ctermfg=yellow                  term=bold
  hi IncSearch               ctermfg=white   ctermbg=red     term=bold
  hi Keyword                 ctermfg=blue
  hi Label                   ctermfg=magenta
  hi LineNr                  ctermfg=black                   term=bold
  hi CursorLine              ctermfg=white   ctermbg=black   term=bold
  hi CursorLineNr            ctermfg=white   ctermbg=blue
  hi Macro                   ctermfg=yellow
  hi MatchParen              ctermfg=black   ctermbg=cyan    term=bold
  hi ModeMsg                 ctermfg=yellow                  term=bold
  hi MoreMsg                 ctermfg=cyan                    term=bold
  hi NonText                 ctermfg=black   ctermbg=none    term=bold
  hi Number                  ctermfg=green                   term=bold
  hi Operator                ctermfg=magenta                 term=bold
  hi PreCondit               ctermfg=cyan                    term=bold
  hi PreProc                 ctermfg=cyan                    term=bold
  hi Question                ctermfg=cyan                    term=bold
  hi Repeat                  ctermfg=cyan                    term=bold
  hi Search                  ctermfg=white   ctermbg=red     term=bold
  hi SpecialChar             ctermfg=magenta                 term=bold
  hi SpecialComment          ctermfg=black                   term=bold
  hi Special                 ctermfg=magenta                 term=bold
  hi SpecialKey              ctermfg=green                   term=bold
  hi Statement               ctermfg=blue
  hi StorageClass            ctermfg=blue
  hi String                  ctermfg=green
  hi Structure               ctermfg=cyan                    term=bold
  hi Tag                     ctermfg=magenta
  hi Title                   ctermfg=white
  hi Todo                    ctermfg=green   ctermbg=none
  hi Typedef                 ctermfg=blue
  hi Type                    ctermfg=magenta
  hi Underlined              ctermfg=white                   term=underline
  hi VertSplit               ctermfg=green   ctermbg=black   term=bold
  hi Visual                  ctermfg=white   ctermbg=black   term=bold
  hi VisualNOS               ctermfg=green   ctermbg=black   term=bold
  hi WarningMsg              ctermfg=red                     term=bold
  hi WildMenu                ctermfg=magenta ctermbg=black   term=bold

  " statusline
  hi StatusLine              ctermfg=white   ctermbg=black   term=bold
  hi StatusModFlag           ctermfg=red     ctermbg=black   term=bold
  hi StatusRO                ctermfg=magenta ctermbg=black   term=bold
  hi StatusHLP               ctermfg=green   ctermbg=black   term=bold
  hi StatusPRV               ctermfg=yellow  ctermbg=black   term=bold
  hi StatusFTP               ctermfg=blue    ctermbg=black   term=bold

  " spellchecking
  hi SpellLocal              ctermfg=black   ctermbg=cyan    term=bold,underline
  hi SpellBad                ctermfg=white   ctermbg=red     term=bold,underline
  hi SpellCap                ctermfg=black   ctermbg=blue    term=bold,underline
  hi SpellRare               ctermfg=black   ctermbg=magenta term=bold,underline

  " pmenu
  hi Pmenu                   ctermfg=white   ctermbg=black
  hi PmenuSel                ctermfg=none    ctermbg=black   cterm=bold
  hi PmenuSbar               ctermfg=black   ctermbg=white   cterm=bold

  " html
  hi htmlTag                 ctermfg=blue                    cterm=bold
  hi htmlEndTag              ctermfg=blue                    cterm=bold
  hi htmlTagName             ctermfg=yellow

  " xml
  hi xmlTag                  ctermfg=cyan
  hi xmlEndTag               ctermfg=cyan
  hi xmlTagName              ctermfg=yellow                  cterm=bold

  " perl
  hi perlStatement           ctermfg=magenta                 cterm=bold
  hi perlStatementStorage    ctermfg=red
  hi perlVarPlain            ctermfg=cyan
  hi perlVarPlain2           ctermfg=yellow                  cterm=bold

  " mini buffer explorer
  hi MBENormal               ctermfg=black                   cterm=bold
  hi MBEChanged              ctermfg=red
  hi MBEVisibleNormal        ctermfg=magenta
  hi MBEVisibleNormalActive  ctermfg=magenta                 cterm=bold
  hi MBEVisibleChanged       ctermfg=white
  hi MBEVisibleChangedActive ctermfg=red                     cterm=bold

  " rst
  hi rstEmphasis             ctermfg=white                   cterm=underline
  hi rstLiteralBlock         ctermfg=yellow
  hi rstInlineLiteral        ctermfg=yellow                  cterm=bold
  hi rstSections             ctermfg=red
  hi rstHyperlinkTarget      ctermfg=cyan
  hi rstStandaloneHyperlink  ctermfg=green                   cterm=bold
  hi rstInterpretedTextOrHyperlinkReference ctermfg=green    cterm=bold
  hi rstCitation             ctermfg=black                   cterm=bold
  hi rstQuotedLiteralBlock   ctermfg=yellow                  cterm=bold
  hi rstLineBlock            ctermfg=cyan

endif

  " yellow11 = #E6C473
  hi Normal                  guifg=#D9D9D9   guibg=#060912
  hi Boolean                 guifg=#BF567D
  hi Character               guifg=#DBDDE4
  hi Comment                 guifg=#8C8B89   guibg=#060912   gui=italic
  hi Conditional             guifg=#4682B4
  hi Constant                guifg=#b37b2D
  hi Cursor                                  guibg=#3B8C38
  hi Debug                   guifg=#BF567D
  hi Define                  guifg=#E6C473
  hi Delimiter               guifg=#8C8B89
  hi DiffLine                guifg=#3A63A6
  hi DiffOldLine             guifg=#A63131   guibg=#060912
  hi DiffOldFile             guifg=#A63131   guibg=#060912
  hi DiffNewFile             guifg=#3B8C38   guibg=#060912
  hi DiffAdd                 guifg=#5EB33E   guibg=#060912
  hi DiffAdded               guifg=#5EB33E   guibg=#060912
  hi DiffDelete              guifg=#A63131   guibg=#060912
  hi DiffRemoved             guifg=#A63131   guibg=#060912
  hi DiffChange              guifg=#4682B4   guibg=#060912
  hi DiffChanged             guifg=#4682B4   guibg=#060912
  hi DiffText                guifg=#3A63A6   guibg=#060912
  hi Directory               guifg=#3B8C38
  hi Error                   guifg=#CC475D   guibg=#060912
  hi ErrorMsg                guifg=#CC475D   guibg=#060912
  hi Exception               guifg=#BF567D
  hi Float                   guifg=#69A3BF
  hi FoldColumn              guifg=#69A3BF   guibg=#060912
  hi Folded                  guifg=#69A3BF   guibg=#121626
  hi Function                guifg=#E6C473
  hi Identifier              guifg=#E6C473                   gui=none
  hi IncSearch               guifg=#DBDDE4   guibg=#A63131
  hi Keyword                 guifg=#3A63A6
  hi Label                   guifg=#A562B3
  hi LineNr                  guifg=#333333
  hi CursorLine              guifg=#DBDDE4   guibg=#121626   gui=none
  hi CursorLineNr            guifg=#DBDDE4   guibg=#3A63A6
  hi Macro                   guifg=#b37b2D                   gui=none
  hi MatchParen              guifg=#121626   guibg=#69A3BF
  hi ModeMsg                 guifg=#E6C473
  hi MoreMsg                 guifg=#69A3BF
  hi NonText                 guifg=#333333   guibg=#060912
  hi Number                  guifg=#5EB33E
  hi Operator                guifg=#BF567D
  hi PreCondit               guifg=#BF567D   guibg=#060912   gui=none
  hi PreProc                 guifg=#69A3BF
  hi Question                guifg=#69A3BF
  hi Repeat                  guifg=#69A3BF
  hi Search                  guifg=#DBDDE4   guibg=#A63131
  hi SpecialChar             guifg=#BF567D
  hi SpecialComment          guifg=#8C8B89                   gui=italic
  hi Special                 guifg=#BF567D
  hi SpecialKey              guifg=#5EB33E
  hi Statement               guifg=#3A63A6   guibg=#060912
  hi StorageClass            guifg=#3A63A6
  hi String                  guifg=#3B8C38   guibg=#060912
  hi Structure               guifg=#5F87AF
  hi Tag                     guifg=#A562B3
  hi Title                   guifg=#AEAEAE   guibg=#060912   gui=none
  hi Todo                    guifg=#5EB33E   guibg=#121626
  hi Typedef                 guifg=#3A63A6
  hi Type                    guifg=#A562B3
  hi Underlined              guifg=#AEAEAE
  hi VertSplit               guifg=#121626   guibg=#E6C473
  hi Visual                  guifg=#DBDDE4   guibg=#8C8B89
  hi VisualNOS               guifg=#5EB33E   guibg=#8C8B89   gui=none
  hi WarningMsg              guifg=#CC475D
  hi WildMenu                guifg=#A562B3   guibg=#121626

  " statusline
  hi StatusLine              guifg=#AEAEAE   guibg=#121626   gui=none
  hi StatusLineNC            guifg=#121626   guibg=#AEAEAE
  hi StatusModFlag           guifg=#CC475D   guibg=#121626   gui=none
  hi StatusRO                guifg=#BF567D   guibg=#121626   gui=none
  hi StatusHLP               guifg=#5EB33E   guibg=#121626   gui=none
  hi StatusPRV               guifg=#E6C473   guibg=#121626   gui=none
  hi StatusFTP               guifg=#4682B4   guibg=#121626   gui=none

  " spellchecking
  hi SpellLocal              guifg=#121626   guibg=#A562B3   gui=none
  hi SpellBad                guifg=#DBDDE4   guibg=#A63131   gui=none
  hi SpellCap                guifg=#121626   guibg=#8496CC   gui=none
  hi SpellRare               guifg=#121626   guibg=#BF567D   gui=none

  " pmenu
  hi Pmenu                   guifg=#AEAEAE   guibg=#121626
  hi PmenuSel                guifg=#060912   guibg=#8C8B89
  hi PmenuSbar               guifg=#8C8B89   guibg=#DBDDE4

  " html
  hi htmlConstant            guifg=#b37b2D
  hi htmlComment             guifg=#8C8B89                   gui=italic
  hi htmlTag                 guifg=#8496CC
  hi htmlEndTag              guifg=#8496CC
  hi htmlTagName             guifg=#E6C473
  hi htmlTitle               guifg=#CC475D
  hi htmlPreProc             guifg=#69A3BF
  hi htmlBold                guifg=#3B8C38   guibg=#121626   gui=none
  hi htmlBoldUnderline       guifg=#3B8C38   guibg=#121626   gui=underline
  hi htmlBoldItalic          guifg=#5EB33E   guibg=#121626   gui=none
  hi htmlBoldUnderlineItalic guifg=#5EB33E   guibg=#121626   gui=none
  hi htmlUnderline                                           gui=underline
  hi htmlUnderlineItalic     guifg=#8496CC   guibg=#060912   gui=underline
  hi htmlItalic              guifg=#8496CC   guibg=#060912   gui=none
  hi htmlSpecial             guifg=#5F8787

  " mediawiki
  hi wikiParaFormatChar      guifg=#5EB33E
  hi wikiLink                guifg=#69A3BF

  " xml
  hi xmlTag                  guifg=#3A63A6
  hi xmlEndTag               guifg=#3A63A6
  hi xmlTagName              guifg=#b37b2D

  " perl
  hi perlStatement           guifg=#BF567D
  hi perlStatementStorage    guifg=#A63131
  hi perlVarPlain            guifg=#4682B4
  hi perlVarPlain2           guifg=#E6C473

  " mini buffer explorer
  hi MBENormal               guifg=#8C8B89
  hi MBEChanged              guifg=#A63131
  hi MBEVisibleNormal        guifg=#A562B3
  hi MBEVisibleNormalActive  guifg=#BF567D
  hi MBEVisibleChanged       guifg=#AEAEAE
  hi MBEVisibleChangedActive guifg=#CC475D

  " rst
  hi rstEmphasis             guifg=#AEAEAE                   gui=underline
  hi rstLiteralBlock         guifg=#b37b2D
  hi rstInlineLiteral        guifg=#E6C473
  hi rstSections             guifg=#A63131
  hi rstHyperlinkTarget      guifg=#4682B4
  hi rstStandaloneHyperlink  guifg=#5EB33E
  hi rstInterpretedTextOrHyperlinkReference  guifg=#5EB33E
  hi rstCitation             guifg=#AEAEAE
  hi rstQuotedLiteralBlock   guifg=#E6C473
  hi rstLineBlock            guifg=#4682B4

