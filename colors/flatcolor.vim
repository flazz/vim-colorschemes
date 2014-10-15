" Color scheme based on harlequin by Niels Madan and FlatUIColors (http://flatuicolors.com)
"
" Author: Max St
" URL: github.com/MaxSt/flatcolor

hi clear

set background=dark

if exists("syntax_on")
    syntax reset
endif

if !has("gui_running") && &t_Co != 256
    finish
endif

if !exists("g:flatcolor_cursorlinebold")
    let g:flatcolor_cursorlinebold=0
endif

if !exists("g:flatcolor_bluebg")
    let g:flatcolor_bluebg=0
endif

if !exists("g:flatcolor_termcolors")
    let g:flatcolor_termcolors=256
endif

let colors_name = "flatcolor"



if g:flatcolor_termcolors == 256
  let s:white = ['#FFFFFF', 15]
  let s:black = ['#000000', 0]
  let s:greys = [['#BEBEBE', 250], ['#808080', 244], ['#696969', 242], ['#545454', 240], ['#343434', 236], ['#080808', 232]]
  let s:darkgreys = [['#080808',232],['#121212',233],["#1c1c1c",234],['#262626',235],["#303030",236],["#3a3a3a",237],["#444444",238],["#4e4e4e",239]]

  let s:clouds = ['#ECF0F1', 15] " very light gray

  let s:cerise = ['#FF0033', 197] " red/ping

  let s:emerald = ['#2ECC71', 41] " green

  let s:orange = ['#ff5f00', 202]

  let s:pomegranate = ['#C0392B', 196] "red

  let s:peterriver = ['#3498DB', 68] "light blue

  let s:turquoise = ['#1ABC9C', 37]

  let s:gold = ['#FFD700', 220]

  let s:moss = ['#004225', 22] "dark green

  let s:purple = ['#875faf', 97] " purple

  let s:text = s:clouds

  if g:flatcolor_bluebg == 1
    let s:text_bg = ['#2c3e50', 23]
    let s:cursorline = ['#34495e', 59]
  else
    let s:text_bg = ['#1C1C1C', 234]
    let s:cursorline = ['#808080', 244]
  endif

  let s:text_bg_light = ['#303030', 236]
else
  let s:white = ['#BDC3C7', 15]
  let s:black = ['#292929', 8]
  let s:greys = [['#BEBEBE', 250], ['#808080', 244], ['#696969', 242], ['#545454', 240], ['#343434', 236], ['#080808', 232]]
  let s:darkgreys = [['#080808',232],['#121212',233],["#1c1c1c",234],['#262626',235],["#303030",236],["#3a3a3a",237],["#444444",238],["#4e4e4e",239]]

  let s:clouds = ['#ECF0F1', 15] " very light gray

  let s:cerise = ['#FF0033', 1] " red/ping

  let s:emerald = ['#2ECC71', 2] " green

  let s:orange = ['#F39C12', 11]

  let s:pomegranate = ['#C0392B', 9] "red

  let s:peterriver = ['#3498DB', 4] "light blue

  let s:turquoise = ['#1ABC9C', 6]

  let s:gold = ['#F1C40F', 3]

  let s:moss = ['#27ae60', 10] "dark green

  let s:purple = ['#9b59b6', 5] " purple

  let s:text = s:clouds
  if g:flatcolor_bluebg == 1
    let s:text_bg = ['#2c3e50', 8]
    let s:cursorline = ['#34495e', 0]
  else
    let s:text_bg = ['#1C1C1C', 8]
    let s:cursorline = ['#808080', 0]
  endif
  let s:text_bg_light = ['#2b2b2b', 0]
endif


