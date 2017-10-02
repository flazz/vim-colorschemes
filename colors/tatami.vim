"------------------------------------------------------------
" Name: tatami.vim
" Description: Green colorscheme for vim.
" Maintainer: machakann
"------------------------------------------------------------

highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'tatami'

function! s:set() abort
  " Palette
  let sakurairo      = {'gui': '#fef4f4',   'cterm': '15'}
  let dobunezumi     = {'gui': '#595455',   'cterm': '239'}
  let kokutan        = {'gui': '#250f00',   'cterm': '0'}
  let wakame         = {'gui': '#e0ebaf',   'cterm': '193'}
  let wakana         = {'gui': '#d8e698',   'cterm': '192'}
  let wakatake       = {'gui': '#a8c97f',   'cterm': '151'}
  let ominaeshi      = {'gui': '#e2f2b0',   'cterm': '193'} " edited
  let moegi          = {'gui': '#aacf53',   'cterm': '148'}
  let matsubairo     = {'gui': '#839b5c',   'cterm': '71'}
  let oitake         = {'gui': '#6d875b',   'cterm': '65'}  " edited
  let rokusho        = {'gui': '#47885e',   'cterm': '29'}
  let mushiao        = {'gui': '#3a5b52',   'cterm': '23'}
  let omeshicha      = {'gui': '#43676b',   'cterm': '24'}
  let torinoko       = {'gui': '#fff1cf',   'cterm': '230'}
  let mokuranziki    = {'gui': '#c7b370',   'cterm': '143'}
  let hiwada         = {'gui': '#965036',   'cterm': '130'}
  let karacha        = {'gui': '#8d6449',   'cterm': '95'}
  let kurocha        = {'gui': '#583822',   'cterm': '58'}
  let usuki          = {'gui': '#edd3a1',   'cterm': '230'}
  let tamago         = {'gui': '#fcd575',   'cterm': '221'}
  let tanko          = {'gui': '#f8e58c',   'cterm': '228'}
  let nanohana       = {'gui': '#ffec47',   'cterm': '226'}
  let aokuchiba      = {'gui': '#ada250',   'cterm': '143'}
  let kanzo          = {'gui': '#f8b862',   'cterm': '220'}
  let mikan          = {'gui': '#f08300',   'cterm': '208'}
  let tokiiro        = {'gui': '#f4b3c2',   'cterm': '217'}
  let hiiro          = {'gui': '#d3381c',   'cterm': '160'}
  let azukiiro       = {'gui': '#96514d',   'cterm': '131'}
  let kokihi         = {'gui': '#c9171e',   'cterm': '1'}
  let shirafuji      = {'gui': '#dbd0e6',   'cterm': '189'}
  let usumurasaki    = {'gui': '#dfc2fe',   'cterm': '183'}
  let benimurasaki   = {'gui': '#b44c97',   'cterm': '133'}
  let kuwanomi       = {'gui': '#74325c',   'cterm': '89'}
  let sikon          = {'gui': '#460e44',   'cterm': '54'}
  let kamenozoki     = {'gui': '#a2d7dd',   'cterm': '159'}
  let usukon         = {'gui': '#9abafd',   'cterm': '111'}
  let tuyukusa       = {'gui': '#38a1db',   'cterm': '39'}
  let kakitubata     = {'gui': '#3e62ad',   'cterm': '63'}
  let rurikon        = {'gui': '#19448e',   'cterm': '4'}
  let tekkon         = {'gui': '#17184b',   'cterm': '17'}

  let none           = {'gui': 'NONE',      'cterm': 'NONE'}
  let bold           = {'gui': 'bold',      'cterm': 'bold'}
  let italic         = {'gui': 'italic',    'cterm': 'italic'}
  let underline      = {'gui': 'underline', 'cterm': 'underline'}
  let undercurl      = {'gui': 'undercurl', 'cterm': 'underline'}
  let boldcurl       = {'gui': 'bold,undercurl', 'cterm': 'bold,underline'}

  let highlight_group = {}
  if &background ==# 'light'
    " light theme

    "*** highlight groups (:h highlight-groups) ***"
    " fundamental
    let highlight_group.Normal       = [dobunezumi,   wakame,      none,      none]
    let highlight_group.Visual       = [none,         tanko,       none,      none]
    " Cursor
    let highlight_group.Cursor       = [sakurairo,    tekkon,      none,      none]
    let highlight_group.CursorIM     = [sakurairo,    mikan,       none,      none]
    let highlight_group.CursorLine   = [none,         torinoko,    none,      none]
    " Sidebar
    let highlight_group.LineNr       = [oitake,       wakana,      none,      none]
    let highlight_group.CursorLineNr = [tekkon,       wakana,      bold,      none]
    let highlight_group.FoldColumn   = [tekkon,       wakana,      none,      none]
    let highlight_group.SignColumn   = [hiwada,       wakana,      none,      none]
    let highlight_group.VertSplit    = [wakatake,     rokusho,     none,      none]
    let highlight_group.ColorColumn  = [none,         aokuchiba,   none,      none]
    " Fold
    let highlight_group.Folded       = [tekkon,       shirafuji,   none,      none]
    " Statusline
    let highlight_group.StatusLine   = [nanohana,     rokusho,     none,      none]
    let highlight_group.StatusLineNC = [wakatake,     rokusho,     none,      none]
    let highlight_group.WildMenu     = [rokusho,      nanohana,    bold,      none]
    " Tabline
    let highlight_group.TabLine      = [wakatake,     rokusho,     none,      none]
    let highlight_group.TabLineSel   = [nanohana,     rokusho,     bold,      none]
    let highlight_group.TabLineFill  = [wakatake,     rokusho,     none,      none]
    " Search
    let highlight_group.Search       = [none,         moegi,       none,      none]
    let highlight_group.IncSearch    = [none,         nanohana,    none,      none]
    " Message
    let highlight_group.ErrorMsg     = [sakurairo,    hiiro,       none,      none]
    let highlight_group.ModeMsg      = [hiwada,       none,        none,      none]
    let highlight_group.MoreMsg      = [benimurasaki, none,        none,      none]
    let highlight_group.Question     = [benimurasaki, none,        none,      none]
    let highlight_group.Title        = [rokusho,      none,        bold,      none]
    let highlight_group.WarningMsg   = [kokutan,      nanohana,    none,      none]
    " Completion
    let highlight_group.Pmenu        = [tekkon,       kamenozoki,  none,      none]
    let highlight_group.PmenuSel     = [tekkon,       tuyukusa,    none,      none]
    let highlight_group.PmenuSbar    = [kakitubata,   sakurairo,   none,      none]
    let highlight_group.PmenuThumb   = [sakurairo,    kakitubata,  none,      none]
    " Diff
    let highlight_group.DiffAdd      = [none,         kamenozoki,  none,      none]
    let highlight_group.DiffChange   = [none,         nanohana,    none,      none]
    let highlight_group.DiffDelete   = [none,         tokiiro,     none,      none]
    let highlight_group.DiffText     = [none,         nanohana,    underline, none]
    " Miscellaneous
    let highlight_group.Directory    = [kakitubata,   none,        bold,      none]
    let highlight_group.NonText      = [tamago,       none,        none,      none]
    let highlight_group.SpecialKey   = [rokusho,      none,        none,      none]
    let highlight_group.Conceal      = [aokuchiba,    none,        none,      none]

    "*** Syntax groups (:h group-name) ***"
    let highlight_group.Comment      = [oitake,       none,        none,      none]
    let highlight_group.Constant     = [benimurasaki, none,        none,      none]
    let highlight_group.Identifier   = [hiwada,       none,        none,      none]
    let highlight_group.Function     = [tuyukusa,     none,        none,      none]
    let highlight_group.Statement    = [hiiro,        none,        none,      none]
    let highlight_group.PreProc      = [kuwanomi,     none,        bold,      none]
    let highlight_group.Type         = [mikan,        none,        none,      none]
    let highlight_group.Special      = [kakitubata,   none,        none,      none]
    let highlight_group.Underlined   = [rokusho,      none,        underline, none]
    let highlight_group.Ignore       = [wakatake,     none,        none,      none]
    let highlight_group.Error        = [kokihi,        none,       boldcurl,  kokihi]
    let highlight_group.Todo         = [dobunezumi,   kanzo,       none,      none]

    "*** Settings for plugin ***"
    let highlight_group.MatchParen   = [none,         tamago,      none,      none]

    let bg_none    = {'gui': wakame.gui, 'cterm': 'NONE'}
  else
    " dark theme

    "*** highlight groups (:h highlight-groups) ***"
    " fundamental
    let highlight_group.Normal       = [sakurairo,    oitake,      none,      none]
    let highlight_group.Visual       = [none,         azukiiro,    none,      none]
    " Cursor
    let highlight_group.Cursor       = [dobunezumi,   sakurairo,   none,      none]
    let highlight_group.CursorIM     = [sakurairo,    mikan,       none,      none]
    let highlight_group.CursorLine   = [none,         omeshicha,   none,      none]
    " Sidebar
    let highlight_group.LineNr       = [torinoko,     matsubairo,  none,      none]
    let highlight_group.CursorLineNr = [nanohana,     matsubairo,  bold,      none]
    let highlight_group.FoldColumn   = [torinoko,     matsubairo,  none,      none]
    let highlight_group.SignColumn   = [kamenozoki,   matsubairo,  none,      none]
    let highlight_group.VertSplit    = [oitake,       mushiao,     none,      none]
    let highlight_group.ColorColumn  = [none,         wakana,      none,      none]
    " Fold
    let highlight_group.Folded       = [sakurairo,    mokuranziki, none,      none]
    " Statusline
    let highlight_group.StatusLine   = [nanohana,     mushiao,     none,      none]
    let highlight_group.StatusLineNC = [oitake,       mushiao,     none,      none]
    let highlight_group.WildMenu     = [mushiao,      nanohana,    bold,      none]
    " Tabline
    let highlight_group.TabLine      = [sakurairo,    mushiao,     none,      none]
    let highlight_group.TabLineSel   = [nanohana,     mushiao,     bold,      none]
    let highlight_group.TabLineFill  = [none,         mushiao,     none,      none]
    " Search
    let highlight_group.Search       = [none,         karacha,     none,      none]
    let highlight_group.IncSearch    = [none,         kuwanomi,    none,      none]
    " Message
    let highlight_group.ErrorMsg     = [sakurairo,    kokihi,      none,      none]
    let highlight_group.ModeMsg      = [tanko,        none,        none,      none]
    let highlight_group.MoreMsg      = [ominaeshi,    none,        none,      none]
    let highlight_group.Question     = [ominaeshi,    none,        none,      none]
    let highlight_group.Title        = [nanohana,     none,        none,      none]
    let highlight_group.WarningMsg   = [kokutan,      nanohana,    none,      none]
    " Completion
    let highlight_group.Pmenu        = [kurocha,      mokuranziki, none,      none]
    let highlight_group.PmenuSel     = [kurocha,      usuki,       none,      none]
    let highlight_group.PmenuSbar    = [kurocha,      usuki,       none,      none]
    let highlight_group.PmenuThumb   = [usuki,        kurocha,     none,      none]
    " Diff
    let highlight_group.DiffAdd      = [none,         rurikon,     none,      none]
    let highlight_group.DiffChange   = [none,         sikon,       none,      none]
    let highlight_group.DiffDelete   = [none,         kokihi,      none,      none]
    let highlight_group.DiffText     = [none,         sikon,       underline, none]
    " Miscellaneous
    let highlight_group.Directory    = [tokiiro,      none,        none,      none]
    let highlight_group.NonText      = [aokuchiba,    none,        none,      none]
    let highlight_group.SpecialKey   = [kokutan,      none,        none,      none]
    let highlight_group.Conceal      = [usuki,        none,        none,      none]

    "*** Syntax groups (:h group-name) ***"
    let highlight_group.Comment      = [wakatake,     none,        none,      none]
    let highlight_group.Constant     = [usumurasaki,  none,        none,      none]
    let highlight_group.Identifier   = [tanko,        none,        none,      none]
    let highlight_group.Function     = [kamenozoki,   none,        none,      none]
    let highlight_group.Statement    = [tokiiro,      none,        none,      none]
    let highlight_group.PreProc      = [ominaeshi,    none,        bold,      none]
    let highlight_group.Type         = [kanzo,        none,        none,      none]
    let highlight_group.Special      = [usukon,       none,        none,      none]
    let highlight_group.Underlined   = [tanko,        none,        underline, none]
    let highlight_group.Ignore       = [usuki,        none,        none,      none]
    let highlight_group.Error        = [sakurairo,    hiiro,       none,      none]
    let highlight_group.Todo         = [sakurairo,    tuyukusa,    none,      none]

    "*** Settings for plugin ***"
    let highlight_group.MatchParen   = [none,         tuyukusa,    none,      none]

    let bg_none    = {'gui': oitake.gui, 'cterm': 'NONE'}
  endif

  if get(g:, 'colorscheme_no_background', 0)
    let highlight_group.Normal[1]      = bg_none
    let highlight_group.TabLineFill[1] = bg_none
    let highlight_group.VertSplit[1]   = bg_none
    let highlight_group.SignColumn[1]  = bg_none
  endif

  for [group, colors] in items(highlight_group)
    execute printf('highlight %s guifg=%s guibg=%s gui=%s, guisp=%s ctermfg=%s ctermbg=%s cterm=%s',
                \  group,
                \  colors[0]['gui'],
                \  colors[1]['gui'],
                \  colors[2]['gui'],
                \  colors[3]['gui'],
                \  colors[0]['cterm'],
                \  colors[1]['cterm'],
                \  colors[2]['cterm']
                \ )
  endfor
endfunction
call s:set()
