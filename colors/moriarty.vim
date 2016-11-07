"          "       __  __            _            _               "
"          "      |  \/  | ___  _ __(_) __ _ _ __| |_ _   _       "
"          "      | |\/| |/ _ \| '__| |/ _` | '__| __| | | |      "
"          "      | |  | | (_) | |  | | (_| | |  | |_| |_| |      "
"          "      |_|  |_|\___/|_|  |_|\__,_|_|   \__|\__, |      "
"          "                                          |___/       "
"
"   I've given you a glimpse, Sherlock. Just a tinsy glimspe of what I've got
"   going on out there in the big bad world. I'm a specialist you see, like you.
"
"   This is basically Made of Code + Bad Wolf + Base16 and some other stuff.

" Supporting code -------------------------------------------------------------
" Preamble {{{

if !has("gui_running") && &t_Co != 88 && &t_Co != 256
  finish
endif

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "moriarty"

" }}}
" Palette {{{
let s:mc = {}

" Our basic color.
let s:mc.plain          = ['f8f8f8', 15]

" MJ at two different points in his life.
let s:mc.white          = ['ffffff', 15]
let s:mc.black          = ['000000', 16]

" The gravel colors from Bad Wolf.
let s:mc.brightgravel   = ['d9cec3', 252]
let s:mc.lightgravel    = ['998f84', 245]
let s:mc.gravel         = ['857f78', 243]
let s:mc.mediumgravel   = ['666462', 241]
let s:mc.deepgravel     = ['45413b', 238]
let s:mc.deepergravel   = ['35322d', 236]
let s:mc.darkgravel     = ['242321', 235]
let s:mc.blackgravel    = ['1c1b1a', 233]
let s:mc.blackestgravel = ['141413', 232]

" The blue from Badwolf.
let s:mc.tardis         = ['0a9dff', 39]

" Made of Code's not quite red.
let s:mc.notquitered    = ['ff3854', 203]

" A beautiful tan from Tomorrow Night.
let s:mc.dirtyblonde    = ['f4cf86', 222]

" Base 16's 15th color.
let s:mc.base0E         = ['aa759f', 05]

" An orange from Base 16.
let s:mc.orange         = ['d08770', 209]

" A limy green from Badwolf.
let s:mc.lime           = ['aeee00', 154]

" Rose's dress in The Idiot's Lantern.
let s:mc.dress          = ['ff9eb8', 211]

" Jellybean's green.
let s:mc.jellygreen     = ['99ad6a', 150]

" The diff colors from jellybeans.
let s:mc.leaf           = ['437019', 77]
let s:mc.fadedblue      = ['8fbfdc', 111]
let s:mc.plainblue      = ['2b5b77', 69]
let s:mc.hotred         = ['700009', 196]

" Also based on that Clouds Midnight brown.
let s:mc.coffee         = ['c7915b', 173]
let s:mc.darkroast      = ['88633f', 95]

" }}}
" Highlighting Function {{{
function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  let histring = 'hi ' . a:group . ' '

  if strlen(a:fg)
    if a:fg == 'fg'
      let histring .= 'guifg=fg ctermfg=fg '
    else
      let c = get(s:mc, a:fg)
      let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
    endif
  endif

  if a:0 >= 1 && strlen(a:1)
    if a:1 == 'bg'
      let histring .= 'guibg=bg ctermbg=bg '
    else
      let c = get(s:mc, a:1)
      let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
    endif
  endif

  if a:0 >= 2 && strlen(a:2)
    let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
  endif

  if a:0 >= 3 && strlen(a:3)
    let c = get(s:mc, a:3)
    let histring .= 'guisp=#' . c[0] . ' '
  endif

  " echom histring

  execute histring
endfunction
" }}}

" Actual colorscheme ----------------------------------------------------------
" Vanilla Vim {{{

" General/UI {{{
call s:HL('Normal', 'plain', 'blackgravel')

call s:HL('Folded', 'mediumgravel', 'bg', 'none')

call s:HL('VertSplit', 'lightgravel', 'bg', 'none')

call s:HL('CursorLine',   '',       'darkgravel', 'none')
call s:HL('CursorLineNr', 'tardis', 'darkgravel', 'none')
call s:HL('CursorColumn', '',       'darkgravel')
call s:HL('ColorColumn',  '',       'darkgravel')

call s:HL('TabLine',     'plain', 'blackestgravel', 'none')
call s:HL('TabLineFill', 'plain', 'blackestgravel', 'none')
call s:HL('TabLineSel',  'black', 'tardis',         'none')

call s:HL('MatchParen', 'notquitered', 'darkgravel', 'bold')

call s:HL('NonText',    'deepgravel', 'bg')
call s:HL('SpecialKey', 'deepgravel', 'bg')

call s:HL('Visual',    '',  'deepgravel')
call s:HL('VisualNOS', '',  'deepgravel')

call s:HL('Search',    'black', 'dirtyblonde', 'bold')
call s:HL('IncSearch', 'black', 'dirtyblonde', 'bold')

call s:HL('Underlined', 'fg', '', 'underline')

call s:HL('StatusLine',   'black', 'tardis',     'bold')
call s:HL('StatusLineNC', 'white', 'deepgravel', 'bold')

call s:HL('Directory', 'tardis', '', 'bold')

call s:HL('Title', 'plain')

call s:HL('ErrorMsg',   'notquitered', 'bg', 'bold')
call s:HL('MoreMsg',    'dirtyblonde',      '',  'bold')
call s:HL('ModeMsg',    'dirtyblonde',  '',  'bold')
call s:HL('Question',   'dirtyblonde',  '',  'bold')
call s:HL('WarningMsg', 'base0E',       '',  'bold')

call s:HL('Tag', '', '', 'bold')

" }}}
" Gutter {{{

call s:HL('LineNr',     'mediumgravel', 'blackgravel')
call s:HL('SignColumn', '',             'blackgravel')
call s:HL('FoldColumn', 'mediumgravel', 'blackgravel')

" }}}
" Cursor {{{

call s:HL('Cursor',  'black', 'tardis', 'bold')
call s:HL('vCursor', 'black', 'tardis', 'bold')
call s:HL('iCursor', 'black', 'tardis', 'none')

" }}}
" Syntax highlighting {{{

call s:HL('Special', 'jellygreen')

call s:HL('Comment',        'gravel')
call s:HL('Todo',           'tardis', 'bg', 'bold')
call s:HL('SpecialComment', 'tardis', 'bg', 'bold')

call s:HL('String', 'jellygreen')

call s:HL('Statement',   'base0E', '', 'bold')
call s:HL('Keyword',     'base0E', '', 'bold')
call s:HL('Conditional', 'base0E', '', 'bold')
call s:HL('Operator',    'base0E', '', 'none')
call s:HL('Label',       'base0E', '', 'none')
call s:HL('Repeat',      'base0E', '', 'none')

call s:HL('Identifier', 'dirtyblonde', '', 'none')
call s:HL('Function',   'dirtyblonde', '', 'none')

call s:HL('PreProc',   'notquitered', '', 'none')
call s:HL('Macro',     'notquitered', '', 'none')
call s:HL('Define',    'notquitered', '', 'none')
call s:HL('PreCondit', 'notquitered', '', 'bold')

call s:HL('Constant',  'lime', '', 'bold')
call s:HL('Character', 'lime', '', 'bold')
call s:HL('Boolean',   'lime', '', 'bold')

call s:HL('Number', 'tardis', '', 'bold')
call s:HL('Float',  'tardis', '', 'bold')

call s:HL('SpecialChar', 'dress', '', 'bold')

call s:HL('Type',         'dress',       '', 'none')
call s:HL('StorageClass', 'notquitered', '', 'none')
call s:HL('Structure',    'notquitered', '', 'none')
call s:HL('Typedef',      'notquitered', '', 'bold')

call s:HL('Exception', 'lime', '', 'bold')

call s:HL('Error',  'white',   'notquitered', 'bold')
call s:HL('Debug',  'white',   '',            'bold')
call s:HL('Ignore', 'gravel',  '',            '')

" }}}
" Completion Menu {{{

call s:HL('Pmenu',      'plain', 'deepergravel')
call s:HL('PmenuSel',   'black', 'tardis', 'bold')
call s:HL('PmenuSbar',  '',      'deepergravel')
call s:HL('PmenuThumb', 'brightgravel')

" }}}
" Diffs {{{

call s:HL('DiffAdd',    'plain', 'leaf')
call s:HL('DiffDelete', 'black', 'hotred')
call s:HL('DiffChange', '',      'plainblue')
call s:HL('DiffText',   'black', 'fadedblue', 'bold')

" }}}
" Spelling {{{

if has("spell")
  call s:HL('SpellCap',   'dirtyblonde', 'bg', 'undercurl,bold', 'dirtyblonde')
  call s:HL('SpellBad',   '',            'bg', 'undercurl',      'dirtyblonde')
  call s:HL('SpellLocal', '',            '',   'undercurl',      'dirtyblonde')
  call s:HL('SpellRare',  '',            '',   'undercurl',      'dirtyblonde')
endif

" }}}

" }}}
" Plugins {{{

" CtrlP {{{

" the message when no match is found
call s:HL('CtrlPNoEntries', 'white', 'hotred', 'bold')

" the matched pattern
call s:HL('CtrlPMatch', 'dirtyblonde', 'bg', 'none')

" the line prefix '>' in the match window
call s:HL('CtrlPLinePre', 'mediumgravel', 'bg', 'none')

" the prompt’s base
call s:HL('CtrlPPrtBase', 'deepgravel', 'bg', 'none')

" the prompt’s text
call s:HL('CtrlPPrtText', 'plain', 'bg', 'none')

" the prompt’s cursor when moving over the text
call s:HL('CtrlPPrtCursor', 'black', 'tardis', 'bold')

" 'prt' or 'win', also for 'regex'
call s:HL('CtrlPMode1', 'black', 'tardis', 'bold')

" 'file' or 'path', also for the local working dir
call s:HL('CtrlPMode2', 'black', 'tardis', 'bold')

" the scanning status
call s:HL('CtrlPStats', 'black', 'tardis', 'bold')

" }}}

" }}}
" Filetype-specific {{{

" Markdown {{{

call s:HL('markdownHeadingRule',       'lightgravel', '', 'bold')
call s:HL('markdownHeadingDelimiter',  'lightgravel', '', 'bold')
call s:HL('markdownOrderedListMarker', 'lightgravel', '', 'bold')
call s:HL('markdownListMarker',        'lightgravel', '', 'bold')
call s:HL('markdownItalic',            'white',       '', 'bold')
call s:HL('markdownBold',              'white',       '', 'bold')
call s:HL('markdownH1',                'orange',      '', 'bold')
call s:HL('markdownH2',                'lime',        '', 'bold')
call s:HL('markdownH3',                'lime',        '', 'none')
call s:HL('markdownH4',                'lime',        '', 'none')
call s:HL('markdownH5',                'lime',        '', 'none')
call s:HL('markdownH6',                'lime',        '', 'none')
call s:HL('markdownLinkText',          'dirtyblonde', '', 'underline')
call s:HL('markdownIdDeclaration',     'dirtyblonde')
call s:HL('markdownAutomaticLink',     'dirtyblonde', '', 'bold')
call s:HL('markdownUrl',               'dirtyblonde', '', 'bold')
call s:HL('markdownUrldelimiter',      'lightgravel', '', 'bold')
call s:HL('markdownLinkDelimiter',     'lightgravel', '', 'bold')
call s:HL('markdownLinkTextDelimiter', 'lightgravel', '', 'bold')
call s:HL('markdownCodeDelimiter',     'dirtyblonde', '', 'bold')
call s:HL('markdownCode',              'dirtyblonde', '', 'none')
call s:HL('markdownCodeBlock',         'dirtyblonde', '', 'none')

" }}}
" HTML {{{

" Punctuation
call s:HL('htmlTag',    'darkroast', 'bg', 'none')
call s:HL('htmlEndTag', 'darkroast', 'bg', 'none')

" Tag names
call s:HL('htmlTagName',        'coffee', '', 'bold')
call s:HL('htmlSpecialTagName', 'coffee', '', 'bold')
call s:HL('htmlSpecialChar',    'lime',   '', 'none')

" Attributes
call s:HL('htmlArg', 'coffee', '', 'none')

" Stuff inside an <a> tag
call s:HL('htmlLink', 'lightgravel', '', 'none')

" }}}
" Vim {{{

call s:HL('VimCommentTitle', 'lightgravel', '', 'bold')

call s:HL('VimMapMod',    'dress', '', 'none')
call s:HL('VimMapModKey', 'dress', '', 'none')
call s:HL('VimNotation', 'dress', '', 'none')
call s:HL('VimBracket', 'dress', '', 'none')

" }}}

" }}}