" pass empty string for defaults: guifg - fg, guibg - bg, gui - none, guisp - fg
function! s:Highlight(group_name, guifg, guibg, gui, guisp)
    if !empty(a:guifg)
        let guifg = a:guifg
    else
        let guifg = ['fg', 'fg']
    endif
    if !empty(a:guibg)
        let guibg = a:guibg
    else
        let guibg = ['bg', 'bg']
    endif
    if !empty(a:gui)
        let gui = a:gui
    else
        let gui = 'none'
    endif
    if !empty(a:guisp)
        let guisp = a:guisp
    else
        let guisp = ['fg', 'fg']
    endif

    if has("gui_running")
        exe 'hi ' . a:group_name . ' guifg=' . guifg[0] . ' guibg=' . guibg[0] . ' gui=' . gui . ' guisp=' . guisp[0]
    else
        exe 'hi ' . a:group_name . ' ctermfg=' . guifg[1] . ' ctermbg=' . guibg[1] . ' cterm=' . gui
    endif
endfunction

" Function without defaults.
function! s:HighlightX(group_name, guifg, guibg, gui, guisp)
    if empty(a:guifg) && empty(a:guibg) && empty(a:gui) && !has("gui_running")
        return
    endif

    let hi_str = 'hi ' . a:group_name

    if !empty(a:guifg)
        if has("gui_running")
            let hi_str = hi_str . ' guifg=' . a:guifg[0]
        else
            let hi_str = hi_str . ' ctermfg=' . a:guifg[1]
        endif
    endif

    if !empty(a:guibg)
        if has("gui_running")
            let hi_str = hi_str . ' guibg=' . a:guibg[0]
        else
            let hi_str = hi_str . ' ctermbg=' . a:guibg[1]
        endif
    endif

    if !empty(a:gui)
        if has("gui_running")
            let hi_str = hi_str . ' gui=' . a:gui
        else
            let hi_str = hi_str . ' cterm=' . a:gui
        endif
    endif

    if !empty(a:guisp) && has("gui_running")
        let hi_str = hi_str . ' guisp=' . a:guisp[0]
    endif

    exe hi_str
endfunction

call s:HighlightX('Normal', s:text, s:text_bg, '', '')

call s:Highlight('Statement',   s:cerise, '', 'bold', '')
call s:Highlight('Keyword',     s:cerise, '', 'bold', '')
call s:Highlight('Conditional', s:cerise, '', 'bold', '')
call s:Highlight('Operator',    s:cerise, '', '', '')
call s:Highlight('Label',       s:cerise, '', '', '')
call s:Highlight('Repeat',      s:cerise, '', 'bold', '')

call s:Highlight('Type',            s:pomegranate, '', '', '')
call s:Highlight('StorageClass',    s:cerise, '', '', '')
call s:Highlight('Structure',       s:cerise, '', '', '')
call s:Highlight('TypeDef',         s:cerise, '', 'bold', '')

call s:Highlight('Exception',       s:turquoise, '', 'bold', '')
call s:Highlight('Include',         s:turquoise, '', 'bold', '')

call s:Highlight('PreProc',         s:turquoise, '', '', '')
call s:Highlight('Macro',           s:turquoise, '', '', '')
call s:Highlight('Define',          s:turquoise, '', '', '')
call s:Highlight('Delimiter',       s:turquoise, '', '', '')
call s:Highlight('Ignore',          s:turquoise, '', '', '')
call s:Highlight('PreCondit',       s:turquoise, '', 'bold', '')
call s:Highlight('Debug',           s:turquoise, '', 'bold', '')

call s:Highlight('Function',        s:orange, '', '', '')
call s:Highlight('Identifier',      s:orange, '', '', '')

call s:Highlight('Comment',         s:emerald, '', '', '')
call s:Highlight('CommentEmail',    s:emerald, '', 'underline', '')
call s:Highlight('CommentUrl',      s:emerald, '', 'underline', '')
call s:Highlight('SpecialComment',  s:emerald, '', 'bold', '')
call s:Highlight('Todo',            s:emerald, '', 'bold', '')

call s:Highlight('String',          s:gold, '', '', '') 
call s:Highlight('SpecialKey',      s:darkgreys[4], '', 'bold', '')
call s:Highlight('Special',         s:peterriver, '', 'bold', '')
call s:Highlight('SpecialChar',     s:peterriver, '', 'bold', '')

