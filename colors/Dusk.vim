" Vim color file
" Maintaner: Jacob Degeling
" URL: http://jacobdegeling.com
" Last Change: 18-02-2013
" Version: 0.1
" Notes: MacVim port of the Dusk Xcode theme. This file is a fork of the rdark
" theme. Because I don't know how to start a colorscheme file on my own.
"
" Features:
"   - let dusk_current_line = 1 if you want to highlight the current line
"
" Changelog:
"   0.1 - Initial release

set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "dusk"

" Current Line
if exists('dusk_current_line') && dusk_current_line == 1
	set cursorline
	hi CursorLine guibg=#191f21
endif

" Default Colors
hi Normal guifg=#a8a8a8 guibg=#1f1f1f
hi NonText guifg=#2c3032 guibg=#1a1a1a gui=none
hi link Cursor Normal
hi link ICursor Normal

" Search
hi Search guifg=#2e3436 guibg=#B2B04D
hi IncSearch guibg=#595A2C guifg=#fcaf3e

" Window Elements
hi StatusLine guifg=#2e3436 guibg=#babdb6 gui=none
hi StatusLineNC guifg=#2e3436 guibg=#888a85 gui=none
hi VertSplit guifg=#555753 guibg=#888a85 gui=none
hi Visual guifg=#1e2426 guibg=#EC008C
hi MoreMsg guifg=#729fcf
hi Question guifg=#8ae234 gui=none
hi WildMenu guifg=#eeeeec guibg=#0e1416
hi LineNr guifg=#2c3032 guibg=#1f1f1f gui=none
hi SignColumn guibg=#1e2426

" Pmenu
hi Pmenu guibg=#2e3436 guifg=#eeeeec
hi PmenuSel guibg=#ffffff guifg=#1e2426
hi PmenuSbar guibg=#555753
hi PmenuThumb guifg=#ffffff

" Diff
hi DiffDelete guifg=#2e3436 guibg=#0e1416
hi DiffAdd guibg=#1f2b2d
hi DiffChange guibg=#2e3436
hi DiffText guibg=#000000 gui=none

" Folds
hi Folded guifg=#d3d7cf guibg=#204a87
hi FoldColumn guifg=#3465a4 guibg=#000000

" Specials
hi Title guifg=#fcaf3e
hi Todo guifg=#fcaf3e guibg=bg
hi SpecialKey guifg=#ef2929

" Tabs
hi TabLine guibg=#0a1012 guifg=#888a85
hi TabLineFill guifg=#0a1012
hi TabLineSel guibg=#555753 guifg=#eeeeec gui=none

" Matches
hi MatchParen guifg=#2e3436 guibg=#fcaf3e

" Tree
hi Directory guifg=#ffffff

" Syntax
hi Comment guifg=#44C15D
hi CommentSpecial guifg=#267230
hi Constant guifg=#02B0C8
hi String guifg=#E53D4A
hi Number guifg=#8D83CD
hi Character guifg=#8D83CD
hi Statement guifg=#af2488 gui=none
hi Identifier guifg=#02B0C8
hi PreProc guifg=#D28F5F
hi Function guifg=#90CA70
hi Type guifg=#af2488 gui=none
hi Keyword guifg=#AF2488
hi Special guifg=#888a85
hi SpecialChar guifg=#e53d4a
hi Error guifg=#eeeeec guibg=#cc0000
hi Underlined guifg=#3433D6 gui=none
hi Attribute guifg=#68878F

" Vim
hi link vimGroup Normal " vimGroup guifg=#02b0c8
hi link vimHiTerm Attribute
hi link vimHiAttrib Character
hi link vimCOmmentTitle CommentSpecial

