" vim:ft=vim foldmethod=marker
" === Iroh Colorscheme ===
" By UnikMask <visorunik@gmail.com>
" https://github.com/UnikMask/iroh-vim
" Last Modified: recently
" === === === === === === ===


" Init spc settings: {{{"

let g:colors_name='iroh'

" }}}
" Palette: {{{

" Set palette dictionnary
let s:ro = {}

" Fill dictionnary with colors
let s:ro.bg 	=  ['#2e2b2a', 236]
let s:ro.fg 	=  ['#e9d49c', 187]
let s:ro.dcurs  =  ['#e9d49c', 187]

" Colors
let s:ro.ico2  =  ['#899470', 101]
let s:ro.ico10 =  ['#9eb185', 144]
let s:ro.ico13 =  ['#e3630a', 166]
let s:ro.ico5  =  ['#ff771d', 208]
let s:ro.ico6  =  ['#d38007', 172]
let s:ro.ico14 =  ['#faac09', 214]
let s:ro.ico18 =  ['#ffb032', 215]
let s:ro.ico0  =  ['#c22211', 124]
let s:ro.ico3  =  ['#ca2c18', 160]
let s:ro.ico11 =  ['#d33b24', 166]
let s:ro.ico17 =  ['#999999', 246]
let s:ro.ico7  =  ['#d6caab', 187]
let s:ro.ico15 =  ['#f6efdd', 255]
let s:ro.ico1  =  ['#403735', 237]
let s:ro.ico9  =  ['#7d5650', 95]
let s:ro.ico16 =  ['#8f5e51', 95]
let s:ro.ico8  =  ['#c2604c', 131]
let s:ro.ico4  =  ['#627400', 64]
let s:ro.ico12 =  ['#90c523', 112]

" }}}
" Set-Up: {{{

" Assign all elements their attribute colors.

" Background and foreground colors
let s:bg = s:ro.bg
let s:fg = s:ro.fg

" Shades of orange-yellow - Antimony
let s:mony0 = s:ro.ico13
let s:mony1 = s:ro.ico5
let s:mony2 = s:ro.ico6
let s:mony3 = s:ro.ico14
let s:mony4 = s:ro.ico18

" Shades of weaker green - Cobalts
let s:coba0 = s:ro.ico2
let s:coba1 = s:ro.ico10

" Shades of red - Iron glaze
let s:iron0 = s:ro.ico0
let s:iron1 = s:ro.ico3
let s:iron2 = s:ro.ico11

" Shades of beige - Brush
let s:brush0 = s:ro.ico7
let s:brush1 = s:ro.ico15

" Shades of grey - Silver
let s:silv0 = s:ro.ico17

" Shades of red-grey - Clay
let s:clay0 = s:ro.ico1
let s:clay1 = s:ro.ico9
let s:clay2 = s:ro.ico16
let s:clay3 = s:ro.ico8

" Shades of green - Copper
let s:copp0 = s:ro.ico4
let s:copp1 = s:ro.ico12

" Represent null color
let s:none = ['NONE', 'NONE']

" }}}
" Emphasis Set: {{{

let s:bold = 'bold,'
let s:italic = 'italic,'
let s:underline = 'underline,'
let s:undercurl = 'undercurl,'
let s:inverse = 'inverse,'

" }}}
" Function for highlight: {{{

" Function based on morhetz/gruvbox implementation of highlighting
" Arguments - group, fg, bg, emphasis
function! s:Highlight(group, fg, ...)
	" Assign foreground
	let fg = a:fg

	" If more than 1 extra arg, set extra as background.
	if a:0 >=1
		let bg = a:1
	else
		let bg = s:none
	endif

	" Add emphasis to the highlight for extra possibilities like inverse
	if a:0 >= 2 && strlen(a:2)
		let emstr = a:2
	else
		let emstr = 'NONE,'
	endif

	" Do highlight string 
	let hlstr = ['hi', a:group,
			\ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
			\ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
			\ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
			\ ]

	execute join(hlstr, ' ')
endfunction
" }}}
" Iroh Common Highlights: {{{

call s:Highlight('IrohFg', s:fg)
call s:Highlight('IrohBg', s:none, s:bg)

" Iron hues
call s:Highlight('IrohIron0', s:iron0)
call s:Highlight('IrohIron1', s:iron1)
call s:Highlight('IrohIron2', s:iron2)

" Clay hues
call s:Highlight('IrohClay0', s:clay0)
call s:Highlight('IrohClay1', s:clay1)
call s:Highlight('IrohClay2', s:clay2)
call s:Highlight('IrohClay3', s:clay3)

" Copper mony hues
call s:Highlight('IrohCopper0', s:copp0)
call s:Highlight('IrohCopper1', s:copp1)