call s:Highlight('Boolean',         s:peterriver, '', 'bold', '')
call s:Highlight('Character',       s:peterriver, '', 'bold', '')
call s:Highlight('Number',          s:peterriver, '', 'bold', '')
call s:Highlight('Constant',        s:peterriver, '', 'bold', '')
call s:Highlight('Float',           s:peterriver, '', 'bold', '')

call s:Highlight('FoldColumn',      s:greys[1], s:black, '', '')
call s:Highlight('Folded',          s:greys[1], s:black, '', '')

call s:Highlight('MatchParen',      s:black, s:orange, 'bold', '')

call s:Highlight('LineNr',          s:greys[2], s:darkgreys[2], '', '')

call s:Highlight('NonText',         s:greys[2], '', '', '')
call s:HighlightX('CursorColumn',   '', s:darkgreys[4], '', '')
if g:flatcolor_cursorlinebold == 1
  call s:HighlightX('CursorLine',     '', s:cursorline, 'bold', '')
else
  call s:HighlightX('CursorLine',     '', s:cursorline, 'none', '')
endif
call s:Highlight('SignColumn',      '', s:darkgreys[4], '', '')
call s:HighlightX('ColorColumn',    '', s:darkgreys[4], '', '')

call s:Highlight('Error',           s:pomegranate, s:greys[5], 'bold', '')
call s:Highlight('ErrorMsg',        s:pomegranate, '', 'bold', '')
call s:Highlight('WarningMsg',      s:pomegranate, '', '', '')

call s:Highlight('Cursor',          s:darkgreys[3], s:white, '', '')
call s:Highlight('vCursor',         s:darkgreys[3], s:white, '', '')
call s:Highlight('iCursor',         s:darkgreys[3], s:white, '', '')

call s:Highlight('StatusLine',      s:white, s:black, 'bold', '')
call s:Highlight('StatusLineNC',    s:greys[1], s:darkgreys[3], 'bold', '')
call s:Highlight('VertSplit',       s:greys[1], s:darkgreys[3], 'bold', '')

call s:Highlight('Conceal',        s:emerald, '', '', '')

call s:Highlight('ModeMsg',         s:gold, '', 'bold', '')

if has("spell")
    call s:Highlight('SpellBad',     s:pomegranate, '', '', '')
    call s:HighlightX('SpellBad',    '', '', 'undercurl', s:pomegranate)
    call s:Highlight('SpellCap',     s:pomegranate, '', '', '')
    call s:HighlightX('SpellCap',    '', '', 'undercurl', s:pomegranate)
    call s:Highlight('SpellLocal',     s:pomegranate, '', '', '')
    call s:HighlightX('SpellLocal',  '', '', 'undercurl', s:pomegranate)
    call s:Highlight('SpellRare',     s:pomegranate, '', '', '')
    call s:HighlightX('SpellRare',   '', '', 'undercurl', s:pomegranate)
endif

call s:HighlightX('VisualNOS',      '', s:purple, '', '')
call s:HighlightX('Visual',         '', s:purple, '', '')
call s:Highlight('Search',          s:white, s:cerise, '', '')
call s:Highlight('IncSearch',       s:white, s:cerise, '', '')

call s:Highlight('Pmenu',           s:black, s:orange, '', '')
call s:Highlight('PmenuSel',        s:orange, s:black, 'bold', '')
call s:Highlight('Pmenu',           '', s:greys[5], '', '')
call s:Highlight('Pmenu',           s:emerald, '', '', '')

call s:HighlightX('DiffDelete',     s:pomegranate, s:pomegranate, '', '')
call s:HighlightX('DiffText',       '', s:greys[3], '', '')
call s:HighlightX('DiffChange',     '', s:greys[4], '', '')
call s:HighlightX('DiffAdd',        '', s:moss, '', '')

call s:HighlightX('Underlined',     '', '', 'underline', '')

