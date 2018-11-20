" ===============================================================
" falcon
" 
" URL: https://github.com/fenetikm/falcon
" Author: Michael Welford
" License: MIT
" Last Change: 2018/03/03 15:01
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="falcon"

hi ALEErrorSign guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEWarningSign guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEInfoSign guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=NONE ctermfg=NONE guibg=#89898c ctermbg=245 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi CursorLineNr guifg=#89898c ctermfg=245 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi Directory guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#476629 ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#665729 ctermbg=58 gui=NONE cterm=NONE
hi DiffDelete guifg=NONE ctermfg=NONE guibg=#663829 ctermbg=237 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=#476629 ctermbg=238 gui=NONE cterm=NONE
hi ErrorMsg guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#89898c ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#89898c ctermfg=245 guibg=#252527 ctermbg=235 gui=NONE cterm=NONE
hi SignColumn guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#000002 ctermfg=0 guibg=#bfdaff ctermbg=153 gui=NONE cterm=NONE
hi LineNr guifg=#646466 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#bfdaff ctermfg=153 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi NonText guifg=#3e3e40 ctermfg=237 guibg=#0b0b1a ctermbg=233 gui=NONE cterm=NONE
hi Normal guifg=#d4d4d9 ctermfg=188 guibg=#0b0b1a ctermbg=233 gui=NONE cterm=NONE
hi PMenu guifg=#d4d4d9 ctermfg=188 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi PMenuSel guifg=#000002 ctermfg=0 guibg=#ffbf00 ctermbg=214 gui=NONE cterm=NONE
hi PmenuSbar guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PmenuThumb guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Question guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=#000002 ctermfg=0 guibg=#dfffbf ctermbg=193 gui=NONE cterm=NONE
hi SpecialKey guifg=#808080 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#d4d4d9 ctermfg=188 guibg=#89898c ctermbg=245 gui=NONE cterm=NONE
hi StatusLineNC guifg=#afafb2 ctermfg=145 guibg=#89898c ctermbg=245 gui=NONE cterm=NONE
hi TabLine guifg=#89898c ctermfg=245 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#252527 ctermbg=235 gui=NONE cterm=NONE
hi TabLineSel guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#dfffbf ctermfg=193 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=#ffefbf ctermfg=229 guibg=#89898c ctermbg=245 gui=NONE cterm=NONE
hi WildMenu guifg=#0b0b1a ctermfg=233 guibg=#ffbf00 ctermbg=214 gui=NONE cterm=NONE
hi Comment guifg=#89898c ctermfg=245 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Character String
hi link Boolean Constant
hi link Number String
hi link Float String
hi Identifier guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Function guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi Operator guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi link Exception Statement
hi PreProc guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi Type guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi Special guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special
hi Todo guifg=#000002 ctermfg=0 guibg=#ffefbf ctermbg=229 gui=NONE cterm=NONE
hi QuickFixLine guifg=#ff4000 ctermfg=202 guibg=#252527 ctermbg=235 gui=NONE cterm=NONE
hi BufTabLineCurrent guifg=#d4d4d9 ctermfg=188 guibg=#89898c ctermbg=245 gui=NONE cterm=NONE
hi BufTabLineActive guifg=#afafb2 ctermfg=145 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi BufTabLineHidden guifg=#89898c ctermfg=245 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi BufTabLineFill guifg=NONE ctermfg=NONE guibg=#252527 ctermbg=235 gui=NONE cterm=NONE
hi cssTagName guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp2 guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIdentifier guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssInclude guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIncludeKeyword guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi cssBraces guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttributeSelector guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssProp guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fzf1 guifg=#ffbf00 ctermfg=214 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi fzf2 guifg=#ff8000 ctermfg=208 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi fzf3 guifg=#ff8000 ctermfg=208 guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi gitcommitSummary guifg=#dfffbf ctermfg=193 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitBranch guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedType guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedType guifg=#779954 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedFile guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedFile guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitconfigSection guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitconfigVariable guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goDeclaration guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goDeclType guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goType guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goUnsignedInts guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goBuiltins guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goVar guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHyperTextJump guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi helpHeadline guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpOption guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentGuidesOdd guifg=NONE ctermfg=NONE guibg=#3e3e40 ctermbg=237 gui=NONE cterm=NONE
hi IndentGuidesEven guifg=NONE ctermfg=NONE guibg=#252527 ctermbg=235 gui=NONE cterm=NONE
hi javaScriptBraces guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsBrackets guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsClassBraces jsBrackets
hi link jsBraces jsBrackets
hi link jsObjectBraces jsBrackets
hi link jsParens jsBrackets
hi jsObjectKey guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFuncBraces jsBrackets
hi link jsFuncParens jsBrackets
hi link jsIfElseBraces jsBrackets
hi jsFuncArgs guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExtendsKeyword guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFunction guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunction guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsReturn guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassDefinition guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassProperty guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassKeyword guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassFuncName guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncName guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsStorageClass guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectSeparator guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectValue guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsRegexpCharClass guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsThis guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi jsFuncCall guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectProp guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsConditional guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsVariableDef guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncBlock guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeywordMatch guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEqual guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEndTag guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagN guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagName guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncKeyword guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncTable guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncName guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncCall guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncArgName guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaCond guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaLocal guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncParens guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaParens guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaBraces guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mkdLink guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mkdURL guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link mkdInlineURL mkdURL
hi mkdBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi htmlBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi mkdListItem guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlItalic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi NERDTreeCWD guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeClosable guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeGitStatusDirDirty guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpCommentTitle guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpDocTags guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpDocCustomTags guifg=#bfdaff ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpStorageClass guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpClasses guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi phpStructure guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi phpNumber guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link phpFloat phpNumber
hi phpMethod guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpFunctions guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpRepeat guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpKeyword guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpType guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpMemberSelector guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpOperator guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpVarSelector guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpIdentifier guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugDeleted guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugBracket guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug1 guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug2 guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonStatement guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonFunction guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonExClass guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinObj guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonDot guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyDefine guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyFunction guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyConstant guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubySymbol guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubySymbolDelimiter guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyArrayDelimiter guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlockParameterList guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyCurlyBlockDelimiter guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyDoBlock guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyLocalVariableOrMethod guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shVariable guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#89898c ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#89898c ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#bfdaff ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarComment guifg=#3e3e40 ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarKind guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarNestedKind guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarScope guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarType guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarSignature guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarPseudoID guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarFoldIcon guifg=#89898c ctermfg=245 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarHighlight guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityPublic guifg=#779954 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityProtected guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityPrivate guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tmuxCmds guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tmuxOptsSet guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tmuxOptions guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tmuxOptsSetw guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigVarDelim guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigTagDelim guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlEndTag guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigString guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigOperator guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigTagBlock guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlLink guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigVariable guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi snipSnippetHeaderKeyword guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi snipSnippetFooterKeyword guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#779954 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#afafb2 ctermfg=145 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SignatureMarkText guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#89898c ctermfg=245 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic
hi vimCommand guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimVar guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimLet guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimNotFunc guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimIsCommand guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimOperParen guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimFuncVar guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimFuncName guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimAutoEvent guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMap guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockCollectionItemStart guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowMappingKey guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlNull guifg=#ff4000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link yamlBool yamlNull
hi yamlPlainScalar guifg=#d4d4d9 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshCommands guifg=#ffbf00 ctermfg=214 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshBrackets guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshOptStart guifg=#ff8000 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshVariableDef guifg=#8fa3bf ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshTypes guifg=#ffefbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================