" Brush hues
call s:Highlight('IrohBrush0', s:brush0)
call s:Highlight('IrohBrush1', s:brush1)

" Fiery golden hues
call s:Highlight('IrohAntimony0', s:mony0)
call s:Highlight('IrohAntimony1', s:mony1)
call s:Highlight('IrohGold0', s:mony2)
call s:Highlight('IrohGold1', s:mony3)
call s:Highlight('IrohGold2', s:mony4)

" Cobalting hues
call s:Highlight('IrohCobalt0', s:coba0)
call s:Highlight('IrohCobalt1', s:coba1)

" Metal hues
call s:Highlight('IrohMetal0', s:silv0)

" Alert boxes
call s:Highlight('IrohErrBox', s:iron1, s:clay0, s:bold)
call s:Highlight('IrohWarnBox', s:mony3, s:clay1, s:bold)
call s:Highlight('IrohAlertBox', s:bg, s:clay2, s:bold)
call s:Highlight('IrohDeathBox', s:iron2, s:iron0, s:bold)
call s:Highlight('IrohSuccessBox', s:copp1, s:bg, s:bold)

" Normal highlight
call s:Highlight('Normal', s:fg, s:bg)

" }}}

" === Vanilla colors (default, no plugin, no lang) ===
" General: {{{

" Make sure background is set to dark
set background=dark

" Set cursor line and cursor column with defaults
call s:Highlight('CursorLine', s:bg, s:clay0)
hi! link CursorColumn CursorLine

" Tab page line filler, label, and inactive label
call s:Highlight('TabLineFill', s:brush0, s:clay0)
call s:Highlight('TabLineSel', s:copp1, s:clay0)
hi! link TabLine TabLineFill

" Highlight cursor paired bracket : try here {}
call s:Highlight('MatchParen', s:none, s:clay1, s:bold)

" Highlight screen columns if shown
call s:Highlight('ColorColumn', s:none, s:clay0)

" Highlight concealed elements
call s:Highlight('Conceal', s:clay2, s:bg)

" Line number of the cursor line
call s:Highlight('CursorLineNr', s:mony2, s:clay0)

" Link non-text and special key to more clay2's light redish grey color.
hi! link NonText IrohClay2
hi! link SpecialKey IrohClay2
" Visual mode highlighting
call s:Highlight('Visual', s:none, s:bg, s:inverse)
hi! link VisualNOS Visual

" Search highlights
call s:Highlight('Search', s:copp1, s:bg, s:inverse)

call s:Highlight('IncSearch', s:brush1, s:bg, s:inverse)

" Underline highlight
call s:Highlight('Underlined', s:copp0, s:bg, s:underline)

" Status line vars if not overriden
call s:Highlight('StatusLine', s:brush1, s:clay1, s:inverse)
hi! link StatusLineNC StatusLine

" Column separating windows
hi! link VertSplit IrohClay1

" Wild menu completion
call s:Highlight('WildMenu', s:mony0, s:clay1, s:bold)

" Directory & special names in listing
hi! link Directory IrohGold0

" Titles for output from certain commands (:set all)
hi! link Title IrohMetal0

" Err messages on command line
hi! link ErrorMsg IrohErrBox
" -- More -- prompt
hi! link MoreMsg IrohSuccessBox
" -- Press enter prompt
hi! link Question IrohAlertBox
" Warning messages
hi! link WarningMsg IrohWarnBox

" }}}
" Gutter / Sidebar: {{{ 
" Line number on the side with :number
hi! link LineNr IrohClay1

" Sign bar
call s:Highlight('SignColumn', s:none, s:clay0)

" Folds line
call s:Highlight('Folded', s:clay2, s:clay0, s:italic)
" Col where fold displayed
hi! link FoldColumn Folded

" }}}
" Cursor: {{{

" Character under cursor
call s:Highlight('Cursor', s:none, s:none, s:inverse)
" Link all cursors to base cursor
hi! link vCursor Cursor
hi! link iCursor Cursor
hi! link lCursor Cursor
" }}}
" Syntax Highlighting: {{{

" Special characters
call s:Highlight('Special', s:mony1, s:bg, s:italic)

" Comment, todos, errors
call s:Highlight('Comment', s:clay2, s:bg)
call s:Highlight('Todo', s:clay3, s:bg, s:bold)
call s:Highlight('Error', s:iron2, s:clay2, s:inverse)

" === === General statements an structure === ===
" Loops
hi! link Repeat IrohIron2
" Labels
hi! link Label IrohIron2
" Exceptions
hi! link Exception IrohIron2
" Keywords
hi! link Keyword IrohIron2
" Conditional Statements
hi! link Conditional IrohGold1
" Operators
hi! link Operator IrohIron2
" Statements
call s:Highlight('Statement', s:mony4, s:bg, s:bold)