call s:Highlight('Directory',       s:turquoise, '', '', '')
call s:Highlight('Question',        s:turquoise, '', '', '')
call s:Highlight('MoreMsg',         s:turquoise, '', '', '')
  
call s:Highlight('WildMenu',        s:black, s:peterriver, 'bold', '')

call s:Highlight('Title',           '', '', 'underline', '')

call s:HighlightX('Tag',            '', '', 'bold', '')

"*** PYTHON ***
call s:Highlight('pythonDecorator',     s:cerise, '', '', '')
call s:Highlight('pythonException',     s:turquoise, '', 'bold', '')
call s:Highlight('pythonExceptions',    s:turquoise, '', '', '')

"*** RUBY ***
call s:Highlight('rubyModule',            s:turquoise, '', '', '')
call s:Highlight('rubyModuleNameTag',     s:text, '', '', '')
call s:Highlight('rubyPseudoVariable',    s:text, '', '', '')
call s:Highlight('rubyClass',             s:cerise, '', '', '')
call s:Highlight('rubyClassNameTag',      s:orange, '', '', '')
call s:Highlight('rubyDefine',            s:cerise, '', '', '')
call s:Highlight('rubyConstant',          s:text, '', '', '')
call s:Highlight('rubyStringDelimiter',   s:gold, '', '', '')
call s:Highlight('rubyInterpolation',     s:peterriver, '', '', '')
call s:Highlight('rubyInterpolationDelimiter',     s:peterriver, '', '', '')

"*** JAVASCRIPT ***
call s:Highlight('javaScriptNull',        s:peterriver, '', 'bold', '')
call s:Highlight('javaScriptNumber',      s:peterriver, '', 'bold', '')
call s:Highlight('javaScriptFunction',    s:cerise, '', '', '')
call s:Highlight('javaScriptOperator',    s:cerise, '', 'bold', '')
call s:Highlight('javaScriptBraces',      s:text, '', '', '')
call s:Highlight('javaScriptIdentifier',  s:pomegranate, '', '', '')
call s:Highlight('javaScriptMember',      s:orange, '', '', '')
call s:Highlight('javaScriptType',        s:orange, '', '', '')

"*** CLOJURE ***
call s:Highlight('clojureDefine',         s:cerise, '', '', '')
call s:Highlight('clojureSpecial',        s:cerise, '', '', '')
call s:Highlight('clojureCond',           s:cerise, '', '', '')
call s:Highlight('clojureParen0',         s:text, '', '', '')
call s:Highlight('clojureMacro',          s:turquoise, '', 'bold', '')
call s:Highlight('clojureDispatch',       s:peterriver, '', 'bold', '')
call s:Highlight('clojureError',          s:black, s:pomegranate, 'bold', '')

"*** SCALA ***
call s:Highlight('scalaClassName',        s:orange, '', '', '')
call s:Highlight('scalaConstructor',      s:text, '', '', '')

"*** VIMSCRIPT ***
call s:Highlight('vimCommentTitle',       s:emerald, '', 'bold', '')
call s:Highlight('vimParenSep',           s:text, '', '', '')
call s:Highlight('vimSep',                s:text, '', '', '')
call s:Highlight('vimOper',               s:text, '', '', '')

"*** XML ***
call s:Highlight('xmlProcessingDelim',       s:pomegranate, '', '', '')
call s:Highlight('xmlNamespace',             s:orange, '', '', '')
call s:Highlight('xmlTag',                   s:orange, '', '', '')
call s:Highlight('xmlTagName',               s:orange, '', '', '')
call s:Highlight('xmlEndTag',                s:orange, '', '', '')
call s:Highlight('xmlAttrib',                s:pomegranate, '', '', '')
call s:Highlight('xmlAttribPunct',           s:pomegranate, '', '', '')
call s:Highlight('xmlEntity',                s:peterriver, '', 'bold', '')
call s:Highlight('xmlEntityPunct',           s:peterriver, '', '', '')