" PHP
hi link phpRegion Normal
hi phpRegionDelimiter guifg=#ad7fa8
hi phpPropertySelector guifg=#888a85
hi phpPropertySelectorInString guifg=#888a85
hi phpArrayPair guifg=#888a85
hi phpAssignByRef guifg=#888a85
hi phpRelation guifg=#888a85
hi phpMemberSelector guifg=#888a85
hi phpUnknownSelector guifg=#888a85
hi link phpVarSelector Normal
hi link phpIdentifier Normal
hi phpSemicolon guifg=#888a85 gui=none
hi link phpFunctions PreProc
hi link phpParent Normal
hi link phpSpecial Keyword
hi link phpStringSingle Character
hi link phpOperator Normal
hi link phpNumber Number
hi phpMagicConstants guifg=#90CA70

" jQuery
hi link jQuery Normal
hi link jUtilities Normal
hi link jClass String

" JavaScript
hi link javaScript Normal
hi link javaScriptParens Normal
hi link javaScriptMember Normal
hi javaScriptBraces guifg=#888a85
hi javaScriptOperator guifg=#888a85
hi link javaScriptValue Number
hi link javaScriptFunction Keyword
hi link javaScriptOperator Keyword
hi link javaScriptIdentifier Keyword
hi link javaScriptStringS Character

" HTML
hi link htmlTag Keyword
hi link htmlEndTag Keyword 
hi link htmlTagName Keyword
hi link htmlSpecialTagName Keyword
hi link htmlArg Attribute
hi link htmlTitle Normal
hi link htmlSpecialChar Character
hi link htmlLink Normal
hi link htmlH1 htmlTitle
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1
hi link htmlH5 htmlH1
hi link htmlH6 htmlH1

" XML
hi link xmlTagName htmlTag
hi link xmlTag htmlTag
hi link xmlEndTag htmlEndTag
hi link xmlAttrib htmlArg

" Markdown
hi link markdownHeadingDelimiter PreProc
hi link markdownH1 markdownHeadingDelimiter
hi link markdownH2 markdownHeadingDelimiter
hi link markdownH3 markdownHeadingDelimiter
hi link markdownH4 markdownHeadingDelimiter
hi link markdownH5 markdownHeadingDelimiter
hi link markdownH6 markdownHeadingDelimiter
hi link markdownCodeBlock Attribute
hi link markdownUrl Underlined

" CSS
hi link cssSelectorOp Normal
hi link cssSelectorOp2 cssSelectorOp
hi link cssUIProp htmlArg
hi link cssPagingProp cssUIProp
hi link cssPositioningProp cssUIProp
hi link cssGeneratedContentProp cssUIProp
hi link cssRenderProp cssUIProp
hi link cssBoxProp cssUIProp
hi link cssTextProp cssUIProp
hi link cssColorProp cssUIProp
hi link cssFontProp cssUIProp
hi link cssDimensionProp cssUIProp
hi link cssBorderOutlineProp cssUIProp
hi link cssVendor cssUIProp
hi link cssDefinition cssUIProp
hi link cssMarginProp cssUIProp
hi link cssPaddingProp cssUIProp
hi link cssBackgroundProp cssUIProp
hi link cssFlexibleBoxProp cssUIProp
hi link cssTransitionProp cssUIProp
hi link cssTransformProp cssUIProp
hi link cssListProp cssUIProp

hi cssPseudoClassId guifg=#EDA26B
hi link cssBraces Normal
hi link cssTagName PreProc
hi link cssClassName cssTagName
hi link cssIdentifier cssTagName
hi link cssInclude Function
hi link cssColor cssValueLength
hi link cssMedia Keyword
hi link cssFunction Character
hi link cssFunctionName Normal

hi link cssCommonAttr Constant
hi link cssUIAttr Constant
hi link cssTableAttr Constant
hi link cssPagingAttr Constant
hi link cssGeneratedContentAttr Constant
hi link cssAuralAttr Constant
hi link cssRenderAttr Constant
hi link cssBoxAttr Constant
hi link cssTextAttr Constant
hi link cssColorAttr Constant
hi link cssFontAttr Constant
hi link cssPositioningAttr Constant

" SCSS
hi link scssClass cssClassName
hi link scssId cssIdentifier
hi link scssClassChar cssClassName
hi link scssIdChar cssIdentifier
hi link scssVariableValue Normal