" === === Variables and functions/methods === ===
" Variables/ identifiers
hi! link Identifier IrohAntimony1
" Functions
hi! link Function IrohMetal0

" === === Preprocessor definitions === ===
" Preprocessor definitions
hi! link PreProc IrohCopper0
" Include definitions
hi! link Include IrohCopper0
" #define preprocessor definition
hi! link Define IrohCopper0
" Macro preproc
hi! link Macro IrohCopper0 
" Preproc conditionals
hi! link PreCondit IrohCopper0

" === === Constants and characters
" Generic constants
hi! link Constant IrohAntimony0
" Char constants
hi! link Character IrohMetal0
" String constants
hi! link String IrohClay3 
" Boolean constants
hi! link Boolean IrohCopper1
" Number Constants
hi! link Number IrohCobalt1
" Float constants
hi! link Float IrohCobalt1

" === === Generics and type definitions === ===
" Generic types
hi! link Type IrohAntimony1
" Statics, registers, volatiles
hi! link StorageClass IrohAntimony1
" Structures
hi! link Structure IrohCopper1
" Typedefs
hi! link Typedef IrohGold1 

" }}}
" Completion: {{{
" Pop-up menu snormal look
call s:Highlight('Pmenu', s:brush0, s:clay1)
" Pop-up menu selected item
call s:Highlight('PmenuSel', s:bg, s:silv0, s:bold)
" Pop-up menu scroll bar"
call s:Highlight('PmenuSbar', s:none, s:clay0)
" Pop-up menu scrollbar thumb
call s:Highlight('PmenuThumb', s:none, s:silv0)
" }}}
" Diffs: {{{

hi! link DiffDelete IrohErrBox
hi! link DiffAdd IrohSuccessBox
call s:Highlight('DiffChange', s:silv0, s:bg, s:inverse)
call s:Highlight('DiffText', s:clay1, s:bg, s:inverse)

" }}}

" === === Plugin-specific themeing === ===
" Most of those implementations are based
" on gruvbox implementations.
" EasyMotion: {{{

hi! link EasyMotionTarget Search
hi! link EasyMotionShade Comment

" }}}
" Sneak: {{{

autocmd ColorScheme iroh hi! link Sneak Search
autocmd ColorScheme iroh hi! link SneakLabel Search

" }}}
" GitGutter: {{{

hi! link GitGutterAdd IrohCopper1
hi! link GitGutterChange IrohMetal0
hi! link GitGutterDelete IrohIron1
hi! link GitGutterChangeDelete IrohMetal0

" }}}
" Vim Fugitive: {{{
hi! link gitcommitSelectedFile IrohCopper1
hi! link gitcommitDiscardedFile IrohIron1
" }}}
" Syntastic: {{{
call s:Highlight('SyntasticError', s:iron1, s:none, s:undercurl)
call s:Highlight('SyntasticWarning', s:mony3, s:none, s:undercurl)
hi! link SyntasticErrorSign IrohGold1
hi! link SyntasticWarningSign IrohGold1
" }}}
" NERDTree: {{{

hi! link NERDTreeDir IrohCopper0
hi! link NERDTreeDirSlash IrohCobalt0

hi! link NERDTreeOpenable IrohGold0
hi! link NERDTreeClosable IrohGold0

hi! link NERDTreeFile IrohBrush1
hi! link NERDTreeExecFile IrohAntimony1

hi! link NERDTreeUp IrohMetal0
hi! link NERDTreeCWD IrohCopper1
hi! link NERDTreeHelp IrohIron2

hi! link NERDTreeToggleOn IrohCobalt1
hi! link NERDTreeToggleOff IrohIron0

" }}}
" Coc Nvim: {{{

hi! link CocWarningSign IrohGold1
hi! link CocErrorSign IrohIron1
hi! link CocInfoSign IrohCobalt1
hi! link CocHintSign IrohMetal0

" }}}

" === === Filetype specific highlighting === ===
" C: {{{

hi! link cOperator Operator
hi! link cStructure Structure

" }}}
" Java: {{{

hi! link javaAnnotation IrohCobalt1
hi! link javaDocTags IrohCobalt1
hi! link javaCommentTitle IrohMetal0
hi! link javaParen IrohBrush0
hi! link javaParen1 IrohBrush0
hi! link javaParen2 IrohBrush0
hi! link javaOperator Operator
hi! link javaVarArg IrohClay2

" }}}
" Vim: {{{

hi! link vimCommentTitle IrohMetal0
hi! link vimNotation IrohAntimony1
hi! link vimBracket IrohAntimony1
hi! link vimMapModKey IrohAntimony1
hi! link vimFuncSID IrohIron2
hi! link vimSetSep IrohBrush
hi! link vimSep IrohBrush1
hi! link vimContinue IrohBrush1


" }}}