"*** HTML ***
call s:Highlight('htmlTagName',              s:orange, '', '', '')
call s:Highlight('htmlTag',                  s:orange, '', '', '')
call s:Highlight('htmlTagN',                 s:orange, '', '', '')
call s:Highlight('htmlEvent',                s:pomegranate, '', '', '')
call s:Highlight('htmlEventDQ',              s:turquoise, '', '', '')
call s:Highlight('htmlH1',                   '', '', 'bold', '')
call s:Highlight('htmlH2',                   '', '', 'bold', '')
call s:Highlight('htmlH3',                   '', '', 'bold', '')
call s:Highlight('htmlH4',                   '', '', 'bold', '')
call s:Highlight('htmlScriptTag',            s:turquoise, '', '', '')

"*** HTML/JAVASCRIPT ***
call s:Highlight('javaScript',               s:text, '', '', '')

"*** CSS ***
call s:Highlight('cssSelectorOp',            s:text, '', '', '')
call s:Highlight('cssSelectorOp2',           s:text, '', '', '')
call s:Highlight('cssBraces',                s:text, '', '', '')
call s:Highlight('cssPseudoClass',           s:turquoise, '', '', '')
call s:Highlight('cssValueNumber',           s:peterriver, '', '', '')
call s:Highlight('cssValueLength',           s:peterriver, '', '', '')
call s:Highlight('cssColor',                 s:peterriver, '', '', '')
call s:Highlight('cssImportant',             s:turquoise, '', 'bold', '')
call s:Highlight('cssCommonAttr',            s:peterriver, '', 'bold', '')
call s:Highlight('cssRenderAttr',            s:peterriver, '', 'bold', '')
call s:Highlight('cssBoxAttr',               s:peterriver, '', 'bold', '')
call s:Highlight('cssUIAttr',                s:peterriver, '', 'bold', '')
call s:Highlight('cssTextAttr',              s:peterriver, '', 'bold', '')
call s:Highlight('cssTableAttr',             s:peterriver, '', 'bold', '')
call s:Highlight('cssColorAttr',             s:peterriver, '', 'bold', '')

"*** minibufexpl ***
call s:Highlight('MBENormal',                 s:greys[1], '', '', '')
call s:Highlight('MBEVisibleNormal',          s:white, '', 'bold', '')
call s:Highlight('MBEVisibleActive',          s:emerald, '', 'bold', '')
call s:Highlight('MBEChanged',                s:greys[1], '', 'italic', '')
call s:Highlight('MBEVisibleChanged',         s:white, '', 'bold,italic', '')
call s:Highlight('MBEVisibleChangedActive',   s:emerald, '', 'bold,italic', '')

"*** vim-easymotion ***
call s:Highlight('EasyMotionTarget',          s:cerise, '', 'bold', '')
call s:Highlight('EasyMotionShade',           s:greys[2], '', '', '')

"*** CtrlP ***
call s:Highlight('CtrlPNoEntries',            s:pomegranate, '', '', '')
call s:Highlight('CtrlPPrtBase',              '', '', 'bold', '')

"*** taglist.vim ***
call s:Highlight('TagListTitle',              s:white, '', 'bold', '')
call s:Highlight('TagListFileName',           s:pomegranate, '', '', '')

"*** Tabs ***
call s:Highlight('TabLineFill',               s:darkgreys[1], '', '', '')
call s:Highlight('TabLine',                   s:greys[1], '', '', '')
call s:Highlight('TabLineSel',                s:white, s:peterriver, '', '')

"*** CtrlSpace ***
call s:Highlight('CtrlSpaceSelected',         s:white, s:peterriver, '', '')
call s:Highlight('CtrlSpaceNormal',           '', '', '', '')
call s:Highlight('CtrlSpaceFound',            s:white, s:cerise, '', '')

"*** IndentGuides ***
call s:Highlight('IndentGuidesOdd',           '', s:text_bg, '', '')
call s:Highlight('IndentGuidesEven',          '', s:text_bg_light, '', '')
